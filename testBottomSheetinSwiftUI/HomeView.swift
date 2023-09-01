//
//  HomeView.swift
//  testBottomSheetinSwiftUI
//
//  Created by Cliff Chan on 1/9/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            HStack {
                Image(systemName: "line.3.horizontal.decrease")
                Spacer()
                Text("Wallet")
                    .font(.headline)
                Spacer()
                Image(systemName: "person.crop.circle")
            }
            .padding()
            
            CardView()
                .frame(height: 200)
                .padding(.horizontal,24)
            
            Text("Categories")
                .font(.title2).bold()
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(24)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
