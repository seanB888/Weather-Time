//
//  ForcastModel.swift
//  Story Time
//
//  Created by SEAN BLAKE on 12/19/23.
//

import Foundation

enum ForecastPeriod {
    case hourly
    case daily
}

enum Weather: String {
    case clear = "Clear"
    case cloudy = "Cloudy"
    case rainy = "Rainy"
    case stormy = "Stormy"
    case sunny = "Sunny"
    case tornado = "Tornado"
    case windy = "Windy"
 }

struct Forecast: Identifiable {
    var id = UUID()
    var date: Date
    var weather: Weather
    var probability: Int
    var temperature: Int
    var high: Int
    var low: Int
    var location: String
    
    // computed property
    var icon: String {
        switch weather {
        case .clear:
            return "Moon"
        case .cloudy:
            return "Cloud"
        case .rainy:
            return "Moon cloud mid rain"
        case .stormy:
            return "Sun cloud angled rain"
        case .sunny:
            return "Sun"
        case .tornado:
            return "Tornado"
        case .windy:
            return "Moon cloud fast wind"
        }
    }
}

extension Forecast {
    static let hour: TimeInterval = 60 * 60
    static let day: TimeInterval = 60 * 60 * 24
    
    static let hourly: [Forecast] = [
        Forecast(date: .init(timeIntervalSinceNow: hour * -1), weather: .rainy, probability: 30, temperature: 19, high: 24, low: 18, location: "Kingston, Jamaica"),
        Forecast(date: .now, weather: .rainy, probability: 0, temperature: 19, high: 24, low: 18, location: "Fort Lauderdale, Florida"),
        Forecast(date: .init(timeIntervalSinceNow: hour * 1), weather: .windy, probability: 0, temperature: 19, high: 24, low: 18, location: "Miami, Florida"),
        Forecast(date: .init(timeIntervalSinceNow: hour * 2), weather: .windy, probability: 0, temperature: 18, high: 24, low: 18, location: "West Palm, Florida"),
        Forecast(date: .init(timeIntervalSinceNow: hour * 3), weather: .windy, probability: 0, temperature: 17, high: 24, low: 18, location: "Boca, Florida"),
        Forecast(date: .init(timeIntervalSinceNow: hour * 4), weather: .windy, probability: 0, temperature: 10, high: 24, low: 18, location: "Pompano, Florida"),
        Forecast(date: .init(timeIntervalSinceNow: hour * 5), weather: .windy, probability: 0, temperature: 19, high: 24, low: 18, location: "Hollywood, Florida")
    ]
    
    static let daily: [Forecast] = [
        Forecast(date: .init(timeIntervalSinceNow: 0), weather: .rainy, probability: 30, temperature: 19, high: 24, low: 18, location: "Kingston, Jamaica"),
        Forecast(date: .init(timeIntervalSinceNow: day * 1), weather: .windy, probability: 0, temperature: 19, high: 24, low: 18, location: "Miami, Florida"),
        Forecast(date: .init(timeIntervalSinceNow: day * 2), weather: .windy, probability: 0, temperature: 18, high: 24, low: 18, location: "West Palm, Florida"),
        Forecast(date: .init(timeIntervalSinceNow: day * 3), weather: .windy, probability: 0, temperature: 17, high: 24, low: 18, location: "Boca, Florida"),
        Forecast(date: .init(timeIntervalSinceNow: day * 4), weather: .windy, probability: 0, temperature: 10, high: 24, low: 18, location: "Pompano, Florida"),
        Forecast(date: .init(timeIntervalSinceNow: day * 5), weather: .windy, probability: 0, temperature: 19, high: 24, low: 18, location: "Hollywood, Florida")
    ]
    
    static let cities: [Forecast] = [
        Forecast(date: .now, weather: .rainy, probability: 0, temperature: 19, high: 24, low: 18, location: "Kingston, Jamaica"),
        Forecast(date: .now, weather: .windy, probability: 0, temperature: 19, high: 24, low: 18, location: "St. Thomas, Jamaica"),
        Forecast(date: .now, weather: .windy, probability: 0, temperature: 18, high: 24, low: 18, location: "St. Andrew, Jamaica"),
        Forecast(date: .now, weather: .windy, probability: 0, temperature: 17, high: 24, low: 18, location: "Clarindon, Jamaica"),
        Forecast(date: .now, weather: .windy, probability: 0, temperature: 10, high: 24, low: 18, location: "Portmore, Jamaica"),
        Forecast(date: .now, weather: .windy, probability: 0, temperature: 19, high: 24, low: 18, location: "Spanish Town, Jamaica")
    ]
}
