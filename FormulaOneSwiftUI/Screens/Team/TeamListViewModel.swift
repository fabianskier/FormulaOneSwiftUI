//
//  TeamListViewModel.swift
//  FormulaOneSwiftUI
//
//  Created by Oscar Cristaldo on 2022-07-20.
//

import SwiftUI

final class TeamListViewModel: ObservableObject {
    
    @Published
    var teams: [Team] = []
    
    @Published
    var isLoading: Bool = false
    
    @Published
    var alertItem: AlertItem?
    
    @Published
    var selectedTeam: Team?
    
    func getTeams() {
        self.isLoading = true
        
        NetworkManager.shared.getTeams { result in
            DispatchQueue.main.async {
                
                self.isLoading = false
                
                switch result {
                case .success(let teams):
                    self.teams = teams
                    
                case .failure(let error):
                    switch error {
                    case .invalidURL:
                        self.alertItem = AlertContext.invalidURL
                    case .invalidResponse:
                        self.alertItem = AlertContext.invalidResponse
                    case .invalidData:
                        self.alertItem = AlertContext.invalidData
                    case .unableToComplete:
                        self.alertItem = AlertContext.unableToComplete
                    }
                }
            }
        }
    }
}
