importwallet "filename"

Imports keys from a wallet dump file (see dumpwallet).

Arguments:
1. "filename"    (string, required) The wallet file

Examples:

Dump the wallet
> blackmore-cli dumpwallet "test"

Import the wallet
> blackmore-cli importwallet "test"

Import using the json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "importwallet", "params": ["test"] }' -H 'content-type: text/plain;' http://127.0.0.1:15715/

