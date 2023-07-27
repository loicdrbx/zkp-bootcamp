# Tutorial: Proving knowledge of a hash preimage

Let's jump into ZoKrates by working through a hands-on project together!

We'll implement an operation that's very typical in blockchain use-cases: proving knowledge of the preimage for a given hash digest. In particular, we'll show how ZoKrates and the Ethereum blockchain can be used to allow a prover, let's call her Peggy, to demonstrate beyond any reasonable doubt to a verifier, let's call him Victor, that she knows a hash preimage for a digest chosen by Victor, without revealing what the preimage is.

