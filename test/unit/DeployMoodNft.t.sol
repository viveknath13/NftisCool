// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {MoodNft} from "../../src/MoodNft.sol";
import {Test} from "forge-std/Test.sol";
import {DeployMoodNft} from "../../script/DeployMoodNft.s.sol";

contract testMoodNft is Test {
    DeployMoodNft public deployer;

    function setUp() external {
        deployer = new DeployMoodNft();
    }
    // function testConvertSvgtoURI()public view{
    // string memory expectURI = "data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjAwIiBoZWlnaHQ9IjEwMCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICA8cmVjdCB3aWR0aD0iMTAwJSIgaGVpZ2h0PSIxMDAlIiBmaWxsPSJsaWdodGJsYWUiLz4KICA8dGV4dCB4PSIxMCIgeT0iNTAiIGZvbnQtZmFtaWx5PSJBcmlhbCIgZm9udC1zaXplPSIyNCIgZmlsbD0iZ3JlZW4iPgogICAgSGVsbG8sIGkgYW0gdml2ZWsKICA8L3RleHQ+Cjwvc3ZnPgo=";
    // string memory svg = "<svg width=\"200\" height=\"100\" xmlns=\"http://www.w3.org/2000/svg\">\n"
    //                     "  <rect width=\"100%\" height=\"100%\" fill=\"lightblue\"/>\n"
    //                     "  <text x=\"10\" y=\"50\" font-family=\"Arial\" font-size=\"24\" fill=\"green\">\n"
    //                     "    Hello, i am vivek\n"
    //                     "  </text>\n"
    //                     "</svg>";

    // string memory actualSvg = deployer.svgToImageURI(svg);

    // assert(keccak256(abi.encodePacked(actualSvg)) == keccak256(abi.encodePacked(expectURI)));

    // }
}
