TEMPLATE = subdirs
CONFIG += ordered

SUBDIRS += imports

# Additional import path used to resolve QML modules in Qt Creator's code model
# QML_IMPORT_PATH =

SUBDIRS += src

# Install all required files
qml.files = main.qml
qml.path = $$OUT_PWD
INSTALLS += qml

OTHER_FILES += $$files($$PWD/*.qml, true)
OTHER_FILES += $$files($$PWD/*.qmldir, true)
