import 'dart:math';

void main() {
  var cpt=0;
  var  afficher, post1=[0,0], post0=[0,0];
  var puzzel = cells(4);
  print(puzzel);
  var Puzel=cells(4);
  print(Testfin(puzzel));
  Puzel = Randome(Puzel);
  for(var i = 0 ; i < 16 ; i++){
    post0 = Trouvele1(Puzel);
    post1 = TrouveLaCaseNull(  Puzel);
    print(afficher);
    deplaceLaCaseAuExtrimePourNull( Puzel , post0[0] , post0[1]);
    print(afficher);
    deplaceLaCaseAuExtrimePourNull( Puzel , post1[0] , post1[1]);
    afficher =["deplace la case ", post0, " au ", post1];
    print(afficher);
  }

  print(Testfin(puzzel));
  print(puzzel);
}
List cells(int length) {
  var cells = new List(length);
  for (var i = 0; i < length; i++) {
    cells[i] = new List(length);
  }
var cpt=1;
  for( var i = 0 ; i <4; i++)
    for( var j = 0 ; j < 4 ; j++){
      if(j == 3 && i == 3)
        break;
      cells[i][j]  =  cpt ;
      cpt++;
  }
  return cells;}

List Randome(var cells) {
  var Courant, positioni1, positioni2,positionj1, positionj2;
  for( var i = 0 ; i < 150 ; i++){
    positioni1= new Random().nextInt(4);
    positioni2= new Random().nextInt(4);
    positionj1= new Random().nextInt(4);
    positionj2= new Random().nextInt(4);
    Courant=cells[positioni1][positionj1];
    cells[positioni1][positionj1]=cells[positioni2][positionj2];
    cells[positioni2][positionj2]=Courant;
  }
  return cells;
}

Trouvele1( var cells){
  var position=[];
  for( var i = 0 ; i <4; i++)
    for( var j = 0 ; j < 4 ; j++){
      if(cells[i][j] == 1){
        return  position=[i,j];
      }
    }
}

TrouveLaCaseNull( var cells){
  var position=[];
  for( var i = 0 ; i <4; i++)
    for( var j = 0 ; j < 4 ; j++){
      if(cells[i][j]== null){
        return  position=[i,j];
      }
    }
}

deplaceLaCaseAuExtrimePourNull(var cells , var i , var j){
  cells = Randome(cells);
  if(i == 0 || i == 3|| j == 0 || j == 3)
    return cells;
  else{
    if( i == 1 && j == 1){
      cells[i][j]=cells[i][j-1];
      cells[i][j-1] = null;
    }
    if( i == 1 && j == 2){
     cells[i][j]= cells[i][j+1];
     cells[i][j+1]= null;
    }
    if( i == 2 && j == 1){
      cells[i][j] = cells[i][j-1];
      cells[i][j-1] = null;
    }
    if( i == 2 && j == 2){
      cells[i][j] = cells[i][j+1];
      cells[i][j+1]= null;
    }
  }
  return cells;
}

Nbdedeplacement(var i1 ,  var j1, var i2 , var j2){
  var dep=0 ;
  if( i2 == 1 && j2 == 1)
    j2=j2-1;
  if( i2 == 2 && j2 == 1)
    j2=j2-1;
  if( i2 == 1 && j2 == 2)
    j2=j2+1;
  if( i2 == 2 && j2 == 2)
    j2=j2+1;
  print('l');
  while(dep < 20){

    if(i1 <3 && j1 == 0){
      i1++;
      dep++;
    }
    if(i1 == 3 && j1 < 3){
      j1++;
      dep++;
    }
    if(j1 == 3 && j1 > 0){
      i1--;
      dep++;
    }
    if(i1 == 0 && j1 > 0){
      j1--;
      dep++;
    }

    if(i1 == i2 && j2 == j1){
      //dep=14-dep;
      print(dep);
      return dep;
    }


  }

  return dep;
}


Testfin(var cell){
  var cpt=1;
  for( var i = 0 ; i <4; i++)
    for( var j = 0 ; j < 4 ; j++){
      if(i == 3 && j == 3)
        break;
      if(cell[i][j] != cpt)
        return false;
      cpt++;
    }
  return true;
}