maintainer        "Bear"
maintainer_email  "bear@code-bear.com"
license           "All rights reserved"
description       "Installs and configures monit"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "0.5.0"
recipe            "monit", "Installs the monit package"

%w{ ubuntu debian fedora suse }.each do |os|
  supports os
end

depends "apt"

attribute 'monit/notify_email', 
  :description => 'Alert email address',
  :type => "string",
  :required => "recommended"

attribute 'monit/poll_period',
  :description => 'How often to perform checks (in seconds)',
  :type => "string",
  :required => "recommended"

attribute 'monit/poll_start_delay',
  :description => 'How long monit waits before it checks are performed',
  :type => "string",
  :required => "recommended"
