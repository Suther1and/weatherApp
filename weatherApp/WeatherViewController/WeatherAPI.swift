//
//  WeatherAPI.swift
//  weatherApp
//
//  Created by Pavel Barto on 18.03.2024.
//

import Foundation
import UIKit


public func getWeather() {
    let urlString = "https://api.openweathermap.org/data/2.5/weather?q=\(cityName)&appid=9749a92091c25abb0b549351a5e4eb72&&units=metric"
    let url = URL(string: urlString)!
    let request = URLRequest(url: url)
    let task = URLSession.shared.dataTask(with: request) { data, response, error in
        if let data, let weather = try? JSONDecoder().decode(WeatherData.self, from: data){
            print(weather.main.temp)
        }else{
            print("Failed")
        }
    }
    task.resume()
}
