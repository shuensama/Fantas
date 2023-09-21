project "SaintofLove"
    location "SaintofLove"
    kind "ConsoleApp"

    language "C++"

	targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin_int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "Source/**.h",
        "Source/**.cpp"
    }

    includedirs
    {
        "Fantas/Source",
        "%{IncludeDir.spdlog}",
        "%{IncludeDir.glm}",
		"%{IncludeDir.entt}"
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