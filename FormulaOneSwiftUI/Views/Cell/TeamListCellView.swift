//
//  TeamListView.swift
//  FormulaOneSwiftUI
//
//  Created by Oscar Cristaldo on 2022-07-21.
//

import SwiftUI

struct TeamListCellView: View {
    
    let team: Team
    
    var body: some View {
        HStack {
            TeamRemoteImage(urlString: team.teamImageUrl)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 120, height: 90)
                            .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(team.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text(team.base)
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}

struct TeamListCellView_Previews: PreviewProvider {
    static var previews: some View {
        TeamListCellView(team: MockData.redBullTeam)
    }
}
