gettxout "txid" n ( includemempool )

Returns details about an unspent transaction output.

Arguments:
1. "txid"       (string, required) The transaction id
2. n              (numeric, required) vout number
3. includemempool  (boolean, optional) Whether to include the mempool

Result:
{
  "bestblock" : "hash",    (string) the block hash
  "confirmations" : n,       (numeric) The number of confirmations
  "value" : x.xxx,           (numeric) The transaction value in BLK
  "scriptPubKey" : {         (json object)
     "asm" : "code",       (string) 
     "hex" : "hex",        (string) 
     "reqSigs" : n,          (numeric) Number of required signatures
     "type" : "pubkeyhash", (string) The type, eg pubkeyhash
     "addresses" : [          (array of string) array of blackcoin addresses
        "blackcoinaddress"     (string) blackcoin address
        ,...
     ]
  },
  "version" : n,            (numeric) The version
  "coinbase" : true|false   (boolean) Coinbase or not
  "coinstake" : true|false  (boolean) Coinstake or not
}

Examples:

Get unspent transactions
> blackmore-cli listunspent 

View the details
> blackmore-cli gettxout "txid" 1

As a json rpc call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "gettxout", "params": ["txid", 1] }' -H 'content-type: text/plain;' http://127.0.0.1:15715/

