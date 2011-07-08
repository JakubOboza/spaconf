require 'spaconf'
require 'highline'

line = HighLine.new

login    = line.ask("Enter your login: ")
password = line.ask("Enter your password:  " ) { |q| q.echo = "*" }



while true
  begin
    box = Spaconf::GmailBox.new(login, password)
    puts "Ping!"
    box.check_confirmations
    box.logout
    sleep(45)
  rescue
    break
  end
end

