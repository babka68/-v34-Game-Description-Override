# [v34] Game-Description-Override
- Поддерживаемые игры: Counter-Strike: Source v34
- Описание: Переопределяет описание "Игра" в браузере сервера с помощью [SdkHooks]
![Безымянный](https://user-images.githubusercontent.com/30433617/224513288-0d3c0320-0614-4485-b028-c077f78d743e.png)

```cp
- Установка:
1. Поместить game_description_override.sp по пути /addons/sourcemod/scripting 
2. Поместить game_description_override.smx по пути /addons/sourcemod/plugins
3. Перезапустить сервер.
4. Настроить файл конфигурации по пути cfg/sourcemod/game_description_override.cfg
5. Перезапустить сервер
```
- Файл конфигурации game_description_override.cfg
```cpp
// Установить описание игры при загрузке сервера (максимум 64 символа)
// -
// Default: "https://vk.com/zakazserver68"
sm_game_description_override "https://vk.com/zakazserver68"

// Включить плагин? [1 - Включить, 0 - Нет]
// -
// Default: "1"
// Minimum: "0.000000"
// Maximum: "1.000000"
sm_game_description_override_enable "1"
```
- Контакты для связи при возникновении проблемы/предложений:

1. Discord babka68#4072
2. Telegram https://t.me/babka68
3. Вконтакте https://vk.com/id142504197
4. WhatsApp: +7 (953) 124-71-33
