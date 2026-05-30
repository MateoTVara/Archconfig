import QtQuick
import QtQuick.Layouts
import "../right_modules"

RowLayout {
    spacing: 12

    anchors {
        verticalCenter: parent.verticalCenter
        right: parent.right
        rightMargin: 6
    }

    ClockModule {}
}
