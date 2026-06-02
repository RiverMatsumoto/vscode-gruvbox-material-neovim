# Gruvbox Material Neovim for VS Code

The color palette is based on [f4z3r's Gruvbox Material Neovim theme](https://github.com/f4z3r/gruvbox-material.nvim/tree/master), which was the palette source for the original Zed port.

A VS Code color-theme port of RiverMatsumoto's Zed theme:
<https://github.com/RiverMatsumoto/zed-gruvbox-material-neovim>.

The palette follows the Zed version closely:

- Background: `#282828`
- Surface: `#32302f`
- Foreground: `#d4be98`
- Muted text/comments: `#7c6f64`
- Accent/variables/properties: `#7daea3`
- Keywords/errors: `#ea6962`
- Functions: `#a9b665`
- Types: `#d8a657`
- Strings: `#b3f6c0`

## Local Install

Run the local installer from this folder:

```powershell
.\install-vsix.cmd
```

That packages the theme as a `.vsix`, installs it into VS Code, and forces replacement of any previous local version. Reload VS Code, then select `Gruvbox Material Neovim Dark` from `Preferences: Color Theme`.

## Development

Open this folder in VS Code, press `F5`, and choose the theme in the extension development host. This is a JSON-only color theme, so there is no compile step beyond packaging the VSIX.

## Marketplace Publishing

See [PUBLISHING.md](./PUBLISHING.md) for the release checklist and Marketplace commands.
