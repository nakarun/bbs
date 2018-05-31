#! /usr/bin/env ruby
#encoding: utf-8

require 'cgi'
cgi = CGI.new
message = cgi["freeans"]
name = cgi["name"]
data = open("bbsdata.txt","a:UTF-8")
data.write(name + ":" + message + "\n")
data.close
print cgi.header("text/html; charset=utf-8")
print <<EOF

<html><body background="background3.jpg">
  <p>書き込みありがとうございました。</p>
  <a href="bbs.rb">戻る</a>
</body></html>
EOF

