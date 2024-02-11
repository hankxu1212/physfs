include "../../../dependencies.lua"

project "physfs"
	kind "StaticLib"
	language "C++"

	targetdir ("build-bin/" .. outputdir .. "/%{prj.name}")
	objdir ("build-obj/" .. outputdir .. "/%{prj.name}")

	files
	{
		"src/**.h",
		"src/**.c",
		"src/**.cpp",
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"

	filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
