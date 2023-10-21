//
//  ContentViewModel.swift
//  app-final-2
//
//  Created by Felipe Moreno on 20/10/23.
//

import Combine
import SwiftUI

final class ContentViewModel: ObservableObject {
    @Published var cities = [City]()
    @Published var newCityName = ""
    @AppStorage(Statics.UserDefaultKeys.useMetric) var useMetric = true
    
    private var cancellables = Set<AnyCancellable>()
    
    func addCity() {
        WeatherService
            .getCity(for: newCityName)
            .sink { (completion) in
                switch completion {
                case .failure(let error):
                    print(error.localizedDescription)
                    return
                case .finished: return
                }
            } receiveValue: { [weak self] (cities) in
                DispatchQueue.main.async {
                    self?.cities.append(cities.first!)
                }
            }
            .store(in: &cancellables)
    }
}
