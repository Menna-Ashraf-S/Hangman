import 'dart:async';
import 'dart:io';
import 'dart:math';
void main(){
  const List<String> wordList = const  ["PLENTY","ACHIEVE","CLASS","STARE","AFFECT","THICK","CARRIER","BILL","SAY",
  "ARGUE","OFTEN","GROW","VOTING","SHUT","PUSH","FANTASY","PLAN","LAST","ATTACK","COIN","ONE","STEM","SCAN","ENHANCE"
  ,"PILL","OPPOSED","FLAG","RACE","SPEED","BIAS","HERSELF","DOUGH","RELEASE","SUBJECT","BRICK","SURVIVE","LEADING"
  ,"STAKE","NERVE","INTENSE","SUSPECT","WHEN","LIE","PLUNGE","HOLD","TONGUE","ROLLING","STAY","RESPECT","SAFELY"];
  String word = wordList[Random().nextInt(wordList.length)];
  int numberOfTries = 7 ;
  List cover =[];
  List check = [];
  int flag = 0 ;
  int fls = 0 ; 
  for(int c =0 ; c<word.length ; ++c){
    cover.add('_');
    check.add('_');
  }
  print(cover);
  while ( flag !=1 ){
    switch(numberOfTries){
          case(7):{
            print('______________');
            print('|');
            print('|');
            print('|');
            print('|');
            print('|');
            print('¯̅¯̅¯̅¯̅¯̅¯');
            break;
          }
          case(6):{
             print('______________');
             print('|            O');
            print('|');
            print('|');
            print('|');
            print('|');
            print('¯̅¯̅¯̅¯̅¯̅¯');
            break;
          }
          case(5):{
            print('______________');
             print('|            O');
            print('|            |');
            print('|            |');
            print('|');
            print('|');
            print('¯̅¯̅¯̅¯̅¯̅¯');
            break;
          }
          case(4):{
            print('______________');
             print('|            O');
            print('|            |/');
            print('|            |');
            print('|');
            print('|');
            print('¯̅¯̅¯̅¯̅¯̅¯');
            break;
          }
          case(3):{
            print('______________');
             print('|            O');
            print('|           \\|/');
            print('|            |');
            print('|');
            print('|');
            print('¯̅¯̅¯̅¯̅¯̅¯');
            break;
          }
          case(2):{
            print('______________');
             print('|            O');
            print('|           \\|/');
            print('|            |');
            print('|             \\');
            print('|');
            print('¯̅¯̅¯̅¯̅¯̅¯');
            break;
          }
          case(1):{
            print('______________');
             print('|            O');
            print('|           \\|/');
            print('|            |');
            print('|           / \\');
            print('|');
            print('¯̅¯̅¯̅¯̅¯̅¯');
            break;
          }
        }
    print('Enter a letter');
    String letter = stdin.readLineSync()!;
    letter = letter.toUpperCase();
    fls = 1 ;
    for(int i=0 ; i < word.length ; ++i ){
      if(word[i]==letter){
        print('Correct');
        cover[i]=word[i];
        for(int k=i+1 ;k < word.length ; ++k){
          if(letter==word[k])
          cover[k]=word[k];
        }
        print(cover);
        fls = 0 ;
        break;
      }
       } 
       if(fls==1){
        numberOfTries-- ;
        if (numberOfTries==0){
          print('Game over');
          exit(0);
        }
        else{
          print('Wrong Letter you have ${numberOfTries}');
        }
       }
      flag =1 ;
      for(int j=0 ; j < word.length ; j++){
        if(cover[j]==check[j]){
          flag=0 ;
          break;
        } } 
       }
  print('Congratulations, You Win.....');
  }