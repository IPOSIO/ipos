# IPOS --InterPlanetary Operating System
A distributed operating system with blockchain


 
|          |     | 
| --------     | -----:   | 
| app          | go/java app| 
| OS           | plan9 /eth| 
| File System  |   ipfs  |  
| network      |    p2p network   |  

星际操作系统：使用区块链进行计费的分布式操作系统。

个人计算机安装该操作系统，n个pc组成一个操作系统。 6台4核8g内存机器，可以组成一台 24核 48g内存的操作系统。方便横向拓展

用户在终端运行软件在 星际操作系统上，不一定运行在6台机器中的哪一台或者多台上。

星际文件系统，基于贝尔实验室的 [plan9](https://github.com/IPOSIO/plan9-bell) 进行修改。（unix操作系统，  [go语言作](https://github.com/golang/go)者 开发的 plan9）。

文件系统使用 [IPFS](https://github.com/ipfs/go-ipfs)，进行冗余存储。

计算机直接彼此发现，使用 p2p技术，与eth，btc，ipfs同样的方式。

用户的软件运行在 IPOS上时，IPOS会自动选择硬件，同时给对应的硬件账号 进行计费。自然，运行软件的用户也需要付费。

计费 使用 [ethereum 2.0](https://github.com/ethereum/go-ethereum)，eth2 具有先天性的分片和高tps。同时，eth2 能很好地运行合约，共识等。

理论上参与的计算机越多，操作系统的计算能力也就越高，存储空间也越高。

多线程问题：

用户之间彼此隔离，不相互影响，需要沟通数据，则需将信息写入 ipfs文件系统。plan9 的思想也是一切皆文件。

锁。

使用锁避免临界资源问题。锁，需要多线程之间达成共识。此时锁需要写入 eth2 中，当块同步完成，则线程之间达成共识锁。


资源计费问题：

谁的硬件谁自己定价。价格写入eth2合约。
运行软件时，系统会择优选择 硬件资源（带宽，硬盘，cpu等）。


计算结果准确性：

星际操作系统，会默认采用多个分区进行冗余计算。以结果 最多一致的为最终结果。分区运行冗余度，可在软件运行时指定。冗余度越高越安全，当然花费也就越多。






