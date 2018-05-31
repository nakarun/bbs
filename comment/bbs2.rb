#! /usr/bin/env ruby
#encoding: utf-8
#
require 'cgi'
cgi = CGI.new
data = open("bbscomment1.txt","r:UTF-8")
messages = CGI.escapeHTML(data.read)
data.close
print cgi.header("text/html; charset=utf-8")
print <<EOF

<hr>
<pre>
#{messages}
#</pre>
#<hr>
#<html><body background="background3.jpg">
#<p>コメントを書き込む</p>
#<form method="post" action="update.rb">
# <p><textarea name="freeans" rows="1" cols="40">自由に意見を記述してください。 </textarea></p>
#   <p>氏名:<input type="text" name="name"></p>
#     <div><input type="submit" value="送信">
#          <input type="reset" value="取り消し"></div>
#          </form>
#
#          </body></html>
#
#          EOF
