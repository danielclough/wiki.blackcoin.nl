settxfee amount

Set the transaction fee per kB. Overwrites the paytxfee parameter.

Arguments:
1. amount         (numeric or string, required) The transaction fee in BLK/kB

Result
true|false        (boolean) Returns true if successful

Examples:
> blackmore-cli settxfee 0.00001
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "settxfee", "params": [0.00001] }' -H 'content-type: text/plain;' http://127.0.0.1:15715/

