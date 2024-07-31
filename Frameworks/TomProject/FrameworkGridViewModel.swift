//
//  FrameworkGridViewModel.swift
//  TomProject
//
//  Created by Tom Fu on 5/31/24.
//

import SwiftUI

class FrameworkGridViewModel: ObservableObject{
    
    var selectedFramework: Framework?{
        didSet{ isShowingDetailView = true }
    }
    
    @Published var isShowingDetailView = false
}
