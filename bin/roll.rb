require 'spaconf'
require 'highline'

line = HighLine.new

login    = line.ask("Enter your login: ")
password = line.ask("Enter your password:  " ) { |q| q.echo = "*" }


box = Spaconf::GmailBox.new(login, password)
while true
  begin
    puts "Ping!"
    box.check_confirmations
    sleep(30)
  rescue
    break
  end
end
box.logout
