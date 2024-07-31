//
//  FrameworkButton.swift
//  TomProject
//
//  Created by Tom Fu on 5/31/24.
//

import SwiftUI

struct FrameworkButton: View {
    let title: String
    var body: some View {
            Text(title)
                .font(.title2)
                .fontWeight(.semibold)
                .frame(width: 280, height: 50)
                .background(Color.red)
                .foregroundColor(Color.white)
                .cornerRadius(10)
                
    }
}

struct FrameworkButton_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkButton(title: "Learn More")
    }
}
