## L1
L1, ou Layer 1, refere-se à camada fundamental de uma blockchain, responsável pelo processamento principal de transações e pelo armazenamento de dados. Essas blockchains, como Bitcoin e Ethereum, são conhecidas por sua segurança e descentralização, mas muitas vezes enfrentam limitações em termos de escalabilidade e velocidade de transação. A L1 é onde as transações são finalizadas e validadas através de mecanismos de consenso, como Prova de Trabalho (PoW) ou Prova de Participação (PoS).

## L2
L2, ou Layer 2, é um conjunto de soluções tecnológicas desenvolvidas para operar em cima de uma blockchain L1, com o objetivo de expandir sua capacidade sem comprometer a segurança. Essas soluções tratam das limitações de escalabilidade das L1s ao processar transações fora da cadeia principal, utilizando menos recursos e alcançando maior velocidade. Os dados resultantes são periodicamente consolidados e registrados na L1. Exemplos populares de L2 incluem rollups, sidechains e canais de estado, cada um oferecendo diferentes métodos para aliviar a carga da rede principal enquanto mantém a integridade e segurança dos dados.

## Rollups
Rollups são soluções de Layer 2 (L2) que executam transações e cálculos fora da cadeia principal (L1) e, em seguida, enviam os dados processados de volta para a L1 em um pacote compactado. Existem dois tipos principais de rollups: Optimistic Rollups e ZK-Rollups. Optimistic Rollups assumem que todas as transações são válidas por padrão e apenas executam cálculos em caso de disputa. ZK-Rollups, por outro lado, utilizam provas de conhecimento zero para validar transações antes de serem retornadas à L1.

## Sidechain
Sidechains são blockchains paralelas que operam independentemente da blockchain principal (L1), mas estão ligadas a ela. Elas permitem transferências bidirecionais de ativos e podem ter suas próprias regras, mecanismos de consenso e funcionalidades. Isso permite que sidechains processem transações e cargas de trabalho específicas, aliviando a carga na L1 e possibilitando experimentação e inovação com menos restrições.

## zk
"zk" em contextos de blockchain refere-se a "zero-knowledge proofs" (provas de conhecimento zero). É uma técnica criptográfica que permite a uma parte provar para outra que uma determinada afirmação é verdadeira, sem revelar nenhuma informação além da validade da afirmação. Em blockchains, é frequentemente usada em ZK-Rollups para validar transações de maneira eficiente e privada antes de consolidá-las em uma Layer 1, melhorando a escalabilidade e a privacidade.