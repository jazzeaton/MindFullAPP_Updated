//
//  CommunityGuidelines.swift
//  MindFullAPP
//
//  Created by Jazmine Eaton on 11/30/22.
//

import SwiftUI

struct CommunityGuidelines: View {
    var body: some View {
        
        ZStack{
            Color(red: 37/255, green: 161/255, blue: 142/255).ignoresSafeArea()
            VStack {
                
                Text("Community Guidelines")
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.semibold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                
                
                Text("*Details about how the rooms are monitored and what type of behavior/language is tolerated*.")
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.semibold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                Spacer()
                
                NavigationLink(destination: Create_Account()
                    .navigationBarBackButtonHidden(true)) {
                        Text("Agree").foregroundColor(.black)
                            .padding(.all)
                            .contentShape(Rectangle())
                            .frame(width: 268.0, height: 52.0)
                            .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                            .clipShape(Capsule())
                        
                        
                    }
                NavigationLink(destination: Reconsider()
                    .navigationBarBackButtonHidden(true)) {
                        Text("Disagree").foregroundColor(.black)
                            .padding(.all)
                            .contentShape(Rectangle())
                            .frame(width: 268.0, height: 52.0)
                            .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                            .clipShape(Capsule())
                    }
                Spacer()
            }
        }
    }
}

struct CommunityGuidelines_Previews: PreviewProvider {
    static var previews: some View {
        CommunityGuidelines()
    }
}
