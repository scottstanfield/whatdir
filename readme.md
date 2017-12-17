# Toy example demonstrating paths and readlink and linked bash scripts

This is how you symlink a pointer to a bash executable that calls a
Python script. It's all about managing paths with GNU `readlink`.

Only works in Linux. For Mac, you need GNU `readlink` (install from brew
install coreutils) and change script to call `greadlink`

To test, clone this repo to a tmp folder somewhere like ~/tmp/whatdir.
Then:

```
./install.sh
cd ~
./whatdir
```


- `~/whatdir` is linked to `~/tmp/whatdir/main.sh`
- `main.sh` figures out local path and executes `main.py`
- `main.py` arbitrarily imports another python file in current folder


