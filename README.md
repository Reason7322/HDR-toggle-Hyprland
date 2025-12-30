WARNING: You HAVE to edit the script to match your monitor and a monitor config file.

Instructions:

1. Open the script for editing

If you saved it to your Home directory: nano ~/toggle-hdr.sh
If saved to Downloads: nano ~/Downloads/toggle-hdr.sh

2. Set the correct monitor config

Edit the 3rd line of the script (CONFIG_FILE=...) to point to your monitor configuration file.

By default(if you have Hyprperks), this is usually:

~/.config/hypr/custom.d/regular/monitor.conf


3. Check your monitor settings
Make sure you know the correct monitorv2 block and all relevant parameters.
Reference Hyprland’s Wiki:
[Configuring Monitors](https://wiki.hypr.land/Configuring/Monitors/)

4. Make the script executable

chmod +x ~/toggle-hdr.sh


5. Move the script to a standard bin location

mv ~/toggle-hdr.sh ~/.local/bin/


6. Bind the script to a key
Edit your Hyprland config, either:

~/.config/hypr/custom.d/regular/hyprland.conf


or

~/.config/hypr/hyprland.conf


Add the line (replace yourusername with your actual username):

bind = SUPER, H, exec, sh -c "/home/yourusername/.local/bin/toggle-hdr.sh"


7. Reload Hyprland config

hyprctl reload


8. Toggle HDR
Press Super + H to toggle HDR On and Off.
