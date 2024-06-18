local avgRtt
:local pin
:local pout

/tool flood-ping 8.8.8.8 count=10 do={
    :if ($sent = 10) do={
        :set avgRtt $"avg-rtt"
        :set pout $sent
        :set pin $received
    }
}

:local pingLatt ([:tostr $avgRtt]."ms")
:local packetLoss ([:tostr (100 - (($pin * 100) / $pout))]."%")


:put ("Ping: ".$pingLatt)
:put ("Packet-Loss: ".$packetLoss)