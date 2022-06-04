getreceivedbyaddress "blackcoinaddress" ( minconf )

Returns the total amount received by the given blackcoin address in transactions with at least minconf confirmations.

Arguments:
1. "blackcoinaddress"  (string, required) The blackcoin address for transactions.
2. minconf             (numeric, optional, default=1) Only include transactions confirmed at least this many times.

Result:
amount   (numeric) The total amount in BLK received at this address.

Examples:

The amount from transactions with at least 1 confirmation
> blackmore-cli getreceivedbyaddress "1D1ZrZNe3JUo7ZycKEYQQiQAWd9y54F4XZ"

The amount including unconfirmed transactions, zero confirmations
> blackmore-cli getreceivedbyaddress "1D1ZrZNe3JUo7ZycKEYQQiQAWd9y54F4XZ" 0

The amount with at least 6 confirmation, very safe
> blackmore-cli getreceivedbyaddress "1D1ZrZNe3JUo7ZycKEYQQiQAWd9y54F4XZ" 6

As a json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getreceivedbyaddress", "params": ["1D1ZrZNe3JUo7ZycKEYQQiQAWd9y54F4XZ", 6] }' -H 'content-type: text/plain;' http://127.0.0.1:15715/

