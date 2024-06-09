#by Miaomiaoywww

#丢弃red_dye
scoreboard objectives add Q_red minecraft.dropped:minecraft.red_dye
#丢弃lime_dye
scoreboard objectives add Q_lime minecraft.dropped:minecraft.lime_dye
#拥有“已准备”
scoreboard objectives add Own_lime dummy
#拥有“未准备”
scoreboard objectives add Own_red dummy
#用于检测8号格物品的数量
scoreboard objectives add hotbor_8 dummy

#添加已准备和未准备两队
team add ready
team add unready
team modify ready color green
team modify unready color red
team modify ready prefix {"text":"[已准备] ","color":"green"}
team modify unready prefix {"text":"[未准备] ","color":"red"}
#用于检测队伍人数
scoreboard objectives add T_ready dummy
scoreboard objectives add T_unready dummy
scoreboard objectives add T_least dummy
scoreboard players set team T_least 5

tellraw @a {"text":"数据包加载成功"}


