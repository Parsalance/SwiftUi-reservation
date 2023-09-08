//
//  Reservation.swift
//  Little Lemon
//
//  Created by Milad Norouzi on 9/7/23.
//

import Foundation

struct Reservation {
  var restaurant:RestaurantLocations
  var customerName:String
  var customerEmail:String
  var customerPhoneNumber:String
  var reservationDate:Date
  var party:Int
  var specialRequests:String
  var id = UUID()
  
  init(restaurant:RestaurantLocations = RestaurantLocations(),
       customerName: String = "",
       customerEmail: String = "",
       customerPhoneNumber: String = "",
       reservationDate:Date = Date(),
       party:Int = 1,
       specialRequests:String = "") {
    self.restaurant = restaurant
    self.customerName = customerName
    self.customerEmail = customerEmail
    self.customerPhoneNumber = customerPhoneNumber
    self.reservationDate = reservationDate
    self.party = party
    self.specialRequests = specialRequests
  }
  
}
