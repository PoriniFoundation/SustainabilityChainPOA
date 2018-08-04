function loadBootnodes() {

loadScript("scripts/bootnodes.js")

for ( var i=0; i < bootnodes.length ; i=i+1)
{
var add = admin.addPeer(bootnodes[i]);
return add;
console.log("nodes added ", i);

}



};
