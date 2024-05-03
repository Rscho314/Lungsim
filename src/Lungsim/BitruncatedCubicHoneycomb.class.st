"
I represent the 3D space in which the lung simulation happens, as a singleton.

My instances are created by the message `new`.

I define messages dealing with either observation or transformation in 3D space.
"
Class {
	#name : 'BitruncatedCubicHoneycomb',
	#superclass : 'Honeycomb',
	#instVars : [
		'cells'
	],
	#category : 'Lungsim',
	#package : 'Lungsim'
}

{ #category : 'initialization' }
BitruncatedCubicHoneycomb class >> cells: aSetofCells [
	"initialize with a cell array"

	^self basicNew
		initializeWithSetofCells: aSetofCells 
	yourself.
]

{ #category : 'initialization' }
BitruncatedCubicHoneycomb class >> initializeWithDefaults [
	
	"initialize a default honeycomb"
"all this should simply be a 3d array initialized with bounds. Cells should be added at the coordinates as needed later. Keep the existing code for later."
	| cells defaultCellCount edgeCells cellCount newCells |
self flag: #TODO	.	
	defaultCellCount := 48000 . "480000000"
	cells := Set new .
	cells add: ( FungCell point3d: ( Point3d origin ) ) .
	edgeCells := cells deepCopy .
	newCells := Set new .
	cellCount := cells size .
	( cellCount < defaultCellCount )
		whileTrue: [
						edgeCells do:
							[
								:edgeCell | 
									newCells addAll: ( self neighborCells: edgeCell )
							] .
						edgeCells := newCells difference: edgeCells .
						cells addAll: edgeCells .
						newCells removeAll ] .
	^self basicNew
		initializeWithSetofCells: cells
	yourself.
		


]

{ #category : 'helper' }
BitruncatedCubicHoneycomb class >> neighborCells: aCell [

	"compute the origin of neighbour cells for a given honeycomb location"

	| origin neighbors translations |

	origin := aCell xyz .
	self flag: #TODO .
	translations := { Point3d x: 1 y: 2 z: 3 .
						 	Point3d x: 1 y: 2 z: 3
						 } .
	neighbors := translations collect: [:translation | translation translation: origin ] as: Set .
	^neighbors 
]

{ #category : 'private' }
BitruncatedCubicHoneycomb >> initializeWithSetofCells: aSetofCells [

	cells := aSetofCells
]
