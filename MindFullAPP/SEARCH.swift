//
//  SEARCH.swift
//  MINDFULLAPP
//
//  Created by Angelica Ellis on 11/18/22.
//

import SwiftUI

struct SEARCH: View {
    @State var SearchTerm: String = ""
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        ZStack{
            Color(red: 37/255, green: 161/255, blue: 142/255).ignoresSafeArea()
            VStack {
                Spacer()
                Text("Search Local Therapists")
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                
                Text("This option will allow you to find a local therapist near you. Results are populated by using your location, address, city or zipcode.")
                    .font(.body)
                    .fontWeight(.medium)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                Spacer()
                HStack{
                    ZStack{
                        
                        NavigationLink(destination: Therapists_List()
                            .navigationBarBackButtonHidden(true)) {
                                Image(systemName: "magnifyingglass")
                                    .padding(.leading, 250.0)
                                    .frame(width: 300.0, height: 52.0).clipShape(Capsule())
                                    .background(Color.white
                                        .cornerRadius(20.0))
                                    .clipShape(RoundedRectangle(cornerRadius: 20))
                            }
                        
                        TextField("Search...", text: $SearchTerm)
                            .padding(20.0)
                            .multilineTextAlignment(.center)
                    }
                }
                Spacer()
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: Button(action : {
            self.mode.wrappedValue.dismiss()
        }){
            Image(systemName: "arrow.left.circle.fill").resizable().frame(width: 40, height: 40).foregroundColor(Color(red: 159/255, green: 255/255, blue: 203/255))
        })
    }
}
struct SEARCH_Previews: PreviewProvider {
    static var previews: some View {
        SEARCH()
    }
}
