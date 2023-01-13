//
//  QuestionBrain.swift
//  Quizzer
//
//  Created by Arif Demirkoparan on 11.01.2023.
//

import Foundation

struct QuestionBrain {
    
    let quiz  = [
        Question(q:"Kazakistan'ın para birimi hangisidir?", a: ["Lari","Riel","Tenge"], c: "Tenge"),
        Question(q:"Uzaktan kumanda ilk kez Amerika'da kaç yılında kullanılmıştır?", a: ["1956","1948","1950"], c: "1956"),
        Question(q:"Dünyada yazımı en uzun sürmüş kitap, Johann Wolfgang von Goethe’nin yazdığı Faust’tur. Goethe 21 yaşında yazmaya başladığı bu kitabı kaç yaşında bitirmiştir?", a: ["27","45","36"], c: "36"),
        Question(q:"4. 1 milyar saniye kaç yıldır?", a: ["30","28","32"], c: "32"),
        Question(q:"Hamileliğin kaçıncı ayında bebeğin kalbi kan pompalamaya başlar?", a: ["6","5","7"], c: "6"),
        Question(q: " Hangi iki ülke 1958 – 1961 yılları arasında bir süreliğine birleşerek “Birleşik Arap Cumhuriyeti”ni kurmuştur?", a: ["Suriye - Mısır","Kuveyt-Birleşik Arap Emirlikleri","Irak - Lübnan"], c: "Suriye - Mısır"),
        Question(q: " Bir eserin teknik olarak, kitap sayılabilmesi için en az kaç sayfadan oluşması gerekir?", a: ["17","49","32"], c: "49"),
        Question(q: "Divan edebiyatında şairler hakkında bilgi veren eserlere ne ad verilir?", a: ["Cönk","Hilye","Tezkire"], c: "Tezkire"),
        Question(q: "Cep telefonuyla iletişim olanağından uzak kalma korkusuna ne ad verilir?", a:["Nomofobi","Agorafobi","Sosyofobi"], c: "Nomofobi"),
        Question(q: "Türkiye’de kadınlar hangi hakkı diğerlerinden önce kazanmıştır?", a: ["Seçme ve seçilme","Doğum izni","Boşanma"], c: "Boşanma"),
        Question(q: "Osmanlı İmparatorluğu’nda ilk fethedilen ada hangisidir?", a: ["Rodos","Girit","İmralı"], c: "İmralı"),
        Question(q: " ABD’nin başkenti “Washington D.C”de yer alan D.C.'nin açılımı nedir?", a: ["Demokrasi Ülkesi","Karar Merkez","Columbia Bölgesi"], c: "Columbia Bölgesi"),
        Question(q: "İki sinir hücresinin birleştiği bölge, aşağıdakilerden hangisidir?", a: ["Akson","Dendrit","Sinaps"], c: "Sinaps"),
        Question(q: "Çakmak kaç yılında icat edilmiştir?", a: ["1806","1816","1826"], c: "1816"),
        Question(q: "Kendi ölüm tarihini bilen istatistikçi kimdir?", a: ["William Gosset","Abraham de Moivre","E.S. Pearson"], c: "Abraham de Moivre")
    ]
    
    var questionNumber = 0
    var scoreNumber = 0
    
    mutating func checkAnswer(_ userAnswer:String) -> Bool {
        
        if userAnswer == quiz[questionNumber].correct {
            scoreNumber += 1
            return true
           
        }else {
            return false

        }
    }
    
    
    mutating func checkAnswer(){
        if questionNumber + 1 < quiz.count  {
            questionNumber += 1
        }else {
            questionNumber = 0
            scoreNumber = 0
        }
    }
    
    func getQuestion() -> String{
        return quiz[questionNumber].question
    }
    func getAnswer() ->[String] {
        return quiz[questionNumber].answer
    }
    
    func getScore() -> Int {
        return scoreNumber 
    }
    
    
    func getProgressBar() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }
}
