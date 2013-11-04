import 'dart:math';

void main() {
  var length = 6, cptD1=0;
var tab  = cells(length );
var solution  = cells(length );
var PositionDe1= cells(8);
for (var i = 0; i < length; i++) {
  PositionDe1[i] = new List(length);
}

for ( var i = 0 ; i < length ; i++){
  for ( var j = 0 ; j < length ; j++){
      tab[i][j]=0;
  }
}

var cpt = new Random().nextInt((length-1)*(length-1));
for ( var i = 0 ; i < cpt ; i++){
  tab[ new Random().nextInt(length)][new Random().nextInt(length)]=1;
}

print(tab);
for(var i = 0 ; i<length ; i++)
  for(var j = 0 ; j < length  ; j++){
    if(tab[i][j]== 1){

      PositionDe1=CalculePositionde(i ,j , PositionDe1);
      for(var k = 0 ; k<8 ; k++){
      var A = PositionDe1[k][0];
      var B = PositionDe1[k][1];
      if(A < 0)
        A =0;
      if(B < 0)
        B = 0;
      if(A > length-1)
        A = length-1;
      if(B > length-1)
        B = length-1;
      if(tab[A][B]==1)
        cpt++;

    }
      if(cpt !=  0)
        solution[i][j]='a';

    }
    cpt=0;

}
print(" ");
print(tab);
print(" ");
print(solution);
}



List cells(int length) {
  var cells = new List(length);
  for (var i = 0; i < length; i++) {
    cells[i] = new List(length);
  }
  return cells;
}
CalculePositionde(var i , var j , var PositionDe1){

  PositionDe1[0][0]=i-1;
  PositionDe1[0][1]=j-1;

  PositionDe1[1][0]=i-1;
  PositionDe1[1][1]=j;

  PositionDe1[2][0]=i-1;
  PositionDe1[2][1]=j+1;

  PositionDe1[3][0]=i;
  PositionDe1[3][1]=j-1;

  PositionDe1[4][0]=i;
  PositionDe1[4][1]=j+1;

  PositionDe1[5][0]=i+1;
  PositionDe1[5][1]=j-1;

  PositionDe1[6][0]=i+1;
  PositionDe1[6][1]=j;

  PositionDe1[7][0]=i+1;
  PositionDe1[7][1]=j+1;

return PositionDe1;
}
