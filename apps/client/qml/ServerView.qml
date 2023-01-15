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

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            id: channelListView
            color: "yellow"
        }

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            id: channelChatView
            color: "#cccccc"
        }
    }
}
