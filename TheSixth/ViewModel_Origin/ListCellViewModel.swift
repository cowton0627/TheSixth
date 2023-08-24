//
//  ListCellViewModel.swift
//  TheSixth
//
//  Created by Chun-Li Cheng on 2021/11/30.
//

import Foundation
// for Origin
class ListCellViewModel: CellViewModelInterface {
    
//    var cellItems = [ZodiacData]()
    var cellItems = Box([ZodiacData]())
    
    // to track which data set is being used
    var isUsingAlternateData = false
       
    func fetchData() { }

    func fetchData(useAlternate: Bool = false) {
        
        let fileName = useAlternate ? "ZodiacAlternate" : "Zodiac"
        
        guard let url = Bundle.main.url(forResource: fileName, withExtension: "json") else {
            print("Can't find this url.")
            return
        }
        
        do {
            let decoder = JSONDecoder()
            let data = try Data(contentsOf: url)
            let zodiacs = try decoder.decode([ZodiacData].self,
                                             from: data)
            self.cellItems.value = zodiacs
//            self.cellItems = zodiacs
        } catch {
            print("Can't parse JsonData from the url.")
        }
        
        isUsingAlternateData = useAlternate
        
    }
    
    func numberOfItems() -> Int {
        return cellItems.value.count
//        return cellItems.count
    }
    
    func itemAt(_ index: Int) -> ZodiacData {
        return cellItems.value[index]
//        return cellItems[index]
    }
    
    func switchData() {
        fetchData(useAlternate: !isUsingAlternateData)
    }
    
}
