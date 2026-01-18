import Debug "mo:base/Debug";
actor DBank{
  var currentValue: Nat = 300;
  currentValue:= 100;
  // let var=100  ; lets you store constants
  //Debug.print(debug_show(currentValue));

  public func topUp(amount :Nat){
    currentValue+=amount;
    Debug.print(debug_show(currentValue));
  };
  //topUp();
  public func withdrawl(amount: Nat){
    let tempValue: Int= currentValue - amount;
    if(tempValue>=0){
    currentValue-=amount;
    Debug.print(debug_show(currentValue));
    }
    else{
      Debug.print("Amount too large to withdraw");
    }
  };
  public query func checkBalance(): async  Nat{
    return currentValue;
  };
}