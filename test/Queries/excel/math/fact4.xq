import module namespace
excel="http://zorba.io/modules/excel/math";

excel:fact(-1)

(:
Output: Error [XQP0021] Fact function does not accept numbers less than zero
:)