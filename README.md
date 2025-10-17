**#!** -- The shebang line (also called hashbang) is the first line in a shell script, and it tells the system which interpreter should be used to execute the script.
```
#!/path/to/interpreter
```
- When you run a script directly (like ./script.sh), the Linux kernel reads the first two characters: #!, and interprets the rest of that line as the path to the program that should interpret the script.
- So the kernel starts that program and passes your script as an argument to it.
- when you run ./hello.sh, linux actually runs /bin/bash ./hello.sh in the backgroud

| Interpreter | Shebang                                |
| ----------- | -------------------------------------- |
| Bash        | `#!/bin/bash` or `#!/usr/bin/env bash` |
| Sh          | `#!/bin/sh`                            |
| Python      | `#!/usr/bin/python3`                   |
| Perl        | `#!/usr/bin/perl`                      |
| Node.js     | `#!/usr/bin/env node`                  |
