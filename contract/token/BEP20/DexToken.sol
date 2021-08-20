pragma solidity 0.6.12;

import './BEP20.sol';

contract DexToken is BEP20('Dex Token', 'Dex') {
    /// @notice Creates `_amount` token to `_to`. Must only be called by the owner (MasterChef).
    function mint(address _to, uint256 _amount) public onlyOwner {
        _mint(_to, _amount);
    }

    function burn(address _account,uint256 _amount) public onlyOwner {
        _burn(_account, _amount); 
    }
}