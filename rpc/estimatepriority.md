estimatepriority nblocks

Estimates the approximate priority a zero-fee transaction needs to begin
confirmation within nblocks blocks.

Arguments:
1. nblocks     (numeric)

Result:
n              (numeric) estimated priority

A negative value is returned if not enough transactions and blocks
have been observed to make an estimate.

Example:
> blackmore-cli estimatepriority 6

