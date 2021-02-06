//
//  MyRotateButtonStyle.swift
//  ButtonStyle_swiftUI
//
//  Created by Seokhyun Kim on 2020-10-19.
//

import SwiftUI

struct MySmallerButtonStyle : ButtonStyle {
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
            .scaleEffect(configuration.isPressed ? 0.7 : 1.0)
            .opacity(configuration.isPressed ? 0.5 : 1.0)
    }
}

struct MySmallerButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button(action: {
            print("pressed")
        }, label: {
            Text("Hoho")
        }
        ).buttonStyle(MySmallerButtonStyle(color: .blue))
    }
}


