# Test case for de0_1hclock
## seg7dec.v

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
| digitlow and digitup be unsigned decimal 0 when RST rises | Check RST rises |  |
| digitlow 0 -> 1 when CLK rises (RST is LOW) | Check edge case |  |
| digitlow 1 -> 2 when CLK rises (RST is LOW) | Check edge case |  |
| digitlow 2 -> 3 when CLK rises (RST is LOW) | Check edge case |  |
| digitlow 3 -> 4 when CLK rises (RST is LOW) | Check edge case |  |
| digitlow 4 -> 5 when CLK rises (RST is LOW) | Check center case |  |
| digitlow 5 -> 6 when CLK rises (RST is LOW) | Check center case |  |
| digitlow 6 -> 7 when CLK rises (RST is LOW) | Check center case |  |
| digitlow 7 -> 8 when CLK rises (RST is LOW) | Check edge case |  |
| digitlow 8 -> 9 when CLK rises (RST is LOW) | Check edge case |  |
| digitlow 9 -> 0 when CLK rises (RST is LOW) | Check edge case |  |
| digitup  0 -> 1 when CLK rises and digitlow 9 -> 0 (RST is LOW) | Check edge case |  |
| digitup  1 -> 2 when CLK rises and digitlow 9 -> 0 (RST is LOW) | Check edge case |  |
| digitup  2 -> 3 when CLK rises and digitlow 9 -> 0 (RST is LOW) | Check center case |  |
| digitup  3 -> 4 when CLK rises and digitlow 9 -> 0 (RST is LOW) | Check center case |  |
| digitup  4 -> 5 when CLK rises and digitlow 9 -> 0 (RST is LOW) | Check center case |  |
| digitup  5 -> 6 when CLK rises and digitlow 9 -> 0 (RST is LOW) | Check edge case |  |
| digitup  6 -> 0 when CLK rises and digitlow 9 -> 0 (RST is LOW) | Check edge case |  |

## de0_1hclock.v
