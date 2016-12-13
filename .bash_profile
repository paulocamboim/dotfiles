# Configure PATH variable
export PATH="$/bin:/usr/local/devops/bin:$PATH"

# Show colors for folders/files
export CLICOLOR=1

# Display current folder and branch name on temrinal
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
