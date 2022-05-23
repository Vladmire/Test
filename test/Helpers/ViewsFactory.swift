//
//  ViewsFactory.swift
//  test
//
//  Created by imac44 on 18.05.2022.
//
import TinyConstraints

struct ViewsFactory {
    
    static func createView() -> UIView {
        let view = UIView()
        return view
    }
    
    static func createScrollView() -> UIScrollView {
        let scroll = UIScrollView()
        return scroll
    }
    
    static func createStackView(spacing: CGFloat = 0.0) -> UIStackView {
        let stack = UIStackView()
        stack.alignment = .center
        stack.spacing = spacing
        return stack
    }
    
    static func createLabel(text: String = "",
                            textColor: UIColor = .black,
                            numberOfLines: Int = 0,
                            fontName: String = "Avenir",
                            fontSize: CGFloat = 15) -> UILabel {
        let label = UILabel()
        label.text = text
        label.textAlignment = .justified
        label.textColor = textColor
        label.numberOfLines = 0
        if fontName == "Avenir" {
            label.font = UIFont.boldSystemFont(ofSize: fontSize)
        } else {
            label.font = UIFont(name: fontName, size: fontSize)
        }
        return label
    }
    
    static func createButton(title: String = "",
                             image: String = "",
                             titleColor: String = "",
                             backgroundColor: UIColor = .white,
                             cornerRadius: CGFloat = 0.0) -> UIButton {
        let button = UIButton()
        button.backgroundColor = backgroundColor
        button.setTitle(title, for: .normal)
        button.setImage(UIImage(named: image), for: .normal)
        if titleColor == "" {
            button.setTitleColor(.black, for: .normal)
        } else {
            button.setTitleColor(UIColor(named: titleColor), for: .normal)
        }
        button.contentMode = .scaleAspectFill
        button.layer.cornerRadius = cornerRadius
        return button
    }
    
    static func createImageView(imageName: String = "imageIcon",
                                cornerRadius: CGFloat) -> UIImageView {
        let image = UIImageView()
        image.clipsToBounds = true
        image.image = UIImage(named: imageName)
        image.layer.cornerRadius = cornerRadius
        image.contentMode = .scaleToFill
        return image
    }
}
