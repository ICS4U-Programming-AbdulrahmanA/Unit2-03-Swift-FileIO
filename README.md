# Unit2-03-Swift-FileIO

This program reads comma- or space-separated integers from `input.txt`,
skips blank lines, writes an error message for each invalid value, and writes
the sum of all valid integers to `output.txt`.

Run it from this directory with:

```sh
swift FileIO.swift
```

With the sample input, the valid values total `10 + 20 + 30 + 4 + 6 - 8 - 2
+ 5 = 65`, so the output contains an invalid-input message followed by `65`.