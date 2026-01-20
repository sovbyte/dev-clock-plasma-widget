import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import org.kde.kirigami as Kirigami

Kirigami.FormLayout {
    id: appearancePage
    
    property alias cfg_showLineNumbers: showLineNumbers.checked
    property alias cfg_showDay: showDay.checked
    property alias cfg_showMonth: showMonth.checked
    property alias cfg_showYear: showYear.checked
    property alias cfg_showDayOfWeek: showDayOfWeek.checked
    property alias cfg_showHour: showHour.checked
    property alias cfg_showMinute: showMinute.checked
    property alias cfg_showSecond: showSecond.checked
    property alias cfg_showDayProgress: showDayProgress.checked
    
    CheckBox {
        id: showLineNumbers
        Kirigami.FormData.label: "Display Options:"
        text: "Show line numbers"
    }
    
    CheckBox {
        id: showDay
        text: "Show day"
    }
    
    CheckBox {
        id: showMonth
        text: "Show month"
    }
    
    CheckBox {
        id: showYear
        text: "Show year"
    }
    
    CheckBox {
        id: showDayOfWeek
        text: "Show day of week"
    }
    
    CheckBox {
        id: showHour
        text: "Show hour"
    }
    
    CheckBox {
        id: showMinute
        text: "Show minute"
    }
    
    CheckBox {
        id: showSecond
        text: "Show second"
    }
    
    CheckBox {
        id: showDayProgress
        text: "Show day progress"
    }
}