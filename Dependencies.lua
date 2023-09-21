-- Fantas Dependencies

VULKAN_SDK = os.getenv("VULKAN_SDK")

IncludeDir = {}
IncludeDir["spdlog"] = "%{wks.location}/Fantas/ThirdParty/spdlog/include"
IncludeDir["stb_image"] = "%{wks.location}/Fantas/ThirdParty/stb_image"
IncludeDir["yaml_cpp"] = "%{wks.location}/Fantas/ThirdParty/yaml-cpp/include"
IncludeDir["Box2D"] = "%{wks.location}/Fantas/ThirdParty/Box2D/include"
IncludeDir["filewatch"] = "%{wks.location}/Fantas/ThirdParty/filewatch"
IncludeDir["glfw"] = "%{wks.location}/Fantas/ThirdParty/glfw/include"
IncludeDir["Glad"] = "%{wks.location}/Fantas/ThirdParty/Glad/include"
IncludeDir["ImGui"] = "%{wks.location}/Fantas/ThirdParty/ImGui"
IncludeDir["ImGuizmo"] = "%{wks.location}/Fantas/ThirdParty/ImGuizmo"
IncludeDir["glm"] = "%{wks.location}/Fantas/ThirdParty/glm"
IncludeDir["entt"] = "%{wks.location}/Fantas/ThirdParty/entt/include"
IncludeDir["mono"] = "%{wks.location}/Fantas/ThirdParty/mono/include"
IncludeDir["shaderc"] = "%{wks.location}/Fantas/ThirdParty/shaderc/include"
IncludeDir["SPIRV_Cross"] = "%{wks.location}/Fantas/ThirdParty/SPIRV-Cross"
IncludeDir["VulkanSDK"] = "%{VULKAN_SDK}/Include"
IncludeDir["msdfgen"] = "%{wks.location}/Fantas/ThirdParty/msdf-atlas-gen/msdfgen"
IncludeDir["msdf_atlas_gen"] = "%{wks.location}/Fantas/ThirdParty/msdf-atlas-gen/msdf-atlas-gen"


