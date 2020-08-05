# homebrew-avo

This is the unoffical [Homebrew](https://brew.sh/) tap for AVO-related projects.

## Install

First, install Homebrew (only needed once, if not already installed):
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
Then, tap this repository (only needed once):
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

### *hourssince*
- Repo link: [usgs/volcano-ash3d-hourssince](https://github.com/usgs/volcano-ash3d-hourssince)

### *projection*
- Repo link: [usgs/volcano-ash3d-projection](https://github.com/usgs/volcano-ash3d-projection)

### *nrlmsise-00*
- Repo link: [graziano-giuliani/Meteostuff](https://github.com/graziano-giuliani/Meteostuff)

### *volcano-ash3d-metreader*
- Repo link: [usgs/volcano-ash3d-metreader](https://github.com/usgs/volcano-ash3d-metreader)

### *avog2s*
- Repo link: [usgs/volcano-avog2s](https://github.com/usgs/volcano-avog2s)

## More information

You can read up about Homebrew taps [here](https://docs.brew.sh/Taps). Having problems? Please [submit an issue](https://github.com/ibrewster/homebrew-avo/issues/new).

## Example
To install the hourssince package:

- If you do not have homebrew installed:
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
- Before the first time installing *any* packages from this repository
```
brew tap ibrewster/avo
```

- Then, install the package
```
brew install hourssince
```
- Later, to install other packages, you just need to run `brew install` with the short name of the package (projection, nrlmsise-00, etc)

- To upgrade the hourssince package after it has been installed, run:
```
brew upgrade hourssince
```