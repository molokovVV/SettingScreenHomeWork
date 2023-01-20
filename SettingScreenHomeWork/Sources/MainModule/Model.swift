//
//  Model.swift
//  SettingScreenHomeWork
//
//  Created by Виталик Молоков on 19.01.2023.
//

import UIKit

protocol DataSourceProtocol {
    var variations: [Section] { get set }
}

protocol SectionProtocol {
    var title: String { get }
}

enum SectionsOptionType {
    case staticCells(model: SectionsOption)
    case switchCells(model: SectionsSwitchOption)
    case titleCells(model: SectionTitleOption)
    case familyCells(model: SectionFamilyOption)
    case subtitleCells(model: SectionSubtitleOption)
}

struct Section {
    var options: [SectionsOptionType]
}

struct SectionSubtitleOption: SectionProtocol {
    let title: String
    let subtitle: String
    let icon: UIImage?
    let iconBackgroundColor: UIColor
}

struct SectionFamilyOption: SectionProtocol {
    let title: String
    let iconFirstUser: UIImage?
    let iconSecondUser: UIImage?
}

struct SectionTitleOption: SectionProtocol {
    let title: String
    let icon: UIImage?
}

struct SectionsOption: SectionProtocol {
    let title: String
    let icon: UIImage?
    let iconBackgroundColor: UIColor
}

struct SectionsSwitchOption {
    let title: String
    let icon: UIImage?
    let iconBackgroundColor: UIColor
    var isOn: Bool
}
