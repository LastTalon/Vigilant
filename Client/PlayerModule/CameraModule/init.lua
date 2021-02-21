--- The camera module.
--
-- @author LastTalon
-- @version 0.1.0, 2020-11-05
-- @since 0.1
--
-- @module CameraModule

local Console = require(game:GetService("ReplicatedStorage"):WaitForChild("Scripts"):WaitForChild("Console")).sourced("Camera Module")

-- Variables --
Console.log("Initializing variables...")

local CameraModule = {}
local instance

-- Local Objects --
Console.log("Constructing objects...")

CameraModule.__index = CameraModule

--- The contructor for the singleton.
-- Creates a new singleton if none exists. Always returns the same object
-- initially created.
--
-- @return the singleton
function CameraModule.new()
	if instance == nil then
		local self = setmetatable({}, CameraModule)
		instance = self
	end
	return instance
end

-- End --
Console.log("Done.")

return CameraModule.new()
