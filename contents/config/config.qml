import QtQuick
import org.kde.plasma.configuration

ConfigModel {
    ConfigCategory {
        name: "Appearance"
        icon: "preferences-desktop-theme"
        source: "configAppearance.qml"
    }
    ConfigCategory {
        name: "Colors"
        icon: "preferences-desktop-color"
        source: "configColors.qml"
    }
}