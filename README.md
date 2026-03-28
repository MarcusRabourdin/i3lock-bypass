# Bypass i3lock

## CARE

* I made this script for fun; I didn’t use it even for Confloose.
* If you want to use it, make sure you are allowed to.
* I decline all responsibility.

## How to use it

* All you have to do is run `./setup`.
* Then the bypass will be added to the binary directory and will run automatically.
* The next time the `i3lock` command is executed, a background process will kill it after 1 minute.
* You have 20 seconds to run the `bypass` command in any terminal to stop the background process.
* If you don’t, the script will automatically run `i3lock` again to keep its existence secret.


