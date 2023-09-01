//
//  TransactionRow.swift
//  testBottomSheetinSwiftUI
//
//  Created by Cliff Chan on 1/9/2023.
//

import SwiftUI

struct TransactionRow: View {
    var title = "Gorceries"
    var subtitle = "6 Transactions"
    var number = "1"
    var amount = "$364.00"
    var color = Color.blue
 
    var body: some View {
        HStack(spacing: 12) {
            VStack {
                Text(number).bold()
            }
            .foregroundColor(.white)
            .frame(width: 50, height: 50)
            .background(color)
            
            VStack(alignment: .leading) {
                Text(title).font(.headline)
                Text(subtitle).font(.subheadline)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            
            Text(amount)
        }
    }
}

struct TransactionRowView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionRow()
    }
}
