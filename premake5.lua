include "Dependencies.lua"

workspace "Fantas"
    architecture "x64"
    cppdialect "c++17"
    configurations
    {
        "Debug",
        "Release",
        "Dist"
    }

outputdir = "%{cfg.buildcfg}_%{cfg.system}_%{cfg.architecture}"

group "Dependencies"
    include "Fantas/ThirdParty/glfw"
group ""

group "Core"
    include "Fantas"
group ""