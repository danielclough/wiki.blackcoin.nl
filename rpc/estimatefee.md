estimatefee nblocks

Estimates the approximate fee per kilobyte needed for a transaction to begin
confirmation within nblocks blocks.

Arguments:
1. nblocks     (numeric)

Result:
n              (numeric) estimated fee-per-kilobyte

A negative value is returned if not enough transactions and blocks
have been observed to make an estimate.
-1 is always returned for nblocks == 1 as it is impossible to calculate
a fee that is high enough to get reliably included in the next block.

Example:
> blackmore-cli estimatefee 6

