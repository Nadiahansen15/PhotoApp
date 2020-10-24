//
//  DetailView.swift
//  PhotoApp
//
//  Created by Nadia Hansen on 04/10/2020.
//  Copyright © 2020 Nadia Hansen. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    @Binding var iscolor: String
    
    var body: some View {
        HStack {
        if iscolor == "red"
        {
        
            Image("rød").resizable()
        }
        else if iscolor == "green"{
            Image("grøn").resizable()
            }
        else if iscolor == "yellow" {
                Image("gul").resizable()
            }
        
    }
}
}

