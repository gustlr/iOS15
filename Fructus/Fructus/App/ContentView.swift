//
//  ContentView.swift
//  Fructus
//
//  Created by Hyun Shik Chung on 3/14/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingSettings: Bool = false
    
    var fruit:[Fruit] = fruitsData
    var body: some View {
        NavigationView{
            List{
                ForEach(fruit.shuffled()){ item in
                    NavigationLink(destination: FruitDetailView(fruit: item)){
                        FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                    }
                    
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing: Button(action: {
                isShowingSettings = true
            }){
                Image(systemName: "slider.horizontal.3")
            }//:BUTTON
                                    .sheet(isPresented: $isShowingSettings){
                SettingsView()
            }
            )
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruit:fruitsData)
    }
}
