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

		Rectangle {
			anchors.fill: parent
			color: "green"
		}
	}
}
