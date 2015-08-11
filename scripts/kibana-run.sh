rm -r /root/elk/atlantis-kibana/logs
mkdir /root/elk/atlantis-kibana/logs
/root/elk/atlantis-kibana/kibana-4.1.1-linux-x64/bin/kibana > logs/out.log 2> logs/err.log &
