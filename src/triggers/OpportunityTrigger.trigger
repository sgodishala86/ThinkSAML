trigger OpportunityTrigger on Opportunity (before insert) {
    for(Opportunity o : Trigger.new){
  if(o.Amount < 50000)
      o.addError('Amount should be more than 50000');
    }
}