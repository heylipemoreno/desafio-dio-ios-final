//
//  DailyForecastView.swift
//  app-final-2
//
//  Created by Felipe Moreno on 20/10/23.
//

import SwiftUI
import SDWebImage
import SDWebImageSwiftUI

struct DailyForecastView: View {
    @State var date: String
    @State var icon: String
    @State var high: String
    @State var low: String
    
    var body: some View {
        HStack {
            Text(date)
                .font(.title3)
                .fontWeight(.semibold)
            
            Spacer()
            
            WebImage(url: URL(string: "https://openweathermap/img/wn/\(icon)@2x.png"))
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
            
            VStack(alignment: .trailing) {
                Text(high)
                Text(low)
            }
            
            .frame(width: 75)
        }
    }
}
