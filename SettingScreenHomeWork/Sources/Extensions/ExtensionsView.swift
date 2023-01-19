//
//  ExtensionsView.swift
//  SettingScreenHomeWork
//
//  Created by Виталик Молоков on 19.01.2023.
//

import UIKit

extension SettingsViewController: UITableViewDelegate {
    
    static var titleHeightForRow: CGFloat = 80
    static var defaultHeightForRow: CGFloat = 45
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let viewController = AdditionalViewController()
        let model = dataModel.variations[indexPath.section].options[indexPath.row]
        
        switch model {
        case .staticCells(let model):
            viewController.settingAdditionalOptions(with: model)
            print("Push \(model.title)")
        case .switchCells(let model):
            viewController.settingAdditionalOptions(with: model as! SectionProtocol)
            print("Push \(model.title)")
        case .titleCells(let model):
            viewController.settingAdditionalOptions(with: model)
            print("Push \(model.title)")
        case .familyCells(let model):
            viewController.settingAdditionalOptions(with: model)
            print("Push \(model.title)")
        case .subtitleCells(let model):
            viewController.settingAdditionalOptions(with: model)
            print("Push \(model.title)")
        }
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let model = dataModel.variations[indexPath.section].options[indexPath.row]
        
        switch model {
        case .titleCells(_):
            return SettingsViewController.titleHeightForRow
        case .staticCells(_):
            return SettingsViewController.defaultHeightForRow
        case .switchCells(_):
            return SettingsViewController.defaultHeightForRow
        case .familyCells(_):
            return SettingsViewController.defaultHeightForRow
        case .subtitleCells(_):
            return SettingsViewController.defaultHeightForRow
        }
    }
}

extension SettingsViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return dataModel.variations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let data = dataModel.variations[indexPath.section].options[indexPath.row]
        switch data.self {
        case .staticCells(let data):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: SettingTableViewCell.indentifier, for: indexPath) as? SettingTableViewCell
            else { return UITableViewCell()
            }
            cell.configure(with: data)
            return cell
        case .switchCells(let data):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: SwitchTableViewCell.indentifier, for: indexPath) as? SwitchTableViewCell
            else { return UITableViewCell()
            }
            cell.configure(with: data)
            return cell
        case .titleCells(let data):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: TitleTableViewCell.indentifier, for: indexPath) as? TitleTableViewCell
            else { return UITableViewCell()
            }
            cell.configure(with: data)
            return cell
        case .familyCells(let data):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: FamilyTableViewCell.indentifier, for: indexPath) as? FamilyTableViewCell
            else { return UITableViewCell()
            }
            cell.configure(with: data)
            return cell
        case .subtitleCells(let data):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: SubtitleTableViewCell.indentifier, for: indexPath) as? SubtitleTableViewCell
            else { return UITableViewCell()
            }
            cell.configure(with: data)
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataModel.variations[section].options.count
    }
}
