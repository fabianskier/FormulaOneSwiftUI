//
//  ContentView.swift
//  FormulaOneSwiftUI
//
//  Created by Oscar Cristaldo on 2022-07-20.
//

import SwiftUI

struct FormulaOneTabView: View {
    var body: some View {
        
        TabView {
            TeamListView()
                .tabItem {
                    Label("Team", systemImage: "person.2.fill")
                }
            
            AccountView()
                .tabItem {
                    Label("Account", systemImage: "person.crop.circle.fill")
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FormulaOneTabView()
    }
}
