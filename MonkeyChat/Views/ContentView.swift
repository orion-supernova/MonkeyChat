//
//  ContentView.swift
//  MonkeyChat
//
//  Created by Murat Can KOÇ on 18.01.2022.
//

import SwiftUI

struct ContentView: View {
    var dummyTextArray = ["Lorem ipsum dolor sit amet", "consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."]
    var body: some View {
        VStack {
            TitleRow()

            ScrollView {
                ForEach(dummyTextArray, id: \.self) { text in
                    MessageBubble(message: Message(id: "12345", text: text, received: false, timestamp: Date()))
                }
            }
            .padding(.top, 10)
            .background(Color("White-Black"))
            .cornerRadius(40, corners: [.topLeft, .topRight])
        }
        .background(.ultraThickMaterial)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
