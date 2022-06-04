getaccount "blackcoinaddress"

DEPRECATED. Returns the account associated with the given address.

Arguments:
1. "blackcoinaddress"  (string, required) The blackcoin address for account lookup.

Result:
"accountname"        (string) the account address

Examples:
> blackmore-cli getaccount "1D1ZrZNe3JUo7ZycKEYQQiQAWd9y54F4XZ"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getaccount", "params": ["1D1ZrZNe3JUo7ZycKEYQQiQAWd9y54F4XZ"] }' -H 'content-type: text/plain;' http://127.0.0.1:15715/

