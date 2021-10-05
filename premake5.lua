project "lua"
	kind "StaticLib"
	language "C++"

	targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin-obj/" .. outputdir .. "/%{prj.name}")

	files
	{
		"*.h",
		"lapi.c",
		"lauxlib.c",
		"lbaselib.c",
		"lcode.c",
		"lcorolib.c",
		"lctype.c",
		"ldblib.c",
		"ldebug.c",
		"ldo.c",
		"ldump.c",
		"lfunc.c",
		"lgc.c",
		"linit.c",
		"liolib.c",
		"llex.c",
		"lmathlib.c",
		"lmem.c",
		"loadlib.c",
		"lobject.c",
		"lopcodes.c",
		"loslib.c",
		"lparser.c",
		"lstate.c",
		"lstring.c",
		"lstrlib.c",
		"ltable.c",
		"ltablib.c",
		"ltests.c",
		"ltm.c",
		"lua.c",
		"lundump.c",
		"lutf8lib.c",
		"lvm.c",
		"lzio.c",

		"premake5.lua"
	}

	defines
	{
		"MAKE_LIB"
	}

	filter "system:windows"
		systemversion "latest"
	    cppdialect "C++latest"
		staticruntime "On"

	filter "system:linux"
		pic "On"
		systemversion "latest"
	    cppdialect "C++latest"
		staticruntime "On"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
