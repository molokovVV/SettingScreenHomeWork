//
//  ViewController.swift
//  SettingScreenHomeWork
//
//  Created by Виталик Молоков on 19.01.2023.
//

import UIKit
import SnapKit


class SettingsViewController: UIViewController {
    
    //MARK: - Properties
    
    var model: SettingScreenModel
    
    //MARK: - UI Elements
    
    private lazy var tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .insetGrouped)
        table.delegate = self
        table.dataSource = self
        table.register(SettingTableViewCell.self, 
                       forCellReuseIdentifier: SettingTableViewCell.indentifier)
        table.register(SwitchTableViewCell.self, 
                       forCellReuseIdentifier: SwitchTableViewCell.indentifier)
        table.register(TitleTableViewCell.self,
                       forCellReuseIdentifier: TitleTableViewCell.indentifier)
        table.register(FamilyTableViewCell.self,
                       forCellReuseIdentifier: FamilyTableViewCell.indentifier)
        table.register(SubtitleTableViewCell.self,
                       forCellReuseIdentifier: SubtitleTableViewCell.indentifier)
        
        return table
    }()
    
    //MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        model = SettingScreenModel()
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
    //MARK: - Setups
    
    private func setupView() {
        title = "Settings"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    private func setupHierarchy() {
        view.addSubview(tableView)
    }
    
    private func setupLayout() {
        tableView.snp.makeConstraints { make in
            make.top.right.bottom.left.equalTo(view)
        }
    }
    
    private func settingAdditionalViews() {
        view.backgroundColor = .systemGray2
    }
    
    init(model: SettingScreenModel) {
        self.model = model
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension SettingsViewController: UITableViewDelegate {
    
    static var titleHeightForRow: CGFloat = 80
    static var defaultHeightForRow: CGFloat = 45
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let viewController = AdditionalViewController()
        let model = model.variations[indexPath.section].options[indexPath.row]
        
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
        let model = model.variations[indexPath.section].options[indexPath.row]
        
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
        return model.variations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let data = model.variations[indexPath.section].options[indexPath.row]
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
        return model.variations[section].options.count
    }
}
