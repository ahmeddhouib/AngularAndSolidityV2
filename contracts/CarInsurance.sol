pragma solidity ^0.4.17; 
 
contract CarInsurance { 
    
    address public blockchainAdress;
    string public mark;
    string public kind;
    string public serialNumber;
    string public fiscalPower;
    string public enginePower;
    string public matriculation;
    string public validity;
    string public contractNumber;
    string public personName;
    string public adresse ; // adresse reel
    string public date ;

    // constructor
    function CarInsurance() public {
        //manager houwa li bch ilanci l fct
        blockchainAdress = msg.sender;
        
    }
 
  // cette fonction permet d envoyer l 'argent'
    function enter() public payable {
        require(msg.value> .01 ether);
        
        
    }
    function setMark(string newMessage) public {    
        mark = newMessage;   
        }
        
    function setKind(string newMessage) public {    
        kind = newMessage;   
        }
        
    function setSerialNumber(string newMessage) public {    
        serialNumber = newMessage;   
        }
        
    function setFiscalPower(string newMessage) public {    
        fiscalPower = newMessage;   
        }
   
    function setEnginePower(string newMessage) public {    
        enginePower = newMessage;   
        }   
        
        
    function setMatriculation(string newMessage) public {    
        matriculation = newMessage;   
        }

    function setValidity(string newMessage) public {    
        validity = newMessage;   
        }
        
    function setContractNumber(string newMessage) public {    
        contractNumber = newMessage;   
        }

        
    function setPersonName(string newMessage) public {    
        personName = newMessage;   
        }
        
        
        
    function setAdresse(string newMessage) public {    
        adresse = newMessage;   
        }  
        
        
    function setDate(string newMessage) public {    
        date = newMessage;   
        }
        
        

 
} 