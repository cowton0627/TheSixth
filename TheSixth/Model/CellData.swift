//
//  CellData.swift
//  TheSixth
//
//  Created by Chun-Li Cheng on 2021/11/30.
//

import Foundation

// for Origin
struct ZodiacData: Decodable {
    let name: String
    let fromDate: String
    let tillDate: String
}
// for Dev
struct WwdcData: Decodable {
    let age: Int
    let badgeNumber: Int
    let isFirstTimeAttending: Bool
    let name: String
    let nationality: String
    
//    enum CodingKeys: String, CodingKey {
//        case age
//        case badgeNumber
//        case isFirstTimeAttending
//        case name
//        case nationality = "tillDate"
//    }
}
