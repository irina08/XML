xquery version "1.0";

(: 
hw: HW 8 CNIT 131A Homeworks
student: CNIT 131A Irina Golovko
date: 11/03/2018 -->
title: hw8.xq file for file hw8.html
:)

(: List titles for all books which have price
less or equal 30$:)

for $x in doc(hw8.xml)/bookstore/book
where $x/price <= 30
return (data($x/title))


