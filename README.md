Multilogger
===========

Log messages to multiple destinations.

Multilogger is a subclass of the standard Ruby logger that does not itself write messages anywhere. Rather, it serves as a wrapper around multiple Logger-compatible destinations. For example, if you want to have your Rails application log to both the standard logfile and to a service such as Loggly:

1. Add the multi\_logger.rb class to your lib directory.

2. Add to the appropriate environment configuration file:

<code>
defaultlogger = ActiveSupport::TaggedLogging.new(ActiveSupport::BufferedLogger.new(Rails.root.join('log', Rails.env + '.log')))

logglylogger =  Logglier.new('https://logs.loggly.com/inputs/ffffffff-1111-1111-1111-ffffffffffff', :format => :json)

config.logger = MultiLogger.new([defaultlogger, logglylogger])
</code>

At this point, all messages logged from Rails will go to both the file and the Loggly https: endpoint.