function localabbr
    abbr --add $argv
    and echo -- abbr --add $argv >> ~/.config/fish/config.fish
end
