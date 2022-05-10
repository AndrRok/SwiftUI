//
//  someButtonView.swift
//  UI_1
//
//  Created by ARMBP on 5/9/22.
//

import SwiftUI

struct someButtonView: View {
    var buttonText: String
    var backgroundColor: Color
    var textColor: Color
    
    var body: some View {
            Text(buttonText)
                .foregroundColor(textColor)
                .frame(width: 250, height: 40)
                .background(backgroundColor)
                .font(.system(size: 24, weight: .bold, design: .default))
                .cornerRadius(10)
        }
    }

