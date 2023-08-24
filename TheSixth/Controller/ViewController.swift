//
//  ViewController.swift
//  TheSixth
//
//  Created by Chun-Li Cheng on 2021/11/30.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var listTableView: UITableView!
    @IBOutlet weak var switchDataBtn: UIButton!
    private var listViewModel = ListCellViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        #if Origin
        listViewModel.fetchData(useAlternate: false)
        listViewModel.cellItems.bind { _ in
            self.listTableView.reloadData()
        }
        #elseif Dev
        switchDataBtn.isEnabled = false
        switchDataBtn.isHidden = true
        listViewModel.fetchData()
        #endif
        
    }
    
    @IBAction func switchBtnTapped(_ sender: UIButton) {
        #if Origin
        listViewModel.switchData()
        #endif
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
        
        cell.setupCell(with: listViewModel, at: indexPath.row)
//        let item = listViewModel.itemAt(indexPath.row)
//        cell.setupCell(with: item)
//        cell.setupCell(data: listViewModel.cellItems[indexPath.row])
        
        return cell
    }
    
}

