var repl = require("repl");
var Web3 = require("web3");
var solc = require("solc");

// jump into repl now
var replServer = repl.start({
  prompt: "eth > ",
});
// point web3 to testrpc
replServer.context.web3 = new Web3(new Web3.providers.HttpProvider("http://localhost:8545"))
replServer.context.solc = solc
