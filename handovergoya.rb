require 'cgi'
cgi = CGI.new
cgi.out("type" => "text/html", "charset" => "UTF-8") {
  get = cgi['handovergoya']
  "<html>
    <body>
      <p>ゴーヤの譲渡先は以下</p>
      結果：#{get}
    </body>
  </html>"
}
