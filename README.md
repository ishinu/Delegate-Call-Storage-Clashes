# Delegate Call Storage Clashes

Delegate call opcode as we learnt in [Part-One]() preserves context. Here is second major concept linked to Delegate call which you must be familiar with.

## Part-2 : Storage Clashes

In order to make a delegate call opcode work as expectations, the state variables must be declared in the same order in calling contract and called contract.

Example ( Deployed on Ropsten ) :
```
DelegateCallV2 : 0xA41CEB03A7acAC3641268cF32aF0f80B823E1dc6
LogicV2 : 0xA19ee76c85A22ff1556fA7B1cBfAa56a4C941120
AttackV2 : 0x4B3Ff0EEb120e8b2dBAdd04e810cE258F5Ac8c68
```
