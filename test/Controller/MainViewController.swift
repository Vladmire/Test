//
//  MainViewController.swift
//  test
//
//  Created by imac44 on 16.05.2022.
//

import TinyConstraints

class MainViewController: UIViewController, UITableViewDataSource {

    
    private let cellID = "customCell"
    private let data = DataAPI.getData()
    private let dataTableView = UITableView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(dataTableView)
        
        dataTableView.edgesToSuperview()
        dataTableView.dataSource = self
        dataTableView.register(CustomTableViewCell.self, forCellReuseIdentifier: cellID)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! CustomTableViewCell
        cell.update(data: data[indexPath.row])
        return cell
    }
    
    
    
    
}
