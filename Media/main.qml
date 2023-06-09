import QtQuick 2.6
import QtQuick.Controls 2.4

ApplicationWindow {
    visible: true
    width: 1920
    height: 1080
    //visibility: "FullScreen"
    title: qsTr("Media Player")
    //Backgroud of Application
    Image {

        id: backgroud
        anchors.fill: parent
        source: "qrc:/Image/background.png"
    }
    //Header
    AppHeader{
        id: headerItem
        width: parent.width
        height: 141
        onClickPlaylistButton: {
            playlistButtonStatus = !playlistButtonStatus;
             playlist.visible = ! playlist.visible;

        }
    }

    //Playlist

    PlaylistView{
        id: playlist
        y: headerItem.height
        width: 675
        height: parent.height - headerItem.height
        visible: false;
    }  

    //    //Media Info
    MediaInfoControl{
        id: mediaInfoControl
        anchors.top: headerItem.bottom
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.leftMargin: playlist.position * playlist.width
        anchors.bottom: parent.bottom

    }
}
