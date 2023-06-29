//
//  musicModel.swift
//  musicNavi
//
//  Created by 변상필 on 2023/06/28.
//

import SwiftUI

struct Music: Identifiable {
    var id: UUID = UUID()
    var artist: String
    var title: String
    var category: String
    var playtime: String
    var date: String
    var desc: String
    var imageName: String
    var like: Bool
    var dislike: Bool
    
    var image: Image {
        Image(imageName)
    }
}

var musics: [Music] = [
    Music(artist: "뉴진스", title: "Hype Boy", category: "댄스", playtime: "02:59" ,date: "2022년8월1일", desc: "뭄바톤(Moombahton)과 일렉트로팝(ElectroPop)을 결합한 사운드와 독특한 프리코러스가 매력적이며 각 파트마다 멤버들의 개성있는 가창이 돋보이는 곡. NewJeans의 또 다른 시크한 색깔을 보여주고 한번 들으면 끝까지 집중하게 만드는 노래이다. 그리고 이 곡의 스토리는 여러 가지로 나뉘어 있다.", imageName: "200", like: false, dislike: false),
    Music(artist: "기리보이", title: "도쿄", category: "힙합", playtime: "03:30", date: "2019년06월10일", desc: "", imageName: "201", like: false, dislike: false),
    Music(artist: "도원경", title: "다시 사랑한다면", category: "발라드", playtime: "", date: "2001년05년01일", desc: "2001년 도원경 4집의 타이틀곡으로 너무 깊은 사랑은 오히려 상처와 이별로 후회로 남는다는 걸 원곡의 감성 그대로 살리면서도 한동근만의 애절하면서도 압도적인 보이스로 색다른 감성을 느낄 수 있도록 풀어내었다.<리본 프로젝트>'새로 풀고 엮어 다시 만나다'란 슬로건과 같이 웹툰, 드라마, 영화 등 작품과 음원의 만남, 이전 발매되었던 숨겨진 명곡과 새로운 가창자의 만남 등 다양한 방식의 컬래버레이션을 통해 2022년 현재 음원 소비층에게 또 다른 감성을 전달하며 공감을 유도한다.새로운 작품은 물론 기존 곡의 장점과 매력은 유지하고 새로운 편곡을 통해 확장된 이야기를 전달할 수 있어 단순 컬래버레이션이나 리메이크 이상의 가치를 만들어 간다.", imageName: "202", like: false, dislike: false),
    Music(artist: "전우성", title: "축가", category: "발라드", playtime: "04:18", date: "2018년06월08일", desc: "다시 돌아온 2018 戀歌(연가) [ 6월의 고백 ] 전우성 ‘축가’ 사랑하는 연인의 결혼식, 세상에서 가장 슬픈 ‘축가’ 2001 '이미연'의 연가, 2002 '강수연'의 연가, 2008 '박용하', '송승헌'의 연가 … 당시 최고의 배우들로 앨범 커버를 장식하여 화제를 일으켜 200만 장 이상의 전무후무한 판매량을 기록하며 밀리언셀러로 자리매김한 컴필레이션 앨범 [戀歌 (연가)].", imageName: "203", like: false, dislike: false),
    Music(artist: "인디고", title: "여름아! 부탁해", category: "댄스", playtime: "04:05", date: "2002년06월27일", desc: "노래가... 참 . 좋네여... 젊을적 여름이 떠오름미다...!", imageName: "204", like: false, dislike: false),
    Music(artist: "마미손", title: "소년점프", category: "힙합", playtime: "02:20", date: "2018년11월10일", desc: "쇼미에서 떨어진 마미손이 화나서 낸 노래", imageName: "205", like: false, dislike: false),
    Music(artist: "FIFTY FIFTY", title: "Cupid", category: "댄스", playtime: "02:54", date: "2023년02월24일", desc: "수동적이었던 소녀들이 주체적으로 바뀌는 순간, 소녀들은 더 이상 큐피드를 필요로 하지 않는다. 이는 무의식적으로 의존하던 큐피드에서 벗어나, 두려움을 이기고 변화한다는 메시지를 담고 있다. 이 곡은 네 소녀의 성장 과정, 그 시작을 보여주는 노래이다 라고 설명하고 있다.", imageName: "206", like: false, dislike: false),
    Music(artist: "이승기", title: "삭제", category: "발라드", playtime: "04:12", date: "2004년06월25일", desc: "노래 좋네요 ^^", imageName: "207", like: false, dislike: false),
    Music(artist: "실리카겔", title: "NO PAIN", category: "인디", playtime: "03:39", date: "2022년08월25일", desc: "‘시간의 흐름을 산다는 것', ‘시공을 초월하는 것이란 무엇일까?' 라는 의문에서 시작된 실리카겔의 새로운 싱글 ‘NO PAIN'. 질주하는 시간을 부숴버리려는 실리카겔의 독립선언문을 함께 외쳐보자.", imageName: "208", like: false, dislike: false),
    Music(artist: "뉴진스", title: "Cookie", category: "댄스", playtime: "03:59", date: "2022년8월1일", desc: "뭄바톤(Moombahton)과 일렉트로팝(ElectroPop)을 결합한 사운드와 독특한 프리코러스가 매력적이며 각 파트마다 멤버들의 개성있는 가창이 돋보이는 곡. NewJeans의 또 다른 시크한 색깔을 보여주고 한번 들으면 끝까지 집중하게 만드는 노래이다. 그리고 이 곡의 스토리는 여러 가지로 나뉘어 있다.", imageName: "200", like: false, dislike: false)
    
]
