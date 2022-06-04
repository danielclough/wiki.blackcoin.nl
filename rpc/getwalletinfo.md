getwalletinfo
Returns an object containing various wallet state info.

Result:
{
  "walletversion": xxxxx,       (numeric) the wallet version
  "total_balance": xxxxxxx,     (numeric) the total balance of the wallet in BLK
  "balance": xxxxxxx,           (numeric) the total confirmed balance of the wallet in BLK
  "staked_balance": xxxxxx,     (numeric) the total staked balance of the wallet in BLK
  "unconfirmed_balance": xxx,   (numeric) the total unconfirmed balance of the wallet in BLK
  "immature_balance": xxxxxx,   (numeric) the total immature balance of the wallet in BLK
  "txcount": xxxxxxx,           (numeric) the total number of transactions in the wallet
  "keypoololdest": xxxxxx,      (numeric) the timestamp (seconds since Unix epoch) of the oldest pre-generated key in the key pool
  "keypoolsize": xxxx,          (numeric) how many new keys are pre-generated
  "unlocked_until": ttt,        (numeric) the timestamp in seconds since epoch (midnight Jan 1 1970 GMT) that the wallet is unlocked for transfers, or 0 if the wallet is locked
  "paytxfee": x.xxxx,           (numeric) the transaction fee configuration, set in BLK/kB
  "hdmasterkeyid": "<hash160>", (string) the Hash160 of the HD master pubkey
}

Examples:
> blackmore-cli getwalletinfo 
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getwalletinfo", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:15715/

