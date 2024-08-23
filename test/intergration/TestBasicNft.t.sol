// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {Test} from "forge-std/Test.sol";
import {BasicNft} from "../../src/BasicNft.sol";
import {DeployBasicNft} from "../../script/DeployBasicNft.s.sol";

contract TestBasicNft is Test {
    string constant NFT = "https://ipfs.io/ipfs/QmTs5wQ219xACrrLHbf5r1SkSkYi3cEJeYcmMhaTNaVwxC";

    address public USER = makeAddr("user");

    BasicNft public basicNft;
    DeployBasicNft public deployer;

    function setUp() public {
        deployer = new DeployBasicNft();
        basicNft = deployer.run();
    }

    function testName() public view {
        string memory expectName = "Vivek";
        string memory actualName = basicNft.name();
        assert(keccak256(abi.encodePacked(expectName)) == keccak256(abi.encodePacked(actualName)));
    }

    function testCanMintAndHaveABalance() public {
        vm.prank(USER);
        basicNft.mintNft(NFT);
        assert(basicNft.balanceOf(USER) == 1);
        assert(keccak256(abi.encodePacked(NFT)) == keccak256(abi.encodePacked(basicNft.tokenURI(0))));
    }
}
