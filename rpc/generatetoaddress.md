generatetoaddress numblocks address (maxtries)

Mine blocks immediately to a specified address (before the RPC call returns)

Arguments:
1. numblocks    (numeric, required) How many blocks are generated immediately.
2. address    (string, required) The address to send the newly generated bitcoin to.
3. maxtries     (numeric, optional) How many iterations to try (default = 1000000).

Result
[ blockhashes ]     (array) hashes of blocks generated

Examples:

Generate 11 blocks to myaddress
> blackmore-cli generatetoaddress 11 "myaddress"

