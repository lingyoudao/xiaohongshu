//
//  ContentView.swift
//  xiaohongshu
//
//  Created by lyd12 on 2024/10/4.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                //设置body内容
                
                HStack(alignment: .top){ // 顶部对齐
                    //两栏布局
                    
                  //在这里调用我们已经创建好的
                    VStack{
                        Card(text: "文案", image: "sunrise", username: "username", locate: "29km")
                        
                        Card(text: "文案3", image: "river", username: "username2", locate: "100km")
                    }
                  
                    
                    VStack{
                        Card(text: "文案2", image: "sea", username: "username3", locate: "10km")
                    }
                   
                }
            }
            .background(.gray.opacity(0.2))
            .toolbar {
                ToolbarItem(placement: .principal) {
                    //导航栏的三个button
                    HStack{
                        Button{
                            
                        }label:{
                            Text("关注")
                        }
                        
                        Button{
                            
                        }label:{
                            Text("发现")
                        }
                        
                        Button{
                            
                        }label:{
                            Text("附近")
                        }
                    }
                    .foregroundColor(.black) //设置前景色
                }
                
                ToolbarItem(placement: .navigationBarTrailing){
                    
                    //导航栏右侧的搜索
                    Button{
                        
                    }label:{
                        Image(systemName: "magnifyingglass")
                    }
                    .foregroundColor(.black) //设置前景色
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
