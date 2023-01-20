//
//  DataSource.swift
//  SettingScreenHomeWork
//
//  Created by Виталик Молоков on 19.01.2023.
//

import UIKit

class DataSource: DataSourceProtocol {
    
    static let appleIDTitle = "Vitalii Molokov"
    static let appleIDIcon = UIImage(named: "User1")
    
    static let familyTitle = "Family"
    static let familyFirstIcon = UIImage(named: "User1")
    static let familySecondIcon = UIImage(named: "User2")
    
    static let airplaneModeTitle = "Airplane mode"
    static let airplaneModeIcon = UIImage(systemName: "airplane")
    static let airplaneModeBackground: UIColor = .systemOrange
    
    static let wifiTitle = "Wi-Fi"
    static let wifiSubtitle = "Off"
    static let wifiIcon = UIImage(systemName: "wifi")
    static let wifiBackground: UIColor = .systemBlue
    
    static let bluetoothTitle = "Bluetooth"
    static let bluetoothSubtitle = "On"
    static let bluetoothIcon = UIImage(named: "bluetooth")
    static let bluetoothBackground: UIColor = .systemBlue
    
    static let mobileDataTitle = "Mobile Data"
    static let mobileDataIcon = UIImage(systemName: "antenna.radiowaves.left.and.right")
    static let mobileDataBackground: UIColor = .systemGreen
    
    static let personalHotspotTitle = "Personal Hotspot"
    static let personalHotspotIcon = UIImage(systemName: "personalhotspot")
    static let personalHotspotBackground: UIColor = .systemGreen
    
    static let vpnTitle = "VPN"
    static let vpnIcon = UIImage(named: "vpn")
    static let vpnBackground: UIColor = .systemBlue
    
    static let notificationsTitle = "Notifications"
    static let notificationsIcon = UIImage(systemName: "bell.badge.fill")
    static let notificationsBackground: UIColor = .systemRed
    
    static let soundsTitle = "Sounds & Haptics"
    static let soundsIcon = UIImage(systemName: "speaker.wave.3.fill")
    static let soundsBackground: UIColor = .systemPink
    
    static let focusingTitle = "Focus"
    static let focusingIcon = UIImage(systemName: "moon.fill")
    static let focusingBackground: UIColor = .systemIndigo
    
    static let screenTimeTitle = "Screen Time"
    static let screenTimeIcon = UIImage(systemName: "hourglass")
    static let screenTimeBackground: UIColor = .systemIndigo
    
    static let generalTitle = "General"
    static let generalIcon = UIImage(systemName: "gear")
    static let generalBackground: UIColor = .systemGray2
    
    static let commandCentreTitle = "Control Centre"
    static let commandCentreIcon = UIImage(systemName: "switch.2")
    static let commandCentreBackground: UIColor = .systemGray2
    
    static let screenBrightnessTitle = "Display & Brightness"
    static let screenBrightnessIcon = UIImage(systemName: "textformat.size")
    static let screenBrightnessBackground: UIColor = .systemBlue
    
    static let screenHomeTitle = "Home Screen"
    static let screenHomeIcon = UIImage(systemName: "apps.ipad")
    static let screenHomeBackground: UIColor = .blue
    
    static let accessibilityTitle = "Accessibility"
    static let accessibilityIcon = UIImage(systemName: "figure.mixed.cardio")
    static let accessibilityBackground: UIColor = .systemBlue
    
    static let wallpapersTitle = "Wallpaper"
    static let wallpapersIcon = UIImage(systemName: "atom")
    static let wallpapperBackground: UIColor = .systemBlue
    
    static let siriTitle = "Siri & Search"
    static let siriIcon = UIImage(systemName: "magnifyingglass.circle")
    static let siriBackground: UIColor = .systemIndigo
    
    static let faceIDTitle = "Face ID & Passcode"
    static let faceIDIcon = UIImage(systemName: "faceid")
    static let faceIDBackground: UIColor = .systemGreen
    
    static let emergencyCallTitle = "Emergency SOS"
    static let emergencyCallIcon = UIImage(systemName: "sos")
    static let emergencyCallBackground: UIColor = .systemRed
    
    static let batteryTitle = "Battery"
    static let batteryIcon = UIImage(systemName: "battery.100")
    static let batteryBackground: UIColor = .systemGreen
    
    static let securityTitle = "Privacy & Security"
    static let securityIcon = UIImage(systemName: "hand.raised.fill")
    static let securityBackground: UIColor = .systemBlue
    
