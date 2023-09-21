project "Fantas"
    location "Fantas"
    kind "SharedLib"

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
        "Source",
        "%{IncludeDir.spdlog}",
		"%{IncludeDir.Box2D}",
		"%{IncludeDir.filewatch}",
		"%{IncludeDir.GLFW}",
		"%{IncludeDir.Glad}",
		"%{IncludeDir.ImGui}",
		"%{IncludeDir.glm}",
		"%{IncludeDir.msdfgen}",
		"%{IncludeDir.msdf_atlas_gen}",
		"%{IncludeDir.stb_image}",
		"%{IncludeDir.entt}",
		"%{IncludeDir.mono}",
		"%{IncludeDir.yaml_cpp}",
		"%{IncludeDir.ImGuizmo}",
		"%{IncludeDir.VulkanSDK}"
    }

    links
	{
		"Box2D",
		"GLFW",
		"Glad",
		"ImGui",
		"msdf-atlas-gen",
		"yaml-cpp",
		"opengl32.lib",

		"%{Library.mono}",
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
