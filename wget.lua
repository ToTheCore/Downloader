-- Not all arguments given -> error.
local args = {...}
if (#args < 2) then
  error("Usage: wget [url] [target] {'-silent'}")
end


-- Set source and target.
local source = args[1]
local target = args[2]
local silent = #args == 3 and #args or false


-- Not valid url -> error.
if(not http.checkURL(source)) then 
  error("Url: Invalid url given.") 
end

-- User info.
if(not silent) then
  term.setTextColor(colors.blue)
  print("Downloading")
end

local timer = os.startTimer(120)
http.request(source)
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
    if(not silent) then
      term.setTextColor(colors.green)
      term.write("Done. ")
      term.setTextColor(colors.gray)
      print("Saving file..")
    end

    local file = io.open(target, "w")
    file:write(data.readAll())
    file:close()
    data:close()

    -- User info: File saved.
    if(not silent) then
      print("Saved as \"" .. target .. "\"")
    end
    return true
  end
end