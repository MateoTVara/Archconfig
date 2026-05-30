pragma Singleton

import Quickshell
import QtQuick

Singleton {
    id: root
    // property string time

    // Process {
    //   id: dateProc
    //   command: ["date"]
    //   running: true

    //   stdout: StdioCollector {
    //     onStreamFinished: root.time = this.text
    //   }
    // }

    // Timer {
    //   interval: 1000
    //   running: true
    //   repeat: true
    //   onTriggered: dateProc.running = true
    // }

    readonly property string time: {
        Qt.formatDateTime(clock.date, "hh:mm");
    }

    SystemClock {
        id: clock
        precision: SystemClock.Minutes
    }
}
