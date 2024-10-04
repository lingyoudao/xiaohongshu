//
//  Card.swift
//  xiaohongshu
//
//  Created by 凌有道 on 2024/10/4.
//

import SwiftUI

struct Card: View {
    //为了定制View里面的内容，我们设置如下变量
    var text = "文案"
    var image = ""
    var username = ""
    var locate = ""
    
    var body: some View {
        //将其新建为一个View，方便我们后面调用
        VStack(alignment:.leading, spacing: 8){ //左对齐
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text(text)
            
            HStack(spacing: 0){ //设置间距
                //头像信息
                Image(image)//后面需要自己重新设置一个
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                //变成圆形
                    .mask(Circle())
                //设置大小
                    .frame(width: 40)
               
                 Text(username)
                
                Spacer()
                
                Image(systemName: "location")
                Text(locate)
            }.font(.footnote)
        }
        .frame(width: UIScreen.main.bounds.width/2 - 50) //手机宽度一半, -20防止两者超出屏幕
        //设置水平方向上的padding
        .padding(.leading)
        .background(.white, in: RoundedRectangle(cornerRadius: 8))
        
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card()
    }
}
