#!/bin/bash

# Команда для получения информации
COMMAND="echo 'Пример вывода скрипта\nЕще одна строка вывода'"

# Действие при клике
# if [ "$1" == "click" ]; then
    # Открываем окно с помощью xmessage
    xmessage -center -buttons OK:0 -default OK -timeout 10 "$($COMMAND)"
# fi

# Отображаем название модуля в polybar
echo "Click me"
