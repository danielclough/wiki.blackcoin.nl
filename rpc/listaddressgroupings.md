listaddressgroupings

Lists groups of addresses which have had their common ownership
made public by common use as inputs or as the resulting change
in past transactions

Result:
[
  [
    [
      "blackcoinaddress",     (string) The blackcoin address
      amount,                 (numeric) The amount in BLK
      "account"             (string, optional) The account (DEPRECATED)
    ]
    ,...
  ]
  ,...
]

Examples:
> blackmore-cli listaddressgroupings 
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "listaddressgroupings", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:15715/

