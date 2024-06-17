//
//  DataModel.swift
//  DTime
//
//  Created by 황석현 on 6/17/24.
//

import Foundation

struct DataModel: Identifiable {
    var id = UUID()
    var title: String
    var description: String? = nil
    var date: Date
}
