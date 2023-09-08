//
//  RestaurantView.swift
//  Little Lemon
//
//  Created by Milad Norouzi on 9/7/23.
//

import SwiftUI

struct RestaurantView: View {
    private var restaurant:RestaurantLocations
      
      init(_ restaurant:RestaurantLocations) {
        self.restaurant = restaurant
      }
      
      var body: some View {
        VStack (alignment: .leading, spacing:3){
          Text(restaurant.city)
            .font(.title2)
          
          HStack {
            Text(restaurant.neighborhood)
            Text("–")
            Text(restaurant.phoneNumber)
          }
          .font(.caption)
          .foregroundColor(.gray)
        }
      }
}

struct RestaurantView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleRestaurant = RestaurantLocations(city: "Las Vegas", neighborhood: "Downtown", phoneNumber: "(702) 555-9898")
        RestaurantView(sampleRestaurant)
    }
}
