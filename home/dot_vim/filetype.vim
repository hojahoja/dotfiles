if exists("did_load_filetypes")
    finish
endif
    augroup filetypedetect
        " These are here to restore default syntax highlighting back to chezmoi
        " templates with the .tmpl suffix.
        au! BufRead,BufNewFile *.zsh.tmpl                           setf zsh
        au! BufNewFile,BufRead .zshrc.tmpl,.zshenv.tmpl             setf zsh
        au! BufNewFile,BufRead .gitconfig.tmpl,dot_gitconfig.tmpl   setf gitconfig
    augroup END
