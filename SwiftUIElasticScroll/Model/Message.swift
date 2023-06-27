//
//  Message.swift
//  SwiftUIElasticScroll
//
//  Created by shiyanjun on 5/30/23.
//

import SwiftUI

struct Message: Identifiable {
    var id: UUID = .init()
    var image: String
    var name: String
    var message: String
    var online: Bool
    var read: Bool
}

let sampleMessages: [Message] = [
    .init(image: "Pic 1", name: "iJustine", message: "Hi, What's up?", online: true, read: false),
    .init(image: "Pic 2", name: "Miranda", message: "How are you doing?", online: false, read: false),
    .init(image: "Pic 3", name: "Jenna", message: "Don't Waste Time", online: false, read: true),
    .init(image: "Pic 4", name: "Emily", message: "Playing Mass Effect", online: true, read: true),
    .init(image: "Pic 5", name: "Andri", message: "Justine told me to..", online: false, read: false),
    .init(image: "Pic 6", name: "Emma", message: "I mean we definitely could", online: true, read: true),
    .init(image: "Pic 7", name: "Jennifer", message: "Have you ever tried surfing?", online: true, read: false),
    .init(image: "Pic 8", name: "Yazmin Pate", message: "For sure! Consistency is key.", online: false, read: true),
    .init(image: "Pic 9", name: "Kristina Martins", message: "Like Casey Neistat", online: true, read: false),
    .init(image: "Pic 10", name: "Ryan Buckner", message: "At this point, I am not suprised", online: false, read: true),
    .init(image: "Pic 11", name: "Amna Partridge", message: "Tomorrow, we are..", online: false, read: false),
    .init(image: "Pic 12", name: "Paris Kirby", message: "I am running out of ideas..", online: true, read: true),
]


















