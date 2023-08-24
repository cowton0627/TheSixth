//
//  ListCellViewModel.swift
//  TheSixth
//
//  Created by Chun-Li Cheng on 2021/11/30.
//

import Foundation
// for Origin
class ListCellViewModel: CellViewModelInterface {
    var cellItems = [ZodiacData]()
        
    func fetchData() {
        
        guard let url = Bundle.main.url(forResource: "Zodiac", withExtension: "json") else {
            print("Can't find this url.")
            return
        }
        
        do {
            let decoder = JSONDecoder()
            let data = try Data(contentsOf: url)
            let zodiacs = try decoder.decode([ZodiacData].self,
                                             from: data)
            self.cellItems = zodiacs
            
        } catch {
            print("Can't parse JsonData from the url.")
        }
        
    }
    
    func numberOfItems() -> Int {
        return cellItems.count
    }
    
    func itemAt(_ index: Int) -> ZodiacData {
        return cellItems[index]
    }
    
    
    
    
}
