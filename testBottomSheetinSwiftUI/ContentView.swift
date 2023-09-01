//
//  ContentView.swift
//  testBottomSheetinSwiftUI
//
//  Created by Cliff Chan on 1/9/2023.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    
    var body: some View {
        ZStack {
            HomeView()
                .onTapGesture {
                    withAnimation {
                        show.toggle()
                    }
                }
            
            if show {
                Color.black.opacity(0.3).ignoresSafeArea()
                
                BottomSheet(show: $show)
                    .transition(.move(edge: .bottom))
                    .zIndex(1)
                
            }
            
        }
       

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
