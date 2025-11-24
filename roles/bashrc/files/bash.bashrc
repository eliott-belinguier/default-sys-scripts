if [ -f /etc/bash.prompt ]; then
    . /etc/bash.prompt
fi

if [ -d /etc/bashrc.d ]; then
    for file in /etc/bashrc.d/*; do
        if [ -f "$file" ]; then
            . "$file"
        fi
    done
fi