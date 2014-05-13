import module namespace
excel-information = "http://zorba.io/modules/excel/information";

excel-information:is-blank(()) eq fn:not(excel-information:is-blank((1)))
