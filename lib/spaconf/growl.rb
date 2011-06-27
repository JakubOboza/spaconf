module Spaconf

  class Growl

    NOTIFY = lambda{|x| `growlnotify -m  "#{x}" ` }

    def notify(msg)
      NOTIFY.call(msg)
    end

  end

end

