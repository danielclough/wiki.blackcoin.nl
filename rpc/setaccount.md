setaccount "blackcoinaddress" "account"

DEPRECATED. Sets the account associated with the given address.

Arguments:
1. "blackcoinaddress"  (string, required) The blackcoin address to be associated with an account.
2. "account"         (string, required) The account to assign the address to.

Examples:
> blackmore-cli setaccount "1D1ZrZNe3JUo7ZycKEYQQiQAWd9y54F4XZ" "tabby"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "setaccount", "params": ["1D1ZrZNe3JUo7ZycKEYQQiQAWd9y54F4XZ", "tabby"] }' -H 'content-type: text/plain;' http://127.0.0.1:15715/

