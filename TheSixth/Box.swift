//
//  Box.swift
//  TheSixth
//
//  Created by Chun-Li Cheng on 2023/8/24.
//

import Foundation


class Box<T> {
    
    var value: T {
        didSet {
            listener?(value)
        }
    }
    
    var listener: ((T) -> Void)?

    
    init(_ value: T) {
        self.value = value
    }
    
    
    func bind(_ listener: @escaping (T) -> Void) {
        self.listener = listener
        listener(value)
    }
    
}
