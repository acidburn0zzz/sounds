# Redox OS Sound Effects

This repository contains all the sound effects in Redox OS.

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/80x15.png" /></a><br />
Everything here is licensed under a [Creative Commons Attribution 4.0 International License](http://creativecommons.org/licenses/by/4.0/).

**Note:** When using this content, please attribute the creator of the theme that the sound you use comes from, and reference Redox as well. If you use sounds from multiple themes/creators, credit every one. Thanks!

## Theme Credits

- **Rustic** was contributed by @polymetric1.

## Extra Info

Currently, all sounds are (and should be) encoded using the following `ffmpeg` settings:
```
ffmpeg.exe -y -i $i -sample_fmt:a s16 -c:a flac -ar:a 44100 -compression_level 12 -lpc_type cholesky -prediction_order_method log -exact_rice_parameters 1 flac/$name.flac;
```

If you put some WAV files into this directory, you can automatically convert them into flacs of this format automatically by running `./encode.sh`

We may switch to Opus in the future, but for such small files (and surprisingly good compression ratios, these flacs are ~70MB uncompressed, and only 1MB compressed)
