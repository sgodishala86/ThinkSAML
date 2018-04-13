public with sharing class SidebarSummaryController {

    public Map<String, Integer> oppstages { get; set; }
    
    public SidebarSummaryController()
    {
      oppStages = new Map<String, Integer>();
      for(AggregateResult ar: [SELECT StageName, Count(ID) cnt FROM Opportunity GROUP BY StageName])
      {
       oppStages.put((String) ar.get('StageName'), (Integer) ar.get('cnt'));
      }
    }
}