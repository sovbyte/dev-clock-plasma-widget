import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import org.kde.kirigami as Kirigami

Kirigami.FormLayout {
    id: colorsPage
    
    property alias cfg_colorKeyword: colorKeyword.text
    property alias cfg_colorVariable: colorVariable.text
    property alias cfg_colorNumber: colorNumber.text
    property alias cfg_colorString: colorString.text
    property alias cfg_colorSymbol: colorSymbol.text
    property alias cfg_colorBackground: colorBackground.text
    property alias cfg_colorBorder: colorBorder.text
    property alias cfg_colorLineNumbers: colorLineNumbers.text
    
    RowLayout {
        Kirigami.FormData.label: "Keyword color (const):"
        TextField {
            id: colorKeyword
            placeholderText: "#569cd6"
        }
        Rectangle {
            width: 30
            height: 30
            color: colorKeyword.text || "#569cd6"
            border.color: "gray"
        }
    }
    
    RowLayout {
        Kirigami.FormData.label: "Variable color:"
        TextField {
            id: colorVariable
            placeholderText: "#9cdcfe"
        }
        Rectangle {
            width: 30
            height: 30
            color: colorVariable.text || "#9cdcfe"
            border.color: "gray"
        }
    }
    
    RowLayout {
        Kirigami.FormData.label: "Number color:"
        TextField {
            id: colorNumber
            placeholderText: "#b5cea8"
        }
        Rectangle {
            width: 30
            height: 30
            color: colorNumber.text || "#b5cea8"
            border.color: "gray"
        }
    }
    
    RowLayout {
        Kirigami.FormData.label: "String color:"
        TextField {
            id: colorString
            placeholderText: "#ce9178"
        }
        Rectangle {
            width: 30
            height: 30
            color: colorString.text || "#ce9178"
            border.color: "gray"
        }
    }
    
    RowLayout {
        Kirigami.FormData.label: "Symbol color:"
        TextField {
            id: colorSymbol
            placeholderText: "#d4d4d4"
        }
        Rectangle {
            width: 30
            height: 30
            color: colorSymbol.text || "#d4d4d4"
            border.color: "gray"
        }
    }
    
    RowLayout {
        Kirigami.FormData.label: "Background color:"
        TextField {
            id: colorBackground
            placeholderText: "#1e1e1e"
        }
        Rectangle {
            width: 30
            height: 30
            color: colorBackground.text || "#1e1e1e"
            border.color: "gray"
        }
    }
    
    RowLayout {
        Kirigami.FormData.label: "Border color:"
        TextField {
            id: colorBorder
            placeholderText: "#555555"
        }
        Rectangle {
            width: 30
            height: 30
            color: colorBorder.text || "#555555"
            border.color: "gray"
        }
    }
    
    RowLayout {
        Kirigami.FormData.label: "Line numbers color:"
        TextField {
            id: colorLineNumbers
            placeholderText: "#858585"
        }
        Rectangle {
            width: 30
            height: 30
            color: colorLineNumbers.text || "#858585"
            border.color: "gray"
        }
    }
}