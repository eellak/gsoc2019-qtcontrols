import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import gsoc.Qt.labs.calendar 1.0 as GS
import QtQuick.Templates 2.12 as T
import "../calendar"

GS.Calendar{

    id: control

    implicitWidth: Math.max(implicitBackgroundWidth + leftInset + rightInset,
                            implicitContentWidth + leftPadding + rightPadding)
    implicitHeight: Math.max(implicitBackgroundHeight + topInset + bottomInset,
                             implicitContentHeight + topPadding + bottomPadding)

    padding: 6

    contentItem: Calendar {
    // contentItem, maybe use later?

    ColumnLayout {
        anchors.centerIn: parent
        spacing: 10
        RowLayout {
            Layout.alignment: Qt.AlignVCenter
            ToolButton {
                id: prevToolBtn
                Layout.alignment: Qt.AlignVCenter
                Layout.preferredWidth: 100
                Layout.preferredHeight: 70
                background: Image {
                    anchors.fill: parent
                    fillMode: Image.PreserveAspectFit
                    scale: prevToolBtn.pressed ? 1.05 : 1.0
                    Behavior on scale { NumberAnimation { duration: 200 } }
                    source: "./assets/icons/previous.png"
                }
                onClicked: {
                    if (monthGrid.month === 0) {
                        monthGrid.month = 11;
                        monthGrid.year -= 1;
                    } else {
                        monthGrid.month -= 1
                    }
                }
            }
            Label {
                Layout.preferredWidth: 270
                text: Qt.locale().standaloneMonthName(monthGrid.month) + " " + monthGrid.year
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 28
                font.weight: Font.Light
            }
            ToolButton {
                id: nextToolBtn
                Layout.alignment: Qt.AlignVCenter
                Layout.preferredWidth: 100
                Layout.preferredHeight: 70
                background: Image {
                    anchors.fill: parent
                    fillMode: Image.PreserveAspectFit
                    scale: nextToolBtn.pressed ? 1.05 : 1.0
                    Behavior on scale { NumberAnimation { duration: 200 } }
                    source: "./assets/icons/next.png"
                }
                onClicked: {
                    if (monthGrid.month === 11) {
                        monthGrid.month = 0;
                        monthGrid.year += 1;
                    } else {
                        monthGrid.month += 1
                    }
                }
            }
        }

        GridLayout {
            columns: 2
            DayOfWeekRow {
                locale: Qt.locale("en_US")
                Layout.column: 1
                Layout.fillWidth: true
                spacing: 10
                topPadding: 6
                bottomPadding: 6
                delegate: Label {
                    text: model.shortName
                    font.pixelSize: 18
                    color: "#f78914"
                    horizontalAlignment: Text.AlignHCenter
                }
            }

            WeekNumberColumn {
                Layout.fillHeight: true
                month: monthGrid.month
                year: monthGrid.year
                locale: monthGrid.locale
                delegate: Label {
                    text: model.weekNumber
                    font.pixelSize: 24
                    color: "#92cd28"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }

            MonthGrid {
                id: monthGrid
                Layout.fillWidth: true
                Layout.fillHeight: true
                month: new Date().getMonth()
                year: new Date().getFullYear()
                locale: Qt.locale("en_US")
                spacing: 10
                property bool pressed: false
                delegate: Item {
                    width: 60
                    height: 60
                    opacity: (model.month === monthGrid.month) ? 1 : 0.3
                    Label {
                        text: model.day
                        color: "#ff000000"
                        font.pixelSize: 24
                        anchors.centerIn: parent
                    }
                }
                onClicked: {
                    console.log("Day of week clicked: ", date);
                }
            }
        }
    }

    //Background of the calendar

    // @disable-check M16
    background: Rectangle {
        implicitWidth: 600
        implicitHeight: 550

        color: control.down ? control.palette.mid : control.palette.button
        border.color: control.palette.highlight
        border.width: !control.editable && control.visualFocus ? 2 : 0
        visible: !control.flat || control.down
    }


    }
}

