# Notes
1. Use `$ man 7 signal` to check the meaning of different signals.
2. Use `$ jobs` to check the status of jobs.
3. Press <kbd>Ctrl</kbd>+<kbd>Z</kbd> to suspend a program.  
Use `$ bg %[JOB ID]` to recover a suspended job.
4. `$ kill -STOP %1` will send the `SIGSTOP` signal to job `%1`.
5. `tmux` is a very useful tool for terminal multiplexing (reuse the same terminal for multiple purposes).
6. `$ alias mv="mv -i"` will make the `mv` command run in interactive mode by default. In interactive mode, if you try to overwrite a file using `mv`, it will prompt you a warning.
7. `$ alias [ALIAS]` will give you the full definition of the `[ALIAS]`.
8. `$ tmux new -s [NAME]` will start a new session called `[NAME]`.
9. `$ tmux ls` will list current sessions.
10. Make sure your dotfiles are under version control. You can add their symbolic links to your home folder.
11. `$ ssh -L 9999:localhost:8888 foobar@remote_server` will map the `9999` port of the localhost to the `8888` port of the remote_server.
so you can access `remote_server:8888` through `localhost:9999`.
12. [sshfs](https://github.com/libfuse/sshfs) can mount a folder on a remote server locally, and then you can use a local editor.
13. `$ ssh-keygen -o -a 100 -t ed25519 -f ~/.ssh/id_ed25519` will generate an **ed25519 standard** ssh key with **100** key derivation function rounds. The generated key will be stored in file **~/.ssh/id_ed25519**

# Exercises
## Job control
### Exercise 1
`$ pgrep -af "sleep 10000"`  
`$ pkill -9 -f "sleep 10000"`  

### Exercise 2
`$ sleep 60 &`  
`$ wait $(pgrep -f "sleep 60"); ls`  

The pidwait function:  
```bash
pidwait () {
    while :
    do
        kill -0 $1 &> /dev/null
        if [[ $? -ne 0 ]]; then
            break
        else
            sleep 1
        fi
    done
}
```  

## Terminal multiplexer
Omitted.

## Aliases
### Exercise 1
`$ alias dc=cd`  

### Exercise 2
Omitted.  
(In this case maybe a **bash function** is better than an **alias**)  

## Dotfiles
Omitted.

## Remote Machines
Omitted.