# bind git log searchto CTRL+ALT+G
fzf_configure_bindings --git_log=\e\cg

# Custom function to enable hidden file search
function _fzf_search_directory_hidden

    # Store current search options
    set -l old_fd_opts $fzf_fd_opts

    # Set search options to look for hidden files
    set -g fzf_fd_opts --hidden

    _fzf_search_directory

    # Restore old options
    set -g fzf_fd_opts $old_fd_opts
end

# bind hidden file search to CTRL+ALT+D
bind \e\cd _fzf_search_directory_hidden
