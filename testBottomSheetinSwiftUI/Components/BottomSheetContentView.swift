//
//  BottomSheetContentView.swift
//  testBottomSheetinSwiftUI
//
//  Created by Cliff Chan on 1/9/2023.
//

import SwiftUI

struct BottomSheetContentView: View {
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 3, style: .continuous)
                .frame(width: 40, height: 5)
                .padding(8)
            
            HStack(spacing: 16) {
                Text("Cards").font(.largeTitle).bold()
                Button {} label: {
                    Label("Add", systemImage: "plus.circle.fill")
                        .font(.body.bold())
                        .foregroundColor(.white)
                        .padding(8)
                        .padding(.horizontal, 8)
                }
                .background(Color(UIColor(.accentColor)))
                .cornerRadius(30)
                
                Spacer()
            }
            .padding(24)
            
            HStack {
                CardView(title: "Apple", x: -300, y: 100)
                    .frame(width: 140, height: 200)
                Spacer()
                CardView(title: "Bank", x: -100, y: 100)
                    .frame(width: 140, height: 200)
            }
            .padding(24)
//            .background(Color(hex: "EDF2FF"))
            
            Text("Transactions")
                .font(.title2).bold()
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(24)
            
            VStack {
                TransactionRow(title: "Groceries", subtitle: "3 transactions", number: "1", amount: "$364.00", color: .blue)
                TransactionRow(title: "Groceries", subtitle: "3 transactions", number: "1", amount: "$364.00", color: .blue)
                TransactionRow(title: "Groceries", subtitle: "3 transactions", number: "1", amount: "$364.00", color: .blue)
            }
            .padding(.horizontal, 24)
            
            Spacer()
        }
    }
}
struct BottomSheetContentView_Previews: PreviewProvider {
    static var previews: some View {
        BottomSheetContentView()
    }
}
