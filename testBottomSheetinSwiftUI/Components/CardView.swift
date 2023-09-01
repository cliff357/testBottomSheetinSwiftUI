//
//  CardView.swift
//  testBottomSheetinSwiftUI
//
//  Created by Cliff Chan on 1/9/2023.
//

import SwiftUI

struct CardView: View {
    var title = "Cards"
    var x: CGFloat = 100
    var y: CGFloat = -100
    
    var body: some View {
        VStack {
            Text(title).font(.title).bold()
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment:  .topLeading)
                .padding(30)
        }
        .foregroundColor(.white)
        .frame(maxWidth: .infinity)
        .background(Image("Background 1").scaleEffect(0.8).offset(x: x,y: y))
        .background(Color(UIColor(.accentColor)))
        .cornerRadius(10)
        
    }
}


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
