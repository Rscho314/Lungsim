"
A Space3DTest is a test class for testing the behavior of Space3D
"
Class {
	#name : 'HoneycombTest',
	#superclass : 'TestCase',
	#category : 'Lungsim-Tests',
	#package : 'Lungsim-Tests'
}

{ #category : 'tests' }
HoneycombTest >> testCreateWithDefaults [
	"testing the creation of the grid space 3D, with 3D voxel array"
	| grid |
	grid := Honeycomb initializeWithDefaults .
	self deny: grid equals: nil
]
