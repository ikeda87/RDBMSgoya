require 'cgi'
cgi = CGI.new
cgi.out("type" => "text/html", "charset" => "UTF-8") {
  get = cgi['input']
  "<html>
    <body>
      <p>文字列は下記に記載</p>
      <p>文字列：#{get}</p>
    </body>
  </html>"
}
