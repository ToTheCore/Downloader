-- Run installer files
term.setTextColor(colors.green)
print("Run Updater files.")
term.setTextColor(colors.gray)
shell.run("/Utils/updater")
shell.run("/Interface2Inventory/updater")
shell.run("/MonitorHandler/updater")

-- TODO: update /Downloader/*