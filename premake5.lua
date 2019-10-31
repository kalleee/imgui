project "ImGui"
kind "StaticLib"
language "C++"

targetdir ("bin/" .. outputdir .. "/%{prj.name}")
objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

files{
    "imconfig.h",
    "imgui.h",
    "imgui.cpp",
    "imgui_draw",
    "imgui_internal",
    "imgui_widgets.cpp",
    "imstb_rectpack.h",
    "imstb_textedit",
    "imstb_truetype",
    "imgui_demo.cpp",
}

filter "system:windows"
systemversion "latest"
cppdialect "C++17"
staticruntime "On"

filter {"systems:windows", "configuration:Release"}
buildoptions "/MT"
