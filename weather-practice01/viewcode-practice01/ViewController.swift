//
//  ViewController.swift
//  viewcode-practice01
//
//  Created by João Victor on 04/08/22.
//

import UIKit

class ViewController: UIViewController {
    
    let iconView: UIImageView = {
        let iconView = UIImageView()
        iconView.translatesAutoresizingMaskIntoConstraints = false
        iconView.image = UIImage(systemName: "cloud")
        iconView.contentMode = .scaleAspectFill
        return iconView
    }()
    
    let mainLabel: UILabel = {
        let mainLabel = UILabel()
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        mainLabel.text = "Santos"
        mainLabel.font = UIFont.systemFont(ofSize: 30, weight: .regular)
        mainLabel.textAlignment = .center
        return mainLabel
    }()
    
    let temperatureLabel: UILabel = {
        let temperatureLabel = UILabel()
        temperatureLabel.translatesAutoresizingMaskIntoConstraints = false
        temperatureLabel.text = "21°C"
        temperatureLabel.font = UIFont.boldSystemFont(ofSize: 90)
        temperatureLabel.textAlignment = .center
        return temperatureLabel
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(iconView)
        view.addSubview(mainLabel)
        view.addSubview(temperatureLabel)
        setupLayout()
    }
    
    private func setupLayout() {
        let iconViewConstraints = [
            iconView.widthAnchor.constraint(equalToConstant: 100),
            iconView.heightAnchor.constraint(equalToConstant: 100),
            iconView.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            iconView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ]
        
        let mainLabelConstraints = [
            mainLabel.topAnchor.constraint(equalTo: iconView.bottomAnchor, constant: 50),
            mainLabel.leftAnchor.constraint(equalTo: view.leftAnchor),
            mainLabel.rightAnchor.constraint(equalTo: view.rightAnchor)
        ]
        
        let temperatureLabelConstraints = [
            temperatureLabel.topAnchor.constraint(equalTo: mainLabel.bottomAnchor, constant: 5),
            temperatureLabel.leftAnchor.constraint(equalTo: view.leftAnchor),
            temperatureLabel.rightAnchor.constraint(equalTo: view.rightAnchor)
        ]
        
        
        NSLayoutConstraint.activate(iconViewConstraints)
        NSLayoutConstraint.activate(mainLabelConstraints)
        NSLayoutConstraint.activate(temperatureLabelConstraints)
        
    }


}

