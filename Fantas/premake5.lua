project "Fantas"
    kind "ConsoleApp"

    language "C++"

    targetdir ("%{wks.location}/build/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/build/bin_int/" .. outputdir .. "/%{prj.name}")
    

    files
    {
        "Source/**.h",
        "Source/**.cpp",
        "ThirdParty/glm/glm/**.hpp",
		"ThirdParty/glm/glm/**.inl"
    }

    includedirs
    {
        "Source",
        "%{IncludeDir.glm}",
        "%{IncludeDir.glfw}",
        "%{IncludeDir.spdlog}",
        "%{IncludeDir.VulkanSDK}"
    }

    links 
    {
        "glfw",
        "%{Library.Vulkan}"
    }

filter "configurations:Debug"
    defines "FT_DEBUG"
    runtime "Debug"
    symbols "On"

filter "configurations:RELEASE"
    defines "FT_RELEASE"
    runtime "Release"
    optimize "On"

filter "configurations:DIST"
    defines "FT_DIST"
    runtime "Release"
    optimize "On"