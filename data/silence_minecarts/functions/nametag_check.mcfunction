execute if entity @s[advancements={silence_minecarts:detect={conditionB=true}}] run kill @e[tag=MinecartInteraction]
execute if entity @s[advancements={silence_minecarts:detect={conditionA=true}}] run function silence_minecarts:check_true
advancement revoke @s only silence_minecarts:detect