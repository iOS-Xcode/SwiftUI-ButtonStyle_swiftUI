//
//  ContentView.swift
//  ButtonStyle_swiftUI
//
//  Created by Seokhyun Kim on 2020-10-19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing : 30) {
            Button(action: {
                print("Button Clicked")
            }, label: {
                Text("Tab")
                    //
                    .fontWeight(.bold)
            }).buttonStyle(MyButtonStyle(color: .blue, type: .tab))
            Button(action: {
                print("Button Clicked")
            }, label: {
                Text("Long Tab")
                    //
                    .fontWeight(.bold)
            }).buttonStyle(MyButtonStyle(color: .green, type: .long))
            Button(action: {
                print("Button Clicked")
            }, label: {
                Text("Rotate Button")
                    //
                    .fontWeight(.bold)
            }).buttonStyle(MyRotateButtonStyle(color: .pink))
            Button(action: {
                print("Button Clicked")
            }, label: {
                Text("Smaller Button")
                    //
                    .fontWeight(.bold)
            }).buttonStyle(MySmallerButtonStyle(color: .gray))
            Button(action: {
                print("Button Clicked")
            }, label: {
                Text("Blur Button")
                    //
                    .fontWeight(.bold)
            }).buttonStyle(MyBlurButtonStyle(color: .purple))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
