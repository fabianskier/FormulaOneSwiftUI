//
//  TeamListView.swift
//  FormulaOneSwiftUI
//
//  Created by Oscar Cristaldo on 2022-07-20.
//

import SwiftUI

struct TeamListView: View {
    
    @StateObject
    var viewModel = TeamListViewModel()
    
    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.teams) { team in
                    TeamListCellView(team: team)
                        .onTapGesture {
                            viewModel.selectedTeam = team
                        }
                }
                .listStyle(.plain)
                .navigationTitle("🏁 Teams")
            }
            .onAppear {
                viewModel.getTeams()
            }
        }
        .navigationViewStyle(.stack)
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
    
}

struct TeamListView_Previews: PreviewProvider {
    static var previews: some View {
        TeamListView()
    }
}
