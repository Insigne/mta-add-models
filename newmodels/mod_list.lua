--[[
	Author: https://github.com/Fernando-A-Rocha

	mod_list.lua

	
	Default mods are defined here in 'modList'.

	You can change the 'modsFolder' to any folder name, and use more variables to organize storage.
	
	If you to add your mods with other resources (recommended) then you can delete this file.
	The server will assume an empty modList.
]]

-- optional, for organization purposes
local modsFolder = "models/"

modList = {
	
	-- stored in server only, then sent to client on request
	-- these are the default mods, more than be added via functions
	
	-- element type
	ped = {

		-- ID must be unique and out of the default GTA (& preferrably SA-MP too) ID ranges

		-- Base ID is the model the mod will inherit some properties from
		-- Doesn't have much effect on peds or objects, but has on vehicles

		-- path can be:
		--		a string, in which case it expects files to be named ID.dff or ID.txd in that folder
		-- 		an array, in which case it expects an array of file names like {dff="filepath.dff", txd="filepath.txd"}
		--
		-- 	All paths defined manually in this file need to be local (this resource)
		-- 	To add a mod from another resource see the examples provided in the documentation.

		-- name can be whatever you want (string)

		-- + optional parameters:
		-- 		ignoreTXD, ignoreDFF, ignoreCOL : if true, the script won't try to load TXD/DFF/COL for the mod
		--		metaDownloadFalse : if true, the mod will be only be downloaded when needed (when trying to set model)
		-- 		disableAutoFree: if true, the allocated mod ID will not be freed when no element streamed in is no longer using the mod ID
		--  		This causes the mod to stay in memory, be careful when enabling for big mods


		{id=20001, base_id=1, path=modsFolder, name="Mafioso 1"},
		{id=20003, base_id=1, path=modsFolder, name="Mafioso 2"},
		{id=20002, base_id=1, path=modsFolder, name="Mafioso 3", metaDownloadFalse = true},
	},

	vehicle = {
		{id=80001, base_id=507, path=modsFolder, name="Schafter", disableAutoFree=true},
		{id=80002, base_id=489, path=modsFolder, name="02 Landstalker"},
		{id=80003, base_id=400, path=modsFolder, name="86 Landstalker 1"},
		{id=80004, base_id=400, path=modsFolder, name="98 Landstalker 1"},
		{id=80005, base_id=468, path=modsFolder, name="Sanchez Test", ignoreTXD=true},

		-- Models encrypted using NandoCrypt
		-- Don't add the .nandocrypt extension, it's defined by the 'NANDOCRYPT_EXT' setting
		{id=80006, base_id=507, path={dff=modsFolder.."elegant.dff", txd=modsFolder.."elegant.txd"}, name="Elegant Test"},
	},

	object = {
		{id=50001, base_id=1337, path=modsFolder, name="Engine Hoist"},
	},
}
