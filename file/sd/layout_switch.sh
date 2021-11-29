if [[ -n "$1" ]]; then
    setxkbmap $1
else
    layout=$(setxkbmap -query | grep "layout" | awk 'END{print $2}')
    case $layout in
        us)
                setxkbmap il
            ;;
        *)
                setxkbmap us
            ;;
    esac
fi
