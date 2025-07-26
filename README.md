\# 📈 BasefeeSpikeTrap



> ✅ A fully custom Drosera Trap that detects sudden spikes in `block.basefee` and triggers an on-chain event response.  

> 🛠 Built for Ethereum Hoodi testnet. Inspired by real gas volatility monitoring use cases.



---



\## 💡 Trap Concept



This trap was created to detect \*\*unexpected spikes in gas basefee\*\* on the network. Unlike basic traps that rely on static values, this one uses real block data (`block.basefee`) to dynamically assess network stress or congestion.



Each block, the trap records `block.basefee`, and compares it with the previous block. If the difference exceeds a certain threshold, it triggers a response contract — emitting an alert that an anomaly has been detected.



---



\## 📂 Files Overview



| File                         | Description                                 |

|------------------------------|---------------------------------------------|

| `BasefeeSpikeTrap.sol`       | Main Trap logic that collects and analyzes gas |

| `GasAlertReceiver.sol`       | External contract triggered on alert        |

| `drosera.toml`               | Drosera node configuration                  |

| `images/logs.png`            | Screenshot of ShouldRespond = true log      |

| `images/block.png`           | Screenshot of dashboard block view          |



---



\## 🧠 Logic Explained



\### 🔹 `collect()`  

Collects current block's `basefee` (in wei):



```solidity

function collect() external view override returns (bytes memory) {

&nbsp;   return abi.encode(block.basefee);

}



