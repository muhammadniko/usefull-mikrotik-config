:local botID ("")
:local chatID ("")
:local textMessage ("")

/tool fetch url="https://api.telegram.org/$botID/sendMessage?chat_id=$chatID&parse_mode=HTML&text=$textMessage" keep-result=no