cdgopath ()
{
    cd $GOPATH
}
# Connect to ssh without recording host-key
sshtmp ()
{
    ssh -o "StrictHostKeyChecking no" -o "UserKnownHostsFile /dev/null" "$@"
}

#  Do an SCP without recording, or prompting for host keys.
scptmp ()
{
    scp -o "StrictHostKeyChecking no" -o "UserKnownHostsFile /dev/null" "$@"
}


# Recursively delete python related unwanted files
nukepy ()
{
   find . -regextype posix-egrep -regex '.*\.pyc|.*\.pyo|.*~' -delete;
}

# Recursively delete latex related unwanted files
nuketex ()
{
   find . -regextype posix-egrep -regex '.*\.aux|.*\.log|.*\.idx|.*\.toc|.*\.thm|.*\.bbl|.*\.blg|.*\.out|.*\.lol|.*\.lot|.*\.lof|.*~' -delete;
}

# Check running process
pp ()
{
    ps aux | awk '!/awk/ && $0~var' var=${1:-".*"} ;
}

# For pypath
pypath ()
{
    output=$(pypath.py $*);
    if [ $1 = 'show' ]; then
        echo $output;
    else
        eval $output;
    fi
}
