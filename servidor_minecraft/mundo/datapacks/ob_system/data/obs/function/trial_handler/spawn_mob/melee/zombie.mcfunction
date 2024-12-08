execute if entity @e[tag=cob.block,tag=!cob.ominous] run particle minecraft:flame ~ ~1 ~ 0.35 0.35 0.35 0.01 10
execute if entity @e[tag=cob.block,tag=cob.ominous] run particle minecraft:soul_fire_flame ~ ~1 ~ 0.35 0.35 0.35 0.01 10
playsound minecraft:block.trial_spawner.spawn_mob hostile @a[distance=..16]

summon zombie ~ ~ ~ {Tags:["cob.trial_mob","cob.spawned"],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],DeathLootTable:"obs:entity/trial_mob"}

# leather-iron-enchanted
# 60-40-0
execute as @e[tag=cob.spawned] if score #cob.trial.wave cob.trial matches ..4 run function obs:trial_handler/spawn_mob/armor/tier_1
# 30-70-0
execute as @e[tag=cob.spawned] if score #cob.trial.wave cob.trial matches 5..14 run function obs:trial_handler/spawn_mob/armor/tier_2
# 20-80-10
execute as @e[tag=cob.spawned] if score #cob.trial.wave cob.trial matches 15..44 run function obs:trial_handler/spawn_mob/armor/tier_3
# 0-100-40
execute as @e[tag=cob.spawned] if score #cob.trial.wave cob.trial matches 45..79 run function obs:trial_handler/spawn_mob/armor/tier_4
# 0-100-100
execute as @e[tag=cob.spawned] if score #cob.trial.wave cob.trial matches 80.. run function obs:trial_handler/spawn_mob/armor/tier_5


execute as @e[tag=cob.spawned] if score #cob.trial.wave cob.trial matches 15..44 run item modify entity @s weapon.mainhand obs:trial/enchant_10

execute as @e[tag=cob.spawned] if score #cob.trial.wave cob.trial matches 45..79 run item modify entity @s weapon.mainhand obs:trial/enchant_40

execute as @e[tag=cob.spawned] if score #cob.trial.wave cob.trial matches 80.. run item modify entity @s weapon.mainhand obs:trial/enchant

tag @e[tag=cob.trial_mob,tag=cob.spawned] remove cob.spawned

kill @s[type=marker]