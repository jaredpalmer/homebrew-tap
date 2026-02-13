# jaredpalmer/homebrew-tap

Personal Homebrew tap for CLI tools.

## Install from this tap

```bash
brew tap jaredpalmer/tap
```

Install any formula in this tap:

```bash
brew install jaredpalmer/tap/<formula>
```

List available formulas:

```bash
brew search /jaredpalmer\/tap\//
```

## Current formulas

- `mogcli`

## Update an existing formula for a new release

1. Publish the CLI release artifacts first (for example on GitHub Releases).
2. Update `Formula/<formula>.rb` with the new `version`, `url` values, and `sha256` checksums.
3. Run a local install/test check.
4. Commit and push to `main`.

Example local check:

```bash
brew update
brew reinstall jaredpalmer/tap/<formula>
brew test jaredpalmer/tap/<formula>
```

## Add a new CLI formula

1. Create `Formula/<formula>.rb`.
2. Define `desc`, `homepage`, `license`, `version`, `url`, and `sha256`.
3. Add `install` and `test` blocks.
4. Commit and push to `main`.

## Repo layout

- `Formula/`: one Ruby formula file per tool.
