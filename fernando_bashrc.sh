export EDITOR="nvim"

export DOTNET_ROOT=/opt/dotnet

export PATH=$PATH:/home/fernando/.dotnet/tools
export PATH=$PATH:/opt/dotnet

alias dt='dotnet test'
alias dwt='dotnet watch test'
alias dtf='dotnet test --filter'
alias dwtf='dotnet watch test --filter'
alias dr='dotnet run'
alias dwr='dotnet watch run'
alias dcdb='dotnet clean && dotnet build'

alias ..='cd ..'

dt-spec () {
    dotnet test --filter "fullyqualifiedname~$1"
}

dwt-spec () {
    dotnet watch test --filter "fullyqualifiedname~$1"
}
