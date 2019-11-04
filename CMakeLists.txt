set(SOURCE_FILES    imconfig.h
        imgui.h
        imgui.cpp
        imgui_draw
        imgui_internal
        imgui_widgets.cpp
        imstb_rectpack.h
        imstb_textedit
        imstb_truetype
        imgui_demo.cpp)

if (UNIX AND NOT APPLE)
    set(CMAKE_C_FLAGS "-fPIC")
    set(CMAKE_CXX_FLAGS "-fPIC")
endif ()

add_library(ImGui STATIC ${SOURCE_FILES})