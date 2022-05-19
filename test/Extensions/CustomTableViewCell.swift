//
//  CustomTableViewCell.swift
//  test
//
//  Created by imac44 on 17.05.2022.
//

import TinyConstraints

class CustomTableViewCell: UITableViewCell {
    
    let image = ViewsFactory.createImageView(cornerRadius: 0)
    let titleLabel = ViewsFactory.createLabel(fontSize: 25)
    let arrow =  ViewsFactory.createImageView(imageName: "arrow-right", cornerRadius: 0)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
     super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let stackView = UIStackView()
        stackView.alignment = .center
        stackView.spacing = 20
        image.height(60)
        image.width(60)
        arrow.height(40)
        arrow.width(40)
        [image, titleLabel, arrow].forEach { stackView.addArrangedSubview($0) }
        
        contentView.addSubview(stackView)
        stackView.edgesToSuperview(insets: .top(10) + .left(20) + .bottom(10) + .right(30))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func update(data: Data) {
        image.image = UIImage(named: String(data.imageName))
        titleLabel.text = data.title
    }
    
}
