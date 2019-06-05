TEMPLATE = app
TARGET = gsoc_qqc2_calendar

macos:CONFIG -= app_bundle

CONFIG += c++11
QT += quick core

SOURCES = main.cpp

target.path = $$OUT_PWD/../bin
INSTALLS += target
