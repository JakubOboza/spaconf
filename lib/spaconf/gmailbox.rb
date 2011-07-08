require 'gmail'
require 'spaconf/growl'

module Spaconf

  class GmailBox
    @gmail = nil

    def initialize(login, password)
      @gmail = Gmail.new(login, password)
      @growl = Spaconf::Growl.new
    end

    def check_confirmations
      @gmail.inbox.emails(:unread, :from => "bookings@spabreaks.com").each do |email|
        notification = "[Spabreaks] New booking for: " + email.body.to_s.scan(/The total cost of your booking is &pound;(.+)/).flatten[0].to_s
        puts "#{notification} at #{Time.now.to_s}"
        @growl.notify( notification )
      end
    end

    def logout
      @gmail.logout
    end

  end

end



