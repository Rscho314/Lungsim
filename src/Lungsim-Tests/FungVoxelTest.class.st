"
A FungVoxelTest is a test class for testing the behavior of FungVoxel
"
Class {
	#name : 'FungVoxelTest',
	#superclass : 'TestCase',
	#category : 'Lungsim-Tests',
	#package : 'Lungsim-Tests'
}

{ #category : 'tests' }
FungVoxelTest >> testCreateWithLocation [
	"tests custom initializer with location"
	| fv |
	fv := FungVoxel location: { 1 . 2 . 3 } .
	self deny: fv equals: nil
]

{ #category : 'tests' }
FungVoxelTest >> testCreateWithXYZ [
	"tests custom initializer with location"
	| fv |
	fv := FungVoxel x:1 y:2 z:3 .
	self deny: fv equals: nil
]
