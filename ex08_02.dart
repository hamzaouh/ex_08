
void main() {
  var solution = new Map();
  var liste = [];
var associations = [
                    {"name": "AMMUL", "description": "association des Marocian et Marocainne de Ulaval"},
                    {"name": "AISEC", "description": "AISEC"}
                    ];

 var members = [
                {"associationName": "AMMUL", "firstName": "Nada", "lastName": "Diori", "email": "XXX@gmail.com"},
                {"associationName": "AMMUL", "firstName": "Hamza", "lastName": "Ouhammou", "email": "ho@gmail.com"},
                {"associationName": "AISEC", "firstName": "Soukaina", "lastName": "Razi", "email": "ZI@gmail.com"},
                {"associationName": "AISEC", "firstName": "Kortas", "lastName": "Hdili", "email": "HL@gmail.com"},
                {"associationName": "AMMUL", "firstName": "Soukaina", "lastName": "Razi", "email": "rn@gmail.com"},
                {"associationName": "AMMUL", "firstName": "Zineb", "lastName": "Benis", "email": "ZN@gmail.com"},
                {"associationName": "AISEC", "firstName": "Robert", "lastName": "Nelson", "email": "rn@gmail.com"},
                {"associationName": "AISEC", "firstName": "Youssaf", "lastName": "abc", "email": "YDn@gmail.com"},
                {"associationName": "AMMUL", "firstName": "Jade", "lastName": "Dubois", "email": "yy@gmail.com"}
                               ];
 print("Trie par Last name");
 print("");
 solution=shortByTheLastName(members,9);
 print(solution);
print("");
print("Trie par First name");
print("");
 solution=shortByThefirstName(members,9);
 print("solution");
 print("");
 print("members whose last name starts with a letter B");
 print("");
  liste= lastNameStartsWithAgivenLetter(members,9 , "lastName","D");
  print(liste);
}

lastNameStartsWithAgivenLetter(var member, var taille ,var type ,var Letter){
  var listename = [];
  for(var i = 0 ; i < taille ; i++){
    if(Letter == member[i][type][0])
      listename.add( member[i][type]);
  }
  return listename;
}


shortByTheLastName(var member, var taille){
  var liste= [];
  var cpt = [];
  var memberTrie = new Map();
  var alpfabete=["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u",
                 "v","w","x","y","z","A","B","C","D","E","F","G","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"];
  for(var i =  0 ; i<26 ; i++){
    liste=(lastNameStartsWithAgivenLetter(member, taille ,"lastName" ,alpfabete[i]));
    for(var ii = 0 ; ii < liste.length ; ii++)
      for(var j = 0 ; j < taille ; j++){
        if( member[j]["lastName"] == liste[ii])
          cpt.add(j);
      }
    liste=(lastNameStartsWithAgivenLetter(member, taille ,"lastName" ,alpfabete[i+25]));
    for(var ii = 0 ; ii < liste.length ; ii++)
      for(var j = 0 ; j < taille ; j++){
        if( member[j]["lastName"] == liste[ii])
          cpt.add(j);
      }
  }
  for(var i = 0 ; i < taille ; i++)
    memberTrie[i]=member[cpt[i]];

  return  memberTrie;
}

shortByThefirstName(var member, var taille){
  var liste= [];
  var cpt = [];
  var memberTrie = new Map();
  var alpfabete=["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u",
                 "v","w","x","y","z","A","B","C","D","E","F","G","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"];
  for(var i =  0 ; i<26 ; i++){
    liste=(lastNameStartsWithAgivenLetter(member, taille ,"firstName" ,alpfabete[i]));
    for(var ii = 0 ; ii < liste.length ; ii++)
      for(var j = 0 ; j < taille ; j++){
        if( member[j]["firstName"] == liste[ii])
          cpt.add(j);
      }
    liste=(lastNameStartsWithAgivenLetter(member, taille ,"firstName" ,alpfabete[i+25]));
    for(var ii = 0 ; ii < liste.length ; ii++)
      for(var j = 0 ; j < taille ; j++){
        if( member[j]["firstName"] == liste[ii])
          cpt.add(j);
      }
  }
  for(var i = 0 ; i < taille ; i++)
    memberTrie[i]=member[cpt[i]];

  return memberTrie;
}


