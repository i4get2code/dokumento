# exec your command from whatever place
# S means source
S="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $S # necessary

# N means name / nomo
# D means directory
# P means path
N="$(basename $(pwd))"
D="$N.git"
P="../gits"

if [ -d $P/$D ]; then
    git push on master
fi
