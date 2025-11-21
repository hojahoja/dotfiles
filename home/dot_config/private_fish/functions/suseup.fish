function suseup --description "Fully upgrade system and notify if any of the tracked files have changed"

    # Print a message with a colored label
    function _notify -a message label color
        echo -e (set_color --bold $color) "$label$(set_color normal):" $message
    end

    # Function for checking changes of tracked files
    # Print a warning message after detecting a change file
    # function _check_diff -a snapshot_folder original_folder
    #     for file in $snapshot_folder*
    #         set f_check (diff $file $original_folder(basename $file))
    #         if test (echo $f_check) != ""
    #             _notify "changes in $original_folder$(basename $file)" "warning" red
    #         end
    #     end
    # end

    # Update tumbleweed repositories
    _notify "zypper updates..." "\nstarting" green
    sudo zypper dup

    # Update flatpaks
    _notify "flatpak updates…" "\nstarting" green
    flatpak update -y

    # Auto update script for programs that require manual updates.
    _notify "updates.sh" "\nstarting" green
    ~/Misc/scripts/updates.sh

    # Check gear-lever updates (does not update automatically)
    _notify "Listing available Appimage updates..." "\nstarting" green
    gearlever --list-updates

    # Example use of _check_diff
    # _check_diff ~/Misc/track/pam/ /usr/lib/pam.d/
end
