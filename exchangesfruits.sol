// SPDX-License-Identifier: GPL-3.0


pragma solidity 0.8.18;

contract ExhangesFruit{

    mapping(address => uint256) public balances;

    function ExhangesMforAPP(uint256 appleAmount) public {
     require(balances[msg.sender]>= appleAmount,"insuffiecent balance");

     balances[msg.sender]  -= appleAmount;
     balances[address(this)] += appleAmount;
    }

    function withdrawMangoes(uint256 mangeoAmount) public{

        require(balances[msg.sender]>=mangeoAmount, "insufficent balance");

        balances[msg.sender] += mangeoAmount;
        balances[address(this)] -= mangeoAmount;
    }
    function DepositMangoes(uint256 mangeoAmount) public{
        balances[msg.sender] += mangeoAmount;
    }

    function getmangoes(address account) public view returns(uint256){

        return balances[account];
    }
}