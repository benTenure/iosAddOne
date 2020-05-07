//
//  String.swift
//  iosAddone
//
//  Created by Benjamin Przysucha on 5/7/20.
//  Copyright © 2020 Benjamin Przysucha. All rights reserved.
//

import Foundation

extension String {
    
    static func randomNumber(length: Int) -> String {
        var result = ""
        
        for _ in 0..<length {
            let digit = Int.random(in:0...9)
            result += "\(digit)"
        }
        
        return result
    }
    
    func integer(at n: Int) -> Int {
        let index = self.index(self.startIndex, offsetBy: n)
        
        return self[index].wholeNumberValue ?? 0
    }
}
