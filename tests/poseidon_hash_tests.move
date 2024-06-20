
#[test_only]
module poseidon_hash::poseidon_hash_tests {
    // uncomment this line to import the module

    use sui::poseidon::{poseidon_bn254};
    use poseidon_hash::poseidon::{hash,empty,hashForBytes64};

    //
    const ENotImplemented: u64 = 0;
    
    use std::debug;

    #[test]
    fun test_poseidon_bn254() {
        let data:vector<u256> = vector[1];
        let _hash = poseidon_bn254(&data);
        //debug::print(&hash);
    }

     #[test]
    fun test_poseidon_bn254for64bytes() {
       let data:vector<u256> = vector[1,0xffffffff];
        let _hash = poseidon_bn254(&data);
        //debug::print(&hash);
    }

     #[test]
    fun test_poseidon_hash() {
        let data:vector<u256> = vector[1];
        let hash = hash(data, 4);
        assert!(hash.borrow(0) == 15020833855946683413, 1);
        assert!(hash.borrow(1) == 2541896837400596712, 1);
        assert!(hash.borrow(2)== 5158482081674306993, 1);
        assert!(hash.borrow(3) == 15736419290823331982, 1);
    }
  

    #[test]
    fun test_poseidon_hashFor64bytes() {
        let data:vector<u256> = vector[1,0xffffffff];
        let hash = hash(data, 2);
        //debug::print(&hash);
        assert!(hash.borrow(0) == 4100972717716716928, 1);
        assert!(hash.borrow(1) == 12916215401217115086, 1);
        
    }
    
     #[test]
    fun test_poseidon_hashFor64bytes2() {
        let hash =hashForBytes64(1, 0xffffffff);
        //debug::print(&hash);
        assert!(hash.borrow(0) == 4100972717716716928, 1);
        assert!(hash.borrow(1) == 12916215401217115086, 1);
        
    }
    

    #[test]
    fun test_empty() {
        empty();
    }

    #[test, expected_failure(abort_code = ::poseidon_hash::poseidon_hash_tests::ENotImplemented)]
    fun test_poseidon_hash_fail() {
        abort ENotImplemented
        // use sui::test_scenario;

        // // Create test addresses representing users
        // let initial_owner = @0xCAFE;
        // let final_owner = @0xFACE;
        // // First transaction executed by initial owner to create the sword
        // let mut scenario = test_scenario::begin(initial_owner);
    }
}

