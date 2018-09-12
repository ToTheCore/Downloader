-- Download installer files.
term.setTextColor(colors.green)
print("Downloading \"installer\" files..")
term.setTextColor(colors.gray)
-- Installer files download.
shell.run("/wget", "https://raw.githubusercontent.com/Downloader/master/fullUpdater.lua","/fullUpdater")
shell.run("/wget", "https://raw.githubusercontent.com/Downloader/master/wget.lua","/wget")

shell.run("/wget", "https://raw.githubusercontent.com/Utils/master/installer.lua","/Utils/installer")
shell.run("/wget", "https://raw.githubusercontent.com/Interface2Inventory/master/installer.lua","/Interface2Inventory/installer")
shell.run("/wget", "https://raw.githubusercontent.com/MonitorHandler/master/installer.lua","/MonitorHandler/installer")
shell.run("/wget", "https://raw.githubusercontent.com/IEMP/master/installer.lua","/IEMP/installer")

-- Run installer files
term.setTextColor(colors.green)
print("Run installer files.")
term.setTextColor(colors.gray)
-- Installer files download.
shell.run("/Utils/installer")
shell.run("/Interface2Inventory/installer")
shell.run("/MonitorHandler/installer")
shell.run("/IEMP/installer")
