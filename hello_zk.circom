// 🌊 癸水开源，金生水起 
pragma circom 2.2.2; // 声明编译器版本（必选）

template HelloZK() { // 定义电路模板（类似类）
    signal input x;  // 私有输入（证明者知道但需保密的值）
    signal output y; // 公开输出（可被验证者查看的结果）
    y <== x * x;    // 约束条件（必须满足y = x²）
}

// 关键！声明主组件入口
component main = HelloZK();  // 🌊 像河流需要明确源头

snarkjs groth16 verify \
  --public public.json \
  --proof proof.json \
  --zkey hello_zk_0000.zkey



