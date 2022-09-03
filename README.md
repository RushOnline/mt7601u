# mt7601u tested for kernel 5.15

## Check Secude Boot Status

SecureBoot must be disabled to load unsigned modules.

```
$ sudo mokutil --sb-state
SecureBoot disabled
Platform is in Setup Mode
```

## DKMS install

```bash
$ sudo dkms install .
...
DKMS: install completed.

$ sudo dkms status 
mt7601u, 1.0, 5.15.0-46-generic, x86_64: installed
```

Now you can just plug your MT7601u device in and enjoy!
