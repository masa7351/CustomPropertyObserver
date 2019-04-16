//
//  ViewModel.swift
//  CustomPropertyObserver
//
//  Created by Masanao Imai on 2018/07/27.
//  Copyright © 2018年 Masanao Imai. All rights reserved.
//

import UIKit

class ViewModel {
    // MARK: - stored properties
    // counter
    private var counterStored: Int = 0
}

extension ViewModel {
    
    // MARK: - computed properties
    
    var counter: Int {
        get {
            return counterStored
        }
        set(newValue) {
           counterStored = newValue
        }
    }
    
    // Observerメソッド
    func observe<T>(_ propety: T, doAction: (T) -> ()) {
        doAction(propety)
    }
}
