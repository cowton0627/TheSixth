//
//  MyCellViewModel.swift
//  TheSixth copy
//
//  Created by Chun-Li Cheng on 2021/12/3.
//

import Foundation
// for Dev
class MyCellViewModel: InterfaceCellVM {
    var cellData = [WwdcData]()
    
    func fetchData() {
        guard let url = Bundle.main.url(forResource: "WWDCAttendees", withExtension: "json") else {
            print("Can't find this url.")
            return
        }
        
        do {
            let decoder = JSONDecoder()
            let data = try Data(contentsOf: url)
            let wwdcs = try decoder.decode([WwdcData].self, from: data)
            self.cellData = wwdcs
        }
        catch {
            print("Can't get JsonData from the url.")
        }
        
    }
    
    
}

