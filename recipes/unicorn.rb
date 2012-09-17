include_recipe "monit"

unicorn_data = search(:unicorn, "*:*").first

monitrc "unicorn" do
   pid_dir      unicorn_data[:pid_dir]
   alert_email  unicorn_data[:alert_email]
   start_script unicorn_data[:start_script]
   monitor_url  unicorn_data[:monitor_url]
end