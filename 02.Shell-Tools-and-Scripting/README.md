# Note
1. Always add shebang to script: **#!/bin/bash**
2. Use **shellcheck** command to check the sanity of a shell script.
3. Curly braces **{}** can be used to do auto expansion.  
Example: `$ touch {foo,bar}/{a..j}` will create  
**foo/a, foo/b, ..., foo/j, bar/a, bar/b, ..., bar/j**
4. **<(CMD)** will run **CMD** and save the output to a temporary file  
Example: `$ diff <(ls foo) <(ls bar)` will compare  
the difference of the file entries in folder foo and folder bar.
5. **tldr** will give you useful examples about a command.  
Example: `$ tldr tar` will give you examples of the **tar** command.
6. **tree** will list files and folders in a tree shape graph.

# Exercise
1.
```bash
$ ls -alh --sort=time --color=always
```
2. 
```bash
#!/bin/bash
saved=""
marco () {
    saved="$(pwd)"
}

polo () {
    cd "$saved" || exit
}
```