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
#### Operators
Operator | Description
-------- | -----------
__!__ EXPRESSION | The EXPRESSION is false.
__-n__ STRING | The length of STRING is greater than zero.
__-z__ STRING | The lengh of STRING is zero (ie it is empty).
STRING1 __==__ STRING2 | STRING1 is equal to STRING2
STRING1 __!=__ STRING2 | STRING1 is not equal to STRING2
INTEGER1 __-eq__ INTEGER2 | INTEGER1 is numerically equal to INTEGER2
INTEGER1 __-gt__ INTEGER2 | INTEGER1 is numerically greater than INTEGER2
INTEGER1 __-lt__ INTEGER2 | INTEGER1 is numerically less than INTEGER2
__-d__ FILE | FILE exists and is a directory.
__-e__ FILE | FILE exists.
__-r__ FILE | FILE exists and the read permission is granted.
__-s__ FILE | FILE exists and it's size is greater than zero (ie. it is not empty).
__-w__ FILE | FILE exists and the write permission is granted.
__-x__ FILE | FILE exists and the execute permission is granted.
[ STATEMENT ] __&&__ [ STATEMENT ] | Boolean operator __"and"__
[ STATEMENT ] __\|\|__ [ STATEMENT ] | Boolean operator __"or"__
### Conditional statements
#### if/else
``` bash
#!/bin/bash
if [ $a > 1 ]; then
    echo $a
else
    echo ""
fi
```
#### else if
``` bash
#!/bin/bash
if [ $1 -ge 18 ]; then
    echo You may go to the party.
elif [ $2 == 'yes' ]; then
    echo You may go to the party but be back before midnight.
else
    echo You may not go to the party.
fi
```
#### case (switch)
``` bash
#!/bin/bash
case $1 in
    start)
        echo starting
        ;;
    stop)
        echo stoping
        ;;
    restart)
        echo restarting
        ;;
    *)
        echo don\'t know
        ;;
esac
```
