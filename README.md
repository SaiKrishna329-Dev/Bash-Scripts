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

## Commonly Used File Test Operators in Bash:

| Operator | Meaning                                 | Example                 |
| -------- | --------------------------------------- | ----------------------- |
| `-e`     | File or directory exists                | `[[ -e file.txt ]]`     |
| `-f`     | Regular file (not directory)            | `[[ -f file.txt ]]`     |
| `-d`     | Directory exists                        | `[[ -d /etc ]]`         |
| `-r`     | Readable                                | `[[ -r file.txt ]]`     |
| `-w`     | Writable                                | `[[ -w file.txt ]]`     |
| `-x`     | Executable                              | `[[ -x script.sh ]]`    |
| `-s`     | File exists and is **not empty**        | `[[ -s file.txt ]]`     |
| `-L`     | Symbolic link                           | `[[ -L linkfile ]]`     |
| `-nt`    | Newer than (based on modification time) | `[[ file1 -nt file2 ]]` |
| `-ot`    | Older than                              | `[[ file1 -ot file2 ]]` |


| Operator | Description                   | Example           | Result           |
| -------- | ----------------------------- | ----------------- | ---------------- |
| `-z`     | True if variable is empty     | `[[ -z "$var" ]]` | Empty → True     |
| `-n`     | True if variable is not empty | `[[ -n "$var" ]]` | Non-empty → True |

| Feature               | `cut`                   | `awk`                             |
| --------------------- | ----------------------- | --------------------------------- |
| **Purpose**           | Extracts columns        | Extracts + processes              |
| **Delimiter**         | Simple (`-d`)           | Flexible (`-F` or regex)          |
| **Condition support** | ❌ No                    | ✅ Yes (`if`, `>`, etc.)           |
| **Formatting**        | Basic                   | Advanced                          |
| **Performance**       | Faster for simple tasks | More powerful but slightly slower |
| **Use case**          | Simple splits           | Logic, filtering, calculations    |
