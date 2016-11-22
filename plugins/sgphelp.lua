do
    
function run(msg, matches)
  local help = [[Beyond Self Commands

🔴فقط در سوپر گروه 👇

🔴!silent [id|reply]
🔹بیصدا کردن فرد مورد نظر در سوپر گروه با (آیدی و ریپلی)

🔴!unsilent [id|reply]
🔹درآوردن فرد مورد نظر از حالت بیصدا در سوپر گروه با (آیدی و ریپلی)

🔴!mute all
🔹بیصدا کردن همه در سوپر گروه

🔴!unmute all
🔹دراوردن سوپر گروه از حالت بیصدا

🔴!mute status
🔹مشاهده وضعیت بیصدا در سوپر گروه

🔴!clean msg number
🔹حذف پیام های اخیر سوپرگروه
مثال : !clean msg 100

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
    "^[!/#](sgphelp)$"
  },
  run = run
}
end
