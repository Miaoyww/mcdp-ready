item replace entity @s hotbar.8 with red_dye[minecraft:custom_name='{"text":"\\u00A7c未准备"}', minecraft:custom_data={"unready":1}]
team join ready

scoreboard players set @s Q_red 0
playsound entity.experience_orb.pickup player @s
team join unready

scoreboard players set @s Q_lime 0
playsound entity.experience_orb.pickup player @s