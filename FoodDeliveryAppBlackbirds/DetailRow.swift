//
//  DetailRow.swift
//  FoodDeliveryAppBlackbirds
//
//  Created by Andrei Istoc on 19.01.2021.
//

import SwiftUI

struct DetailRow: View {
    
    let food: Food
    
    var body: some View {
        HStack {
            VStack {
                Text(food.title).font(.headline).padding(.top, 10)
                Text("\(food.price, specifier: "%2.2f") $").font(.caption)
            }
            Spacer()
            Button(action: {
                print("Order received.")
            }, label: {
                Text("ORDER").foregroundColor(.white)
            }).frame(width: 80, height: 50).background(Color.orange).cornerRadius(10)
        }.padding()
    }
}

struct DetailRow_Previews: PreviewProvider {
    static var previews: some View {
        DetailRow(food: foodData[0]).previewLayout(.sizeThatFits)
    }
}
