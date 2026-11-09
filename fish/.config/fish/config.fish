source /usr/share/cachyos-fish-config/cachyos-config.fish

function fish_greeting
end

set -gx EDITOR helix
set -gx VISUAL helix
set -gx SSH_AUTH_SOCK "$XDG_RUNTIME_DIR/ssh-agent.socket"

#aliases

abbr -a gs 'git status'
abbr -a ga 'git add'
abbr -a gc 'git commit'
alias ls 'eza -lh --group-directories-first --icons=auto'
alias lsa 'eza -lha --group-directories-first --icons=auto'
alias lt 'eza --tree --level=2 --long --icons --git'
alias lta 'eza --tree --level=2 --long --icons --git --all'

if status is-interactive
    # Prompt
    if command -q starship
        starship init fish | source
    end

    # Runtime version manager
    if command -q mise
        mise activate fish | source
    end

    if command -q zoxide
        zoxide init fish --cmd cd | source
    end
end
