-- Download installer files.
term.setTextColor(colors.green)
print("Downloading \"installer\" files..")
term.setTextColor(colors.gray)
-- Installer files download.
shell.run("/wget", "https://raw.githubusercontent.com/ToTheCore/Downloader/master/fullUpdater.lua","/fullUpdater", "-silent")
shell.run("/wget", "https://raw.githubusercontent.com/ToTheCore/Downloader/master/wget.lua","/wget", "-silent")

shell.run("/wget", "https://raw.githubusercontent.com/ToTheCore/Utils/master/installer.lua","/Utils/installer", "-silent")
shell.run("/wget", "https://raw.githubusercontent.com/ToTheCore/Interface2Inventory/master/installer.lua","/Interface2Inventory/installer", "-silent")
shell.run("/wget", "https://raw.githubusercontent.com/ToTheCore/MonitorHandler/master/installer.lua","/MonitorHandler/installer", "-silent")
shell.run("/wget", "https://raw.githubusercontent.com/ToTheCore/IEMP/master/installer.lua","/IEMP/installer", "-silent")

-- Run installer files
term.setTextColor(colors.green)
print("Run installer files.")
term.setTextColor(colors.gray)
-- Installer files download.
shell.run("/Utils/installer")
shell.run("/Interface2Inventory/installer")
shell.run("/MonitorHandler/installer")
shell.run("/IEMP/installer")
