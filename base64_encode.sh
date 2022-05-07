#!/bin/zsh

echo "OS is $OSTYPE."
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        # Linux
        # Maybe like this, haven't checked it yet
        base64 -w76 "$0" > gfwlist.txt
elif [[ "$OSTYPE" == "darwin"* ]]; then
        # Mac OSX
        base64 -b 76 "$0" > gfwlist.txt
elif [[ "$OSTYPE" == "cygwin" ]]; then
        # POSIX compatibility layer and Linux environment emulation for Windows
elif [[ "$OSTYPE" == "msys" ]]; then
        # Lightweight shell and GNU utilities compiled for Windows (part of MinGW)
elif [[ "$OSTYPE" == "win32" ]]; then
        # I'm not sure this can happen.
elif [[ "$OSTYPE" == "freebsd"* ]]; then
        # ...
else
        # Unknown.
fi
echo "Convesion done."
