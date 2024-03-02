# Test case for de0_1hclock
## seg7dec.v
| Case | Purpose | Check |
|:--|:--|---|
| nSEGUP 100_0000 when dinup 0 | Check 7SEG LED | https://github.com/yukinagata3184/de0_1hclock/issues/4 |
| nSEGUP 111_1001 when dinup 1 | Check 7SEG LED | https://github.com/yukinagata3184/de0_1hclock/issues/4 |
| nSEGUP 010_0100 when dinup 2 | Check 7SEG LED | https://github.com/yukinagata3184/de0_1hclock/issues/4 |
| nSEGUP 011_0000 when dinup 3 | Check 7SEG LED | https://github.com/yukinagata3184/de0_1hclock/issues/4 |
| nSEGUP 001_1001 when dinup 4 | Check 7SEG LED | https://github.com/yukinagata3184/de0_1hclock/issues/4 |
| nSEGUP 001_0010 when dinup 5 | Check 7SEG LED | https://github.com/yukinagata3184/de0_1hclock/issues/4 |
| nSEGUP 000_0010 when dinup 6 | Check 7SEG LED | https://github.com/yukinagata3184/de0_1hclock/issues/4 |
| nSEGLOW 100_0000 when dinlow 0 | Check 7SEG LED | https://github.com/yukinagata3184/de0_1hclock/issues/4 |
| nSEGLOW 111_1001 when dinlow 1 | Check 7SEG LED | https://github.com/yukinagata3184/de0_1hclock/issues/4 |
| nSEGLOW 010_0100 when dinlow 2 | Check 7SEG LED | https://github.com/yukinagata3184/de0_1hclock/issues/4 |
| nSEGLOW 011_0000 when dinlow 3 | Check 7SEG LED | https://github.com/yukinagata3184/de0_1hclock/issues/4 |
| nSEGLOW 001_1001 when dinlow 4 | Check 7SEG LED | https://github.com/yukinagata3184/de0_1hclock/issues/4 |
| nSEGLOW 001_0010 when dinlow 5 | Check 7SEG LED | https://github.com/yukinagata3184/de0_1hclock/issues/4 |
| nSEGLOW 000_0010 when dinlow 6 | Check 7SEG LED | https://github.com/yukinagata3184/de0_1hclock/issues/4 |
| nSEGLOW 101_1000 when dinlow 7 | Check 7SEG LED | https://github.com/yukinagata3184/de0_1hclock/issues/4 |
| nSEGLOW 000_0000 when dinlow 8 | Check 7SEG LED | https://github.com/yukinagata3184/de0_1hclock/issues/4 |
| nSEGLOW 001_0000 when dinlow 9 | Check 7SEG LED | https://github.com/yukinagata3184/de0_1hclock/issues/4 |

## cnt1sec.v
| Case | Purpose | Check |
|:--|:--|---|
| gen1hz and cnt50mhz be unsigned decimal 0 when RST rises | Check RST rises | https://github.com/yukinagata3184/de0_1hclock/pull/11 |
| cnt50mhz unsigned decimal 0 -> 1 when CLK rises (RST is LOW) | Check edge case | https://github.com/yukinagata3184/de0_1hclock/pull/11 |
| cnt50mhz unsigned decimal 1 -> 2 when CLK rises (RST is LOW) | Check edge case | https://github.com/yukinagata3184/de0_1hclock/pull/11 |
| cnt50mhz unsigned decimal 25_999_998 -> 25_999_999 when CLK rises (RST is LOW) | Check center case | https://github.com/yukinagata3184/de0_1hclock/pull/11 |
| cnt50mhz unsigned decimal 25_999_999 -> 26_000_000 when CLK rises (RST is LOW) | Check center case | https://github.com/yukinagata3184/de0_1hclock/pull/11 |
| cnt50mhz unsigned decimal 49_999_998 -> 49_999_999 when CLK rises (RST is LOW) | Check edge case | https://github.com/yukinagata3184/de0_1hclock/pull/11 |
| cnt50mhz unsigned decimal 49_999_999 -> 0 when CLK rises (RST is LOW) | Check edge case | https://github.com/yukinagata3184/de0_1hclock/pull/11 |
| gen1hz 0 -> 1 when cnt50mhz unsigned decimal 49_999_998 -> 49_999_999 (RST is LOW) | Check generate 1hz | https://github.com/yukinagata3184/de0_1hclock/pull/11 |
| gen1hz 1 -> 0 when cnt50mhz unsigned decimal 49_999_999 -> 0 (RST is LOW) | Check generate 1hz | https://github.com/yukinagata3184/de0_1hclock/pull/11 |

