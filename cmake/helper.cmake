include_guard()

function(is_os_linux RET)
    set(${RET} FALSE)
endfunction()

function(target_link_boost_libraries TargetName)
    set(LibPrefix "")
    if(OS_WINDOWS)
        set(LibPrefix "lib")
    endif()
    foreach(arg IN LISTS ARGN)
        target_link_libraries(${TargetName} ${LibPrefix}${arg})
    endforeach()
endfunction()
