# exec your command from whatever place
# S signifas source
S="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $S # necessary

# N signifas name / nomo
# D signifas directory
# P signifas path
# F signifas offline
N="$(basename $(pwd))"
D="$N.git"
P="../gits"
F="offline"

if [ -d $P/$D ]; then
    git push $F master
fi
