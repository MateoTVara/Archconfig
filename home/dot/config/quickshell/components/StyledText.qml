import QtQuick
import "../services"

Text {
    id: root

    required property string textContent
    text: root.textContent
    color: ColorsService.foreground
    font {
        family: "Maple Mono"
        pointSize: 10
    }
}
