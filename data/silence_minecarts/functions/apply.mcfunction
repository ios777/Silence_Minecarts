execute as @e[tag=MinecartInteraction] at @s on target run tag @e[type=#c:minecarts,limit=1,distance=..1] add silence
execute as @e[tag=silence] run data merge entity @s {Silent:1b}
execute at @e[tag=silence] run playsound minecraft:block.amethyst_block.resonate ambient @a[distance=..6] ~ ~ ~ .8 2
execute as @e[tag=MinecartInteraction] at @s if entity @e[type=#c:minecarts,tag=silence,distance=..1] run kill @s
tag @e[type=#c:minecarts,tag=silence] remove silence
