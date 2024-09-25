## Purpose
- work-around to fix issue with unicode file name handling in `chdman` on windows
  - all unicode language should work
  - tested only for `Korean`

## Dependencies
- enable wsl2 first in windows 10/11 (tested on Ubuntu 22.04)
- add ppa for latest `MAME`
``` bash
sudo add-apt-repository ppa:c.falco/mame
```
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