"
A FungVoxelTest is a test class for testing the behavior of FungVoxel
"
Class {
	#name : 'FungCellTest',
	#superclass : 'TestCase',
	#category : 'Lungsim-Tests',
	#package : 'Lungsim-Tests'
}

{ #category : 'tests' }
FungCellTest >> testAccessLocation [
	"access voxel location in grid space, as a collection"
	| fv |
	fv := FungCell point3d: ( Point3d x: 1 y: 2 z: 3 ) .
	self assert: (fv xyz) equals: ( Dictionary newFrom:{ #x -> 1 . #y -> 2 . #z -> 3 } )
]

{ #category : 'tests' }
FungCellTest >> testCreateWithLocation [
	"tests custom initializer with location"
	| fv |
	fv := FungCell point3d: ( Point3d x: 1 y: 2 z: 3 ) .
	self deny: fv equals: nil
]

{ #category : 'tests' }
FungCellTest >> testCreateWithXYZ [
	"tests custom initializer with location"
	| fv |
	fv := FungCell x:1 y:2 z:3 .
	self deny: fv equals: nil
]
