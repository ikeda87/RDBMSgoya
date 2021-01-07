require 'cgi'
cgi = CGI.new
cgi.out("type" => "text/html", "charset" => "UTF-8") {
　get = cgi['lowqualitygoya']
  "<html>
    <body>
      <p>品質の悪いゴーヤ</p>
      結果：#{get}
    </body>
  </html>"
}
