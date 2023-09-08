//
//  RestaurantLocations.swift
//  Little Lemon
//
//  Created by Milad Norouzi on 9/7/23.
//

import Foundation

struct RestaurantLocations:Hashable {
  let city:String
  let neighborhood:String
  let phoneNumber:String
  
  init(city:String = "",
       neighborhood:String = "",
       phoneNumber:String = "") {
    self.city = city
    self.neighborhood = neighborhood
    self.phoneNumber = phoneNumber
  }
}
