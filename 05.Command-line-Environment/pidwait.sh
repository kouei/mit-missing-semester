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