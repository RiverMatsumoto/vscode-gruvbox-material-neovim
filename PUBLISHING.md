# Publishing

Official guide: <https://code.visualstudio.com/api/working-with-extensions/publishing-extension>

## One-Time Setup

1. Create or confirm the Visual Studio Marketplace publisher ID from the publisher management page: <https://marketplace.visualstudio.com/manage/publishers/>.
2. Make sure `package.json` has the same `publisher` value. This package currently uses `river-matsumoto`.
3. Create an Azure DevOps Personal Access Token with Marketplace `Manage` scope. Select `All accessible organizations` for the token organization.
4. Log in with vsce:

```powershell
npm exec --yes @vscode/vsce -- login river-matsumoto
```

Paste the PAT when prompted. Do not commit or paste the PAT into files.

## Package Locally

```powershell
npm run package
```

This creates `gruvbox-material-neovim-<version>.vsix`.

## Publish

```powershell
npm run publish:marketplace
```

For a patch version bump and publish in one command:

```powershell
npm exec --yes @vscode/vsce -- publish patch
```

## Manual Upload

You can also run `npm run package` and upload the `.vsix` manually from the Marketplace publisher management page.
