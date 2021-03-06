# configure default editor (find 'vim', or, failing that, 'vi')

if [ -z "$EDITOR" ]; then
    MVIM=$(which mvim 2>/dev/null)
    if [ ! -z "$MVIM" ]; then
        EDITOR="$MVIM -f"
        export EDITOR
    fi
fi
if [ -z "$EDITOR" ]; then
    export EDITOR=`which vim`
fi
if [ -z "$EDITOR" ]; then
    export EDITOR=`which vi`
fi
if [ -z "$EDITOR" ]; then
    export EDITOR='/bin/editor'
fi
if [ -z "$VISUAL" ]; then
    export VISUAL="$EDITOR"
fi

# define PAGER

if [ -z "$PAGER" ]; then
    export PAGER=`which less`
fi
if [ -z "$PAGER" ]; then
    export PAGER=`which more`
fi
