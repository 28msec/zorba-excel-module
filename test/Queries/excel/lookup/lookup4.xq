import module namespace
excel="http://zorba.io/modules/excel/lookup";

(: vector form :)
excel:lookup(5, (1, 2, 3, 4, 5), (11, 12, 13, 14))

(:
Output: Error [XQP0021] Lookup function: lookup position is outside the result range
:)