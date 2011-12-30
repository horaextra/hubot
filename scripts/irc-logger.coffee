# Logs IRC channels messages 
#
#

module.exports = (robot) ->
  robot.enter (msg) -> 
    console.log msg
    msg.send "User entered "


  robot.hear /./i, (msg) -> 
    user_name = robot.userForId msg.user
    msg.send "<" + user_name.name + "> " + msg.txt 

  robot.hear /fuck emo/i, (msg) ->
    msg.send "Let me kill that for you."
    aww msg

