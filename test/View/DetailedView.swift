//
//  DetailedView.swift
//  test
//
//  Created by imac44 on 18.05.2022.
//

import TinyConstraints

class DetailedView: UIView {
    
    private let scrollView = ViewsFactory.createScrollView()
    private let contentView = ViewsFactory.createView()
    private let stack = ViewsFactory.createStackView(spacing: 20)
    private let title = ViewsFactory.createLabel(fontSize: 30)
    private let text = ViewsFactory.createLabel(fontSize: 25)
    private let image = ViewsFactory.createImageView(cornerRadius: 0)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        addSubview(scrollView)
        scrollView.edgesToSuperview()
        scrollView.addSubview(contentView)
        
        contentView.widthToSuperview()
        contentView.bottomToSuperview()
        contentView.topToSuperview()
        contentView.addSubview(stack)
        contentView.addSubview(text)
        
        image.height(120)
        image.width(120)
        
        text.topToBottom(of: stack, offset: 20)
        text.leftToSuperview(offset: 30)
        text.rightToSuperview(offset: -30)
        text.bottom(to: contentView, offset: 30)
        
        [image, title].forEach { stack.addArrangedSubview($0)}
        stack.alignment = .top
        stack.topToSuperview()
        stack.leftToSuperview(offset: 20)
        stack.rightToSuperview(offset: -30)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented ")
    }
    
    func update(data: Data) {
        title.text = data.title
        image.image = UIImage(named: data.image)
        text.text = data.text
    }
}
