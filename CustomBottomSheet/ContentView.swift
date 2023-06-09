//
//  ContentView.swift
//  CustomBottomSheet
//
//

import SwiftUI

struct ContentView: View {
    
    @State var isShowingBottomSheet = false
    
    var body: some View {
        ZStack{
            
            Button{
                withAnimation{
                    isShowingBottomSheet.toggle()
                }
            } label: {
                Text("Open Bottom Sheet")
            }
            
            BottomSheet(isShowing: $isShowingBottomSheet, content: BottomSheetType.online.view())
        }
    }
}
