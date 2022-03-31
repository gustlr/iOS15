//
//  SettingsView.swift
//  Fructus
//
//  Created by Hyun Shik Chung on 3/28/22.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode

    // MARK: - BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical,showsIndicators: false){
                VStack(spacing: 20) {
                    // MARK: - SECTION 1
                    
                    GroupBox(
                        label: SettingLableView(labelText: "Fructus", labelImage: "info.circle")
                    ){
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10){
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80 )
                                .cornerRadius(9)
                            Text("Most fruits are natureally low i fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                        
                        }
                    // MARK: - SECTION 2
                    GroupBox(
                        label: SettingLableView(labelText: "Application", labelImage: "apps.iphone")
                    ){
                        
                        
                        SettingsRowView(name: "Developer", content: "Jonh")
                        SettingsRowView(name: "Designer", content: "Rober Petras")
                        SettingsRowView(name: "Website",  linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                        SettingsRowView(name: "Twitter", linkLabel: "@RoberPetras", linkDestination: "twitter.com/robertpetras")
                        SettingsRowView(name: "SwiftUI",content: "2.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                        }
                    }
                    // MARK: - SECTION 3
                   
                }//:VStack
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }){
                    Image(systemName: "xmark")
                })
                .padding()
            }
            
        }
    }


struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
