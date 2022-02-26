project "ImGui"
	kind "StaticLib"
	language "C++"
    staticruntime "on"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files {
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_tables.cpp",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
		"imgui_demo.cpp",
	}

    includedirs {
        "./"
    }

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"

	filter "system:linux"
		pic "on"
		systemversion "latest"
		cppdialect "C++17"

	filter "configurations:Debug"
		symbols "on"

	filter "configurations:Beta"
 		optimize "debug"
        inlining "Auto"

	filter "configurations:Release"
		optimize "Speed"
        inlining "Auto"

		flags {
			"LinkTimeOptimization"
		}


