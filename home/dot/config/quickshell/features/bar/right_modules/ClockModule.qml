import QtQuick
import "../../../services"
import "../../../components"

ModuleShell {
    StyledText {
        textContent: `󰅐 ${TimeService.time}`
    }
}
