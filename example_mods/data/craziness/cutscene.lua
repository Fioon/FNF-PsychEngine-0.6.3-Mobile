 function onStartCountdown()
     if not allowCountdown then
         startVideo('YouAreGay')
         allowCountdown = true
         return Function_Stop
     end
     return Function_Continue
end
