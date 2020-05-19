# Notes
1. <kbd>CTRL</kbd> + <kbd>L</kbd> can clear the terminal screen.
2. You can look up some hardware status in **/sys/class**
3. The **tee** command reads from standard input and writes to standard output and files. Example: `$ echo 3 | sudo tee brightness`

# Exercises
## Exercise 1
`$ mkdir /tmp/missing`  

## Exercise 2
`$ man touch`  

## Exercise 3
`$ touch /tmp/missing/semester`  

## Exercise 4
`$ echo '#!/bin/sh' > semester`  
`$ echo 'curl --head --silent https://missing.csail.mit.edu' >> semester`  

## Exercise 5
`$ ./semester` (no execution permission)  

## Exercise 6
`$ sh semester`  

## Exercise 7
`$ man chmod`  

## Exercise 8
`$ chmod u+x semester`  

## Exercise 9
`$ ./semester | grep last-modified > last-modified.txt`  

## Exercise 10
`$ cat /sys/class/power_supply/BAT0/capacity`  
`$ cat /sys/class/thermal/thermal_zone0/temp`  