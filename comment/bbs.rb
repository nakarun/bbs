#!/usr/local/rbenv/shims/ruby
#encoding: utf-8

require 'cgi'
cgi = CGI.new

data = open("bbsdata1.txt","r:UTF-8")
messages = CGI.escapeHTML(data.read)
data.close
data2 = open("bbsdata2.txt","r:UTF-8")
messages2 = CGI.escapeHTML(data2.read)
data2.close
#print cgi.header("content-type: text/html; charset=utf-8")
print "content-type: text/html; charse=utf-8"
print <<EOF

<html>
<body background="background3.jpg">
<p>コメントをどうぞ</p>
<form method="post" action="update.rb">
<p>
<textarea name="freeans" rows="1" cols="40">自由に意見を記述してください。</textarea></p>
  <p>氏名:<input type="text" name="name"></p>
  <div><input type="submit" value="送信">
     <input type="reset" value="取り消し"></div>
</form>
<hr>
<pre>
#{messages}
</pre>
<a href="bbs2.rb">コメントを見る</a>
<pre>
#{messages2}
</pre>
<a href="bbs3.rb">コメントを見る</a>
</body></html>

EOF

