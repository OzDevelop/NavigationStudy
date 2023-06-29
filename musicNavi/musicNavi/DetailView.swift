//
//  DetailView.swift
//  musicNavi
//
//  Created by 변상필 on 2023/06/28.
//

import SwiftUI

struct DetailView: View {
    //    var musics: [Music]
    var music: Music
    
    @State var transition: Bool = false
    @State var like: Bool = true
    @State var dislike: Bool = true
    
    var body: some View {
        VStack{
            ScrollView{
                VStack{
                    Button {
                        transition.toggle()
                    } label: {
                        Image(music.imageName)
                            .resizable()
                            .frame(width: 300,height: 300)
                            .overlay(Rectangle().stroke(.black, lineWidth: 2.5))
                            .padding()
                    }
                    HStack{
                        Spacer()
                        Button {
                            like.toggle()
                        } label: {
                            if like {
                                Image(systemName: "hand.thumbsup")
                            } else{
                                Image(systemName: "hand.thumbsup.fill")
                            }
                        }
                        .foregroundColor(.black)
                        
                        Spacer()
                        Text(music.title)
                            .font(.system(size: 20, weight: .black))
                        
                        Text("\(music.playtime)")
                            .font(.caption)
                            .padding(3)
                        Spacer()
                        Button {
                            dislike.toggle()
                        } label: {
                            if dislike {
                                Image(systemName: "hand.thumbsdown")
                                
                            } else{
                                Image(systemName: "hand.thumbsdown.fill")
                            }
                        }
                        .foregroundColor(.black)
                        Spacer()
                    }
                    Text(music.artist)
                        .font(.system(size: 17, weight: .medium))
                        .foregroundColor(.black)
                }
                if transition {
                    VStack(alignment: .leading){
                        Text(" • 곡 소개")
                            .padding(.top)
                            .font(.system(size: 16, weight: .heavy))
                        Text(music.desc)
                            .frame(width: 320)
                        Text(" • 등록일")
                            .padding(.top)
                            .font(.system(size: 16, weight: .heavy))
                        Text(music.date)
                    }
                    .animation(.easeIn) //애니메이션 넣기
                    .transition(.move(edge: .bottom)) //밑에서 올라오게 만들기
                }
            }
        }
    }
    
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            DetailView(music : musics[0] )
        }
    }
}
