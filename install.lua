mainRepo = "https://github.com/Benoxiid/cts-scripts/raw/main/"
links = {
    JSON = "https://github.com/tiye/json-lua/raw/main/JSON.lua"
}

programs = {
    quarry = {
        "gantry",
        "quarry"
    },
    storage = {
        "JSON",
        "gantry",
        "storage"
    }
}

function install(program)
end

function prompt(text, ...)
    print(text)

    i = 1
    for k,v in pairs(arg) do
        print(string.format("%d. %v", i, v))
        i = i + 1
    end

    choice = io.read("*n")
    return arg[choice]
end

function run()
    name = prompt("What program do you want to install ?", table.unpack(programs))
end

run()