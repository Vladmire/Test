//
//  MainViewController.swift
//  test
//
//  Created by imac44 on 16.05.2022.
//

import TinyConstraints

class MainViewController: UIViewController, UITableViewDataSource {

    private let data = DataAPI.getData()
    
    
    let dataTableView = UITableView()
    let image = UIImageView()
    let titleLabel = UILabel()
    let arrowButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        view.addSubview(dataTableView)
        
        dataTableView.separatorColor = .red
        dataTableView.separatorStyle = .singleLine
        dataTableView.edgesToSuperview()
        
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "dataCell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row].title
        return cell
    }
}
