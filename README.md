# Ali_Khatami_EtherJs10(Learning from the video of Patrick Collins)

## Deploying to a Testnet or Mainnet

Now here we gonn adeploy our contract at https://github.com/C191068/Ali_Khatami_EtherJs9 <br>
on a Sepolia testnet <br>


![m34](https://github.com/C191068/Ali_Khatami_EtherJs10/assets/89090776/639b537f-fe1c-4358-a267-1f4b30218a9b)

to make transcation on blockchain  we need RPC URL and private key <br>

So we all gonna need Sepolia RPC URL and Sepolia private key <br>


If we want to do everything on our own in a full decentralized context  <br>

we can run Sepolia version of Geth <br>

We can run it locally and just connect it to our Geth node <br>

here we gonna use third party RPC URL <br>

Alchemy has a node as a service and allow us to conncet any blockchain they have support for <br>

some alternatives might br :
quick node , moralis or infura <br>


![m35](https://github.com/C191068/Ali_Khatami_EtherJs10/assets/89090776/8a3aec8b-3ad8-42bc-9c6d-6a8ca63dd0f7)

we will go the above link https://www.alchemy.com/ <br>


![m35](https://github.com/C191068/Ali_Khatami_EtherJs10/assets/89090776/11c6532b-a709-482e-9c5a-a2312191aae8)

and we will click here ```Get Started for free ``` and create a new account  <br>


![m36](https://github.com/C191068/Ali_Khatami_EtherJs10/assets/89090776/e3a408b3-96eb-42e6-b392-9a3ea99f5f71)

after sign up and sign in we can open the dashboard <br>

![m37](https://github.com/C191068/Ali_Khatami_EtherJs10/assets/89090776/78d30f37-98b7-4939-826f-ca2195b96824)

here we will select the above button <br>

![m38](https://github.com/C191068/Ali_Khatami_EtherJs10/assets/89090776/e45b79b5-3a4c-43eb-a7b6-35f75da219b1)

here at fisrt we gonna Ethereum blockchain and then as a network Ethereum Sepolia <br>

then give name and description and click create app <br>

![m39](https://github.com/C191068/Ali_Khatami_EtherJs10/assets/89090776/a32bde4c-03d4-45fa-b144-c27f59972226)

here we can see ton of information about the node and different ways to conncet to the node <br>


![m40](https://github.com/C191068/Ali_Khatami_EtherJs10/assets/89090776/81f667f1-1b5b-4f37-8368-ab6738a1220a)

this gonna be very similiar to RPC server at ganache <br>

except it gonna be aconncetion to a real tset


![m41](https://github.com/C191068/Ali_Khatami_EtherJs10/assets/89090776/17bce838-7983-499d-a504-490917e166b0)

here we select the view key <br>

![m42](https://github.com/C191068/Ali_Khatami_EtherJs10/assets/89090776/2ed06a8d-c263-4d71-ae52-6fd9ba41f92f)

here we can see we have the API key ,HTTPS and websocket <br>

![m43](https://github.com/C191068/Ali_Khatami_EtherJs10/assets/89090776/05210f75-f48d-44ec-bf7b-de464891755a)

we are only concerned with the HTTP endpoint <br>
 This gonna be tha RPC URL that connects to Sepolia <br>

![m44](https://github.com/C191068/Ali_Khatami_EtherJs10/assets/89090776/fb4df235-447a-4643-b7d0-771709bf5524)

 So we gonna copy the baove HTTP end point <br>

 ![m45](https://github.com/C191068/Ali_Khatami_EtherJs10/assets/89090776/971110cc-fcc3-4b70-88b1-3b5af3efbb76)

 we gonna paste it in the above <br>

 
now we will get the private key for an actual test net thet has adctual sepolia on it <br>


here where we can use our metamask <br>


![m46](https://github.com/C191068/Ali_Khatami_EtherJs10/assets/89090776/0dd0ff17-ae4c-4e95-87b0-2810ce5ab98a)

the above is our metamask account <br>


![m47](https://github.com/C191068/Ali_Khatami_EtherJs10/assets/89090776/829684f3-796f-44ed-a58d-927337a49695)

we will click the three dots here <br>


![m48](https://github.com/C191068/Ali_Khatami_EtherJs10/assets/89090776/4a504fb3-ffa0-476e-a80b-89d5bb6c2620)

we gonna click here show private key <br>


![m49](https://github.com/C191068/Ali_Khatami_EtherJs10/assets/89090776/217a1d61-6c21-4290-b3a8-95c304bae847)

thus we have our private key <br>


![m50](https://github.com/C191068/Ali_Khatami_EtherJs10/assets/89090776/99d79df2-8c2e-414d-8195-8fb44a48ed46)

Now we will paste the private here shown above <br>


![m51](https://github.com/C191068/Ali_Khatami_EtherJs10/assets/89090776/60c0262a-05e7-4318-b4bd-c00531d0da09)

we grabing RPC URL and PRIVATE KEY from .env file <br>

that points to Sepolia metamask and sepolia blockchain <br>


now just add console.log under our contract deployment <br>
 so that we know wht address it is at <br>

![m52](https://github.com/C191068/Ali_Khatami_EtherJs10/assets/89090776/b9f6173f-bd37-49d4-a95d-016dcf7c8b9d)

 when we deploy this we will notice that it will take longer <br>

 because we are deploying this to a testnet instead of our own fake local blockchain <br>



testnet and real network often will take little bit longer <br>

because they need to wait for the blocks to propagate transactions to go through <br>

at first transaction we got the contract address and the current number <br>

and in the second transaction we got the updated number <br>


Now after running a command if we want to kill it <br>

we can do ```Ctrl+C``` and it will stop it <br>

![m54](https://github.com/C191068/Ali_Khatami_EtherJs10/assets/89090776/11708ac5-4fcb-47e5-a803-c66cfb9fd525)

now we will cipy the above contract address <br>

![m53](https://github.com/C191068/Ali_Khatami_EtherJs10/assets/89090776/7f862126-385f-45d0-a502-641933061b1f)
then we will paste it here at the link https://sepolia.etherscan.io/ <br>

we can see here two transactions <br>


![m55](https://github.com/C191068/Ali_Khatami_EtherJs10/assets/89090776/d781971a-89f1-4458-8d0a-e77e2b57a9a9)


here we can see we have a contract creation at the bottom and we have a store function at the top <br>








 








