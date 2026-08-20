# homebrew-qbz

Homebrew tap for [qbz](https://github.com/vicrodh/qbz).

```sh
brew install --cask afonsojramos/qbz/qbz
```

The cask installs the signed and notarized builds from
[qbz-macos](https://github.com/afonsojramos/qbz-macos). Those are upstream's own
binaries, re-signed under a personal Apple Developer account so macOS opens them
without a Gatekeeper detour. They are not official qbz builds.

Version bumps are pushed automatically by qbz-macos after a signed release is
published. Read that repo's README before installing if you care about provenance.
