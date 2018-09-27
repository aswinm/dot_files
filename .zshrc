export PATH=$PATH:/etc/paths:/Users/aswinm/stanford-parser:/Applications/Postgres.app/Contents/Versions/9.6/bin

function prompt_char {
    git branch >/dev/null 2>/dev/null && echo 'git %% ' && return
    hg root >/dev/null 2>/dev/null && echo 'hg %% ' && return
    echo ''
}

function current_dir {
    echo ${PWD##*/} && return
}

# PROMPT="aswinm:~ %{$fg[magenta]%}$(current_dir)%{$reset_color%} ~ $(prompt_char)"

# PROMPT="%{$fg[magenta]%}%n%{$reset_color%} at %{$fg[yellow]%}%m%{$reset_color%}"
export PS1="[%*] %d %% "


GRADLE_HOME=/Users/aswinm/Applications/gradle
export GRADLE_HOME
export PATH=$PATH:$GRADLE_HOME/bin:/usr/local/mysql/bin:~/.local/bin
export PATH="/usr/lib/google-cloud-sdk/bin:$PATH"
JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_171.jdk/Contents/Home
export JAVA_HOME

alias vim='nvim'


HISTFILE=~/.zsh_history
SAVEHIST=1000

alias recreateDB_happyfox='dropdb hdpdev && createdb hdpdev -e utf-8 && python manage.py init --company-name Tenmiles --instance-name dev --domain-name localhost --forwarding-email-id abc@localhost --admin-email-id rethas@tenmiles.com --admin-first-name Swarna --admin-last-name Rethas --admin-username admin --admin_password admin'

alias hgpu='hg pull; hg update'

alias hgp='hg push'

alias hgs='hg branch; hg st'

alias hgd='hg diff'

alias v2a='. ../../virtual_v2/bin/activate;source ../.env;source env.sample'

alias va='. ../virtual/bin/activate;source .env;export SERVERADMIN_DB_HOST=localhost;export LOGS_DIR=/tmp'

alias da='deactivate'
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

fpath=(~/.zsh/zsh-completions/src $fpath)

alias gs='git status'

alias gp='git pull'

alias pmr='TARGET_INSTANCE_NAME="automation" python manage.py runserver'

alias shellactivate='TARGET_INSTANCE_NAME="automation" python manage.py shell'
alias dbshellactivate='TARGET_INSTANCE_NAME="automation" python manage.py dbshell'

alias pim='python manage.py instance_migrate'

alias pri='python manage.py reinit'

alias hgc='. ~/check_print.sh'

alias tmux="tmux -2"

alias firees="cd /Users/aswinm/Downloads/elasticsearch-5.3.0;./bin/elasticsearch"
alias firefe="cd /Users/aswinm/codes/happyfox-web;IS_REMOTE=true ember s"

alias clonestash="git clone git@bitbucket.org:happyfoxinc/django_stash.git /tmp/libs/pypi/django_stash"

alias ipython="python /usr/local/bin/ipython"
alias ipython3="/usr/local/bin/ipython"

alias default_merge='hg ci -m "default -> $(hg branch)"'
alias hdpmanage='TARGET_INSTANCE_NAME=automation python manage.py'


export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export NVM_DIR="/Users/aswinm/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

source /Users/aswinm/google-cloud-sdk/path.zsh.inc

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/aswinm/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/aswinm/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/aswinm/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/aswinm/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="/usr/local/opt/php@7.0/bin:$PATH"
export PATH="/usr/local/opt/php@7.0/sbin:$PATH"
export JIRA_HOME=/Users/aswinm/jira/
