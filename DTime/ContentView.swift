//
//  ContentView.swift
//  DTime
//
//  Created by 황석현 on 6/17/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var dummyDataArray: [DataModel] = [DataModel(title: "Example1", date: Date()),
                                              DataModel(title: "Example2", date: Date.init(timeInterval: 30, since: .now)),
                                              DataModel(title: "Example3", date: Date.init(timeInterval: 500, since: .now)),
                                              DataModel(title: "Example4 is LongString", date: Date.init(timeInterval: 500, since: .now))]
    
    var body: some View {
        VStack {
            List(dummyDataArray) { dummy in
                VStack {
                    TimeListCell(title: dummy.title, date: dummy.date)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
