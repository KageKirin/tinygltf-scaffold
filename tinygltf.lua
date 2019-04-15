-- scaffold geniefile for tinygltf

tinygltf_script = path.getabsolute(path.getdirectory(_SCRIPT))
tinygltf_root = path.join(tinygltf_script, "tinygltf")

tinygltf_includedirs = {
	path.join(tinygltf_script, "config"),
	tinygltf_root,
}

tinygltf_libdirs = {}
tinygltf_links = {}
tinygltf_defines = {}

----
return {
	_add_includedirs = function()
		includedirs { tinygltf_includedirs }
	end,

	_add_defines = function()
		defines { tinygltf_defines }
	end,

	_add_libdirs = function()
		libdirs { tinygltf_libdirs }
	end,

	_add_external_links = function()
		links { tinygltf_links }
	end,

	_add_self_links = function()
		links { "tinygltf" }
	end,

	_create_projects = function()

project "tinygltf"
	kind "StaticLib"
	language "C++"
	flags {}

	includedirs {
		tinygltf_includedirs,
	}

	defines {}

	files {
		path.join(tinygltf_script, "config", "**.h")),
		path.join(tinygltf_root, "**.h"),
		path.join(tinygltf_root, "**.cpp"),
	}

end, -- _create_projects()
}

---
