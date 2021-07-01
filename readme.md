#Read Me - OceanStateWebDesign.com Website Monitoring Solution

Overview: This program monitors websites for crashes/downtime/unresponsiveness. If an event occurs, it is logged for viewing via a web page + an email is sent notifying of the event.

Modules: Overall two main 'modules' for monitoring.

a.) HTTP Module - uses CURL request against a given URL and checks for a 200 reply status. If a 200 reply code is NOT given, an event is logged.

b.) Ping Module - uses ping to monitor a server/system. If ping is unsuccessful, an event is logged.

Note: Ping Module is incomplete after my last refactor; Call this a TO DO, will update github when done.

Dependencies:

a.) EMAIL alerts are sent via 'Mail' command within a bash script.

Command Example: mail -s "Down Site Alert - Website Monitor" "test@example.com"

b.) Curl Cli

c.) PHP(duh)

