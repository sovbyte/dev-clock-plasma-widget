import QtQuick
import org.kde.plasma.plasmoid
import org.kde.plasma.configuration

PlasmoidItem {
    id: root
    
    width: 400
    height: 280
    
    Plasmoid.configurationRequired: false
    
    fullRepresentation: Item {
        anchors.fill: parent
        
        Rectangle {
            anchors.fill: parent
            color: plasmoid.configuration.colorBackground
            radius: 12
            border.color: plasmoid.configuration.colorBorder
            border.width: 2
            
            Row {
                anchors.fill: parent
                anchors.margins: 15
                spacing: 15
                
                // Номера строк
                Column {
                    id: lineNumbers
                    visible: plasmoid.configuration.showLineNumbers
                    spacing: 2
                    
                    Repeater {
                        model: codeColumn.visibleLines
                        Text {
                            text: (index + 1) + " "
                            color: plasmoid.configuration.colorLineNumbers
                            font.family: "monospace"
                            font.pixelSize: 15
                            height: 22
                        }
                    }
                }
                
                // Код
                Column {
                    id: codeColumn
                    spacing: 2
                    
                    property var currentData: ({})
                    property int visibleLines: 2 + 
                        (plasmoid.configuration.showDay ? 1 : 0) +
                        (plasmoid.configuration.showMonth ? 1 : 0) +
                        (plasmoid.configuration.showYear ? 1 : 0) +
                        (plasmoid.configuration.showDayOfWeek ? 1 : 0) +
                        (plasmoid.configuration.showHour ? 1 : 0) +
                        (plasmoid.configuration.showMinute ? 1 : 0) +
                        (plasmoid.configuration.showSecond ? 1 : 0) +
                        (plasmoid.configuration.showDayProgress ? 1 : 0)
                    
                    function updateTime() {
                        var now = new Date()
                        var days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
                        
                        currentData = {
                            day: now.getDate(),
                            month: now.getMonth() + 1,
                            year: now.getFullYear(),
                            dayOfWeek: days[now.getDay()],
                            hour: ("0" + now.getHours()).slice(-2),
                            minute: ("0" + now.getMinutes()).slice(-2),
                            second: ("0" + now.getSeconds()).slice(-2),
                            dayProgress: ((now.getHours() * 3600 + now.getMinutes() * 60 + now.getSeconds()) / 864).toFixed(2)
                        }
                    }
                    
                    Component.onCompleted: updateTime()
                    
                    Timer {
                        interval: 1000
                        running: true
                        repeat: true
                        onTriggered: codeColumn.updateTime()
                    }
                    
                    Text {
                        text: '<span style="color:' + plasmoid.configuration.colorKeyword + '">const</span> ' +
                              '<span style="color:' + plasmoid.configuration.colorVariable + '">currentTime</span> ' +
                              '<span style="color:' + plasmoid.configuration.colorSymbol + '">= {</span>'
                        font.family: "monospace"
                        font.pixelSize: 15
                        textFormat: Text.RichText
                    }
                    
                    Text {
                        visible: plasmoid.configuration.showDay
                        text: '  <span style="color:' + plasmoid.configuration.colorVariable + '">day</span>' +
                              '<span style="color:' + plasmoid.configuration.colorSymbol + '">:</span> ' +
                              '<span style="color:' + plasmoid.configuration.colorNumber + '">' + codeColumn.currentData.day + '</span>' +
                              '<span style="color:' + plasmoid.configuration.colorSymbol + '">,</span>'
                        font.family: "monospace"
                        font.pixelSize: 15
                        textFormat: Text.RichText
                        height: visible ? implicitHeight : 0
                    }
                    
                    Text {
                        visible: plasmoid.configuration.showMonth
                        text: '  <span style="color:' + plasmoid.configuration.colorVariable + '">month</span>' +
                              '<span style="color:' + plasmoid.configuration.colorSymbol + '">:</span> ' +
                              '<span style="color:' + plasmoid.configuration.colorNumber + '">' + codeColumn.currentData.month + '</span>' +
                              '<span style="color:' + plasmoid.configuration.colorSymbol + '">,</span>'
                        font.family: "monospace"
                        font.pixelSize: 15
                        textFormat: Text.RichText
                        height: visible ? implicitHeight : 0
                    }
                    
                    Text {
                        visible: plasmoid.configuration.showYear
                        text: '  <span style="color:' + plasmoid.configuration.colorVariable + '">year</span>' +
                              '<span style="color:' + plasmoid.configuration.colorSymbol + '">:</span> ' +
                              '<span style="color:' + plasmoid.configuration.colorNumber + '">' + codeColumn.currentData.year + '</span>' +
                              '<span style="color:' + plasmoid.configuration.colorSymbol + '">,</span>'
                        font.family: "monospace"
                        font.pixelSize: 15
                        textFormat: Text.RichText
                        height: visible ? implicitHeight : 0
                    }
                    
                    Text {
                        visible: plasmoid.configuration.showDayOfWeek
                        text: '  <span style="color:' + plasmoid.configuration.colorVariable + '">dayOfWeek</span>' +
                              '<span style="color:' + plasmoid.configuration.colorSymbol + '">:</span> ' +
                              '<span style="color:' + plasmoid.configuration.colorString + '">"' + codeColumn.currentData.dayOfWeek + '"</span>' +
                              '<span style="color:' + plasmoid.configuration.colorSymbol + '">,</span>'
                        font.family: "monospace"
                        font.pixelSize: 15
                        textFormat: Text.RichText
                        height: visible ? implicitHeight : 0
                    }
                    
                    Text {
                        visible: plasmoid.configuration.showHour
                        text: '  <span style="color:' + plasmoid.configuration.colorVariable + '">hour</span>' +
                              '<span style="color:' + plasmoid.configuration.colorSymbol + '">:</span> ' +
                              '<span style="color:' + plasmoid.configuration.colorNumber + '">' + codeColumn.currentData.hour + '</span>' +
                              '<span style="color:' + plasmoid.configuration.colorSymbol + '">,</span>'
                        font.family: "monospace"
                        font.pixelSize: 15
                        textFormat: Text.RichText
                        height: visible ? implicitHeight : 0
                    }
                    
                    Text {
                        visible: plasmoid.configuration.showMinute
                        text: '  <span style="color:' + plasmoid.configuration.colorVariable + '">minute</span>' +
                              '<span style="color:' + plasmoid.configuration.colorSymbol + '">:</span> ' +
                              '<span style="color:' + plasmoid.configuration.colorNumber + '">' + codeColumn.currentData.minute + '</span>' +
                              '<span style="color:' + plasmoid.configuration.colorSymbol + '">,</span>'
                        font.family: "monospace"
                        font.pixelSize: 15
                        textFormat: Text.RichText
                        height: visible ? implicitHeight : 0
                    }
                    
                    Text {
                        visible: plasmoid.configuration.showSecond
                        text: '  <span style="color:' + plasmoid.configuration.colorVariable + '">second</span>' +
                              '<span style="color:' + plasmoid.configuration.colorSymbol + '">:</span> ' +
                              '<span style="color:' + plasmoid.configuration.colorNumber + '">' + codeColumn.currentData.second + '</span>' +
                              '<span style="color:' + plasmoid.configuration.colorSymbol + '">,</span>'
                        font.family: "monospace"
                        font.pixelSize: 15
                        textFormat: Text.RichText
                        height: visible ? implicitHeight : 0
                    }
                    
                    Text {
                        visible: plasmoid.configuration.showDayProgress
                        text: '  <span style="color:' + plasmoid.configuration.colorVariable + '">dayProgress</span>' +
                              '<span style="color:' + plasmoid.configuration.colorSymbol + '">:</span> ' +
                              '<span style="color:' + plasmoid.configuration.colorNumber + '">' + codeColumn.currentData.dayProgress + '</span>' +
                              '<span style="color:' + plasmoid.configuration.colorSymbol + '">,</span>'
                        font.family: "monospace"
                        font.pixelSize: 15
                        textFormat: Text.RichText
                        height: visible ? implicitHeight : 0
                    }
                    
                    Text {
                        text: '<span style="color:' + plasmoid.configuration.colorSymbol + '">};</span>'
                        font.family: "monospace"
                        font.pixelSize: 15
                        textFormat: Text.RichText
                    }
                }
            }
        }
    }
}