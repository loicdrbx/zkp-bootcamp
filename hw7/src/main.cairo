#[starknet::interface]
trait IHelloWorld<TContractState>{
    fn hello_world(self: @TContractState) -> felt252;

    fn update_hello_world(ref self: TContractState, name: felt252);
}

#[starknet::contract]
mod contract{
    
    #[storage]
    struct Storage{
        hello_world: felt252,
    }
    
    #[constructor]
    fn constructor(ref self: ContractState){
        self.hello_world.write('Hello World!');
    }
    
    #[external(v0)]
    impl HelloWorld of super::IHelloWorld<ContractState>{
        fn hello_world(self: @ContractState) -> felt252 {
            self.hello_world.read()
        }

        fn update_hello_world(ref self: ContractState, name: felt252) {
            self.hello_world.write(name)
        }
    }
}