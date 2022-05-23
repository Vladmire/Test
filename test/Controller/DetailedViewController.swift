//
//  DetailedViewController.swift
//  test
//
//  Created by imac44 on 17.05.2022.
//

import TinyConstraints

class DetailedViewController: UIViewController {
    
    private var currentData: Data
    private lazy var detailedView = DetailedView()
    
    init(currentData: Data) {
        self.currentData = currentData
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Detailed info"
        view.addSubview(detailedView)
        detailedView.update(data: currentData)
        detailedView.edgesToSuperview()
    }
}
