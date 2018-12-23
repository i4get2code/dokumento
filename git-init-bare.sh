# exec your command from whatever place
# S signifas source / salto
S="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $S # necessary

# N signifas nomo / name
# D signifas directory
# P signifas path
B="$(basename $(pwd))"
D="$B.git"
P="../synclone/gits"

if [ ! -d $P/$D ]; then
    git init --bare $P/$D
else
    echo "$D already created"
fi
