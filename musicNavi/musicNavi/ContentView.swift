//
//  ContentView.swift
//  musicNavi
//
//  Created by 변상필 on 2023/06/28.
//

import SwiftUI

struct ContentView: View {
    
    // 딕셔너리를 카테고리를 기준으로 그루핑하는 내용
    let dic = Dictionary(grouping: musics, by: {$0.category})
    // 동일한 내용을 후엥 클로저 쓴거 ㅋㅋ
//    let dic2 = Dictionary(grouping: musics) { music in
//        music.category
//    }
    // 그루핑해서 키 값만 따로 뽑았음
    // 연산프로퍼티
    var dicMap: [String] {dic.map({ $0.key}).sorted()}
    //이건 왜 안되나여
//    var dicMap2: [String] = dic.map { dics in
//        dics.key }
    

    
    var body: some View {
        NavigationStack {
            List{
//                Button {
//                    dump(dic)
//                } label: {
//                    Text("123")
//                }
                ForEach(dicMap, id: \.self) { category in
                    Section(header: Text(category)) {
                        
                        ForEach(dic[category]!) { music in
                            NavigationLink {
                                DetailView(music: music)
                            } label: {
                                HStack{
                                    Image(music.imageName)
                                        .resizable()
//                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 50, height: 50)
                                        .clipShape(RoundedRectangle(cornerRadius: 15))
                                        .overlay(RoundedRectangle(cornerRadius: 15).stroke(.black, lineWidth: 0.5))
                                    
                                    VStack(alignment: .leading){
                                            Text("\(music.title)")
                                                .font(.system(size: 17, weight:.medium ))

                                        Text("\(music.artist)")
                                            .font(.system(size: 14, weight:.regular ))
                                            .padding(.top, -5)
                                    }
                                    .font(.system(size: 15))
                                    Spacer()
                                }
                            }
                            .listRowSeparator(.hidden)
                        }
//                        .frame(width: 300, height: 50)
                    }
                }
                .navigationTitle("Music")
//                .listRowBackground(Color.black)
            }
            .listStyle(.insetGrouped)
//            .scrollContentBackground(.hidden)
//            .background(Color.black)
//            .opacity(0.8)
            // 리스트 스타일 보고 좀 꾸며바요
        }
//        .foregroundColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
