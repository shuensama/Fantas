include "Dependencies.lua"


workspace "Fantas"
    architecture "x64"

    configurations
    {
        "Debug",
        "Release",
        "Dist"
    }

    solution_items
	{
		".editorconfig"
	}

	flags
	{
		"MultiProcessorCompile"
	}

outputdir = "%{cfg.buildcfg}_%{cfg.system}_%{cfg.architecture}"


group "Dependencies"
	include "Fantas/ThirdParty/Box2D"
	include "Fantas/ThirdParty/glfw"
	include "Fantas/ThirdParty/Glad"
	include "Fantas/ThirdParty/msdf-atlas-gen"
	include "Fantas/ThirdParty/imgui"
	include "Fantas/ThirdParty/yaml-cpp"
group ""

group "Core"
	include "Fantas"
group ""

group "Misc"
	include "SaintofLove"
group ""