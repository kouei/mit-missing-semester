# Note
1. <kbd>CTRL</kbd> + <kbd>L</kbd> can clear the terminal screen.
2. You can look up some hardware status in **/sys/class**
3. The **tee** command reads from standard input and writes to standard output and files. Example: `$ echo 3 | sudo tee brightness`

# Exercise
1. `$ mkdir /tmp/missing`
2. `$ man touch`
3. `$ touch /tmp/missing/semester`
4. `$ echo '#!/bin/sh' > semester`  
`$ echo 'curl --head --silent https://missing.csail.mit.edu' >> semester`
5. `$ ./semester` (no execution permission)
6. `$ sh semester`
7. `$ man chmod`
8. `$ chmod u+x semester`
9. `$ ./semester | grep last-modified > last-modified.txt`
10. `$ cat /sys/class/power_supply/BAT0/capacity`  
`$ cat /sys/class/thermal/thermal_zone0/temp`
