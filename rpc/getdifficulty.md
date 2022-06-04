getdifficulty

Returns the difficulty as a multiple of the minimum difficulty.

Result:
{                            (json object)
  "proof-of-work" : n.nnn, (numeric) the proof-of-work difficulty as a multiple of the minimum difficulty.
  "proof-of-stake" : n.nnn (numeric) the proof-of-stake difficulty as a multiple of the minimum difficulty.
}

Examples:
> blackmore-cli getdifficulty 
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getdifficulty", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:15715/

