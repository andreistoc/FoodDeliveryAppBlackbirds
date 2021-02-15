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
    
    @State var firstName = ""
    @State var lastName = ""
    @State var street = ""
    @State var city = ""
    @State var zip = ""
    
    @State var userFeedback = 0.0
    
    @Binding var showOrderSheet: Bool
    
    var body: some View {
        NavigationView {
        Form {
            Section {
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
            
            Section {
                TextField("First name", text: $firstName)
                TextField("Last name", text: $lastName)
                TextField("Street", text: $street)
                TextField("City", text: $city)
                TextField("ZIP code", text: $zip)
            }
            
            Section {
                HStack {
                    Image(systemName: "hand.thumbsdown")
                    Slider(value: $userFeedback, in: 0.0...10.0)
                    Image(systemName: "hand.thumbsup")
                }
            }
            
            Section {
                Button(action: {
                    print("Order placed.")
                }, label: {
                    Text("Place Order")
                })
            }
        }
        }.navigationTitle("Your Order")
        .navigationBarItems(leading: Button(action: {
            showOrderSheet = false
        }, label: {
            Text("Cancel")
        }))
    }
}

struct OrderForm_Previews: PreviewProvider {
    static var previews: some View {
        OrderForm(showOrderSheet: .constant(false))
    }
}
