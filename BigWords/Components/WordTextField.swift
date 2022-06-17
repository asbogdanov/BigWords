//
//  WordTextField.swift
//  BigWords
//
//  Created by Aleksandr Bogdanov on 17.06.2022.
//

import SwiftUI

struct WordTextField: View {

    @State var word: Binding<String>
    var placeholder: String

    var body: some View {
        TextField(placeholder, text: word)
            .font(.title2)
            .padding()
            .background(Color("FirstPlayer"))
            .cornerRadius(12)
    }
}

