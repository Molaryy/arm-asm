### How to test?

```sh
make
# Verify existing permissions of the file
ls -l /tmp/newfile
# should be .rw-r--r--
./ChmodFile
ls -l /tmp/newfile
# should be .rwxrwxrwx
```

