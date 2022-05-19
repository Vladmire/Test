//
//  DetailedViewController.swift
//  test
//
//  Created by imac44 on 17.05.2022.
//

import TinyConstraints

class DetailedViewController: UIViewController {

    private var currentData: Data
    
    private lazy var detailedView: DetailedView = {
        let view = DetailedView()
        view.image.image = UIImage(named: String(currentData.imageName))
        view.text.text = currentData.text
        view.title.text = currentData.title
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(detailedView)
        detailedView.edgesToSuperview()
    }
    
    init(currentData: Data) {
        self.currentData = currentData
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
