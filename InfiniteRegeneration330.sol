pragma solidity ^0.8.0;

contract InfiniteRegeneration330 {
    uint256 public strandset;
    uint256 public constant MAX_STRANDSET = 330;

    event StrandsetAdvanced(uint256 indexed newStrandset);

    function advanceStrandset() external {
        strandset += 1;

        if (strandset > MAX_STRANDSET) {
            strandset = 0;
        }

        emit StrandsetAdvanced(strandset);
    }
}
