//
//  Video.swift
//  SwiftUI-ListStarter
//
//  Created by Zhaisan on 17.05.2021.
//

import SwiftUI

struct Video: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let description: String
    let viewCount: Int
    let uploadDate: String
    let url: URL
}

struct VideoList {
    
    static let topTen = [
        Video(imageName: "imxotep",
              title: "1х1 Ангар.Имхотеп vs агрошкольник",
              description: "In this video you can see the 1x1 fight between my teammates in 2017.",
              viewCount: 51,
              uploadDate: "January 11, 2017",
              url: URL(string: "https://www.youtube.com/watch?v=JI9boyApiLY&t=233s&ab_channel=ZhaisanSarsengaliyev")!),
        
        Video(imageName: "AMP-DSR1",
              title: "Мясорубочка с AMP-DSR 1",
              description: "In this video you can see the single mode in Hostel map with amp-dsr1.",
              viewCount: 28,
              uploadDate: "August 25, 2016",
              url: URL(string: "https://www.youtube.com/watch?v=aEIJoJTQzAo&ab_channel=ZhaisanSarsengaliyev")!),
        
        Video(imageName: "ШАХ-И-МАТ",
              title: "КВ против _ШАХ-И-МАТ_",
              description: "In this video you can see the clan wars in legendary D17 map.",
              viewCount: 45,
              uploadDate: "August 21, 2016",
              url: URL(string: "https://www.youtube.com/watch?v=VHDiSLO3g2o&ab_channel=ZhaisanSarsengaliyev")!),
        
        Video(imageName: "Сахалин_55рус",
              title: "Кв против Сахалин_55рус",
              description: "In this video you can see the clan wars in old but gold Pereulki map.",
              viewCount: 29,
              uploadDate: "August 4, 2016",
              url: URL(string: "https://www.youtube.com/watch?v=Xop39l6HL2w&ab_channel=ZhaisanSarsengaliyev")!),
        
        Video(imageName: "Неудержимые",
              title: "Кеве против Неудержимые",
              description: "In this video you can see the clan wars in the oldest Krepost' map.",
              viewCount: 26,
              uploadDate: "August 21, 2016",
              url: URL(string: "https://www.youtube.com/watch?v=7PzUcYaQZ5E&ab_channel=ZhaisanSarsengaliyev")!),
        
        Video(imageName: "Мясорубка",
              title: "Мясорубкаa",
              description: "In this video you can see the single mode in Hostel map with McMillan.",
              viewCount: 73,
              uploadDate: "August 4, 2016",
              url: URL(string: "https://www.youtube.com/watch?v=-B2R5vGyvE4&ab_channel=ZhaisanSarsengaliyev")!),
        
        Video(imageName: "ДошиРааки2",
              title: "Кв против ДошиРааки. Часть 2",
              description: "In this video you can see the clan wars in legendary D17 map.",
              viewCount: 32,
              uploadDate: "August 19, 2016",
              url: URL(string: "https://www.youtube.com/watch?v=whhy-lIl5lw&ab_channel=ZhaisanSarsengaliyev")!),
        
        Video(imageName: "Инстаграм",
              title: "Как писать сообщение в Инстаграм",
              description: "In this video you can see the lifehack of messaging in instagram in 2016 when it was unknown info.",
              viewCount: 2826,
              uploadDate: "April 27, 2016",
              url: URL(string: "https://www.youtube.com/watch?v=YGuToU-xuSc&ab_channel=ZhaisanSarsengaliyev")!),
        
        Video(imageName: "БОРЗЫЕ_ХОМЯКИ",
              title: "Кв против -БОРЗЫЕ_ХОМЯКИ-",
              description: "In this video you can see the clan wars in arabic ancient Preulki map.",
              viewCount: 50,
              uploadDate: "August 5, 2016",
              url: URL(string: "https://www.youtube.com/watch?v=rVmxeDeLCXM&ab_channel=ZhaisanSarsengaliyev")!),
        
        Video(imageName: "60фрагов",
              title: "Мясорубка. 60 фрагов",
              description: "In this video you can see the single mode in Prigorod map with M40A5",
              viewCount: 77,
              uploadDate: "August 21, 2016",
              url: URL(string: "https://www.youtube.com/watch?v=T897-GDI6kc&t=350s&ab_channel=ZhaisanSarsengaliyev")!),
        
    ]
}
