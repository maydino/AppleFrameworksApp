//
//  FrameworkGridViewModel.swift
//  AppleFrameworks
//
//  Created by Mutlu Aydin on 1/25/22.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
    
    
}
