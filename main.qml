import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12
import gosc.QtQuick.Controls 2.5

Window {
    id: root
    visible: true
    width: 640
    height: 580
    title: qsTr("GSOC 2019 - QtQuick.Controls 2 Calendar Project")

    Calendar {
        anchors.fill: parent
    }
}
