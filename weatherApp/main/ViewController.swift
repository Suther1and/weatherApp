//
//  ViewController.swift
//  weatherApp
//
//  Created by Pavel Barto on 18.03.2024.
//

import UIKit
import CoreImage

public var cityName: String = ""

class ViewController: UIViewController {
    
    
    let button1 = UIButton(type: .system)
    let button2 = UIButton(type: .system)
    let button3 = UIButton(type: .system)
    let button4 = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray5
        
        
        button1.frame = CGRect(x: 50, y: 120, width: 300, height: 100)
        button1.setTitle("MOSCOW", for: .normal)
        button1.setTitleColor(.white, for: .normal)
        button1.addTarget(self, action: #selector(button1Action), for: .touchUpInside)
        button1.backgroundColor = .black
        button1.layer.cornerRadius = 20
        button1.titleLabel?.font = UIFont.boldSystemFont(ofSize: 40)
        let moscowBackgroundImage = UIImage(named: "moscow")
        button1.backgroundColor = .clear
        button1.setBackgroundImage(moscowBackgroundImage, for: .normal)
        button1.clipsToBounds = true
        button1.layer.borderWidth = 2
        button1.layer.borderColor = UIColor.black.cgColor

        
        
        button2.frame = CGRect(x: 50, y: 280, width: 300, height: 100)
        button2.setTitle("OSLO", for: .normal)
        button2.setTitleColor(.white, for: .normal)
        button2.addTarget(self, action: #selector(button2Action), for: .touchUpInside)
        button2.backgroundColor = .black
        button2.layer.cornerRadius = 20
        button2.titleLabel?.font = UIFont.boldSystemFont(ofSize: 40)
        let osloBackgroundImage = UIImage(named: "oslo")
        button2.backgroundColor = .clear
        button2.setBackgroundImage(osloBackgroundImage, for: .normal)
        button2.clipsToBounds = true
        button2.layer.borderWidth = 2
        button2.layer.borderColor = UIColor.black.cgColor
        
        
        button3.frame = CGRect(x: 50, y: 440, width: 300, height: 100)
        button3.setTitle("BEIJING", for: .normal)
        button3.setTitleColor(.white, for: .normal)
        button3.addTarget(self, action: #selector(button3Action), for: .touchUpInside)
        button3.backgroundColor = .black
        button3.layer.cornerRadius = 20
        button3.titleLabel?.font = UIFont.boldSystemFont(ofSize: 40)
        let beijingBackgroundImage = UIImage(named: "beijing")
        button3.backgroundColor = .clear
        button3.setBackgroundImage(beijingBackgroundImage, for: .normal)
        button3.clipsToBounds = true
        button3.layer.borderWidth = 2
        button3.layer.borderColor = UIColor.black.cgColor
        
        button4.frame = CGRect(x: 50, y: 600, width: 300, height: 100)
        button4.setTitle("WASHINGTON", for: .normal)
        button4.setTitleColor(.white, for: .normal)
        button4.addTarget(self, action: #selector(button4Action), for: .touchUpInside)
        button4.backgroundColor = .black
        button4.layer.cornerRadius = 20
        button4.titleLabel?.font = UIFont.boldSystemFont(ofSize: 40)
        let washingtonBackgroundImage = UIImage(named: "washington")
        button4.backgroundColor = .clear
        button4.setBackgroundImage(washingtonBackgroundImage, for: .normal)
        button4.clipsToBounds = true
        button4.layer.borderWidth = 2
        button4.layer.borderColor = UIColor.black.cgColor
        
        view.addSubview(button1)
        view.addSubview(button2)
        view.addSubview(button3)
        view.addSubview(button4)
    
        }
    
    private func openNewScreen() {
        let storyboard = UIStoryboard(name: "WeatherViewController", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "WeatherViewController") as! WeatherViewController
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @objc func button1Action() {
        cityName = "Moscow"
       openNewScreen()
    }
    
    
    @objc func button2Action() {
        cityName = "Oslo"
        openNewScreen()
         
    }
    
    @objc func button3Action() {
        cityName = "Beijing"
        openNewScreen()
    }
    @objc func button4Action() {
        cityName = "Washington"
        openNewScreen()
    }
    
    
}

