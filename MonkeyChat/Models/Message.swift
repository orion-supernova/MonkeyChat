//
//  Message.swift
//  MonkeyChat
//
//  Created by Murat Can KOÇ on 18.01.2022.
//

import Foundation

struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var received: Bool
    var timestamp: Date
}
