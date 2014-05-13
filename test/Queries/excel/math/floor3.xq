import module namespace
excel="http://zorba.io/modules/excel/math";

excel:floor(-2.5, 2)

(:
Output: Error [XQP0021] Floor function: both arguments must have the same sign
:)