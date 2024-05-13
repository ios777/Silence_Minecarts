execute as @e[type=#c:minecarts,distance=..6] if entity @s[nbt=!{Passengers:[{}]}] if entity @s[nbt=!{Silent:1b}] at @s summon minecraft:interaction run tag @s add MinecartInteraction
execute at @e[tag=MinecartInteraction] as @e[type=#c:minecarts] if entity @s[nbt=!{Passengers:[{}]}] run ride @e[tag=MinecartInteraction,limit=1,distance=0] mount @e[type=#c:minecarts,limit=1,distance=..1,sort=nearest]
execute as @e[type=#c:minecarts] if entity @s[nbt={Passengers:[{id:"minecraft:interaction"}]}] run function silence_minecarts:apply