## cnt60.v
| Case | Purpose | Check |
|:--|:--|---|
| digitlow and digitup be unsigned decimal 0 when RST rises | Check RST rises | https://github.com/yukinagata3184/de0_1hclock/issues/23 |
| digitlow 0 -> 1 when CLK rises (RST is LOW) | Check edge case | https://github.com/yukinagata3184/de0_1hclock/issues/23 |
| digitlow 1 -> 2 when CLK rises (RST is LOW) | Check edge case | https://github.com/yukinagata3184/de0_1hclock/issues/23 |
| digitlow 2 -> 3 when CLK rises (RST is LOW) | Check edge case | https://github.com/yukinagata3184/de0_1hclock/issues/23 |
| digitlow 3 -> 4 when CLK rises (RST is LOW) | Check edge case | https://github.com/yukinagata3184/de0_1hclock/issues/23 |
| digitlow 4 -> 5 when CLK rises (RST is LOW) | Check center case | https://github.com/yukinagata3184/de0_1hclock/issues/23 |
| digitlow 5 -> 6 when CLK rises (RST is LOW) | Check center case | https://github.com/yukinagata3184/de0_1hclock/issues/23 |
| digitlow 6 -> 7 when CLK rises (RST is LOW) | Check center case | https://github.com/yukinagata3184/de0_1hclock/issues/23 |
| digitlow 7 -> 8 when CLK rises (RST is LOW) | Check edge case | https://github.com/yukinagata3184/de0_1hclock/issues/23 |
| digitlow 8 -> 9 when CLK rises (RST is LOW) | Check edge case | https://github.com/yukinagata3184/de0_1hclock/issues/23 |
| digitlow 9 -> 0 when CLK rises (RST is LOW) | Check edge case | https://github.com/yukinagata3184/de0_1hclock/issues/23 |
| digitup  0 -> 1 when CLK rises and digitlow 9 -> 0 (RST is LOW) | Check edge case | https://github.com/yukinagata3184/de0_1hclock/issues/23 |
| digitup  1 -> 2 when CLK rises and digitlow 9 -> 0 (RST is LOW) | Check edge case | https://github.com/yukinagata3184/de0_1hclock/issues/23 |
| digitup  2 -> 3 when CLK rises and digitlow 9 -> 0 (RST is LOW) | Check center case | https://github.com/yukinagata3184/de0_1hclock/issues/23 |
| digitup  3 -> 4 when CLK rises and digitlow 9 -> 0 (RST is LOW) | Check center case | https://github.com/yukinagata3184/de0_1hclock/issues/23 |
| digitup  4 -> 5 when CLK rises and digitlow 9 -> 0 (RST is LOW) | Check edge case | https://github.com/yukinagata3184/de0_1hclock/issues/23 |
| digitup  5 -> 0 when CLK rises and digitlow 9 -> 0 (RST is LOW) | Check edge case | https://github.com/yukinagata3184/de0_1hclock/issues/23 |
| ca LOW-> HIGH when digitup is 5 and digitlow 8 -> 9 (RST is LOW) | Check ca | https://github.com/yukinagata3184/de0_1hclock/issues/23 |
| ca HIGH-> LOW when digitup 5 -> 0 and digitlow 9 -> 0 (RST is LOW) | Check ca | https://github.com/yukinagata3184/de0_1hclock/issues/23 |

## de0_1hclock.v
| Case | Purpose | Check |
|:--|:--|---|
| nSEG0~3 are 100_0000(0) when RST rises | Check RST rises |  |
| nSEG0 is 111_1001(1) when seclow 4'd1 (gen1hz HIGH) | Check output |  |
| nSEG0 is 010_0100(2) when seclow 4'd2 (gen1hz HIGH) | Check output |  |
| nSEG0 is 001_0000(9) when seclow 4'd9 (gen1hz HIGH) | Check output |  |
| nSEG0 is 100_0000(0) and nSEG1 is 111_1001(1) when seclow 4'd0 and secup 3'd1 (gen1hz HIGH) | Check output |  |
| nSEG0 is 001_0000(9) and nSEG1 is 001_0010(5) when seclow 4'd9 and secup 3'd5 (gen1hz HIGH) | Check output |  |
| nSEG2 is 111_1001(1) when minlow 4'd1 (gen1hz HIGH) | Check output |  |
| nSEG2 is 010_0100(2) when minlow 4'd2 (gen1hz HIGH) | Check output |  |
| nSEG2 is 001_0000(9) when minlow 4'd9 (gen1hz HIGH) | Check output |  |
| nSEG2 is 100_0000(0) and nSEG3 is 111_1001(1) when minlow 4'd0 and minup 3'd1 (gen1hz HIGH) | Check output |  |
| nSEG2 is 001_0000(9) and nSEG3 is 001_0010(5) when minlow 4'd9 and minup 3'd5 (gen1hz HIGH) | Check output |  |
| nSEG2 is 100_0000(0) and nSEG3 is 100_0000(0) when minlow 4'd0 and minup 3'd0 (gen1hz HIGH) | Check output |  |