//
//  DetailView.swift
//  FoodDeliveryAppBlackbirds
//
//  Created by Andrei Istoc on 19.01.2021.
//

import SwiftUI

struct DetailView: View {
    
    let currentCategory: Categories
    
    @State var showOrderSheet = false
    
    var body: some View {
        List(filterData(foodDataSet: foodData, by: currentCategory)) { food in
            DetailRow(food: food, showOrderSheet: $showOrderSheet)
        }.navigationTitle(Text(categoryString(for: currentCategory)))
        .sheet(isPresented: $showOrderSheet, content: {
            OrderForm(showOrderSheet: $showOrderSheet)
        })
        .listStyle(SidebarListStyle())
    }
    
    func filterData(foodDataSet: [Food], by category: Categories) -> [Food] {
        var filteredArray = [Food]()
        
        for food in foodDataSet {
            if food.category == category {
                filteredArray.append(food)
            }
        }
        
        return filteredArray
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailView(currentCategory: .burger)
        }
    }
}
