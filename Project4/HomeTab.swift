//
//  FirstTab.swift
//  Project4
//
//  Created by Youngjae Jang on 2020/08/06.
//  Copyright © 2020 Youngjae Jang. All rights reserved.
//
import SwiftUI
import Foundation

struct HomeTab: View {
    
    @Environment(\.colorScheme) var scheme
    @State var search = ""
    @State private var showingAlert = false
    
    var body: some View{
        VStack{
            ScrollView(.vertical, showsIndicators: false) {
                VStack{
                    HStack(spacing: 15){
                        
                        TextField("Search", text: self.$search)
                        
                        if self.search != ""{
                            Button(action: {
                                
                            }) {
                                
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(.primary)
                            }
                        }
                    }
                    .padding(.vertical,10)
                    .padding(.horizontal, 20)
                    .background(Color.primary.opacity(0.06))
                    .cornerRadius(12)
                    
                    HStack{
                        
                        Text("Today's Pick")
                            .fontWeight(.bold)
                            .font(.title)
                        Spacer()
                    }
                    .padding()
                    
                    VStack{
//                        RemoteImage(url: "https://images-na.ssl-images-amazon.com/images/I/41eOX0cBT8L._SX331_BO1,204,203,200_.jpg")
                        
//                        UrlImageView(urlString: "https://images-na.ssl-images-amazon.com/images/I/41eOX0cBT8L._SX331_BO1,204,203,200_.jpg")
                        
                        
                        Image("1")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 200.0)
                            .cornerRadius(5)
                        
                        Text("28 Summers")
                            .fontWeight(.bold)
                            .font(.title)
                            .padding(.top,0)
                        
                        Text("$1200")
                            .foregroundColor(.gray)
                            .padding(.top,8)
                            .padding(.bottom)
                    }
                    .background(
                        Color.primary.opacity(0.06)
                            .frame(width: UIScreen.main.bounds.width - 30)
                            .cornerRadius(25)
                            .padding(.top,95)
                    )
                    .padding(.top,25)
                    
                    HStack{
                        
                        Text("Recommended For You")
                            .fontWeight(.bold)
                            .font(.title)
                        
                        Spacer()
                    }
                    .padding(.top,30)
                    .padding(.bottom, 20)
                    .padding()
                    
                    ForEach(furnitures,id: \.self){furniture in
                        
                        HStack(spacing: 15){
                            
                            ForEach(furniture){i in
                                
                                VStack{
                                    
                                    Image(i.image)
                                    
                                    Text(i.title)
                                        .fontWeight(.bold)
                                    
                                    Text(i.price)
                                        .padding(.top, 6)
                                }
                                .padding()
                                .background(Color.primary.opacity(0.06))
                                .cornerRadius(10)
                            }
                        }
                    }
                    
                }
                .padding()
            }
            .padding(.horizontal, 20)
            Spacer()
        }
    }
}
