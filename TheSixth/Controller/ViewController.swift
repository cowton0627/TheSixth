//
//  ViewController.swift
//  TheSixth
//
//  Created by Chun-Li Cheng on 2021/11/30.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var listTableView: UITableView!
    private var listViewModel = ListCellViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listViewModel.fetchData()
    }
    
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
//        listViewModel.cellItems.count
        listViewModel.numberOfItems()
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "\(ListTableViewCell.self)", for: indexPath) as? ListTableViewCell else {
            return UITableViewCell()
        }
        let item = listViewModel.itemAt(indexPath.row)
        cell.setupCell(with: item)
//        cell.setupCell(data: listViewModel.cellItems[indexPath.row])
        
        return cell
    }
    
}

