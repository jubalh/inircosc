inircosc
========

inircosc is an **in**teractive **ir**ssi **co**nfiguration **sc**ript.

How you get it
==============
`git clone https://github.com/jubalh/inircosc.git`

Run it
======

`cd inircosc`

`./inircosc.sh`

What it will do
===============
If you already have an irssi `config` file in `~/.irssi/` then inircosc will move it to `~/.irssi.config.old`.

After that it will walk you through the setup. Should be quite self explaining.
Sometimes you have to choose if you want a specific setting or not. To let you jump over these steps quickly inircosc uses default settings.
You will see the default value in paranthesis, so if you just press `Enter` it will take this value.

Sometimes no user input will tell the script that you are finished with this option.
For example if you added a server, inircosc asks you for another. If skip it with `Enter` the script will continue.

However if you skip over things like setting your username, then the username will just be empty.
