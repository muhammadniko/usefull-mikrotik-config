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
:local logmsg ("- Ping: ".[:tostr $avgRtt]."ms %0A- Packet Loss: ".[:tostr $ploss]."%")