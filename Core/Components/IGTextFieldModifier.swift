//
//  IGTextFieldModifier.swift
//  GangGangMedia
//
//  Created by Owner on 10/8/23.
//
import SwiftUI
import Foundation

struct IGTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 24)
    }
}
