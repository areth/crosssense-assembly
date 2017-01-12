find . -mindepth 2 -maxdepth 2 -name "*.git" |
xargs -I % sh -c 'echo % | sed -E "s/\.\///; s/\/.*$//"; git --git-dir=% log --oneline -1'