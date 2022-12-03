//
//  DelayScreen.swift
//  MindFullAPP
//
//  Created by David Bennett on 11/29/22.
//

import SwiftUI

struct DelayScreen: View {
    
    @State var showFirstView = true
    var body: some View {
        Group {
            if showFirstView {
                SplashScreen()
            } else {
                RESOURCES_PAGE()
            }
        }
        .onAppear() {
            Timer.scheduledTimer(withTimeInterval: 5, repeats: false) { (_) in
                withAnimation {
                    self.showFirstView = false
                }
            }
        }
    }
}


struct DelayScreen_Previews: PreviewProvider {
    static var previews: some View {
        DelayScreen()
    }
}