    var variations = [Section(options: [.titleCells(model: SectionTitleOption(title: appleIDTitle, 
                                                                              icon: appleIDIcon)),
                                        .familyCells(model: SectionFamilyOption(title: familyTitle, 
                                                                                iconFirstUser: familyFirstIcon,
                                                                                iconSecondUser: familySecondIcon))]),
                      Section(options: [.switchCells(model: SectionsSwitchOption(title: airplaneModeTitle, 
                                                                                 icon: airplaneModeIcon, 
                                                                                 iconBackgroundColor: airplaneModeBackground,
                                                                                 isOn: false)),
                                        .subtitleCells(model: SectionSubtitleOption(title: wifiTitle, 
                                                                                    subtitle: wifiSubtitle, 
                                                                                    icon: wifiIcon,
                                                                                    iconBackgroundColor: wifiBackground)),
                                        .subtitleCells(model: SectionSubtitleOption(title: bluetoothTitle,
                                                                                    subtitle: bluetoothSubtitle,
                                                                                    icon: bluetoothIcon, 
                                                                                    iconBackgroundColor: bluetoothBackground)),
                                        .staticCells(model: SectionsOption(title: mobileDataTitle, 
                                                                           icon: mobileDataIcon, 
                                                                           iconBackgroundColor: mobileDataBackground)),
                                        .staticCells(model: SectionsOption(title: personalHotspotTitle,
                                                                           icon: personalHotspotIcon,
                                                                           iconBackgroundColor: personalHotspotBackground)),
                                        .switchCells(model: SectionsSwitchOption(title: vpnTitle,
                                                                                 icon: vpnIcon, 
                                                                                 iconBackgroundColor: vpnBackground,
                                                                                 isOn: false))]),
                      Section(options: [.staticCells(model: SectionsOption(title: notificationsTitle, 
                                                                           icon: notificationsIcon, 
                                                                           iconBackgroundColor: notificationsBackground)),
                                        .staticCells(model: SectionsOption(title: soundsTitle,
                                                                           icon: soundsIcon, 
                                                                           iconBackgroundColor: soundsBackground)),
                                        .staticCells(model: SectionsOption(title: focusingTitle, 
                                                                           icon: focusingIcon, 
                                                                           iconBackgroundColor: focusingBackground)),
                                        .staticCells(model: SectionsOption(title: screenTimeTitle,
                                                                           icon: screenTimeIcon,
                                                                           iconBackgroundColor: screenTimeBackground))]),
                      Section(options: [.staticCells(model: SectionsOption(title: generalTitle, 
                                                                           icon: generalIcon, 
                                                                           iconBackgroundColor: generalBackground)),
                                        .staticCells(model: SectionsOption(title: commandCentreTitle, 
                                                                           icon: commandCentreIcon, 
                                                                           iconBackgroundColor: commandCentreBackground)),
                                        .staticCells(model: SectionsOption(title: screenBrightnessTitle,
                                                                           icon: screenBrightnessIcon, 
                                                                           iconBackgroundColor: screenBrightnessBackground)),
                                        .staticCells(model: SectionsOption(title: screenHomeTitle, 
                                                                           icon: screenHomeIcon, 
                                                                           iconBackgroundColor: screenHomeBackground)),
                                        .staticCells(model: SectionsOption(title: accessibilityTitle, 
                                                                           icon: accessibilityIcon, 
                                                                           iconBackgroundColor: accessibilityBackground)),
                                        .staticCells(model: SectionsOption(title: wallpapersTitle, 
                                                                           icon: wallpapersIcon, 
                                                                           iconBackgroundColor: wallpapperBackground)),
                                        .staticCells(model: SectionsOption(title: siriTitle, 
                                                                           icon: siriIcon, 
                                                                           iconBackgroundColor: siriBackground)),
                                        .staticCells(model: SectionsOption(title: faceIDTitle, 
                                                                           icon: faceIDIcon,
                                                                           iconBackgroundColor: faceIDBackground)),
                                        .staticCells(model: SectionsOption(title: emergencyCallTitle, 
                                                                           icon: emergencyCallIcon, 
                                                                           iconBackgroundColor: emergencyCallBackground)),
                                        .staticCells(model: SectionsOption(title: batteryTitle,
                                                                           icon: batteryIcon,
                                                                           iconBackgroundColor: batteryBackground)),
                                        .staticCells(model: SectionsOption(title: securityTitle,
                                                                           icon: securityIcon, 
                                                                           iconBackgroundColor: securityBackground))])]
}
