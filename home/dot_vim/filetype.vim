if exists("did_load_filetypes")
    finish
endif
    augroup filetypedetect
        " These are here to restore default syntax highlighting back to chezmoi
        " templates with the .tmpl suffix.
        au! BufRead,BufNewFile *.zsh.tmpl                           setf zsh
        au! BufNewFile,BufRead dot_zshrc*,dot_zshenv*               setf zsh
        au! BufNewFile,BufRead .gitconfig.tmpl,dot_gitconfig.tmpl   setf gitconfig
        au! BufNewFile,BufRead .chezmoiignore                       setf gitconfig
        au! BufNewFile,BufRead *.toml.tmpl*                         setf toml
        au! BufNewFile,BufRead *tmux.conf.tmpl                      setf tmux
        au! BufNewFile,BufRead *.fish.tmpl                          setf fish
    augroup END
