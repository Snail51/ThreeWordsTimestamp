#!/bin/bash

# Produces combination of three words that correspond to a given unix timestamp
# Output string is in the format `FirstSecondThird-UnixTimestampNanoseconds`

wlist=("lungs" "grind" "pandora" "biodegradable" "monarchies" "hooky" "max" "dalliance" "engraved" "formalizing" "approximately" "enrolling" "jee" "fossils" "benign" "mentor" "bummed" "scalable" "steamer" "laminating" "unskilled" "amiss" "conjectured" "prompt" "emphatically" "disappears" "expansions" "distribution" "propel" "uranus" "total" "compacted" "bloodthirsty" "infallibility" "chitchat" "oversight" "popularize" "flavorful" "luau" "localities" "fragility" "container" "heated" "appropriated" "replaying" "establishments" "colonists" "confounds" "partisanship" "dowels" "sesame" "exams" "minutiae" "flag" "squeak" "ter" "knead" "overburden" "sustenance" "hesitantly" "daughter" "wronged" "disguise" "trumpet" "aline" "deepens" "concatenation" "pouncing" "taxes" "immobilizing" "patter" "pinball" "ascent" "autistic" "juices" "recreational" "unrestricted" "hated" "butter" "slick" "around" "position" "vocal" "grands" "superficial" "batts" "wiping" "spurious" "cathedral" "needy" "savagely" "graying" "pushing" "gunpoint" "mechanics" "expires" "neurology" "unknowable" "mobs" "playa" "readdress" "endlessly" "interpretive" "rigid" "smears" "tomorrows" "forward" "alhambra" "equip" "mortality" "henchman" "negate" "reflexivity" "labor" "diego" "unfair" "pointing" "brainer" "macho" "punishable" "bangle" "frog" "stabile" "paperweight" "apprehend" "pivot" "sedimentation" "athenaeum" "quito" "subjects" "extolled" "copies" "confusing" "disallowing" "innocently" "tache" "redneck" "doth" "compensate" "warrant" "hosted" "solicitude" "breakouts" "founder" "azerbaijan" "concession" "greta" "sterile" "capitalization" "manufacturers" "mainframes" "lazy" "destitution" "frost" "flex" "kingdom" "ezekiel" "laxative" "bartenders" "reruns" "weaves" "womb" "licenced" "overtaking" "trow" "brill" "perceived" "largeness" "cosmetology" "religion" "linseed" "buildable" "reservists" "dapper" "shocking" "though" "shortsighted" "edwin" "golfed" "athletes" "quadra" "splashy" "jacques" "teapot" "ideology" "styrene" "industry" "performer" "obsession" "entreaties" "purebreds" "truncated" "socialization" "impoundment" "consolidator" "litmus" "postmodern" "docker" "crafted" "summed" "estates" "freely" "maki" "natalie" "quantities" "parti" "troop" "beckett" "processor" "wot" "consist" "battered" "charming" "retrenchments" "offshoot" "draught" "sleepy" "inhospitable" "electoral" "carbide" "rejects" "dew" "corrupting" "genie" "sleeve" "seminary" "fur" "breezy" "escalating" "strategically" "paradigmatic" "lanterns" "intelligent" "coot" "resubmitted" "jigsaw" "bituminous" "famously" "saucier" "icky" "protons" "abomination" "alleyway" "allele" "jude" "rambunctious" "sidekick" "phoenix" "compressed" "stockman" "jiving" "dictum" "toxicological" "impolite" "disclosures" "inhumanity")

# get current unix timestamp (in nanoseconds)
ts=$(echo -en $(date +%s%N))

# produce sha256 hash from current time
hash=$(echo -en $ts | sha256sum)

# produce 2-char substrings of hash
first="${hash:0:2}"
second="${hash:2:2}"
third="${hash:4:2}"

# convert 2-char hex strings do decimals [0:255]
first=$((16#$first))
second=$((16#$second))
third=$((16#$third))

# use integers and indexes into word list
first="${wlist[$first]}"
second="${wlist[$second]}"
third="${wlist[$third]}"

# capitalize words
first=$(echo -en "${first^}")
second=$(echo -en "${second^}")
third=$(echo -en "${third^}")

echo -en "$first$second$third-$ts";