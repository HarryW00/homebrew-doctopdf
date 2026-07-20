# 🍺 Homebrew Tap for doctopdf

**[doctopdf](https://github.com/HarryW00/doctopdf)** — Offline batch .doc/.docx → PDF converter using Microsoft Word on macOS.

## Install

```bash
brew install harryw00/doctopdf/doctopdf
```

Or tap first (so you can refer to it by short name):

```bash
brew tap harryw00/doctopdf
brew install doctopdf
```

Then run:

```bash
convert-word-pdf --input ./docs --output ./pdfs
```

## Requirements

- macOS 11 (Big Sur) or newer
- Microsoft Word for Mac (2019 or Microsoft 365)
- Automation permission granted on first use

## Formula

The formula lives in [`Formula/doctopdf.rb`](./Formula/doctopdf.rb). It uses Homebrew's standard `virtualenv_install_with_resources` pattern to install the Python package from the [GitHub release tarball](https://github.com/HarryW00/doctopdf).

## Updating

When a new version of `doctopdf` is released, update the formula:

```bash
# Fetch the new tarball and compute checksum
curl -sL "https://github.com/HarryW00/doctopdf/archive/refs/tags/v<version>.tar.gz" | shasum -a 256

# Edit the version and sha256 in Formula/doctopdf.rb
# Commit and push
```
