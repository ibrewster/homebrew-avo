# homebrew-avog2s

This is the unoffical [Homebrew](https://brew.sh/) tap for [AVO-G2S](https://github.com/usgs/volcano-avog2s) ([Schwaiger *et al.*, 2019](https://doi.org/10.1016/j.cageo.2018.12.013)).

## Install

First, install Homebrew:
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
Then, tap this repository:
```
brew tap ibrewster/avo
```
You may then view information about the tap's formulae using
```
brew info <formula_name>
```
and you can install a formula with
```
brew install <formula_name>
```
where `<formula_name>` is any of the filenames (minus extension) contained in the repository.

## Currently supported formulae

### *HoursSince*
[usgs/volcano-ash3d-hourssince](https://github.com/usgs/volcano-ash3d-hourssince)

### *projection*
[usgs/volcano-ash3d-projection](https://github.com/usgs/volcano-ash3d-projection)

### *nrlmsise-00.rb*
[graziano-giuliani/Meteostuff](https://github.com/graziano-giuliani/Meteostuff)

### *volcano-ash3d-metreader*
[usgs/volcano-ash3d-metreader](https://github.com/usgs/volcano-ash3d-metreader)

### *avog2s*
[usgs/volcano-avog2s](https://github.com/usgs/volcano-avog2s)

## More information

You can read up about Homebrew taps [here](https://docs.brew.sh/Taps). Having problems? Please [submit an issue](https://github.com/liamtoney/homebrew-avog2s/issues/new).
