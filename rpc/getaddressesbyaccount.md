getaddressesbyaccount "account"

DEPRECATED. Returns the list of addresses for the given account.

Arguments:
1. "account"  (string, required) The account name.

Result:
[                     (json array of string)
  "blackcoinaddress"  (string) a blackcoin address associated with the given account
  ,...
]

Examples:
> blackmore-cli getaddressesbyaccount "tabby"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getaddressesbyaccount", "params": ["tabby"] }' -H 'content-type: text/plain;' http://127.0.0.1:15715/

