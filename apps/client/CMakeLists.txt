#
# Client
#

set(
	app_name
	ChatClient
)

set(
	required_qt_libs
	Core
	Gui
	Widgets
	Network
	Concurrent
	Qml
	Quick
	QuickControls2
	Multimedia
)

cppstruct_qt()
cppstruct_qt_packages(${required_qt_libs})
cppstruct_app(${app_name})

cppstruct_app_headers(
	${app_name}
)

cppstruct_app_sources(
	${app_name}
	main.cpp
)

target_sources(
	${app_name}
	PRIVATE qt.qrc
)

target_link_libraries(
	${app_name}
	PRIVATE core
)

cppstruct_qt_link(
	${app_name}
	${required_qt_libs}
)
