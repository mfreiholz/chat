import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Item {
    id: root
    signal selectionChanged(obj: QtObject)

    ListModel {
        id: demoModel

        ListElement {
            type: "text"
            title: "Default Chat"
        }

        ListElement {
            type: "conference"
            title: "Talk Public"
        }

        ListElement {
            type: "conference"
            title: "Talk Private"
        }
    }

    ListView {
        id: channelListView
        anchors.fill: parent
        model: demoModel
        delegate: channelDelegate
        highlight: channelDelegateHighlight
        reuseItems: true
        focus: true
        onCurrentIndexChanged: {
            root.selectionChanged(demoModel.get(currentIndex))
        }
    }

    Component {
        // First child: ListView.isCurrentItem
        // Deeper childs: channelDelegate.ListView.isCurrentItem
        id: channelDelegate

        Item {
            id: delegateRoot
            width: ListView.view.width
            height: row.height

            Row {
                id: row
                width: parent.width
                padding: 10

                Text {
                    text: "# " + title
                    font.bold: delegateRoot.ListView.isCurrentItem
                }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: channelListView.currentIndex = index
            }
        }
    }

    Component {
        id: channelDelegateHighlight

        Rectangle {
            color: "lightsteelblue"
            radius: 5
        }
    }

}
