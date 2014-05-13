import module namespace
excel-text = "http://zorba.io/modules/excel/text";

excel-text:replace("Profit Margin",excel-text:search("margin","Profit Margin"),6,"Amount")
