# Port Qt Quick Controls Calendar widget to Qt Quick Controls 2 module

## Brief Explanation
Qt is an open source cross platform framework facilitating GUI applications development, for mobile, desktop and embedded devices. Nowadays it is widely used in applications from a variety of industries like automotive or medical. Although the framework is written in C++, it brings with it a meta-language (or modelling language), QML which purpose is to be used for creating the visual parts of the application easily and fast, thanks to its flexibility and clarity.

To accelerate UI development, QML provides the Qt Quick Controls module with ready made widget types, each supported by a C++ class, like Button or Switch, ready to be styled and modified at our project needs. The module is currently on version 2.4 but there is no support for Calendar in the latest version, to be more specific, the Calendar was lastly provided in version 1.4 of the Qt Quick Controls module that was released with the Qt 5.3 version.

## Project Goals

The Qt Calendar widget is updated, modified accordingly and ported into Qt 5.12 and Qt Quick Controls 2 current version following the QtQC2 module standards and supporting all features like styling. The Calendar, ideally would have a [Template type](https://doc.qt.io/qt-5/qtquicktemplates2-index.html) where from properties like background and/or contentItem can be set for style customisation & switching support. Also, it should be possible to be instantiated as a standalone QML type and be styled locally in-place for regular usage.
