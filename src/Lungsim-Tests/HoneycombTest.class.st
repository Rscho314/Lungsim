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
	grid := BitruncatedCubicHoneycomb initializeWithDefaults .
	self deny: grid equals: nil
]

{ #category : 'tests' }
HoneycombTest >> testCreateWithSetofCells [
	"testing the creation of the grid space 3D, with 3D voxel array"
	| grid cells |
	cells := Set new .
	cells add: ( FungCell point3d: Point3d origin ) .
	grid := BitruncatedCubicHoneycomb cells: cells .
	self deny: grid equals: nil .
]
