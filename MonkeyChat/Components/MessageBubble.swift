//
//  MessageBubble.swift
//  MonkeyChat
//
//  Created by Murat Can KOÇ on 18.01.2022.
//

import SwiftUI

struct MessageBubble: View {
    var message: Message
    @State private var showTime = false

    var body: some View {
        VStack(alignment: message.received ? .leading : .trailing ) {
            HStack {
                Text(message.text)
                    .padding()
                    .foregroundColor(Color("Black-White"))
                    .background(.ultraThickMaterial)
                    .cornerRadius(30)
            }
            .frame(maxWidth: 300, alignment: message.received ? .leading : .trailing)
            .onTapGesture {
                showTime.toggle()
            }

            if showTime {
                Text("\(message.timestamp.formatted(.dateTime.hour().minute()))")
                    .font(.caption2)
                    .foregroundColor(.gray)
                    .padding(message.received ? .leading : .trailing, 25)
            }
        }
        .frame(maxWidth: .infinity, alignment: message.received ? .leading : .trailing)
        .padding(.horizontal)
    }
}

struct MessageBubble_Previews: PreviewProvider {
    static var previews: some View {
        MessageBubble(message: Message(id: "12345", text: "Ho ho ho Swift Rocks. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", received: false, timestamp: Date()))
    }
}
