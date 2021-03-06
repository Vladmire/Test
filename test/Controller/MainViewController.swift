//
//  MainViewController.swift
//  test
//
//  Created by imac44 on 16.05.2022.
//

import TinyConstraints

class MainViewController: UIViewController {

    private let cellID = "customCell"
    private let data = DataAPI.decodeData()
    private let dataTableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Main menu"
        view.addSubview(dataTableView)
        
        dataTableView.edgesToSuperview()
        dataTableView.delegate = self
        dataTableView.dataSource = self
        
        dataTableView.register(CustomTableViewCell.self, forCellReuseIdentifier: cellID)
        dataTableView.estimatedRowHeight = 80.0
        dataTableView.rowHeight = UITableView.automaticDimension
    }
}

extension MainViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! CustomTableViewCell
        cell.update(data: data[indexPath.row])
        return cell
    }
}

extension MainViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailedVC = DetailedViewController(currentData: data[indexPath.row])
        navigationController?.pushViewController(detailedVC, animated: true)
    }
}
