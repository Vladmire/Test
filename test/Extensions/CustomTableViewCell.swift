//
//  CustomTableViewCell.swift
//  test
//
//  Created by imac44 on 17.05.2022.
//

import TinyConstraints

class CustomTableViewCell: UITableViewCell {
    
    let image: UIImageView = {
        let img = UIImageView()
        img.clipsToBounds = true
        img.contentMode = .scaleToFill
        return img
    }()
    let titleLabel :UILabel = {
        let ttl = UILabel()
        ttl.textColor = .black
        ttl.numberOfLines = 0
        ttl.font = UIFont.boldSystemFont(ofSize: 21)
        return ttl
    }()
    let arrowButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("button", for: .normal)
        btn.setImage(UIImage(named: "arrow-right"), for: .normal)
        btn.contentMode = .scaleAspectFill
        return btn
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
     super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let stackView = UIStackView()
        stackView.alignment = .center
        stackView.spacing = 20
        image.height(60)
        image.width(60)
        arrowButton.height(40)
        arrowButton.width(40)
        
        [image, titleLabel, arrowButton].forEach { stackView.addArrangedSubview($0) }
        stackView.height(80)
        
        contentView.addSubview(stackView)
        stackView.edgesToSuperview(insets: .top(10) + .left(10) + .bottom(10) + .right(10))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func update(data: Data) {
        image.image = UIImage(named: data.imageName)
        titleLabel.text = data.title
    }
    
    
}
