-- Создание виджета для отображения количества мастер-окон
local master_count_widget = wibox.widget({
  text = "Мастер-окон: " .. awful.tag.getnmaster(),
  widget = wibox.widget.textbox,
})

-- Обновление виджета при изменении количества мастер-окон
client.connect_signal("property::nmaster", function()
  master_count_widget.text = "Мастер-окон: " .. awful.tag.getnmaster()
end)

-- Добавление виджета на панель
-- Это нужно сделать в соответствующем месте вашего файла rc.lua
mywibox[s]:add(master_count_widget)
