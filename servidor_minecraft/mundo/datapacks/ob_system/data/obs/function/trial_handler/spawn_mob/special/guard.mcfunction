scoreboard players set #cob.trial.guards cob.trial 0
execute as @e[tag=cob.trial_mob.guard] run scoreboard players add #cob.trial.guards cob.trial 1

execute as @e[tag=cob.mob_spawner] unless score #cob.trial.guards cob.trial matches 1.. if score #cob.trial.wave cob.trial matches 20..29 if predicate obs:chances/2 run function obs:trial_handler/spawn_mob/special/guard/skeleton
execute as @e[tag=cob.mob_spawner] unless score #cob.trial.guards cob.trial matches 1.. if score #cob.trial.wave cob.trial matches 20..29 run function obs:trial_handler/spawn_mob/special/guard/zombie

execute as @e[tag=cob.mob_spawner] unless score #cob.trial.guards cob.trial matches 2.. if score #cob.trial.wave cob.trial matches 30..39 if predicate obs:chances/2 run function obs:trial_handler/spawn_mob/special/guard/skeleton
execute as @e[tag=cob.mob_spawner] unless score #cob.trial.guards cob.trial matches 2.. if score #cob.trial.wave cob.trial matches 30..39 run function obs:trial_handler/spawn_mob/special/guard/zombie

execute as @e[tag=cob.mob_spawner] unless score #cob.trial.guards cob.trial matches 3.. if score #cob.trial.wave cob.trial matches 40..49 if predicate obs:chances/2 run function obs:trial_handler/spawn_mob/special/guard/skeleton
execute as @e[tag=cob.mob_spawner] unless score #cob.trial.guards cob.trial matches 3.. if score #cob.trial.wave cob.trial matches 40..49 run function obs:trial_handler/spawn_mob/special/guard/zombie

execute as @e[tag=cob.mob_spawner] unless score #cob.trial.guards cob.trial matches 4.. if score #cob.trial.wave cob.trial matches 50.. if predicate obs:chances/2 run function obs:trial_handler/spawn_mob/special/guard/skeleton
execute as @e[tag=cob.mob_spawner] unless score #cob.trial.guards cob.trial matches 4.. if score #cob.trial.wave cob.trial matches 50.. run function obs:trial_handler/spawn_mob/special/guard/zombie