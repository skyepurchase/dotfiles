fish_config theme choose "Dracula Official"

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
    abbr --add imperial-pdf 'pandoc --citeproc --standalone --template=~/.pandoc/templates/imperial.latex --csl=~/.pandoc/templates/apa.csl --bibliography=~/university/references.bib -M link-bibliography=true -V colorlinks=true -o'

    ## Jupynium
    abbr --add token 'jupyter server list | grep "localhost:8888" | sed "s/.*token=\([^/]*\) ::.*/\1/" | fish_clipboard_copy'

    ## Dotfiles
    abbr --add dotfiles '/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
end
