import module namespace m='http://www.tei-c.org/tei-simple/models/documentation.odd/web' at '/db/apps/tei-simple/transform/documentation-web.xql';

declare variable $xml external;

declare variable $parameters external;

let $options := map {
    "styles": ["../transform/documentation.css"],
    "collection": "/db/apps/tei-simple/transform",
    "parameters": $parameters
}
return m:transform($options, $xml)