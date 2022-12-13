//
//  Extensions.swift
//  Clone Netplifx
//
//  Created by temp on 05/12/22.
//

import Foundation


extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
