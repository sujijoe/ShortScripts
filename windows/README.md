# Windows Scripts

Batch scripts (`.bat`) for Windows. Place them in a directory on your `PATH` (e.g. `C:\Tools\scripts`) so they can be called from any Command Prompt or PowerShell session.

> **Note:** `gc.` cannot be named with a trailing dot on Windows. The equivalent script is `gcd.bat`.

## Git

| Script | Command | Description |
|--------|---------|-------------|
| `gacp.bat` | `git add . && git commit -m "..." && git push` | Prompt for a commit message, stage all changes, commit, and push to the current branch |
| `gc.bat <branch>` | `git checkout <branch>` | Checkout a branch by name |
| `gcd.bat` | `git checkout .` | Discard all unstaged changes in the working directory (equivalent of `gc.` on Mac/Linux) |
| `gcfd.bat` | `git clean -fd` | Remove untracked files and directories |
| `gp.bat` | `git pull` | Pull latest changes from remote |
| `gpuo.bat` | `git push -u origin <current-branch>` | Push current branch to origin and set upstream |
| `grh.bat` | `git reset --hard` | Hard reset to HEAD |
| `grho.bat` | `git reset --hard origin/<current-branch>` | Hard reset to the remote tracking branch |
| `gs.bat` | `git status` | Show working tree status |

## npm

| Script | Command | Description |
|--------|---------|-------------|
| `nb.bat` | `npm run build` | Run the build script |
| `nsd.bat` | `npm run start:dev` | Start the app in development mode |
| `nt.bat` | `npm run test` | Run tests |

## Other

| Script | Description |
|--------|-------------|
| `itabs.bat` | Opens four tabs in **Windows Terminal** (`wt`): iOS project, Android project, MM (Java), and a Multipass VM shell. Requires [Windows Terminal](https://aka.ms/terminal) to be installed. |
| `mm.bat` | `cd` into the MM project directory and run `java MM` |
