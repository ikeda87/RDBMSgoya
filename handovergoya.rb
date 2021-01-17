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
# データを受け取り、返却するCGIプログラムの起動後、HTMLの形式でレスポンスを返す
