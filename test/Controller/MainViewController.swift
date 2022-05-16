//
//  MainViewController.swift
//  test
//
//  Created by imac44 on 16.05.2022.
//

import TinyConstraints

class MainViewController: UIViewController, UITableViewDataSource {
    
    enum Section {
        case all
    }
    let tableView = TableView()
    private let data = DataAPI.getData()
    private lazy var dataSource = configureDataSource()
    
    
    
    
    //dataTableView.dataSource = self
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        //view.edgesToSuperview()
        
        
        dataTableView.register(UITableViewCell.self, forCellReuseIdentifier: "dataCell")
        
        
        // Do any additional setup after loading the view.
    }
    
    func configureDataSource() -> UITableViewDiffableDataSource<Section, String> {
        let cellIdentifier = "dataCell"
        
        let dataSource = UITableViewDiffableDataSource<Section, String>(
        tableView: dataTableView,
        cellProvider: {tableView, indexPath, data in
            let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
            
            cell.titleLabel?.text = data
            
            return cell
        })
        
        return dataSource
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "dataCell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row].title
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
