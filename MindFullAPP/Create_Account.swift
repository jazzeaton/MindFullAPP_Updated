//
//  Create_Account.swift
//  MINDFULL
//
//  Created by Jazmine Eaton on 11/21/22.
//

import SwiftUI

struct Create_Account: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var selectedAilment = "Select One"
    let ailments = ["Select One", "Depression","Bi-Polar Disorder", "Body Dysmorphia", "Anxiety",  "Obsessive Compulsive Disorder","ADHD", "Insomnia","PTSD", "Schizophrenia","Multiple", "Other"]
    
    var body: some View {
        ZStack{
            Color(red: 37/255, green: 161/255, blue: 142/255).ignoresSafeArea()
            VStack {
                
                Image("Mindfull logo")
                    .resizable()
                    .frame(width: 200.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/200.0)
                Text("Please complete below info.")
                    .font(.title)
                    .multilineTextAlignment(.center)
                TextField(
                    "First Name",
                    text: $firstName)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .textFieldStyle(RoundedBorderTextFieldStyle()
                                
                )
                .foregroundColor(.black)
                .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                TextField(
                    "Last Name",
                    text: $lastName)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .textFieldStyle(RoundedBorderTextFieldStyle()
                                
                )
                .foregroundColor(.black)
                .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                TextField(
                    "Username (email address)",
                    text: $username)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .textFieldStyle(RoundedBorderTextFieldStyle()
                                
                )
                .foregroundColor(.black)
                .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                SecureField(
                    "Password",
                    text: $password
                    
                )
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .border(Color(UIColor.separator))
                .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                NavigationView {
                    Form {
                        Section {
                            Picker("Main Concern", selection: $selectedAilment) {
                                ForEach(ailments, id: \.self) {
                                    Text($0)
                                }
                            }
                        }
                    }
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .frame(width: 400.0, height: 150.0)
                .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                
                NavigationLink(destination: DelayScreen()
                    .navigationBarBackButtonHidden(true)) {
                    Text("Create Account").foregroundColor(.black)
                        .padding(.all)
                        .contentShape(Rectangle())
                        .frame(width: 268.0, height: 52.0)
                        .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                    .clipShape(Capsule())
                }
            }
        }
        .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: Button(action : {
                self.mode.wrappedValue.dismiss()
            }){
                Image(systemName: "arrow.left.circle.fill").resizable().foregroundColor(Color(red: 159/255, green: 255/255, blue: 203/255)).frame(width: 40, height: 40)
            })
        
    }
}

struct Create_Account_Previews: PreviewProvider {
    static var previews: some View {
        Create_Account()
            .previewDisplayName("Create Account")
    }
}
