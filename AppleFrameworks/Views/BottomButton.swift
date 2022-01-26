//
//  BottomButton.swift
//  AppleFrameworks
//
//  Created by Mutlu Aydın on 1/24/22.
//

import SwiftUI


struct BottomButton: View {
    
    let name: String

    
    var body: some View {
        
        
        Button {
            
        } label: {
            Text(name)
                .font(.title2)
                .fontWeight(.semibold)
                .padding()
                .frame(width: 250, height: 50, alignment: .center)

                .background(.orange)
                .foregroundColor(.white)
                .cornerRadius(10)
            
                
        }
    }
    
}

struct BottomButton_Previews: PreviewProvider {
    static var previews: some View {
        BottomButton(name: "hello")
            .preferredColorScheme(.dark)
    }
}
