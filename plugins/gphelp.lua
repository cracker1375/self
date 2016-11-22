do
    
function run(msg, matches)
  local gphelp = [[Beyond Self Commands

🔴دستورات مدیریتی گروه👇

🔴!setname (name)
🔹تغیر نام گروه به (name)

🔴!link 
🔹دریافت لینک گروه در پیوی

🔴!newlink
🔹ساخت لینک جدید

🔴!setlink [link]
🔹ثبت لینک گروه مورد نظر

🔴!tosuper
🔹تبدیل گروه معمولی به سوپر گوه

🔴!setdes (text)
🔹تغیر دسکریپشن گروه به (text)

🔴!kick @username (by reply)
🔹اخراج فردی با آیدی @username (حتی با ریپلای)

🔴!inv @username (by reply)
🔹ادد کردن فردی با آیدی @username به گروه (حتی با ریپلای)

🔴!id @username (by reply)
🔹دریافت آیدی عددی فردی با آیدی @username (حتی با ریپلای)

🔴!gpid
🔹دریافت آیدی گروه

➖➖➖➖➖➖
ID : 😎@B_Hat😎
➖➖➖➖➖➖]]
    if matches[1] == 'gphelp' and is_sudo(msg) then
      send_large_msg("user#id"..msg.from.id, help)      
   return 'Help was sent in your private message'
    end
end 

return {
  patterns = {
    "^[!/#](gphelp)$"
  },
  run = run
}
end
