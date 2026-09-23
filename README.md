# homebrew-tap

Personal Homebrew tap for my own software (CLI formulae and macOS casks).

## Install

```sh
brew install --cask barcia/tap/darkview
```

The fully qualified name does everything in one step: it adds the tap, marks it
as trusted and installs. Homebrew requires third-party taps to be trusted before
it will load them, since formulae and casks are Ruby files it executes.

If you plan to install more than one thing from here, trust the whole tap once
and use short names from then on:

```sh
brew tap barcia/tap
brew trust barcia/tap
brew install --cask darkview
```

## Casks

| Cask | Description |
| ---- | ----------- |
| [`beancount-desktop`](Casks/beancount-desktop.rb) | Native Mac app for Beancount plain-text accounting ledgers — [beancount.barcia.dev](https://beancount.barcia.dev/) |
| [`darkview`](Casks/darkview.rb) | Photo viewer and organiser with RAW support, EXIF editing and geotagging — [darkview.barcia.dev](https://darkview.barcia.dev/) |

## Formulae

None yet.

## Updates

Casks marked `auto_updates true` keep themselves up to date through their own
updater, so `brew upgrade` skips them on purpose and the version Homebrew
reports will lag behind the installed app. That is expected. To make Homebrew
reinstall one from the current cask anyway:

```sh
brew upgrade --cask --greedy darkview
```

## Uninstall

```sh
brew uninstall --cask darkview
```

Add `--zap` to also remove preferences, caches and application support data.

## Layout

- `Casks/` — macOS application casks
- `Formula/` — CLI formulae
