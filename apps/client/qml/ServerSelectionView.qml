import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Item {
	id: root
	signal selectionChanged(QtObject obj)

	ListModel {
		id: model

		ListElement {
			icon: ""
			title: "insaneFactory"
		}

		ListElement {
			icon: ""
			title: "mfreiholz.de"
		}

		ListElement {
			icon: ""
			title: "Dev.Server"
		}
	}

	ListView {
		id: serverListView
		anchors.fill: parent
		model: model
		spacing: 10
		delegate: itemDelegate
		highlight: itemDelegateHighlight
		onCurrentIndexChanged: {
			root.selectionChanged(model.get(currentIndex))
		}
	}

	Component {
		id: itemDelegate

		Item {
			id: delegateRoot
			width: ListView.view.width
			height: row.height

			Row {
				id: row
				anchors.left: parent.left
				anchors.right: parent.right
				padding: 10

				Rectangle {
					width: parent.width - (parent.leftPadding + parent.rightPadding)
					height: 64
					radius: 5
					color: "orange"
				}
			}

			MouseArea {
				anchors.fill: parent
				onClicked: serverListView.currentIndex = index
			}
		}
	}

	Component {
		id: itemDelegateHighlight

		Rectangle {
			color: "blue"
		}
	}
}
