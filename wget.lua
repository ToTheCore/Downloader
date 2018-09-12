-- Not all arguments given -> error.
local args = {...}
if (#args < 2) then
  error("Usage: wget [url] [target]")
end

-- Set source and target.
local source = args[1]
local target = args[2]

-- Not valid url -> error.
if(not http.checkURL(source)) then 
  error("Url: Invalid url given.") 
end

-- User info.
term.setTextColor(colors.blue)
term.print("Downloading")

local timer = os.startTimer(120)
http.request(url)
while true do
  local event, id, data = os.pullEvent()

  -- Timeout --> error.
  if (event == "timer" and timer == id) then
    error("Timeout: Download timed out. (over 120sec)")
  end

  -- Download failed -> error.
  if (event == "http_failure") then
    error("Download: Faild to download file.")
  end

  if event == "http_success" then
    -- User info: Download complete.
    term.setTextColor(colors.green)
    term.write("Done. ")
    term.setTextColor(Colors.gray)
    term.write("Saving file..")

    local file = io.open(target, "w")
    file:write(data.readAll())
    file:close()
    data:close()

    -- User info: File saved.
    term.print("Saved as \"" .. target .. "\"")
    return true
  end
end