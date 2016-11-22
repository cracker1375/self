do
    
function run(msg, matches)
  local help = [[Beyond Self Commands

🔴دستورات مدیریتی ربات👇
🔹!mghelp
        
🔴دستورات مدیریتی گروه👇
!gphelp
        
🔴فقط در سوپر گروه 👇
!sgphelp
        
🔴دستورات سرگرمی👇
!ghelp

➖➖➖➖➖➖
ID : 😎@B_Hat😎
➖➖➖➖➖➖]]
    if matches[1] == 'help' and is_sudo(msg) then
      send_large_msg("user#id"..msg.from.id, help)      
   return 'Help was sent in your private message'
    end
end 

return {
  patterns = {
    "^[!/#](help)$"
  },
  run = run
}
end
