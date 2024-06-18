:local BOT_TOKEN ("")
:local CHAT_ID ("")
:local TEXT_MESSAGE ("")

/tool fetch url="https://api.telegram.org/$BOT_TOKEN/sendMessage?chat_id=$CHAT_ID&parse_mode=HTML&text=$TEXT_MESSAGE" keep-result=no