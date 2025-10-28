WARNING: You HAVE to edit the script so it matches your monitor.

To edit the script open it with nano, or some other terminal based text editor. 
If it was saved to your /home, just do: nano ~/toggle-hdr.sh

You need to edit the 
'Configurations'
do not modify anything else

You have to check Hyprland's Wiki on how to configure your monitor and all of the relevant settings -> https://wiki.hypr.land/Configuring/Monitors/

After that you can bind it to any key you want, in that location:

~/.config/hypr/custom.d/regular/hyprland.conf
or at
~/.config/hypr/hyprland.conf

Add this line to your config: bind = SUPER, H, exec, sh -c "/home/yourusername/.local/bin/toggle-hdr.sh"

Save the script and make it executable by using the command: chmod +x toggle-hdr.sh

Put the script in this location -> /home/yourusername/.local/bin/

Reload you Hyprlands config with the command hyprctl reload.

By pressing Super/Win/Meta key + H you should be able to toggle HDR On and Off.



