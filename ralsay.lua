#!/usr/bin/lua

-- Function to wrap text to a specified width
function wrap_text(text, width)
    local wrapped = {}
    local line = ""

    for word in text:gmatch("%S+") do
        if #line + #word + 1 > width then
            table.insert(wrapped, line)
            line = word
        else
            if #line > 0 then
                line = line .. " " .. word
            else
                line = word
            end
        end
    end

    if #line > 0 then
        table.insert(wrapped, line)
    end

    return wrapped
end

-- Function to print the ASCII art with a speech bubble
function ralsay(text)
    -- Define the ASCII art
    local art = [[
           -^- 
       _/\/_  \/\_
      (____ ))____)
       / -     - \
      / ( ^)-(^ ) \
     / ____v-v____ \
     \(-    _-  __)/
       \-  -__---/
       /  / V \   \
      /__/\   /    \
     =      V       =
   _=_              _=_
     -=---______---=-
        _| | | |_
       (___- -___)
    ]]

    -- Set a reasonable initial maximum width for wrapping
    local initial_width = 40

    -- Wrap the text and find the maximum line length
    local wrapped_text = wrap_text(text, initial_width)
    local max_length = 0

    for _, line in ipairs(wrapped_text) do
        if #line > max_length then
            max_length = #line
        end
    end

    -- Adjust the box width based on the longest line
    local box_width = max_length + 2 -- Add padding for borders

    -- Print the top border of the speech bubble
    io.write(" " .. string.rep("_", box_width) .. "\n")
    io.write("/" .. string.rep(" ", box_width) .. "\\\n")

    -- Print the wrapped text with borders
    for _, line in ipairs(wrapped_text) do
        io.write("| " .. line .. string.rep(" ", box_width - #line - 2) .. " |\n")
    end

    -- Print the bottom border of the speech bubble
    io.write("\\" .. string.rep(" ", box_width) .. "/\n")
    io.write(" " .. string.rep("=", box_width) .. "\n")

    -- Print the ASCII art
    io.write(art .. "\n")
end

-- Check if user provided an argument
if #arg == 0 then
    print("Usage: ralsay \"your message here\"")
    os.exit(1)
end

-- Call the function with the provided argument
ralsay(table.concat(arg, " "))
