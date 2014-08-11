-- Autorun programs
autorunapp = false
autorunshell = true

autorunApps = 
{ 
   "icedove",
   ""
}

autorunShell = 
{ 
   "/home/marcov/.dropbox-dist/dropboxd &",
   ". /home/marcov/bin/conky/startconky.sh &"
}


if autorunshell then
   for app = 1, #autorunShell do
       awful.util.spawn_with_shell(autorunShell[app])
   end
end

if autorunapp then
  for app = 1, #autorunApps do
       awful.util.spawn(autorunApps[app])
   end

end
