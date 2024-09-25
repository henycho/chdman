## Purpose
- work-around for `chdman` unicode handling file name on windows
  - all unicode language should work
  - tested only `Korean`

## Dependencies
- enable wsl2 first in windows 10/11
- add ppa mame
- install mame-tools
``` bash
sudo apt install mame-tools
```

## feature
- `.cue` `.iso` `.gdi` to `.chd` in given directory recursively

## Usage
``` bash
./iso2chd.sh "/mnt/g/Collections/roms/psp/"
```