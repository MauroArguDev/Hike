//
//  CustomListRowView.swift
//  Hike
//
//  Created by Mauricio Argumedo on 17/9/24.
//

import SwiftUI

struct CustomListRowView: View {
    // MARK: - Properties
    @State var title: String
    @State var image: String
    @State var content: String? = nil
    @State var color: Color
    @State var linkLabel: String? = nil
    @State var linkDestination: String? = nil
    
    var body: some View {
        LabeledContent {
            if let content = content {
                Text(content)
                    .foregroundStyle(Color.primary)
                    .fontWeight(.heavy)
            } else if let linkLabel = linkLabel, let linkDestination = linkDestination {
                Link(linkLabel, destination: URL(string: linkDestination)!)
                    .foregroundStyle(.pink)
                    .fontWeight(.heavy)
            }
        } label: {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundStyle(color)
                    Image(systemName: image)
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                }
                
                Text(title)
            }
        }
    }
}

#Preview {
    CustomListRowView(
        title: "Designer",
        image: "paintpalette",
        content: "John Doe",
        color: .pink)
}
