# Author: nautilor (https://github.com/nautilor)
# Repository: https://github.com/nautilor/nautilor-zsh-prompt

# * show the current hostname
hostname() {
    echo "%{$FG[004]%}%{$BG[004]%}%{$FG[008]%} %m "
}

# * show current directory, two levels deep
directory() {
    echo "%{$BG[002]%}%{$FG[008]%} %2~ %{$reset_color%}"
}

# * show the current time with milliseconds
current_time() {
    echo "%{$reset_color%}%{$FG[004]%}%{$BG[004]%}%{$FG[008]%} %* %{$reset_color%}"
}

# * returns  if there are errors, nothing otherwise
return_status() {
    echo "%(?..%{$BG[004]%}%{$FG[008]%}  %{$reset_color%})"
}


ZSH_THEME_GIT_PROMPT_PREFIX="%{$BG[005]%}%{$FG[008]%} <"
ZSH_THEME_GIT_PROMPT_SUFFIX="> %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

precmd () { 
    PROMPT="%B$(hostname)$(directory)$(git_prompt_info)%{$BG[003]%}%{$FG[008]%} %% %{$reset_color%}%{$FG[003]%} %{$reset_color%} "
    RPROMPT="$(current_time)$(return_status)%{$reset_color%}%{$FG[004]%} %{$reset_color%}"
}