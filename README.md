# GhostFish
![image](https://github.com/user-attachments/assets/7a112770-d8a5-42fa-97b5-be6adf463105)

This repository provides a simple configuration to use Ghostty with the Fish shell. It helps you set up and customize your Fish environment to seamlessly integrate with Ghostty for enhanced terminal experience.

## Installation
Download Ghostty terminal 
```bash
brew intall --cask ghostty
```

Download Fish shell 
```bash
brew install fish
```
Ghostty will automatically create a new configuration file if it can't find one on the system. Use `command + ,` to open it from Ghostty. 

## Configuring Fish as the default shell for Ghostty
Inside the configuration file you've just opened write the following line:
```bash
command = /opt/homebrew/bin/fish -i
```
At this point you can just simply copy my configuration file, which already includes that line, as well as the `IC_Orange_PPL`and `FunForrest` themes.

## Ensuring Homebrew Accessibility in Fish Shell
If Fish is unable to locate Homebrew, it's likely because its installation path isn't included in Fish's `$PATH` variable. To resolve this, we will explicitly add the Homebrew path to the Fish configuration, allowing the shell to recognize and utilize all Homebrew-installed packages and commands. This ensures that any previously installed tools or utilities managed through Homebrew remain fully accessible within the Fish environment.
```bash
set -U fish_user_paths /opt/homebrew/bin /opt/homebrew/sbin $fish_user_paths
```
Try this to ensure it works:
```bash
echo$PATH
which brew
```
If you're using a Mac with an Apple Silicon processor, you should see something like this:
```bash
/opt/homebrew/bin/brew
```

## Creating Fish shell configuration file
Inside Ghostty write the following:
```bash
nano ~/.config/fish/config.fish
```
Now install oh-my-fish:
```bash
curl -L https://get.oh-my.fish | fish
```
Run this to reload the shell
```bash
exec fish
```

And you can verify it worked with:
```bash
omf --version
```

Now you can download `fish_logo` if you would like to see the Fish Logo on the greeter message:
```bash
omf install fish_logo
```
You may now copy my Fish configuration file. It ensures that Fish automatically includes `Homebrew` in the `$PATH`, allowing seamless access to all installed packages. Additionally, it enhances the command history with `fish_history` for better tracking and recall of previous commands. The visual experience is also improved with a customized `ls` command featuring colorized output for better readability.

As a final touch, this setup includes a personalized greeting displaying the Fish logo alongside a handcrafted system information box, providing key details about your system at a glance.

After copyinf the file, save it and run this to save the changes:
```bash
exec fish
```

Ready to swim!
