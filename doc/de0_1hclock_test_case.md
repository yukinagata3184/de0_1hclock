# Test case for de0_1hclock
## seg7dec.v

## cnt1sec.v

## cnt60.v
| Case | Purpose | Check |
|:--|:--|---|
| digitlow and digitup be unsigned decimal 0 when RST rises. | Check RST rises |  |
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
