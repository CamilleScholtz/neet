# neet

A script to easily play and manage your anime/drama/series.


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
`5/20` being current-episode/total-episodes and the `+` prefix indicating the
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


## Help

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
* getopts (https://github.com/fisherman/getopts)
* mpv (optional, you can configure this script to use a different media player)


## Installation

Run `make install` inside the `neet` directory to install the script.
`neet` can be uninstalled easily using `make uninstall`.
`neet` can also be run from any directory like a normal script.
Be sure to copy `./configs/{config,list}` or `/usr/share/neet/{config,list}` to `$HOME/.neet`.

Edit `$HOME/.neet/config` to your liking, make sure to set the right `$mediadir`.

If you use CRUX you can also install using this port: https://github.com/6c37/crux-ports-git/tree/3.2/neet


## Notes

`neet` ships with a fish function named `cdv`, which cds to the active show directory.

Surlent created a perl script inspired by `neet`, be sure to check it out:
https://bitbucket.org/surlent777/neet/src
