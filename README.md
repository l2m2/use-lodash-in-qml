# use-lodash-in-qml
在Qml中使用Lodash

## 示例

```js
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
```

## 如何生成lodash.js

```bash
# 安装lodash-cli
npm -g install lodash-cli
# 生成lodash.js, lodash.min.js
lodash exports="none" iife=";(function () {%output% root._ = _; }.call(this));" -o lodash.js
```
如果安装lodash-cli后lodash -h出现"Cannot find module 'fs.realpath'"的错误，请不要使用淘宝镜像，再重新安装试试。

## 裁剪

你可以根据你的要求用lodash命令进行裁剪，具体参考帮助`lodash -h`.

## 参考

- [Using lodash in QML](https://medium.com/@benlaud/using-lodash-in-qml-e7c36b0df0e1)
- [qml-lodash](https://bitbucket.org/gooroo/qml-lodash)
