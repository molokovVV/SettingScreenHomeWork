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
    
    var dataModel: DataSourceProtocol
    
    //MARK: - UI Elements
    
    private lazy var tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .insetGrouped)
        table.delegate = self
        table.dataSource = self
        table.frame = view.bounds
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
    
    init(model: DataSourceProtocol) {
        self.dataModel = model
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
