project "ImGui"
    location "%{wks.location}/Engine/Libraries/ImGui"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "On"

    targetdir ("%{wks.location}/Binaries/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/Intermediate/" .. outputdir .. "/%{prj.name}")

    files
    {
        "./*.h",
        "./*.cpp"
    }

    includedirs
    {
        "./"
    }

    filter "system:windows"
        systemversion "latest"
        
    filter "configurations:Debug"
        runtime "Debug"
        symbols "On"

    filter "configurations:Release"
        runtime "Release"
        optimize "On"
