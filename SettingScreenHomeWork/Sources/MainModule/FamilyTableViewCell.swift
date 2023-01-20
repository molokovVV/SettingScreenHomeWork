//
//  FamilyTableViewCell.swift
//  SettingScreenHomeWork
//
//  Created by Виталик Молоков on 19.01.2023.
//

import UIKit

class FamilyTableViewCell: UITableViewCell {
    
    //MARK: - Properties
    
    static let indentifier = "FamilyTableViewCell"
    
    //MARK: - UI Elements
    
    private let iconContainer: UIView = {
        let view = UIView()
        view.clipsToBounds = true
        view.layer.masksToBounds = true
        return view
    }()
    
    private let label: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        return label
    }()
    
    private let iconFirstUserImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .white
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    private let iconSecondUserImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .white
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    //MARK: - Setups
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(label)
        contentView.addSubview(iconContainer)
        iconContainer.addSubview(iconFirstUserImageView)
        iconContainer.addSubview(iconSecondUserImageView)
        contentView.clipsToBounds = true
        accessoryType = .disclosureIndicator
    }
    
    required init(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let size = contentView.frame.size.height + 50
        iconContainer.frame = CGRect(x: 15, 
                                     y: 6, 
                                     width: size, 
                                     height: size)
        
        let imageSize = size / 3
        iconFirstUserImageView.frame = CGRect(x: (size - imageSize) / 20, 
                                              y: (size - imageSize) / 20, 
                                              width: imageSize, 
                                              height: imageSize)
        
        iconSecondUserImageView.frame = CGRect(x: (size - imageSize) / 2.5, 
                                               y: (size - imageSize) / 20, 
                                               width: imageSize, 
                                               height: imageSize)
        
        label.frame = CGRect(x: 15 + iconContainer.frame.size.width, 
                             y: 0, 
                             width: contentView.frame.size.width - 20 - iconContainer.frame.size.width, 
                             height: contentView.frame.size.height)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        iconFirstUserImageView.image = nil
        iconSecondUserImageView.image = nil
        label.text = nil
        iconContainer.backgroundColor = nil
    }
    
    public func configure(with model: SectionFamilyOption) {
        label.text = model.title
        iconFirstUserImageView.image = model.iconFirstUser
        iconSecondUserImageView.image = model.iconSecondUser
    }
}
