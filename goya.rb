require 'cgi'
cgi = CGI.new
cgi.out("type" => "text/html", "charset" => "UTF-8") {
  get = cgi['goya']
  "<html>
    <body>
      <p>ゴーヤを売った相手の情報</p>
      結果：#{get}
    </body>
  </html>"
}
