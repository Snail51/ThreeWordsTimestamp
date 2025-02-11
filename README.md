# Purpose
 While scanning an old photo album, I desired a way to uniquely identify photographs via a human-readable name. The obvious solution was to just use the current UNIX timestamp, but that is basically meaningless to a human. However, UNIX timestamps are just numbers, and I was reminded of the work of [What3Words](https://what3words.com/), a service that Uniquely encodes geographic coordinates as a combination of three words.
 This Program uses the idea of What3Words but applies it to UNIX timestamps, producing a combination of 3 words that encode the given UNIX timestamp.

# Usage (Encoding)
 1. Clone this repo.
 2. In a shell terminal, run `threeWordTime.sh`. 
 3. Receive a string in the format `$first$second$third-$ts` for the current UNIX timestamp with microsecond precision. This format can be configured by changing the final line of `threeWordTime.sh`.

# Usage (Decoding)
 - With the current setup, it is **not possible** to reconstruct the original timestamp. This program ONLY creates unique word sets based on the input, the reverse is not possible.
 - This program uses hashing to squeeze the input down to a finite domain. This step is technically not required but the current implementation makes use of it. It uses SHA256.

# History
 This program was originally authored by Brendan Rood on or about 2024-11-26.