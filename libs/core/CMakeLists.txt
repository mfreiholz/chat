set(
	library_name
	core
)

cppstruct_lib(
	${library_name}
	SHARED
)

cppstruct_lib_export_hpp(
	${library_name}
)

cppstruct_lib_headers_public(
	${library_name}
	export.hpp
	core.hpp
)

#cppstruct_lib_headers(
#	${library_name}
#)

cppstruct_lib_sources(
	${library_name}
	core.cpp
)
