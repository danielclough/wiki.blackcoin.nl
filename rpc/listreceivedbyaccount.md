listreceivedbyaccount ( minconf includeempty includeWatchonly)

DEPRECATED. List balances by account.

Arguments:
1. minconf      (numeric, optional, default=1) The minimum number of confirmations before payments are included.
2. includeempty (bool, optional, default=false) Whether to include accounts that haven't received any payments.
3. includeWatchonly (bool, optional, default=false) Whether to include watchonly addresses (see 'importaddress').

Result:
[
  {
    "involvesWatchonly" : true,   (bool) Only returned if imported addresses were involved in transaction
    "account" : "accountname",  (string) The account name of the receiving account
    "amount" : x.xxx,             (numeric) The total amount received by addresses with this account
    "confirmations" : n,          (numeric) The number of confirmations of the most recent transaction included
    "label" : "label"           (string) A comment for the address/transaction, if any
  }
  ,...
]

Examples:
> blackmore-cli listreceivedbyaccount 
> blackmore-cli listreceivedbyaccount 6 true
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listreceivedbyaccount", "params": [6, true, true] }' -H 'content-type: text/plain;' http://127.0.0.1:15715/

