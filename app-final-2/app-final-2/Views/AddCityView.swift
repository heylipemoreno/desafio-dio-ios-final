//
//  AddCityView.swift
//  app-final-2
//
//  Created by Felipe Moreno on 21/10/23.
//

import SwiftUI

struct AddCityView: View {
    @ObservedObject var model: ContentViewModel
    
    var body: some View {
        VStack {
            TextField("Nova cidade", text: $model.newCityName)
            
            Button("Adicionar cidade", action: model.addCity)
        }
        .padding()
        .padding(.vertical, 8)
        .frame(maxWidth: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 40)
                .fill(Color.white)
        )
        .padding(.horizontal, 25)
    }
}
