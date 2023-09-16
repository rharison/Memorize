//
//  Array+Only.swift
//  Memorize
//
//  Created by Rharison Lucas on 16/09/23.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
