set(
	library_name
	coreqt
)

set(
        required_qt_libs
        Core
)

cppstruct_qt()
cppstruct_qt_packages(${required_qt_libs})

cppstruct_lib(
	${library_name}
	SHARED
)

cppstruct_lib_export_hpp(
	${library_name}
)

cppstruct_lib_headers_public(
        ${library_name}
	coreqt.hpp
)

#cppstruct_lib_headers(
#	${library_name}
#)

cppstruct_lib_sources(
	${library_name}
	coreqt.cpp
)

cppstruct_qt_link(
        ${library_name}
        ${required_qt_libs}
)
