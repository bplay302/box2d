project "Box2D"
    location "RollOrDie"
    kind "StaticLib"
    language "C"
    staticruntime "off"
    cdialect "C17"

    targetdir ("bin/" .. outputDir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputDir .. "/%{prj.name}")

    files
    {
        "src/**.h",
        "src/**.c"
    }

    includedirs
    {
       "include",
       "src"
    }


    filter "system:windows"
        systemversion "latest"

    filter "configurations:Debug"
        symbols "On"
        runtime "Debug"
    filter "configurations:Release"
        optimize "On" 
        runtime "Release"
