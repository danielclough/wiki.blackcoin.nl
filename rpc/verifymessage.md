verifymessage "blackcoinaddress" "signature" "message"

Verify a signed message

Arguments:
1. "blackcoinaddress"  (string, required) The blackcoin address to use for the signature.
2. "signature"       (string, required) The signature provided by the signer in base 64 encoding (see signmessage).
3. "message"         (string, required) The message that was signed.

Result:
true|false   (boolean) If the signature is verified or not.

Examples:

Unlock the wallet for 30 seconds
> blackmore-cli walletpassphrase "mypassphrase" 30

Create the signature
> blackmore-cli signmessage "BC53sDtweXF9YFYKY1AkEbY2FBiNBrJpXX" "my message"

Verify the signature
> blackmore-cli verifymessage "BRAVMXPsjszJrG3USfk78zL7qfhoRYfvdk" "signature" "my message"

As json rpc
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "verifymessage", "params": ["BRAVMXPsjszJrG3USfk78zL7qfhoRYfvdk", "signature", "my message"] }' -H 'content-type: text/plain;' http://127.0.0.1:15715/

