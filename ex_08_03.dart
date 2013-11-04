void main() {
  var model = { "Daniel Dubois": "AMMUL",
                "Pierre-olivier": "AMML",
                "kevin ": "AMM",
                "charles" : "AMML",
                 "Patric": "AMML"};

model = Ajoute(model , "CMQ" , "toto");
Remouve( model ,"Pierre-olivier");
print(model);

}

Ajoute(var Model , var AssoName , var Name){
  var model1 = new Map();
  model1=Model;
  model1[Name]=AssoName;
  return model1;
}

Remouve(var Model , var Name){
  Model.remove(Name);
}