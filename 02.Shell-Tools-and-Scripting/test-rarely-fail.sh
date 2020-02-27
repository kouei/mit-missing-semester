 #!/usr/bin/env bash

try_count=0
truncate -s 0 ./rarely-fail.log
while :
do
   ((try_count++))
   ./rarely-fail.sh &>> ./rarely-fail.log
   if [[ "$?" -ne  "0" ]]; then
      break
   fi
done
echo "Failed at ${try_count}th try."