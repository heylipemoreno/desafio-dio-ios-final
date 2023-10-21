 //
//  Next7DaysView.swift
//  app-final-2
//
//  Created by Felipe Moreno on 20/10/23.
//

import SwiftUI

struct Next7DaysView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var forecasts: [WeatherData.Daily]
    @State var name: String
    
    let dateFormatter: DateFormatter = {
        let f = DateFormatter()
        f.dateFormat = "dd.MM"
        return f
    }()
    
    var body: some View {
        ScrollView {
            navigationBar
            
            Text(name)
                .font(.title)
                .fontWeight(.semibold)
            
            Spacer()
                .frame(height: 50)
            
            VStack(spacing: 16) {
                ForEach(forecasts, id: \.dt) { forecast in
                    DailyForecastView(date: dateFormatter.string(from: forecast.dt), icon: forecast.weather.first?.icon ?? "10d", high: "\(forecast.temp.max)°", low: "\(forecast.temp.min)°")
                }
            }
            
            .padding()
            .padding(.vertical, 8)
            .frame(maxWidth: .infinity)
            .background(
                RoundedRectangle(cornerRadius: 40)
                    .fill(Color.white)
            )
            
            .padding(.horizontal, 25)
            
            Spacer()
        }
        
        .navigationBarHidden(true)
        
        .background(
            Color.blue
                .opacity(0.2)
                .ignoresSafeArea()
        )
        
    }
    
    private var navigationBar: some View {
        HStack {
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }) {
                HStack {
                    Image(systemName: "chevron.left")
                    Text ("Voltar")
                }
            }
            
            .foregroundColor(.primary)
            
            Spacer()
        }
        
        .padding()
    }
}
