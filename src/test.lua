_G.package.path = _G.package.path .. ";./libs/?.lua"
_G.package.cpath = _G.package.cpath .. ";./libs/?.so"

local dl = require("dataloading")
local ut = require("UT")

local loadedFiles = {}
local executetFiles = {}

print("LOAD FILES")
dl.load({
	target = loadedFiles,
	dir = "testFiles",
	name = "LOAD TEST",
	structured = true,
	execute = false,
})
print(ut.tostring(loadedFiles))

print("EXECUTE FILES")
dl.load({
	target = executetFiles,
	dir = "testFiles",
	name = "EXECUTE TEST",
	structured = true,
	execute = true,
})
print(ut.tostring(executetFiles))