//
//  SwitchTableViewCell.swift
//  SettingScreenHomeWork
//
//  Created by Виталик Молоков on 19.01.2023.
//

import UIKit

class SwitchTableViewCell: UITableViewCell {
    
    //MARK: - Properties
    
    static let indentifier = "SwitchTableViewCell"
    
    //MARK: - UI Elements
    
    private let iconContainer: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 8
        view.clipsToBounds = true
        view.layer.masksToBounds = true
        return view
    }()
    
    private let label: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        return label
    }()
    
    private let toggleSwitch: UISwitch = {
        let toggleSwitch = UISwitch() 
        toggleSwitch.onTintColor = .systemGreen
        return toggleSwitch
    }()
    
    private let iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .white
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    //MARK: - Setups
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(label)
        contentView.addSubview(iconContainer)
        contentView.addSubview(toggleSwitch)
        iconContainer.addSubview(iconImageView)
        contentView.clipsToBounds = true
        accessoryType = .none
    }
    
    required init(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let size = contentView.frame.size.height - 12
        iconContainer.frame = CGRect(x: 15, 
                                     y: 6, 
                                     width: size, 
                                     height: size)
        
        let imageSize = size / 1.5
        iconImageView.frame = CGRect(x: (size - imageSize) / 2, 
                                     y: (size - imageSize) / 2, 
                                     width: imageSize, 
                                     height: imageSize)
        
        toggleSwitch.sizeToFit()
        toggleSwitch.frame = CGRect(x: contentView.frame.size.width - toggleSwitch.frame.size.width - 20, 
                                    y: (contentView.frame.size.height - toggleSwitch.frame.size.height) / 2, 
                                    width: toggleSwitch.frame.size.width, 
                                    height: toggleSwitch.frame.size.height)
        
        label.frame = CGRect(x: 25 + iconContainer.frame.size.width, 
                             y: 0, 
                             width: contentView.frame.size.width - 20 - iconContainer.frame.size.width, 
                             height: contentView.frame.size.height)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        iconImageView.image = nil
        label.text = nil
        iconContainer.backgroundColor = nil
        toggleSwitch.isOn = false
    }
    
    public func configure(with model: SectionsSwitchOption) {
        label.text = model.title
        iconImageView.image = model.icon
        iconContainer.backgroundColor = model.iconBackgroundColor
        toggleSwitch.isOn = model.isOn
    }
}
