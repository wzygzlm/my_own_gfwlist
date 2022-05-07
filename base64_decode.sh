#!/bin/zsh

echo "OS is $OSTYPE."
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        # Linux
        # Maybe like this, haven't checked it yet
        base64 --decode "$1"
elif [[ "$OSTYPE" == "darwin"* ]]; then
        # Mac OSX
        base64 --decode "$1"
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
