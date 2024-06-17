//
//  TimeListCell.swift
//  DTime
//
//  Created by 황석현 on 6/17/24.
//

import SwiftUI

struct TimeListCell: View {
    
    var title: String
    var description: String?
    var date: Date
    var dummyDate = Date()
    
    // TODO: Date타입을 YYYY-MM-DD형태로 바꾸는 것은 ViewModel 역할인지 생각해보자
    func dateToString(date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy.MM.dd"
        
        return dateFormatter.string(from: date)
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(title)
                    .font(.largeTitle)
                    .bold()
                    .lineLimit(1)
                    .minimumScaleFactor(0.2)
                
                Spacer()
                
                VStack {
                    Text("\(dateToString(date: date))")
                        .font(.caption)
                        .bold()
                    
                    // TODO: 개발 필요
                    Text("D-00")
                        .font(.title)
                        .bold()                    
                }
            }
            .padding(.horizontal, 15)
            
            HStack {
                Text(description ?? "설명 없음")
                    .font(.footnote)
                    .bold()
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Text("변경")
                        .bold()
                        .padding(.horizontal, 10)
                })
            }
            .padding(.horizontal, 15)
        }
    }
}

#Preview {
    TimeListCell(title: "제목", description: "설명 란, 값이 없을 시 빈 칸으로", date: Date())
}
