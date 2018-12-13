# exec your command from whatever place
# S signifas source / salto
S="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $S # necessary

# R signifas remote
# O signifas origin
# F signifas offline
# N signifas online
R="$(git remote -v)"
O="origin"
F="offline"
N="online"

echo $R
if [[ $R == *"$O"* ]]; then
    git remote rm origin
    echo "$O removed"
fi

if [[ $R == *"$F"* ]]; then
    git remote rm offline
    echo "$F removed"
fi

if [[ $R == *"$N"* ]]; then
    git remote rm online
    echo "$N removed"
fi

