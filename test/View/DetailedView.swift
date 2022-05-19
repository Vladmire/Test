//
//  DetailedView.swift
//  test
//
//  Created by imac44 on 18.05.2022.
//

import TinyConstraints
import UIKit

class DetailedView: UIView {
    
    let scrollView = ViewsFactory.createScrollView()
    let contentView = ViewsFactory.createView()
    let stack = ViewsFactory.createStackView(spacing: 20)
    let title = ViewsFactory.createLabel(fontSize: 30)
    let text = ViewsFactory.createLabel(fontSize: 25)
    let image = ViewsFactory.createImageView(cornerRadius: 0)
    
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
        
        [image, title].forEach { stack.addArrangedSubview($0)}
        stack.alignment = .top
        stack.topToSuperview()
        stack.leftToSuperview(offset: 20)
        stack.rightToSuperview(offset: -30)
        
        text.topToBottom(of: stack, offset: 20)
        text.leftToSuperview(offset: 30)
        text.rightToSuperview(offset: -30)
        text.bottom(to: contentView, offset: 30)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented ")
    }
}
