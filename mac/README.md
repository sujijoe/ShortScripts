# Mac Scripts

Shell scripts for macOS. Place them in a directory on your `PATH` (e.g. `/usr/local/bin`) and make them executable with `chmod +x <script>`.

## Git

| Script | Command | Description |
|--------|---------|-------------|
| `gacp` | `git add . && git commit -m "..." && git push` | Prompt for a commit message, stage all changes, commit, and push to the current branch |
| `gc <branch>` | `git checkout <branch>` | Checkout a branch by name |
| `gc.` | `git checkout .` | Discard all unstaged changes in the working directory |
| `gcfd` | `git clean -fd` | Remove untracked files and directories |
| `gp` | `git pull` | Pull latest changes from remote |
| `gpuo` | `git push -u origin <current-branch>` | Push current branch to origin and set upstream |
| `grh` | `git reset --hard` | Hard reset to HEAD |
| `grho` | `git reset --hard origin/<current-branch>` | Hard reset to the remote tracking branch |
| `gs` | `git status` | Show working tree status |

## npm

| Script | Command | Description |
|--------|---------|-------------|
| `nb` | `npm run build` | Run the build script |
| `nsd` | `npm run start:dev` | Start the app in development mode |
| `nt` | `npm run test` | Run tests |

## Other

| Script | Description |
|--------|-------------|
| `itabs` | Opens four Terminal tabs: iOS project, Android project, MM (Java), and a Multipass VM shell. Starts the VM if it is not already running. Uses AppleScript (`osascript`). |
| `mm` | `cd` into the MM project directory and run `java MM` |
