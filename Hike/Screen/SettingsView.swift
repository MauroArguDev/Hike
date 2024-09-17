//
//  SettingsView.swift
//  Hike
//
//  Created by Mauricio Argumedo on 2/9/24.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
            Section {
                HStack {
                    Spacer()
                    
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    
                    VStack(spacing: -10) {
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        
                        Text("Editor's Choice")
                            .fontWeight(.medium)
                    }
                    
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    
                    Spacer()
                }
                .foregroundStyle(
                    LinearGradient(
                        colors: [
                            .customGreenLight,
                            .customGreenMedium,
                            .customGreenDark],
                        startPoint: .top,
                        endPoint: .bottom)
                )
                .padding(.top, 8)
                
                VStack(spacing: 8) {
                    Text("Where can you find\nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    Text("The hike wich looks gorgeous in photos but is even better once you are actually there. The hije that you hope to do again someday. \nFinds the best day hikes in the app.")
                        .font(.footnote)
                        .italic()
                    
                    Text("Dust off the boots! It's time for a walk!")
                        .fontWeight(.heavy)
                        .foregroundStyle(Color.customGreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
            }
            .listRowSeparator(.hidden)
            
            Section(
                header: Text("ABOUT THE APP"),
                footer: HStack {
                    Spacer()
                    Text("Copyright © All right reserved.")
                    Spacer()
                }
                    .padding(.vertical, 8 )
            ) {
                CustomListRowView(title: "Application", image: "apps.iphone", content: "HIKE", color: .blue)
                
                CustomListRowView(title: "Compatibility", image: "info.circle", content: "iOS, iPadOS", color: .red)
                
                CustomListRowView(title: "Technology", image: "swift", content: "Swift", color: .orange)
                
                CustomListRowView(title: "Version", image: "gear", content: "1.0", color: .purple)
                
                CustomListRowView(title: "Developer", image: "ellipsis.curlybraces", content: "Mauro Argumedo", color: .mint)
                
                CustomListRowView(title: "Website", image: "globe.americas", color: .pink, linkLabel: "Github", linkDestination: "https://github.com/MauroArguDev")
            }
        }
    }
}

#Preview {
    SettingsView()
}
