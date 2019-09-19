# Port Qt Quick Controls Calendar widget to Qt Quick Controls 2 module

## Brief Explanation
Qt is an open source cross platform framework facilitating GUI applications development, for mobile, desktop and embedded devices. Nowadays it is widely used in applications from a variety of industries like automotive or medical. Although the framework is written in C++, it brings with it a meta-language (or modelling language), QML which purpose is to be used for creating the visual parts of the application easily and fast, thanks to its flexibility and clarity.

To accelerate UI development, QML provides the Qt Quick Controls module with ready made widget types, each supported by a C++ class, like Button or Switch, ready to be styled and modified at our project needs. The module is currently on version 2.4 but there is no support for Calendar in the latest version, to be more specific, the Calendar was lastly provided in version 1.4 of the Qt Quick Controls module that was released with the Qt 5.3 version.

## Project Goals

The Qt Calendar widget is updated, modified accordingly and ported into Qt 5.12 and Qt Quick Controls 2 current version following the QtQC2 module standards and supporting all features like styling. The Calendar, ideally would have a [Template type](https://doc.qt.io/qt-5/qtquicktemplates2-index.html) where from properties like background and/or contentItem can be set for style customisation & switching support. Also, it should be possible to be instantiated as a standalone QML type and be styled locally in-place for regular usage.

## Timeline

### Bonding period (May 6 - May 25)

* Familiarize myself more with Qt to fully understand the framework.
* Read the [Qt contributions guide](https://www.qt.io/contribute-to-qt), understand the [coding style](https://wiki.qt.io/Qt_Coding_Style) and [conventions](https://wiki.qt.io/Coding_Conventions), use of modern C++ features, differences from non-Qt codebases.
* Find migration paths from Qt Quick Controls 1 to Qt Quick Controls 2 (QtQC2), [differences](https://doc.qt.io/qt-5/qtquickcontrols2-differences.html), common mistakes and difficulties.

### First phase (May 27 - June 28)

* Continue working on the existing experimental QtQC2 Calendar, find out what can be kept and what has to be discarded. Update the code up to the latest Qt version. Implement style switching mechanism support.
* Have ready a basic, working prototype.

### Second phase (June 29 - July 26)

* Complete the calendar. The project should be at a functional state, even if not yet ready for inclusion to the Qt internals. Working examples and styling through templates or locally should be provided.

### Third phase (July 27 - August 26)

* Submit the completed work upstream, so Qt maintainers can review it. Make the necessary changes based on feedback.

## Build and install 

In QtCreator project build settings (Build & Run -> selected Qt kit -> Build), add another make step with 'install' as an argument.
