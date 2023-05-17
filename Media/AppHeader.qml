import QtQuick 2.0

Item {
    signal clickPlaylistButton

      property alias playlistButtonStatus: playlist_button.status

      Image {
          id: headerItem
          source: "qrc:/Image/title.png"

          SwitchButton {
              id: playlist_button
              anchors.left: parent.left
              anchors.leftMargin: 20
              anchors.verticalCenter: parent.verticalCenter
              icon_off: "qrc:/Image/drawer.png"
              icon_on: "qrc:/Image/back.png"
              onClicked: {
                  clickPlaylistButton()
              }

          }

        Text {
            anchors.left: playlist_button.right
            anchors.leftMargin: 5
            anchors.verticalCenter: parent.verticalCenter
            verticalAlignment: Text.AlignVCenter
            text: qsTr("Play List") + translator.currentLanguage
            color: "white"
            font.pixelSize: 32
        }
        Text {
            id: headerTitleText
            text: qsTr("Media Player") + translator.currentLanguage

            anchors.centerIn: parent
            color: "white"
            font.pixelSize: 46
        }
        Image {
            id: vn_flag
            anchors.right: headerItem.right
            anchors.rightMargin: 150
            anchors.verticalCenter: parent.verticalCenter
            width: 50
            height: 50
            source: "qrc:/Image/vn.png"
            Rectangle{
                width: 50
                height: 30
                anchors.verticalCenter: parent.verticalCenter
                border.color: "gray"
                border.width: 3
                color: "transparent"
                visible: true;
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                   translator.selectLanguage("vn");
                }
            }
        }
        Image {
            id: us_flag
            anchors.right: vn_flag.left
            anchors.rightMargin: 10
            anchors.verticalCenter: parent.verticalCenter
            width: 50
            height: 50
            source: "qrc:/Image/us.png"
            Rectangle{
                width: 50
                height: 30
                anchors.verticalCenter: parent.verticalCenter
                border.color: "gray"
                border.width: 3
                color: "transparent"
                visible: true;
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    translator.selectLanguage("us");
                }
            }
        }


    }
}
