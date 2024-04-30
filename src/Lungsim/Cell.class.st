"
I represent a ""cell"" in the 3D grid space.

I am an abstract class never to be instantiated.

I define constructors dealing with location in 3D grid space.
"
Class {
	#name : 'Cell',
	#superclass : 'Object',
	#instVars : [
		'x',
		'y',
		'z',
		'ø'
	],
	#category : 'Lungsim',
	#package : 'Lungsim'
}

{ #category : 'testing' }
Cell class >> isAbstract [

	^ self == Cell
]

{ #category : 'instance creation' }
Cell class >> new [ 
self shouldNotImplement 
]

{ #category : 'accessing' }
Cell >> location [
	"access voxel location in grid space, as a collection"
^{ x . y . z }
]
