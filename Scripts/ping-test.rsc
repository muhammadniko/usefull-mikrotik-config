:local avgRtt
:local pin
:local pout

/tool flood-ping 8.8.8.8 count=10 do={
    :if ($sent = 10) do={
        :set avgRtt $"avg-rtt"
        :set pout $sent
        :set pin $received
    }
}

:local ploss (100 - (($pin * 100) / $pout))
:local pingLatt ([:tostr $avgRtt]."ms")
:local lossPercent ([:tostr $ploss]."%")


:put ("Ping: ".$pingLatt)
:put ("Packet-Loss: ".$lossPercent)