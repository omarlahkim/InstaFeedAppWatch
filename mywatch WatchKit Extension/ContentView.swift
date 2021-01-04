//
//  ContentView.swift
//  mywatch WatchKit Extension
//
//  Created by Lahkim Omar on 6/27/20.
//  Copyright © 2020 Lahkim Omar. All rights reserved.
//
import SwiftUI


struct InstagramStories: View {
    var size = CGFloat(30)
    
    var body: some View {
        ScrollView(.horizontal){
            HStack(alignment: .center, spacing: 5){
                Image("portrait1")
                    .resizable()
                    .frame(width: size, height: size).clipShape(Circle())
                Image("portrait2")
                    .resizable()
                    .frame(width: size, height: size).clipShape(Circle())
                Image("portrait3")
                    .resizable()
                    .frame(width: size, height: size).clipShape(Circle())
                Image("portrait4")
                    .resizable()
                    .frame(width: size, height: size).clipShape(Circle())
                Image("portrait5")
                    .resizable()
                    .frame(width: size, height: size).clipShape(Circle())
                Image("portrait6")
                    .resizable()
                    .frame(width: size, height: size).clipShape(Circle())
                
            }
            
            
            
        }
        
        
        
    }
}

struct InstagramPost: View {
    let profileImage:String
    let feedImage:String
    let username:String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5){
            HStack(alignment: .center, spacing:5 ){
                Image(profileImage)
                    .resizable()
                    .frame(width: 20, height: 20).clipShape(Circle())
                Text(username)
            }
            Image(feedImage)
                .resizable().cornerRadius(5, antialiased: true).aspectRatio(contentMode: .fit)
            
            HStack(alignment: .center, spacing: 5){
                Text("😍").font(.system(size: 20))
                Spacer()
                Text("🔥").font(.system(size: 20))
                Spacer()
                Text("💯").font(.system(size: 20))
                
            }
        }
        
        
    }
}



struct ContentView: View {
    
    
    var body: some View {
        VStack(alignment: HorizontalAlignment.center, spacing: 10) {
            ScrollView{
                
                Image("logo")
                .resizable()
                .frame(width: 100, height: 30)
                InstagramStories()
                
                InstagramPost(profileImage: "portrait3", feedImage: "feed1",username: "petrolhead")
                InstagramPost(profileImage: "portrait6", feedImage: "feed2",username: "doggo")
//                InstagramPost(profileImage: "portrait2", feedImage: "feed3",username: "travlr")
//                InstagramPost(profileImage: "portrait4", feedImage: "feed4",username: "highaf")
                InstagramPost(profileImage: "portrait5", feedImage: "feed6",username: "natur3")
                
                
                
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
