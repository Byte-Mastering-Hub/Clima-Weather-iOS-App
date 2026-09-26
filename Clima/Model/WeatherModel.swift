//
//  WeatherModel.swift
//  Clima
//
//  Created by Sumit Tak on 03/11/25.
//  Copyright © 2025 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let condition: Int
    let city: String
    let temperature: Double
    
    var temperatureDescription: String {
        String(format: "%.1f", temperature)
    }
    
    var conditionName: String {
        switch condition {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 700...781:
            return "cloud.fog"
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud.bolt"
        default:
            return "cloud"
        }
    }
}
