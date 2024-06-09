#检测物品
execute as @a at @s store result score @s Own_lime run clear @s lime_dye[minecraft:custom_name='{"text":"\\u00A7a已准备"}',custom_data={"ready":1}] 0
execute as @a at @s store result score @s Own_red run clear @s red_dye[minecraft:custom_name='{"text":"\\u00A7c未准备"}',custom_data={"unready":1}] 0

#检测8号格物品
execute as @a at @s store result score @s hotbor_8 run data get entity @s Inventory[{Slot:8b}].Count

#侦测丢出
execute as @a at @s store result score @s Own_lime run clear @s lime_dye[minecraft:custom_name='{"text":"\\u00A7a已准备"}',custom_data={"ready":1}] 0
execute as @a at @s store result score @s Own_red run clear @s red_dye[minecraft:custom_name='{"text":"\\u00A7c未准备"}',custom_data={"unready":1}] 0

#准备/取消准备
execute as @a[scores={Q_red=1..}] at @s run function ready:ready/ready
execute as @a[scores={Q_lime=1..}] at @s run function ready:ready/unready

#更改物品
# execute as @a[scores={hotbor_8=0}] at @s run function ready:reset/reset

#检测是否拥有两个
execute as @a[scores={Own_lime=1..,Own_red=1..}] at @s if data entity @s Inventory[{Slot: 8b,tag:{unready:1}}] run clear @s lime_dye
execute as @a[scores={Own_lime=1..,Own_red=1..}] at @s if data entity @s Inventory[{Slot: 8b,tag:{ready:1}}] run clear @s red_dye

#清除
kill @e[type=item,nbt={Item:{id:"minecraft:lime_dye"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:red_dye"}}]

#向玩家展示队伍人数
title @a actionbar [{"text":"已有[ ","color":"green"},{"score":{"name":"team","objective":"T_ready"}},{"text":"/"},{"score":{"name":"team","objective":"T_least"}},{"text":" ]人准备"}]
#检测队伍人数
execute store result score team T_ready run team list ready
execute store result score team T_unready run team list unready
