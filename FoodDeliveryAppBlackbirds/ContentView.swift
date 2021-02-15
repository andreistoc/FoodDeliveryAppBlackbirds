//
//  ContentView.swift
//  FoodDeliveryAppBlackbirds
//
//  Created by Andrei Istoc on 18.12.2020.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: DetailView(currentCategory: .burger)) {
                    CategoryView(imageName: "burger", categoryName: "BURGER")
                }
                NavigationLink(destination: DetailView(currentCategory: .pizza)) {
                    CategoryView(imageName: "pizza", categoryName: "PIZZA")
                }
                NavigationLink(destination: DetailView(currentCategory: .pasta)) {
                    CategoryView(imageName: "pasta", categoryName: "PASTA")
                }
                NavigationLink(destination: DetailView(currentCategory: .desserts)) {
                    CategoryView(imageName: "desserts", categoryName: "DESSERTS")
                }
            }
        }.navigationTitle(Text("Food Delivery"))
    }
}

struct CategoryView: View {
    
    let imageName: String
    let categoryName: String
    
    var body: some View {
        HStack {
            Spacer()
            ZStack {
                Image(imageName).resizable().aspectRatio(contentMode: .fill).frame(width: 300, height: 150).clipped().cornerRadius(20.0)
                Text(categoryName).font(.custom("HelveticaNeue-Medium", size: 50)).foregroundColor(.white)
            }
            Spacer()
        }.padding(.top, 5).padding(.bottom, 5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
