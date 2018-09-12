-- Download installer files.
term.setTextColor(colors.green)
print("Downloading \"installer\" files..")
term.setTextColor(colors.gray)
-- Installer files download.
shell.run("/openp/github", "get", "ToTheCore/Downloader/master/fullUpdater.lua","/fullUpdater")
shell.run("/openp/github", "get", "ToTheCore/Downloader/master/wget.lua","/wget")

shell.run("/openp/github", "get", "ToTheCore/Utils/master/installer.lua","/Utils/installer")
shell.run("/openp/github", "get", "ToTheCore/Interface2Inventory/master/installer.lua","/Interface2Inventory/installer")
shell.run("/openp/github", "get", "ToTheCore/MonitorHandler/master/installer.lua","/MonitorHandler/installer")
shell.run("/openp/github", "get", "ToTheCore/IEMP/master/installer.lua","/IEMP/installer")

-- Run installer files
term.setTextColor(colors.green)
print("Run installer files.")
term.setTextColor(colors.gray)
-- Installer files download.
shell.run("/Utils/installer")
shell.run("/Interface2Inventory/installer")
shell.run("/MonitorHandler/installer")
shell.run("/IEMP/installer")
