getblockchaininfo
Returns an object containing various state info regarding block chain processing.

Result:
{
  "chain": "xxxx",        (string) current network name as defined in BIP70 (main, test, regtest)
  "blocks": xxxxxx,         (numeric) the current number of blocks processed in the server
  "headers": xxxxxx,        (numeric) the current number of headers we have validated
  "bestblockhash": "...", (string) the hash of the currently best block
  "difficulty": {            (json object)
    "proof-of-work": xxxxxx, (numeric) the current proof-of-work difficulty
    "proof-of-stake": xxxxxx (numeric) the current proof-of-stake difficulty
  },
  "mediantime": xxxxxx,     (numeric) median time for the current best block
  "verificationprogress": xxxx, (numeric) estimate of verification progress [0..1]
  "chainwork": "xxxx"     (string) total amount of work in active chain, in hexadecimal
  "pruned": xx,             (boolean) if the blocks are subject to pruning
  "pruneheight": xxxxxx,    (numeric) lowest-height complete block stored
  "softforks": [            (array) status of softforks in progress
     {
        "id": "xxxx",        (string) name of softfork
        "version": xx,         (numeric) block version
        "enforce": {           (object) progress toward enforcing the softfork rules for new-version blocks
           "status": xx,       (boolean) true if threshold reached
           "found": xx,        (numeric) number of blocks with the new version found
           "required": xx,     (numeric) number of blocks required to trigger
           "window": xx,       (numeric) maximum size of examined window of recent blocks
        },
        "reject": { ... }      (object) progress toward rejecting pre-softfork blocks (same fields as "enforce")
     }, ...
  ],
  "bip9_softforks": {          (object) status of BIP9 softforks in progress
     "xxxx" : {                (string) name of the softfork
        "status": "xxxx",    (string) one of "defined", "started", "locked_in", "active", "failed"
        "bit": xx,             (numeric) the bit (0-28) in the block version field used to signal this softfork (only for "started" status)
        "startTime": xx,       (numeric) the minimum median time past of a block at which the bit gains its meaning
        "timeout": xx          (numeric) the median time past of a block at which the deployment is considered failed if not yet locked in
     }
  }
}

Examples:
> blackmore-cli getblockchaininfo 
> curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getblockchaininfo", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:15715/

