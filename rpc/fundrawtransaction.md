fundrawtransaction "hexstring" ( options )

Add inputs to a transaction until it has enough in value to meet its out value.
This will not modify existing inputs, and will add one change output to the outputs.
Note that inputs which were signed may need to be resigned after completion since in/outputs have been added.
The inputs added will not be signed, use signrawtransaction for that.
Note that all existing inputs must have their previous output transaction be in the wallet.
Note that all inputs selected must be of standard form and P2SH scripts must be
in the wallet using importaddress or addmultisigaddress (to calculate fees).
You can see whether this is the case by checking the "solvable" field in the listunspent output.
Only pay-to-pubkey, multisig, and P2SH versions thereof are currently supported for watch-only

Arguments:
1. "hexstring"           (string, required) The hex string of the raw transaction
2. options               (object, optional)
   {
     "changeAddress"     (string, optional, default pool address) The blackcoin address to receive the change
     "changePosition"    (numeric, optional, default random) The index of the change output
     "includeWatching"   (boolean, optional, default false) Also select inputs which are watch only
     "lockUnspents"      (boolean, optional, default false) Lock selected unspent outputs
     "feeRate"           (numeric, optional, default not set: makes wallet determine the fee) Set a specific feerate (BLK per KB)
   }
                         for backward compatibility: passing in a true instead of an object will result in {"includeWatching":true}

Result:
{
  "hex":       "value", (string)  The resulting raw transaction (hex-encoded string)
  "fee":       n,         (numeric) Fee in BLK the resulting transaction pays
  "changepos": n          (numeric) The position of the added change output, or -1
}
"hex"             

Examples:

Create a transaction with no inputs
> blackmore-cli createrawtransaction "[]" "{\"myaddress\":0.01}"

Add sufficient unsigned inputs to meet the output value
> blackmore-cli fundrawtransaction "rawtransactionhex"

Sign the transaction
> blackmore-cli signrawtransaction "fundedtransactionhex"

Send the transaction
> blackmore-cli sendrawtransaction "signedtransactionhex"

