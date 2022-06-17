//
//  ContentView.swift
//  BigWords
//
//  Created by Aleksandr Bogdanov on 17.06.2022.
//

import SwiftUI

struct StartView: View {

    @State var mainWord = ""
    @State var player1 = ""
    @State var player2 = ""

    var body: some View {

        VStack {

            TitleText(text: "Big Words")

            WordTextField(word: $mainWord, placeholder: "Введите длинное слово")
                .padding(20)
                .padding(.top, 32)

            WordTextField(word: $player1, placeholder: "Введите имя игрока 1")
                .padding(.horizontal, 20)

            WordTextField(word: $player2, placeholder: "Введите имя игрока 2")
                .cornerRadius(12)
                .padding(.horizontal, 20)

            Button {
                print("Start Button Tapped")
            } label: {
                Text("Старт")
                    .padding()
                    .font(.custom("AvenirNext-Bold", size: 30))
                    .padding(.horizontal, 30)
                    .background(Color("FirstPlayer"))
                    .foregroundColor(.white)
                    .cornerRadius(100)
                    .padding(.top)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
