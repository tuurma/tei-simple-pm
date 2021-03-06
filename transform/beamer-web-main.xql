import module namespace m='http://www.tei-c.org/tei-simple/models/beamer.odd/web' at '/db/apps/tei-simple/transform/beamer-web.xql';

declare variable $xml external;

declare variable $parameters external;

let $options := map {
    "styles": ["../transform/beamer.css"],
    "collection": "/db/apps/tei-simple/transform",
    "parameters": $parameters
}
return m:transform($options, $xml)