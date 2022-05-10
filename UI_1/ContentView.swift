//
//  ContentView.swift
//  UI_1
//
//  Created by ARMBP on 5/9/22.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight = false
    var body: some View {
        ZStack{
            BackGroundView(color1: isNight ? .black : Color("darkBlue"), color2: isNight ? .gray :  Color("lightBlue"))
            VStack{
                CurrentCityVew(city: "NYC")
                
                CurrentWeatherView(temperatureCelsius: 24, weatherStatus: isNight ? "moon.stars.fill" : "cloud.heavyrain.fill")
                
                HStack(spacing: 25){
                    WeatherByDayView(dayOfTheWeek: "TUE",
                                     imageName:"sun.max.fill",
                                   temperature: 20)
                    WeatherByDayView(dayOfTheWeek: "WRD",
                                     imageName: "cloud.sun.fill",
                                   temperature: 21)
                    WeatherByDayView(dayOfTheWeek: "THU",
                                     imageName:  "cloud.fill",
                                   temperature: 20)
                    WeatherByDayView(dayOfTheWeek: "FRI",
                                     imageName:  "cloud.sun.fill",
                                   temperature: 18)
                    WeatherByDayView(dayOfTheWeek: "SAT",
                                     imageName: "cloud.sun.fill",
                                   temperature: 19)
                }
                
                
                Spacer()
                Button{
                    
                    isNight.toggle()
                        
                } label: {
                    someButtonView(buttonText: "ChangeDayTime", backgroundColor: .white, textColor: .cyan)
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherByDayView: View {
    var dayOfTheWeek: String
    var imageName: String
    var temperature: Int
    
    
    var body: some View {
        VStack{
            Text(dayOfTheWeek)
                .font(.system(size: 24, weight: .medium, design: .default))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)°C")
                .font(.system(size: 24, weight: .medium, design: .default))
                .foregroundColor(.white)
            
        }
    }
}

struct BackGroundView: View {
    var color1: Color
    var color2: Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [color1, color2]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct CurrentCityVew: View {
    var city: String
    var body: some View {
        Text(city)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct CurrentWeatherView: View {
    
    var temperatureCelsius: Int
    var weatherStatus: String
    
    var body: some View {
        VStack(spacing: 5){
            Image(systemName: weatherStatus)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperatureCelsius)°C")
                .font(.system(size: 70, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
        .padding(.bottom, 60)
    }
}


