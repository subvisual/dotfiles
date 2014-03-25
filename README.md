# Group Buddies dotfiles

## Requirements

Our dotfiles assume you're using `zsh`, set it as your login shell:

    chsh -s $(which zsh)

## Install

Clone onto your laptop:

    git clone git://github.com/groupbuddies/dotfiles.git

Install [rcm](https://github.com/thoughtbot/rcm):

    brew bundle dotfiles/Brewfile

Install:

    rcup -d dotfiles -x README.md -x LICENSE -x Brewfile

This will create symlinks for config files in your home directory. The `-x`
options, which exclude the `README.md`, `LICENSE`, and `Brewfile` files, are
needed during installation but can be skipped once the `.rcrc` configuration
file is symlinked in.

You can safely run `rcup` multiple times to update:

    rcup

## Customizing


Put your customizations in dotfiles appended with `.local`:

* `~/.aliases.local`
* `~/.gitconfig.local`

For example, your `~/.aliases.local` might look like this:

    # Productivity
    alias ego_boost='echo "You're awesome"'

Your `~/.gitconfig.local` might look like this:

    [user]
      name = Luís Zamith
      email = zamith@groupbuddies.com

## Credits

Thank you, [contributors](https://github.com/groupbuddies/dotfiles/contributors)!
Also, thank you to thoughtbot from whom we've gotten so much inspiration for this
dotfiles.

![groupbuddies](http://www.groupbuddies.com/logo.png)

Dotfiles is maintained by [Group Buddies](http://groupbuddies.com)
The names and logos for Group Buddies are trademarks of GB-Software As A Service, Lda.

This guides are Â© 2014 GB-Software As A Service, Lda. It is free software and may be
redistributed under the terms specified in the [LICENSE](LICENSE) file.
