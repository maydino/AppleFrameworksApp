//
//  FrameworkDetailView.swift
//  AppleFrameworks
//
//  Created by Mutlu Aydin on 1/24/22.
//

import SwiftUI

struct FrameworkDetailView: View {
        
    var framework : Framework
    
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        
        VStack {
            HStack {
                Spacer()
                Button {
                    isShowingDetailView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
                .padding()
            }
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            BottomButton(name: "Learn More")
        }
       

    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.frameworks[0], isShowingDetailView: .constant(false))
             .preferredColorScheme(.dark)
    }
}
