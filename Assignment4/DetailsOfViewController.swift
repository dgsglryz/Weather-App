//
//  DetailsOfViewController.swift
//  Assignment4
//
//  Created by Dogus Guleryuz on 24.04.2023.
//  Copyright © 2023 Derrick Park. All rights reserved.
//

import Foundation

import UIKit

class DetailsOfViewController: UIViewController {
    var weatherDescription: String?
    var currentTemperature: String?
    var chanceOfPrecipitation: String?
    var currentTime: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
  func setupUI() {
      view.backgroundColor = .white

      let weatherDescriptionLabel = UILabel()
      weatherDescriptionLabel.text = weatherDescription
      weatherDescriptionLabel.textAlignment = .center
      weatherDescriptionLabel.font = UIFont.systemFont(ofSize: 24, weight: .medium)

      let currentTemperatureLabel = UILabel()
      currentTemperatureLabel.text = "Temperature: \(currentTemperature ?? "N/A")°C"
      currentTemperatureLabel.textAlignment = .center
      currentTemperatureLabel.font = UIFont.systemFont(ofSize: 18)

      let chanceOfPrecipitationLabel = UILabel()
      chanceOfPrecipitationLabel.text = "Precipitation: \(chanceOfPrecipitation ?? "N/A")%"
      chanceOfPrecipitationLabel.textAlignment = .center
      chanceOfPrecipitationLabel.font = UIFont.systemFont(ofSize: 18)

      let currentTimeLabel = UILabel()
      currentTimeLabel.text = "Current Time: \(currentTime ?? "N/A")"
      currentTimeLabel.textAlignment = .center
      currentTimeLabel.font = UIFont.systemFont(ofSize: 18)

      let stackView = UIStackView(arrangedSubviews: [weatherDescriptionLabel, currentTemperatureLabel, chanceOfPrecipitationLabel, currentTimeLabel])
      stackView.axis = .vertical
      stackView.distribution = .equalSpacing
      stackView.spacing = 10
      stackView.translatesAutoresizingMaskIntoConstraints = false

      view.addSubview(stackView)

      NSLayoutConstraint.activate([
          stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
          stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
          stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
          stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
      ])
  }

}
