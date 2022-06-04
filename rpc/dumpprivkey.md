dumpprivkey "blackcoinaddress"

Reveals the private key corresponding to 'blackcoinaddress'.
Then the importprivkey can be used with this output

Arguments:
1. "blackcoinaddress"   (string, required) The blackcoin address for the private key

Result:
"key"                (string) The private key

Examples:
> blackmore-cli dumpprivkey "myaddress"
> blackmore-cli importprivkey "mykey"
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "dumpprivkey", "params": ["myaddress"] }' -H 'content-type: text/plain;' http://127.0.0.1:15715/

