import QtQuick
import QtQuick.Controls
import "../services"

Container {
    id: root

    default required property Component module

    implicitHeight: 26
    horizontalPadding: 8.5

    background: Rectangle {
        color: ColorsService.blue_700
        radius: 8
    }

    contentItem: Item {
        implicitWidth: loader.implicitWidth
        implicitHeight: loader.implicitHeight

        Loader {
            id: loader
            anchors.centerIn: parent
            sourceComponent: root.module
        }
    }
}
