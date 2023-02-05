#!/usr/bin/env bash
sudo pkill -f 'java -jar'
cd /home/azureuser/azagent/_work/r3/a/_Stage2Release/
rm *
wget $(pjar) &> /dev/null
if [[ "$?" != 0 ]]; then
    exit 1
else
    echo "Success"
fi
sudo java -jar -Dserver.port=80 \
*.jar > /dev/null 2> /dev/null < /dev/null &

# create Library Variable group and create the variable and access it in release
# Link Variable group in release pipeline
