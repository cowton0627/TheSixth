//
//  MyCellViewModel.swift
//  TheSixth
//
//  Created by Chun-Li Cheng on 2021/11/30.
//

import Foundation
// for Origin
class MyCellViewModel: InterfaceCellVM {
    var cellData = [ZodiacData]()
    
//    var zodiacs = [ZodiacData]()
    
    func fetchData() {
        guard let url = Bundle.main.url(forResource: "Zodiac", withExtension: "json") else {
            print("Can't find this url.")
            return
        }
        
        do {
            let decoder = JSONDecoder()
            let data = try Data(contentsOf: url)
            let zodiacs = try decoder.decode([ZodiacData].self, from: data)
            self.cellData = zodiacs
        }
        catch {
            print("Can't get JsonData from the url.")
        }
        
    }
    
    
    
    
}
