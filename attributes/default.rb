default[:monit][:poll_period]  = 60
default[:monit][:poll_delay]   = 120
default[:monit][:notify_email] = "notify@example.com"

default[:monit][:alert_mail_format][:subject] = "[monit] $SERVICE ($EVENT)"
default[:monit][:alert_mail_format][:from]    = "monit@foo.com"
default[:monit][:alert_mail_format][:message] = <<-EOS
The monit daemon has performed the following:
  $DATE $HOST
  $ACTION $SERVICE
  
  $DESCRIPTION
EOS
