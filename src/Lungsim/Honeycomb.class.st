"
I represent the 3D space in which the lung simulation happens, as a singleton.

My instances are created by the message `new`.

I define messages dealing with either observation or transformation in 3D space.
"
Class {
	#name : 'Honeycomb',
	#superclass : 'Object',
	#classVars : [
		'DefaultCellCount'
	],
	#classInstVars : [
		'cells'
	],
	#category : 'Lungsim',
	#package : 'Lungsim'
}

{ #category : 'class initialization' }
Honeycomb class >> initializeWithDefaults [ 
	"initialize a default honeycomb"
| cellCount originCell recentCells |
DefaultCellCount := 480000000 .
originCell := #(0 0 0) .
cells := Set newFromArray: { originCell } .
recentCells := cells deepCopy .
cellCount := cells size .
self flag: #TODO .
(cellCount < DefaultCellCount) whileTrue: [ recentCells do: [ :cell |  cells add: 1 ] ]
]

{ #category : 'helper' }
Honeycomb class >> neighbourCells: anArray [
	"compute the center of neibour cells for a given honeycomb location"
self flag: #TODO 
]
