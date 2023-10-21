//
//  ContentView.swift
//  app-final-2
//
//  Created by Felipe Moreno on 19/10/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var model = ContentViewModel()
    
    var body: some View {
        NavigationView {
            TabView{
                AddCityView(model: model)
                ForEach(model.cities) { city in
                    CityOverview(city: city)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            .navigationBarHidden(true)
                
            .background(
                Color.blue
                    .opacity(0.2)
                    .ignoresSafeArea()
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
