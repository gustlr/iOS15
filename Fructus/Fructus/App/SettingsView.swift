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
    @AppStorage("isOnvoarding") var isOnboarding: Bool = false
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
                    // MARK: - SECTION 3
                    GroupBox(
                        label: SettingLableView(labelText: "Customization", labelImage: "paintbrush")
                    ){
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboardeing process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        
                        Toggle(isOn: $isOnboarding){
                            if isOnboarding {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                            }
                        }
                        .padding()
                        .background( Color(UIColor.tertiarySystemBackground)
                                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous)))
                    }
                    
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
