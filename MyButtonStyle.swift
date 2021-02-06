//
//  MyButtonStyle.swift
//  ButtonStyle_swiftUI
//
//  Created by Seokhyun Kim on 2020-10-19.
//

import SwiftUI

enum ButtonType {
    case tab
    case long
    /*
    case smaller
    case rotate
    case blur
    */
}

struct MyButtonStyle : ButtonStyle {
    var color : Color
    var type : ButtonType
    
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
            .scaleEffect(configuration.isPressed ? 1.3 : 1.0)
            //when its tapped
            .onTapGesture{
                if self.type == .tab {
                    let haptic = UIImpactFeedbackGenerator(style: .light)
                    haptic.impactOccurred()
                }
            }
            .onLongPressGesture {
                if self.type == .long {
                    let haptic = UIImpactFeedbackGenerator(style: .heavy)
                    haptic.impactOccurred()
                }

            }
    }
}

struct MyButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button(action: {
            print("pressed")
        }, label: {
            Text("Hoho")
        }
        ).buttonStyle(MyButtonStyle(color: .blue, type: .tab))
    }
}
