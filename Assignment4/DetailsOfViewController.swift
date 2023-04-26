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
  
  let countryLabel: UILabel = {
    let label = UILabel()
    label.text = "Country"
    label.textAlignment = .center
    label.font = UIFont.boldSystemFont(ofSize: 20)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let countryName: UILabel = {
    let label = UILabel()
    label.textAlignment = .center
    label.font = UIFont.boldSystemFont(ofSize: 20)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let cityLabel: UILabel = {
    let label = UILabel()
    label.text = "City"
    label.textAlignment = .center
    label.font = UIFont.boldSystemFont(ofSize: 20)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let cityName: UILabel = {
    let label = UILabel()
    label.text = "0"
    label.textAlignment = .center
    label.font = UIFont.systemFont(ofSize: 20)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let tempLabel: UILabel = {
    let label = UILabel()
    label.text = "Temperature"
    label.textAlignment = .center
    label.font = UIFont.boldSystemFont(ofSize: 20)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let tempName: UILabel = {
    let label = UILabel()
    label.text = "0"
    label.textAlignment = .center
    label.font = UIFont.systemFont(ofSize: 20)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let SumLabel: UILabel = {
    let label = UILabel()
    label.text = "Summary"
    label.textAlignment = .center
    label.font = UIFont.boldSystemFont(ofSize: 20)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  let SumName: UILabel = {
    let label = UILabel()
    label.text = "0"
    label.textAlignment = .center
    label.font = UIFont.systemFont(ofSize: 20)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  override func viewDidLoad() {
    super.viewDidLoad()
    
    view.backgroundColor = .white
    
    let stackView = UIStackView(arrangedSubviews: [countryLabel, countryName, cityLabel, cityName,tempLabel,tempName,SumLabel,SumName])
    stackView.axis = .vertical
    stackView.distribution = .equalSpacing
    stackView.alignment = .center
    stackView.spacing = 20
    stackView.translatesAutoresizingMaskIntoConstraints = false
    
    view.addSubview(stackView)
    
    NSLayoutConstraint.activate([
      stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
      stackView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8)
    ])
  }
}
