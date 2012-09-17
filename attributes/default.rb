default[:monit][:notify_email]          = "notify@example.com"

default[:monit][:poll_period]           = 120
default[:monit][:poll_start_delay]      = 0

default[:monit][:lib_dir]               = "/var/lib/monit"

default[:monit][:mail_format][:subject] = "$SERVICE $EVENT"
default[:monit][:mail_format][:from]    = "monit@example.com"
default[:monit][:mail_format][:message] = <<-EOS
Monit $ACTION $SERVICE at $DATE on $HOST: $DESCRIPTION.
Yours sincerely,
monit
EOS
