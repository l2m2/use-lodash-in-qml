import QtQuick 2.12
import QtQuick.Window 2.12
import lodash 4.17

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello Lodash")

    Component.onCompleted: {
        console.log("lodash version: ", _.VERSION);
        console.log(JSON.stringify(_.chunk(["a", "b", "c", "d"], 2)));
    }
}

