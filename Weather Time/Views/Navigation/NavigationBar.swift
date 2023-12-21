//
//  NavigationView.swift
//  Story Time
//
//  Created by SEAN BLAKE on 12/20/23.
//

import SwiftUI

struct NavigationBar: View {
    @Binding var searchText: String
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 8) {
            HStack {
                // MARK: Back button
                Button {
                    dismiss()
                } label: {
                    // MARK: Back Button Icon
                    HStack(spacing: 5) {
                        Image(systemName: "chevron.left")
                            .font(.system(size: 23).weight(.medium))
                            .foregroundStyle(Color.secondary)
                        
                        Text("Weather")
                            .font(.title)
                            .foregroundStyle(Color.primary)
                    }
                    .frame(height: 44)
                }
                
                Spacer()
                
                // MARK: More Button
                Image(systemName: "ellipsis.circle")
                    .font(.system(size: 28))
                    .frame(width: 44, height: 44, alignment: .trailing)
            }
            .frame(height: 52)
            
            // MARK: Search Bar
            HStack(spacing: 2) {
                Image(systemName: "magnifyingglass")
                
                TextField("Search for a city or airport", text: $searchText)
            }
            .foregroundStyle(Color.secondary)
            .padding(.horizontal, 6)
            .padding(.vertical, 7)
            .frame(height: 36, alignment: .leading)
            .background(Color.bottomSheetBackground, in: RoundedRectangle(cornerRadius: 10))
            .innerShadow(shape: RoundedRectangle(cornerRadius: 10), color: .black.opacity(0.25), lineWidth: 2, offsetX: 0, offsetY: 2, blur: 2)
        }
        .frame(height: 106, alignment: .top)
        .padding(.horizontal, 16)
        .padding(.top, 49)
        .backgroundBlur(radius: 20, opaque: true)
        .background(Color.navBarBackround)
        .frame(maxHeight: .infinity, alignment: .topLeading)
        .ignoresSafeArea()
    }
}

#Preview {
    NavigationBar(searchText: .constant(""))
}
