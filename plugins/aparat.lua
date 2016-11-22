		local url = http.request('http://www.aparat.com/etc/api/videoBySearch/text/'..URL.escape(matches[2]))
		local jdat = json:decode(url)

		local items = jdat.videobysearch
		text = 'نتیجه جستوجو در آپارات: \n'
		for i = 1, #items do
		text = text..'\n'..i..'- '..items[i].title..'  -  تعداد بازدید: '..items[i].visit_cnt..'\n    لینک: aparat.com/v/'..items[i].uid
		end
		text = text..'\n\n😃'
		return text
	end
  --aparat Plugin v1.0 By @B_Hat
return {
	description = "aparat videos",
	usage = "aparat search",
	patterns = {
		"^[/!]aparat$",
		"^(aparat)$"
		},
	run = run
}
