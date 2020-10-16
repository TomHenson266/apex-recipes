sfdx force:org:create -f config/project-scratch-def.json -s -d 1
sfdx force:source:push
sfdx force:user:permset:assign -n Apex_Recipes
sfdx force:user:permset:assign -n Walkthroughs
sfdx force:data:tree:import -p ./data/data-plan.json
sfdx force:data:tree:import -p ./data/data-plan2.json
sfdx force:apex:execute --apexcodefile data/setup.apex
sfdx force:org:open -p /lightning/n/Apex_Recipes