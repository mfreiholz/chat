pragma Singleton

import QtQuick 2.15
import QtQuick.Shapes 1.15

QtObject {
	readonly property color backgroundColor: "#ffffff"
	readonly property color foregroundColor: "#000000"

	readonly property color accentColor: "#ff9900"
	readonly property color accentContrastColor: "#000000"

	readonly property color serverSelectionBackgroundColor: "#cccccc"
	readonly property color serverSelectionForegroundColor: Theme.foregroundColor
}
