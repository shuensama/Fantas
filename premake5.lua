workspace "Fantas"
    architecture "x64"

    configurations
    {
        "Debug",
        "Release",
        "Dist"
    }

outputdir = "%{cfg.buildcfg}_%{cfg.system}_%{cfg.architecture}"

project "Fantas"
    location "Fantas"
    kind "SharedLib"

    language "C++"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin_int/" .. outputdir .. "/%{prj.name}")
    

    files
    {
        "%{prj.name}/src/**.h",
        "%{prj.name}/src/**.cpp"
    }

    includedirs
    {
        "%{prj.name}/vendor/spdlog/include"
    }

    filter "system:windows"
        cppdialect "c++17"
        staticruntime "on"
        systemversion "latest"

        defines
        {
            "FT_PLATFORM_WINDOWS",
            "FT_BUILD_DLL"
        }

        postbuildcommands
        {
            ("{COPY} %{cfg.buildtarget.relpath} ../bin/" .. outputdir .. "/SaintofLove")
        }
    
    filter "configurations:Debug"
        defines "FT_DEBUG"
        symbols "On"

    filter "configurations:RELEASE"
        defines "FT_RELEASE"
        optimize "On"

    filter "configurations:DIST"
        defines "FT_DIST"
        optimize "On"

project "SaintofLove"
    location "SaintofLove"
    kind "ConsoleApp"

    language "C++"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin_int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "%{prj.name}/src/**.h",
        "%{prj.name}/src/**.cpp"
    }

    includedirs
    {

        "Fantas/vendor/spdlog/include",
        "Fantas/src"
    }

    links
    {
        "Fantas"
    }

    filter "system:windows"
        cppdialect "c++17"
        staticruntime "on"
        systemversion "latest"

        defines
        {
            "FT_PLATFORM_WINDOWS"
        }


    filter "configurations:Debug"
        defines "FT_DEBUG"
        symbols "On"

    filter "configurations:RELEASE"
        defines "FT_RELEASE"
        optimize "On"

    filter "configurations:DIST"
        defines "FT_DIST"
        optimize "On"