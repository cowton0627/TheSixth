//
//  ListCellViewModel.swift
//  TheSixth copy
//
//  Created by Chun-Li Cheng on 2021/12/3.
//

import Foundation
// for Dev
class ListCellViewModel: CellViewModelInterface {
    var cellItems = [AttendeeData]()
    
    func fetchData() {
        guard let url = Bundle.main.url(forResource: "WWDCAttendees", withExtension: "json") else {
            print("Can't find this url.")
            return
        }
        
        do {
            let decoder = JSONDecoder()
            let data = try Data(contentsOf: url)
            let wwdcs = try decoder.decode([AttendeeData].self,
                                           from: data)
            self.cellItems = wwdcs
        }
        catch {
            print("Can't parse JsonData from the url.")
        }
        
    }
    
    func numberOfItems() -> Int {
        return cellItems.count
    }
    
    func itemAt(_ index: Int) -> AttendeeData {
        cellItems[index]
    }
    
}

