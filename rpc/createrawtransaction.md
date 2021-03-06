createrawtransaction [{"txid":"id","vout":n},...] {"address":amount,"data":"hex",...} ( locktime )

Create a transaction spending the given inputs and creating new outputs.
Outputs can be addresses or data.
Returns hex-encoded raw transaction.
Note that the transaction's inputs are not signed, and
it is not stored in the wallet or transmitted to the network.

Arguments:
1. "transactions"        (string, required) A json array of json objects
     [
       {
         "txid":"id",    (string, required) The transaction id
         "vout":n        (numeric, required) The output number
         "sequence":n    (numeric, optional) The sequence number
       }
       ,...
     ]
2. "outputs"             (string, required) a json object with outputs
    {
      "address": x.xxx   (numeric or string, required) The key is the bitcoin address, the numeric value (can be string) is the BLK amount
      "data": "hex",     (string, required) The key is "data", the value is hex encoded data
      ...
    }
3. locktime                (numeric, optional, default=0) Raw locktime. Non-0 value also locktime-activates inputs

Result:
"transaction"            (string) hex string of the transaction

Examples
> blackmore-cli createrawtransaction "[{\"txid\":\"myid\",\"vout\":0}]" "{\"address\":0.01}"
> blackmore-cli createrawtransaction "[{\"txid\":\"myid\",\"vout\":0}]" "{\"data\":\"00010203\"}"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "createrawtransaction", "params": ["[{\"txid\":\"myid\",\"vout\":0}]", "{\"address\":0.01}"] }' -H 'content-type: text/plain;' http://127.0.0.1:15715/
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "createrawtransaction", "params": ["[{\"txid\":\"myid\",\"vout\":0}]", "{\"data\":\"00010203\"}"] }' -H 'content-type: text/plain;' http://127.0.0.1:15715/

