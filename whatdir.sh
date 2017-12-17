#!/bin/bash


# I usually create bash scripts deep in a folder structure that requires the
# current directory to be set to whatever folder it lives in. Then I symlink
# ln- s to that file to something in /usr/local/bin.

# Taken from these [tips](https://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within)

# The last line above is usually the one you want. Like this:

# ```
# #!/bin/bash
# CD=$(dirname $(readlink -f $0))"
# cd $CD
# ```

echo "pwd: `pwd`"
echo "\$0: $0"
echo "basename: `basename $0`"
echo "dirname: `dirname $0`"
echo "dirname/readlink: $(dirname $(readlink -f $0))"
