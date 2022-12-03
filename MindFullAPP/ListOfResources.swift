//
//  ListOfResources.swift
//  MindFullAPP
//
//  Created by David Bennett on 11/23/22.
//

import SwiftUI

struct ListOfResources: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        ZStack{
            Color(red: 37/255, green: 161/255, blue: 142/255).ignoresSafeArea()
            VStack{
                HStack(alignment: .center){
                    /*Image(systemName: "arrow.backward.circle.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor((Color(red: 159/255, green: 255/255, blue: 203/255)))
                        .frame(width: 75.0, height: 50.0)
                      */
                    Spacer()

                    Text("Depression")
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                    Spacer(minLength: 105)
                    
                }
                Text("is a long road to recovery. Let's find some help with the resources below.")
                    .font(.title)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.all)
                Spacer()
                    .frame(height: 50.0)
                
                Link(destination: URL (string: "https://try.greenbrooktms.com/free-consultation/?utm_source=google&utm_medium=cpc&utm_campaign=MR~Detroit~AU~TMSKeywords~WD~Broad~&utm_term=tms%20center&utm_content=TMS-Center&gclid=CjwKCAiApvebBhAvEiwAe7mHSNsPlpfLbm4FJ6NJvqnml4Uv9G9cl08AMLEUERbj43Mk3EoljBjmnBoCiiQQAvD_BwE")!, label:{
                    Text("greenbrook TMS NeuroHealth Centers").underline()
                })
                    .font(.title3)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                    .padding(.all)
                
                Link(destination: URL (string: "https://www.samhsa.gov/find-help/national-helpline")!, label:{
                    Text("Substance Abuse & Mental Health Services Administration").underline()
                })
                    .font(.title3)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                    .padding(.all)
                
                Link(destination: URL (string: "https://www.nami.org/Home")!, label:{
                    Text("National Alliance on Mental Illness").underline()
                    
                })
                    .font(.title3)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                    .padding(.all)
                
                Link(destination: URL (string: "https://www.mhanational.org")!, label:{
                    Text("Mental Health America").underline()
                    
                })
                    .font(.title3)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                    .padding(.all)
                
                Link(destination: URL (string: "https://www.afsp.org")!, label:{
                    Text("American Foundation for Suicide Prevention").underline()
                    })
                    .font(.title3)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                    .padding(.all)
                
                Spacer(minLength: 50)
            }
        }.navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: Button(action : {
                self.mode.wrappedValue.dismiss()
            }){
                Image(systemName: "arrow.left.circle.fill").resizable().foregroundColor(Color(red: 159/255, green: 255/255, blue: 203/255)).frame(width: 40, height: 40)
            })
    }
}

struct ListOfResources_Previews: PreviewProvider {
    static var previews: some View {
        ListOfResources()
    }
}
