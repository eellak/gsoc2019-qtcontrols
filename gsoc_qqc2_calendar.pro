TEMPLATE = subdirs
CONFIG += ordered

SUBDIRS += src

# Additional import path used to resolve QML modules in Qt Creator's code model
# QML_IMPORT_PATH =

# Install all required files
qml.files = main.qml
qml.path = $$OUT_PWD
INSTALLS += qml

icons.files += assets/icons/*
icons.path = $$OUT_PWD/assets/icons/
INSTALLS += icons

OTHER_FILES += $$files($$PWD/*.qml, true)
OTHER_FILES += $$files($$PWD/*.qmldir, true)
