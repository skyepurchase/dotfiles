function mkvenv -d "Creates a venv with necessary neovim packages"
    argparse 'j/jupyter' -- $argv or return

    python -m venv venv
    source ./venv/bin/activate.fish
    pip install neovim

    if set -ql _flag_j
        pip install notebook nbclassic jupyter-console jupynium
        ipython kernel install --user --name=venv
    end
end
