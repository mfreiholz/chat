import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Item {
	id: root

	Rectangle {
		id: leftbar
		anchors.top: parent.top
		anchors.bottom: parent.bottom
		anchors.left: parent.left
		implicitWidth: 80
		color: Theme.serverSelectionBackgroundColor

		ServerSelectionView {
			id: serverSelection
			anchors.fill: parent
		}
	}

	Item {
		id: contentArea
		anchors.top: parent.top
		anchors.right: parent.right
		anchors.bottom: parent.bottom
		anchors.left: leftbar.right

		Loader {
			id: serverViewLoader
			anchors.fill: parent
			sourceComponent: serverViewComp
		}
	}

	Connections {
		target: serverSelection

		function onSelectionChanged(obj) {
			console.log("test: " + obj)
		}
	}

	Component {
		id: noSelectionComp

		Item {}
	}

	Component {
		id: serverViewComp

		ServerView {
			id: contentView
			anchors.fill: parent
		}
	}
}
