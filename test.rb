require 'webrick'
server = WEBrick::HTTPServer.new({
  :DocumentRoot => '/',
  :CGIInterpreter => WEBrick::HTTPServlet::CGIHandler::Ruby,
  :Port => '3000',
})
['INT', 'TERM'].each {|signal|
  Signal.trap(signal){ server.shutdown }
}
server.mount('/', WEBrick::HTTPServlet::ERBHandler, 'task.html.erb')
server.mount('/goya.cgi', WEBrick::HTTPServlet::CGIHandler, 'goya.rb')
server.mount('/test', WEBrick::HTTPServlet::ERBHandler, 'test.html.erb')
server.mount('/indicatename.cgi', WEBrick::HTTPServlet::CGIHandler, 'indicatename.rb')
server.mount('/handovergoya.cgi', WEBrick::HTTPServlet::CGIHandler, 'handovergoya.rb')
server.mount('/lowqualitygoya.cgi', WEBrick::HTTPServlet::CGIHandler, 'lowqualitygoya.rb')
server.start
