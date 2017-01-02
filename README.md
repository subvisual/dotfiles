# Subvisual dotfiles

## Requirements

Our dotfiles assume you're using `zsh`, set it as your login shell:

    chsh -s $(which zsh)

## Install

Clone onto your laptop:

    git clone https://github.com/subvisual/dotfiles.git
Install [rcm](https://github.com/thoughtbot/rcm):

    brew bundle dotfiles/Brewfile

Configure:

Although not required, you may want to start by creating your own `.rcrc` from the sample:

    cp dotfiles/samples/rcrc $HOME/.rcrc

And edit it (following it's comments) according to your needs

Install:

    rcup

Or, if you did not configure your `.rcrc` file, as described above:

    rcup -d dotfiles -x README.md -x LICENSE -x Brewfile -x samples

This will create symlinks for config files in your home directory. The `-x`
excludes the `README.md`, `LICENSE`, and `Brewfile` files, can be skipped if you install an `.rcrc` file
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

Thank you, [contributors](https://github.com/subvisual/dotfiles/contributors)!
Also, thank you to thoughtbot from whom we've gotten so much inspiration for this
dotfiles.

dotfiles is maintained by [Subvisual](http://subvisual.co). The names and logos
for Subvisual are trademarks of GB-Software As A Service, Lda.

This project is © 2014-2018 Subvisual. It is free software and may be
redistributed under the terms specified in the [LICENSE](LICENSE) file.

[![Subvisual](https://raw.githubusercontent.com/subvisual/guides/master/github/templates/subvisual_logo_with_name.png)](http://subvisual.co)

If you need to contact the maintainer use [this](https://trello.com/b/svB6ZSce/areas-of-responsability-dris) trello board, or <a href="mailto:contact@subvisual.co">reach out to us</a> if you don't have access.
