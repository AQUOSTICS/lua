project "lua"
	kind "StaticLib"
	language "C++"

	targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin-obj/" .. outputdir .. "/%{prj.name}")

	files
	{
		"*.h",
		"*.c",
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
