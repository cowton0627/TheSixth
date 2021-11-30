//
//  ViewController.swift
//  TheSixth
//
//  Created by Chun-Li Cheng on 2021/11/30.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myTableView: UITableView!
    private var viewModel = MyCellViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.fetchData()
        
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.zodiacs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "\(MyTableViewCell.self)", for: indexPath) as? MyTableViewCell else {
            return UITableViewCell()
        }
        cell.setupCell(data: viewModel.zodiacs[indexPath.row])
        
        return cell
    }
    
    
}

