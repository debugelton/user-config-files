# user-config-files
several config files for tmux, bash
## bash scripting
### Reserved Variables
Variable | Description
-------- | -----------
__$0__ | The name of the Bash script.
__$1 - $9__ | The first 9 arguments to the Bash script. (As mentioned above.)
__$#__ | How many arguments were passed to the Bash script.
__$@__ | All the arguments supplied to the Bash script.
__$?__ | The exit status of the most recently run process.
__$$__ | The process ID of the current script.
__$USER__ | The username of the user running the script.
__$HOSTNAME__ | The hostname of the machine the script is running on.
__$SECONDS__ | The number of seconds since the script was started.
__$RANDOM__ | Returns a different random number each time is it referred to.
__$LINENO__ | Returns the current line number in the Bash script.

### Conditional statements
#### if/else
``` bash
if [ $a > 1 ]; then
  echo $a
else
  echo ""
fi
```

Operator | Description
-------- | -----------
! EXPRESSION | The EXPRESSION is false.
-n STRING | The length of STRING is greater than zero.
-z STRING | The lengh of STRING is zero (ie it is empty).
STRING1 = STRING2 | STRING1 is equal to STRING2
STRING1 \!= STRING2 | STRING1 is not equal to STRING2
INTEGER1 -eq INTEGER2 | INTEGER1 is numerically equal to INTEGER2
INTEGER1 -gt INTEGER2 | INTEGER1 is numerically greater than INTEGER2
INTEGER1 -lt INTEGER2 | INTEGER1 is numerically less than INTEGER2
-d FILE | FILE exists and is a directory.
-e FILE | FILE exists.
-r FILE | FILE exists and the read permission is granted.
-s FILE | FILE exists and it's size is greater than zero (ie. it is not empty).
-w FILE | FILE exists and the write permission is granted.
-x FILE | FILE exists and the execute permission is granted.
