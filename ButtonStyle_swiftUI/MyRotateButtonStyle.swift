//
//  MyRotateButtonStyle.swift
//  ButtonStyle_swiftUI
//
//  Created by Seokhyun Kim on 2020-10-19.
//

import SwiftUI

struct MyRotateButtonStyle : ButtonStyle {
    var color : Color
    
    //Make button body
    //configuration is to set button
    func makeBody(configuration: Configuration) -> some View {
        //configuration 자신
        configuration
            //fontWeight은 적용 안됨.
            .label //text 부분
            .font(.system(size: 20))
            .foregroundColor(.white)
            .padding()
            .background(color)
            .cornerRadius(20)
//            .scaleEffect(configuration.isPressed ? 1.3 : 1.0)
            //when its tapped
            //anchor는 회전축 방향.
            .rotationEffect(configuration.isPressed ? .degrees(90) : .degrees(0), anchor: .bottomLeading)
    }
}

struct MyRotateButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button(action: {
            print("pressed")
        }, label: {
            Text("Hoho")
        }
        ).buttonStyle(MyRotateButtonStyle(color: .blue))
    }
}

