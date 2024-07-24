alias dotnet64=/usr/local/share/dotnet/x64/dotnet
alias removeallbin='find . -name bin -exec rm -rf {} \;'
alias findallbin='find . -name bin -exec ls -d {} \;'
alias removeallobj='find . -name obj -exec rm -rf {} \;'
alias findallobj='find . -name obj -exec ls -d {} \;'
alias removeallbinandobj='find . -iname "bin" -o -iname "obj" -print0 | xargs -0 rm -rf'

alias ygp='yarn generate-proxy'
alias ys='yarn start'

alias dcufr='docker compose up --force-recreate' # start the docker from scratch
alias dcufrb='docker compose up --force-recreate --build' # start the docker from scratch
alias drc='docker rm $(docker ps -a -q)' # deletes all containers
alias drv='docker volume rm $(docker volume ls -q)' # removes persistent memory
alias dri='docker rmi $(docker images -q)' # deletes all the images
alias dcu='docker compose up' # get things working but using the current state
alias dprune='docker system prune -a --volumes'

alias mailhog='docker run -p 8025:8025 -p 1025:1025 mailhog/mailhog'

alias whichgitremote='git config --get remote.origin.url'
alias gitlogm2m='git log --grep="Merge branch '\''.*'\'' into '\''master'\''" --oneline'

function gittag()
{
    git tag "$1";
    git push origin "$1"
}

function gitreadtag()
{
    git tag -n --sort=creatordate | tail -n 20;
    git describe --tags
}

function gitswitchremote()
{
    git remote set-url origin $1;
}
