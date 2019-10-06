using JSON
wikidata = open("./data/jawiki-country.json", "r")

seek(wikidata, 0)
txt = ""
for l in eachline(wikidata)
  entry = JSON.parse(l)
  entry_title = entry["title"]
  entry_txt = entry["text"]
  if (entry_title == "イギリス")
    global txt *= entry_txt
    break
  end
end
print(txt)