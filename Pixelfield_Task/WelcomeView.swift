//
//  ContentView.swift
//  Pixelfield_Task
//
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        mainBackgroundView
            .overlay(alignment: .bottom) {
                VStack(spacing: 24) {
                    welcomeTextView
                    scanBottleButtonView
                    signInView
                }
                .foregroundStyle(Color.white)
                .padding(.horizontal, 16)
                .padding(.vertical, 24)
                .background(cardBackgroundView)
                .padding(.horizontal, 16)
                .padding(.vertical, 24)
            }
    }
    
    private var mainBackgroundView: some View {
        Color(hex: "#0B1519")
            .ignoresSafeArea(.all)
    }
    
    private var cardBackgroundView: some View {
        Rectangle()
            .fill(Color(hex: "#122329"))
    }
    
    private var welcomeTextView: some View {
        VStack(spacing: 8) {
            Text("Welcome!")
                .font(.custom("EBGaramond", fixedSize: 34))
            Text("Subtitle")
                .font(.custom("EBGaramond", fixedSize: 16))
        }
    }
    
    private var scanBottleButtonView: some View {
        Button {} label: {
            Text("Scan bottle")
                .padding(.vertical, 16)
                .frame(maxWidth: .infinity)
                .background(Color(hex: "#D49A00"))
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .foregroundStyle(Color.black)
                .font(.custom("EB Garamond", size: 16))
            
        }
    }
    
    private var signInView: some View {
        HStack(spacing: 24) {
            Text("Have an account?")
            Text("Sign in first")
                .foregroundStyle(Color(hex: "#FFB901"))
        }
        .font(.custom("EB Garamond", size: 16))
    }
}

#Preview {
    WelcomeView()
}
