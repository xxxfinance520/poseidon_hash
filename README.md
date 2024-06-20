# poseidon_hash

## 测试
```bash
    sui move test -s
```
poseidon_hash结算测试结果:
|    Test Name      | 函数简介  | Time   | Gas Used |
| :----            |:----     |:----:   |:----: |
|│ 0x0::poseidon_hash_tests::test_empty                       |无逻辑执行     |0.004  |  1    |
|│ 0x0::poseidon_hash_tests::test_poseidon_bn254              |sui原生     |0.052   |  8    |
|│ 0x0::poseidon_hash_tests::test_poseidon_bn254for64bytes    |sui原生64字节     |0.006     |  9    |
|│ 0x0::poseidon_hash_tests::test_poseidon_hash               ||0.007   |  2955    |
|│ 0x0::poseidon_hash_tests::test_poseidon_hashFor64bytes     |64字节     |0.007   |  2954    |
