//
//  AdditionalViewController.swift
//  SettingScreenHomeWork
//
//  Created by Виталик Молоков on 19.01.2023.
//

import UIKit
import SnapKit

class AdditionalViewController: UIViewController {
    
    //MARK: - IBOutlets
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont(name: "Helvetica Neue", size: 40)
        
        return label
    }()
    
    //MARK: - Setups

    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupView()
        setupLayot()
    }
    
    private func setupHierarchy() {
        view.addSubview(titleLabel)
    }
    
    private func setupView() {
        view.backgroundColor = .white
    }
    
    private func setupLayot() {
        titleLabel.snp.makeConstraints { make in
            make.center.equalTo(view)
        }
    }
    
    func settingAdditionalOptions(with option: SectionProtocol) {
        titleLabel.text = option.title
    }
}
