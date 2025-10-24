if status is-interactive
    # Abbreviations
    ## General
    abbr --add vim nvim
    abbr --add birth touch
    abbr --add ssh kitty +kitten ssh

    ## Git
    abbr --add glog git log --oneline --graph
    abbr --add gloga git log --oneline --graph --all

    ## Latex
    abbr --add pdfcompile 'pdflatex main.tex && biber main && pdflatex main.tex'

    ## Jupynium
    abbr --add token 'jupyter server list | grep "localhost:8888" | sed "s/.*token=\([^/]*\) ::.*/\1/" | fish_clipboard_copy'

    ## Dotfiles
    abbr --add dotfiles '/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
end
