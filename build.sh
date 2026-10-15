#!/bin/bash
# Скрипт автоматизации сборки для двух систем

# 1. Сборка для Arch Linux (если запускается на Arch)
if command -v makepkg &> /dev/null; then
    echo "Сборка пакета для Arch Linux..."
    makepkg -f-p PKGBUILD
fi

# 2. Сборка для Ubuntu
echo "Подготовка структуры и сборка пакета для Ubuntu..."
# Создаем целевую директорию внутри debian-pack
mkdir -p debian-pack/usr/bin/

# Копируем актуальную версию скрипта из src/
cp concat-py debian-pack/usr/bin/concat-py
chmod +x debian-pack/usr/bin/concat-py

# Собираем .deb пакет
dpkg-deb --build debian-pack concat-py.deb

# Очищаем временный бинарник из папки сборки, чтобы не хранить дубликат
rm -rf debian-pack/usr/bin/
