//
//  ContentView.swift
//  Memorize
//
//  Created by brian.yang on 2022/5/19.
//

import SwiftUI

struct ContentView: View {
    @State var emojis = ["🚚", "🏎", "🛵", "🚜", "🚗", "🚐", "🚔", "🛺", "🛩",  "🚃", "🚁", "✈️", "🏍", "🛳", "🚢"]
    @State var emojiCount = 10
    
    var body: some View {
        VStack {
            Text("Memorize!").font(.largeTitle)
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: widthThatBestFits(cardCount: emojiCount)))]) {
                    ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                        CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
            .foregroundColor(.red)
            Spacer()
            HStack {
                Spacer()
                vehicles
                Spacer()
                animals
                Spacer()
                plants
                Spacer()
            }
            .font(.largeTitle)
            .padding(.horizontal)
        }
        .padding(.horizontal)
    }
    
    func widthThatBestFits(cardCount: Int) -> CGFloat {
        let count = floor(sqrt(CGFloat(3)/2 * CGFloat(cardCount)))
        return (CGFloat(300) / count)
    }
    
    var vehicles: some View {
        VStack {
            Image(systemName: "car")
            Text("Vehicles").font(.subheadline)
        }
        .foregroundColor(.blue)
        .onTapGesture {
            emojis = ["🚚", "🏎", "🛵", "🚜", "🚗", "🚐", "🚔", "🛺", "🛩",  "🚃", "🚁", "✈️", "🏍", "🛳", "🚢"].shuffled()
            emojiCount = Int.random(in: 8...emojis.count)
        }
    }
    var animals: some View {
        VStack {
            Image(systemName: "pawprint")
            Text("Animals").font(.subheadline)
        }
        .foregroundColor(.blue)
        .onTapGesture {
            emojis = ["🐶", "🦊", "🐹", "🐯", "🙈", "🦁", "🐼", "🐷", "🐸", "🐨", "🐮", "🦘", "🐬", "🐳", "🦧"].shuffled()
            emojiCount = Int.random(in: 8...emojis.count)
        }
    }
    var plants: some View {
        VStack {
            Image(systemName: "leaf")
            Text("plants").font(.subheadline)
        }
        .foregroundColor(.blue)
        .onTapGesture {
            emojis = ["🌵", "🌴", "🌲", "🌳", "🪴", "🎍", "🎄", "🌻", "🌿",  "🍁", "🍀", "💐", "🌺", "🌹", "🌼"].shuffled()
            emojiCount = Int.random(in: 8...emojis.count)
        }
    }
}

struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = true
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }	
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView().preferredColorScheme(.dark)
    }
}
