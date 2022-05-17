//
//  DetailedViewController.swift
//  test
//
//  Created by imac44 on 17.05.2022.
//

import TinyConstraints

class DetailedViewController: UIViewController {

    private var currentData: Data
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        view.backgroundColor = .white
        let title = UILabel()
        title.text = currentData.title
        let text = UILabel()
        text.text = currentData.text
        text.numberOfLines = 0
        let image = UIImageView()
        image.image = UIImage(named: currentData.imageName)
        image.height(60)
        image.width(60)
        
        let stackView = UIStackView()
        stackView.spacing = 20
        stackView.alignment = .center
        [image, title].forEach { stackView.addArrangedSubview($0) }
        
        
        let mainStackView = UIStackView()
        mainStackView.axis = .vertical
        mainStackView.spacing = 20
        [stackView, text].forEach { mainStackView.addArrangedSubview($0) }
        view.addSubview(mainStackView)
        mainStackView.edgesToSuperview(insets: .top(10) + .left(20) + .bottom(10) + .right(30))
        
        // Do any additional setup after loading the view.
    }
    
    init(currentData: Data) {
        self.currentData = currentData
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
