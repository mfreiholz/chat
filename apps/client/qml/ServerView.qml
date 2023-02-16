import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15


/*!
	Default view for a single server.
	Shows all available channels
*/
Item {
	id: root

	RowLayout {
		anchors.fill: parent

		ServerChannelList {
			Layout.fillHeight: true
			implicitWidth: 200
			id: channelListView
		}

		Rectangle {
			Layout.fillHeight: true
			Layout.fillWidth: true
			id: channelContentView
			color: "#cccccc"
		}
	}

	Connections {
		target: channelListView

		function onSelectionChanged(obj) {
			console.log("selection changed to " + obj)
		}
	}
}
