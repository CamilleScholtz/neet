# neet

## Usage

Edit `$HOME/.neet/list`, using the following syntax:
```
Nirvana in Fire
+ 31/54

Robber
5/20

...
```

`Nirvana in Fire` and `Robber` being the series names, `31/54` and
`5/20` being current-episode/total-episodes and `+` indicating the
show `neet` uses.

Use `neet` to launch mpv, it will automatically detect the right directory
and episode to play (hopefully). use the `-p` and `-n` flags to launch
the previous and next episode respectivly. It is possible to specify a value, for example `-n 10`
jumps 20 episodes.

`neet` will create a directory alias (in `$HOME/.neet/alias`) when you set a new active series or use
the `-r` argument, this is done for two reasons:
* It's makes `neet` slightly quicker by skipping the whole directory detection
  algorithm.
* If `neet` can't find the right directory somehow, you can specify it
  yourself in this file.

## Options

```
Usage: neet [options]

options:
  -a,   --alias           forgets current alias
  -d,   --debug           print some helpful debug ouput
  -e,   --edit            edit list
  -n,   --next            set and play next episode
  -p,   --previous        set and play previous episode
  -s,   --set             set and play specified episode
  -h,   --help            print help and exit
```

## Dependencies

* fish (2.3.0+)
* getopts
* mpv

## Installation

Run `make install` inside the script directory to install the script.
`neet` can be uninstalled easily using `make uninstall`.
`neet` can also be run from any directory like a normal script, you'll just be missing the automatic config file creation.

Edit `$HOME/.neet/config` to your liking, make sure to set the right `$mediadir`.

If use use CRUX you can also this port: https://github.com/6c37/crux-ports/tree/3.2/neet
