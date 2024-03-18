//
//  weatherViewController.swift
//  weatherApp
//
//  Created by Pavel Barto on 18.03.2024.
//

import Foundation
import UIKit

 
 

class WeatherViewController: UIViewController {
    @IBOutlet var weatherLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var currentWeatherStringLabel: UILabel!
    @IBOutlet var currentCountryFlag: UIImageView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getWeather()
        getImage()
        
        
        currentWeatherStringLabel.text = "Current weather in \(cityName) is:"
        
        view.backgroundColor = .systemGray5
        
    }
    func getWeather() {
        let urlString = "https://api.openweathermap.org/data/2.5/weather?q=\(cityName)&appid=9749a92091c25abb0b549351a5e4eb72&&units=metric"
        let url = URL(string: urlString)!
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let data, let weather = try? JSONDecoder().decode(WeatherData.self, from: data){
                DispatchQueue.main.async {
                    if (Int((weather.main.temp).rounded())) > 0 {
                        self.weatherLabel.text = "+\(Int((weather.main.temp).rounded()))℃"
                    }else if (Int((weather.main.temp).rounded())) < 0 {
                        self.weatherLabel.text = "\(Int((weather.main.temp).rounded()))℃"
                    }else if (Int((weather.main.temp).rounded())) == 0 {
                        self.weatherLabel.text = "\(Int((weather.main.temp).rounded()))℃"
                    }
                     
                }
            }else{
                print("Failed")
            }
        }
        task.resume()
    }
    func getImage() {
        if cityName == "Moscow" {
            imageView.image = UIImage(named: "moscow")
            currentCountryFlag.image = UIImage(named: "russia")
            
        }else if cityName == "Oslo"{
            imageView.image = UIImage(named: "oslo")
            currentCountryFlag.image = UIImage(named: "norway")
        }else if cityName == "Beijing"{
            imageView.image = UIImage(named: "beijing")
            currentCountryFlag.image = UIImage(named: "china")
        }else if cityName == "Washington"{
            imageView.image = UIImage(named: "washington")
            currentCountryFlag.image = UIImage(named: "usa")
        }
    }
}
