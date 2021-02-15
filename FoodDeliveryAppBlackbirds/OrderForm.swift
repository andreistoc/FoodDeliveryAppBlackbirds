//
//  OrderForm.swift
//  FoodDeliveryAppBlackbirds
//
//  Created by Andrei Istoc on 15.02.2021.
//

import SwiftUI

struct OrderForm: View {
    
    @State var specialRequest = false
    @State var specialRequestInput = ""
    @State var orderAmount = 1
    
    var body: some View {
        Form {
            Toggle(isOn: $specialRequest, label: {
                Text("Any special Requests?")
            }).toggleStyle(SwitchToggleStyle(tint: .orange))
            
            if specialRequest {
                TextField("Enter your request", text: $specialRequestInput)

            }
            
            Stepper(value: $orderAmount) {
                Text("Quantity: \(orderAmount)")
            }
        }
    }
}

struct OrderForm_Previews: PreviewProvider {
    static var previews: some View {
        OrderForm()
    }
}
