abortrescan

Stops current wallet rescan triggered e.g. by an importprivkey call.

Examples:

Import a private key
> blackmore-cli importprivkey "mykey"

Abort the running wallet rescan
> blackmore-cli abortrescan 

As a JSON-RPC call
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "abortrescan", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:15715/

