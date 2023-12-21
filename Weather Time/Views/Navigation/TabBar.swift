//
//  TabBar.swift
//  Story Time
//
//  Created by SEAN BLAKE on 12/18/23.
//

import SwiftUI

struct TabBar: View {
    var action: () -> Void
    var body: some View {
        ZStack {
            // MARK: Arc Shape
            Arc()
                .fill(Color.tabBarBackground)
                .frame(height: 88)
                .overlay {
                    // MARK: Arc Border
                    Arc()
                        .stroke(Color.tab_BarBorder, lineWidth: 0.5)
                }
            
            // MARK: Tab items
            HStack {
                //MARK: Expand button
                Button(action: { action() }, label: {
                    Image(systemName: "mappin.and.ellipse")
                        .frame(width: 44, height: 44)
                })
                
                Spacer()
                
                //MARK: Navigation Button
                NavigationLink {
                    WeatherView()
                } label: {
                    Image(systemName: "list.star")
                        .frame(width: 44, height: 44)
                }
            }
            .font(.title2)
            .foregroundStyle(.white)
            .padding(EdgeInsets(top: 20, leading: 32, bottom: 24, trailing: 32))
        }
        .frame(maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea()
    }
}

#Preview {
    TabBar(action: {})
        .preferredColorScheme(.dark)
}
