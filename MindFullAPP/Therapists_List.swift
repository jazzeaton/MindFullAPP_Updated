//
//  Therapists_List.swift
//  MINDFULL
//
//  Created by Jazmine Eaton on 11/18/22.
//

import SwiftUI

struct Therapists_List: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        
        ZStack{
            Color(red: 37/255, green: 161/255, blue: 142/255).ignoresSafeArea()
            VStack {
                Text("THERAPISTS IN YOUR AREA")
                Spacer()
                Text("Click to learn more")
                    .font(.subheadline)
                
                List {
                    HStack {
                        
                        
                        Image("Amelia")
                            .resizable(resizingMode: .stretch)
                            .clipShape(Rectangle())
                            .frame(width: 60, height: 60)
                            .cornerRadius(8)
                        Spacer()
                        VStack {
                            NavigationLink(destination: ContactDoc()
                             .navigationBarBackButtonHidden(true)) {
                             Text("Dr. Amelia Amazing")
                             }
                             .padding()
                             .frame(width: 200, height: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                             .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                             .foregroundColor(Color.black)
                             .clipShape(RoundedRectangle(cornerRadius: 7))
                            
                            
                            Text("10 Miles Away")
                            .frame(width: 200, height: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                            .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                            .clipShape(RoundedRectangle(cornerRadius: 7))
                            
                        }
                        Spacer()
                    }
                    .listRowBackground(Color(red: 37/255, green: 161/255, blue: 142/255).ignoresSafeArea())
                    HStack {
                        Image("BuddyLove").resizable().frame(width: /*@START_MENU_TOKEN@*/60.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/60.0/*@END_MENU_TOKEN@*/).cornerRadius(/*@START_MENU_TOKEN@*/8.0/*@END_MENU_TOKEN@*/)
                        Spacer()
                        VStack {
                            Text("Dr. Buddy Love").frame(width: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                                .cornerRadius(/*@START_MENU_TOKEN@*/7.0/*@END_MENU_TOKEN@*/)
                            Text("22 miles away").frame(width: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                                .cornerRadius(/*@START_MENU_TOKEN@*/7.0/*@END_MENU_TOKEN@*/)
                        }
                        Spacer()
                    }
                    .listRowBackground(Color(red: 37/255, green: 161/255, blue: 142/255).ignoresSafeArea())
                    HStack {
                        Image("Therapist3").resizable().frame(width: /*@START_MENU_TOKEN@*/60.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/60.0/*@END_MENU_TOKEN@*/).cornerRadius(/*@START_MENU_TOKEN@*/8.0/*@END_MENU_TOKEN@*/)
                        Spacer()
                        VStack {
                            Text("Dr. Harry Smiles").frame(width: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                                .cornerRadius(/*@START_MENU_TOKEN@*/7.0/*@END_MENU_TOKEN@*/)
                            Text("53 miles away").frame(width: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                                .cornerRadius(/*@START_MENU_TOKEN@*/7.0/*@END_MENU_TOKEN@*/)
                        }
                        Spacer()
                    }
                    .listRowBackground(Color(red: 37/255, green: 161/255, blue: 142/255).ignoresSafeArea())
                    HStack {
                        Image("Rue").resizable().frame(width: /*@START_MENU_TOKEN@*/60.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/60.0/*@END_MENU_TOKEN@*/).cornerRadius(/*@START_MENU_TOKEN@*/8.0/*@END_MENU_TOKEN@*/)
                        Spacer()
                        VStack {
                            Text("Dr. Rue Stlyes").frame(width: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).background(Color(red: 159/255, green: 255/255, blue: 203/255)).cornerRadius(/*@START_MENU_TOKEN@*/7.0/*@END_MENU_TOKEN@*/)
                            Text("99 miles away").frame(width: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                                .cornerRadius(/*@START_MENU_TOKEN@*/7.0/*@END_MENU_TOKEN@*/)
                        }
                        Spacer()
                    }
                    .listRowBackground(Color(red: 37/255, green: 161/255, blue: 142/255).ignoresSafeArea())
                    HStack {
                        Image("Harold").resizable().frame(width: /*@START_MENU_TOKEN@*/60.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/60.0/*@END_MENU_TOKEN@*/).cornerRadius(/*@START_MENU_TOKEN@*/8.0/*@END_MENU_TOKEN@*/)
                        Spacer()
                        VStack {
                            Text("Dr. Harold Friendly").frame(width: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).background(Color(red: 159/255, green: 255/255, blue: 203/255)).cornerRadius(/*@START_MENU_TOKEN@*/7.0/*@END_MENU_TOKEN@*/)
                            Text("101 miles away").frame(width: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).background(Color(red: 159/255, green: 255/255, blue: 203/255)).cornerRadius(/*@START_MENU_TOKEN@*/7.0/*@END_MENU_TOKEN@*/)
                        }
                        Spacer()
                    }
                    .listRowBackground(Color(red: 37/255, green: 161/255, blue: 142/255).ignoresSafeArea())
                    HStack {
                        Image("T1").resizable().frame(width: /*@START_MENU_TOKEN@*/60.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/60.0/*@END_MENU_TOKEN@*/).cornerRadius(/*@START_MENU_TOKEN@*/8.0/*@END_MENU_TOKEN@*/)
                        Spacer()
                        VStack {
                            Text("Dr. Meryl Streep").frame(width: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).background(Color(red: 159/255, green: 255/255, blue: 203/255)).cornerRadius(/*@START_MENU_TOKEN@*/7.0/*@END_MENU_TOKEN@*/)
                            Text("107 miles away").frame(width: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).background(Color(red: 159/255, green: 255/255, blue: 203/255)).cornerRadius(/*@START_MENU_TOKEN@*/7.0/*@END_MENU_TOKEN@*/)
                        }
                        Spacer()
                    }
                    .listRowBackground(Color(red: 37/255, green: 161/255, blue: 142/255).ignoresSafeArea())
                    HStack {
                        Image("T5").resizable().frame(width: /*@START_MENU_TOKEN@*/60.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/60.0/*@END_MENU_TOKEN@*/).cornerRadius(/*@START_MENU_TOKEN@*/8.0/*@END_MENU_TOKEN@*/)
                        Spacer()
                        VStack {
                            Text("Dr. Rosie Outlook ").frame(width: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).background(Color(red: 159/255, green: 255/255, blue: 203/255)).cornerRadius(/*@START_MENU_TOKEN@*/7.0/*@END_MENU_TOKEN@*/)
                            Text("115 miles away").frame(width: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).background(Color(red: 159/255, green: 255/255, blue: 203/255)).cornerRadius(/*@START_MENU_TOKEN@*/7.0/*@END_MENU_TOKEN@*/)
                        }
                        Spacer()
                    }
                    .listRowBackground(Color(red: 37/255, green: 161/255, blue: 142/255).ignoresSafeArea())
                    HStack {
                        Image("T2").resizable().frame(width: /*@START_MENU_TOKEN@*/60.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/60.0/*@END_MENU_TOKEN@*/).cornerRadius(/*@START_MENU_TOKEN@*/8.0/*@END_MENU_TOKEN@*/)
                        Spacer()
                        VStack {
                            Text("Dr. Jim Funny").frame(width: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).background(Color(red: 159/255, green: 255/255, blue: 203/255)).cornerRadius(/*@START_MENU_TOKEN@*/7.0/*@END_MENU_TOKEN@*/)
                            Text("127 miles away").frame(width: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).background(Color(red: 159/255, green: 255/255, blue: 203/255)).cornerRadius(/*@START_MENU_TOKEN@*/7.0/*@END_MENU_TOKEN@*/)
                        }
                        Spacer()
                    }
                    .listRowBackground(Color(red: 37/255, green: 161/255, blue: 142/255).ignoresSafeArea())
                    HStack {
                        Image("T4").resizable().frame(width: /*@START_MENU_TOKEN@*/60.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/60.0/*@END_MENU_TOKEN@*/).cornerRadius(/*@START_MENU_TOKEN@*/8.0/*@END_MENU_TOKEN@*/)
                        Spacer()
                        VStack {
                            Text("Dr. Mindy Moody").frame(width: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).background(Color(red: 159/255, green: 255/255, blue: 203/255)).cornerRadius(/*@START_MENU_TOKEN@*/7.0/*@END_MENU_TOKEN@*/)
                            Text("200 miles away").frame(width: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).background(Color(red: 159/255, green: 255/255, blue: 203/255)).cornerRadius(/*@START_MENU_TOKEN@*/7.0/*@END_MENU_TOKEN@*/)
                        }
                        Spacer()
                    }
                    .listRowBackground(Color(red: 37/255, green: 161/255, blue: 142/255).ignoresSafeArea())
                    HStack {
                        Image("T3").resizable().frame(width: /*@START_MENU_TOKEN@*/60.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/60.0/*@END_MENU_TOKEN@*/).cornerRadius(/*@START_MENU_TOKEN@*/8.0/*@END_MENU_TOKEN@*/)
                        Spacer()
                        VStack {
                            Text("Dr. Bella Hadid").frame(width: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).background(Color(red: 159/255, green: 255/255, blue: 203/255)).cornerRadius(/*@START_MENU_TOKEN@*/7.0/*@END_MENU_TOKEN@*/)
                            Text("207 miles away").frame(width: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).background(Color(red: 159/255, green: 255/255, blue: 203/255)).cornerRadius(/*@START_MENU_TOKEN@*/7.0/*@END_MENU_TOKEN@*/)
                        }
                        Spacer()
                    }
                    .listRowBackground(Color(red: 37/255, green: 161/255, blue: 142/255).ignoresSafeArea())
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .listStyle(PlainListStyle())
                
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

struct Therapists_List_Previews: PreviewProvider {
    static var previews: some View {
        Therapists_List()
    }
}
