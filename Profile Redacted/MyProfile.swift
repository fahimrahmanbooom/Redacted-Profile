//
//  MyProfile.swift
//  Profile Redacted
//
//  Created by Fahim Rahman on 16/2/21.
//

import SwiftUI
import AVFoundation


// MARK: - My Profile View

struct MyProfile: View {
    
    @State var isLoading: Bool
    
    var body: some View {
        
        VStack {
        
            VStack(alignment: .center, spacing: 20) {
                
                Image("portrait")
                    .renderingMode(.original)
                    .resizable()
                    .frame(width: 150, height: 150, alignment: .center)
                    .clipShape(Circle())
                
                Text("Fahim Rahman")
                    .font(.title)
                    .bold()
            }
            
            
            Spacer().frame(height: 50)
            
            
            VStack(alignment: .leading, spacing: 12) {

                HStack {
                    Image(systemName: "envelope")
                        .unredacted()
                    Text("fahimrahmanbooom@gmail.com")
                    
                }
                
                HStack {
                    Image(systemName: "phone")
                        .unredacted()
                    Text("012-3456-7890")
                }
                
                HStack {
                    Image(systemName: "network")
                        .unredacted()
                    Text("fahimrahman.xyz")
                }
            }
            
            
            Spacer().frame(height: 70)
            
            
            Button(action: {
                AudioServicesPlaySystemSound(1026)
                
            }, label: {
                Text("Update Profile")
                    .bold()
                    .frame(width: 260, height: 45, alignment: .center)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(15)
                    .unredacted()
            })
            .disabled(isLoading)
        }
        .onAppear { networkCall() }
        .redacted(reason: isLoading ? .placeholder : [])
    }
    
    
    
    
    
    
    // MARK:- Fake Network Call LOL
    
    func networkCall() {
        
        isLoading = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.5) {
            isLoading = false
        }
    }
}
