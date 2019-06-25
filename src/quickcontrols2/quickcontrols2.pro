TARGET = GsocQtQuickControls2
MODULE = gsocquickcontrols2
CMAKE_MODULE_TESTS=- #Fix project error

QT += quick
QT_PRIVATE += core-private gui-private qml-private quick-private quicktemplates2-private

DEFINES += QT_NO_CAST_TO_ASCII QT_NO_CAST_FROM_ASCII

HEADERS += \
    $$PWD/qtquickcontrols2global.h \
    $$PWD/qtquickcontrols2global_p.h

include(quickcontrols2.pri)
load(qt_module)
