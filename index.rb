#!/usr/local/rbenv/shims/ruby

print <<HERE
Content-Type: text/html;
 
<!DOCTYPE html>
<html lang="ja" xml:lang="ja">
<head>
<meta charset="UTF-8">
<title>サンプル </title>
</head>
<body>
<pre>
HERE
 
print "Hello"
  
puts "</pre></body>"
puts "</html>"

