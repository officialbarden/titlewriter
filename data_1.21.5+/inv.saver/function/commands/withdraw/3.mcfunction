$tellraw @s ["",{"text":"\u25b6 ","click_event":{"action":"run_command","command":"/trigger zzz.inv-trigger.withdrawvaultid set $(vault_id)"}},{"text":"$(vault_name)","color":"gold","click_event":{"action":"run_command","command":"/trigger zzz.inv-trigger.withdrawvaultid set $(vault_id)"}},{"text":", vault id: #","click_event":{"action":"run_command","command":"/trigger zzz.inv-trigger.withdrawvaultid set $(vault_id)"}},{"text":"$(vault_id)","color":"gold","click_event":{"action":"run_command","command":"/trigger zzz.inv-trigger.withdrawvaultid set $(vault_id)"}}]

scoreboard players remove #TotalGUIsOwned inv.Extras 1
data remove storage barden:query VAULTS_LIST[0]
execute if score #TotalGUIsOwned inv.Extras matches 1.. run function inv.saver:commands/withdraw/3 with storage barden:query VAULTS_LIST[0]
