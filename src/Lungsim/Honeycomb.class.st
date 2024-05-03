"
I represent the 3D space in which the lung simulation happens, as a singleton.

My instances are created by the message `new`.

I define messages dealing with either observation or transformation in 3D space.
"
Class {
	#name : 'Honeycomb',
	#superclass : 'Object',
	#category : 'Lungsim',
	#package : 'Lungsim'
}

{ #category : 'initialization' }
Honeycomb class >> initializeWithDefaults [

	self subclassResponsibility 
]

{ #category : 'testing' }
Honeycomb class >> isAbstract [

	^ self == Honeycomb
]

{ #category : 'instance creation' }
Honeycomb class >> new [ 

	self shouldNotImplement 
]

{ #category : 'private' }
Honeycomb >> initializeWithSetofCells: aSetofCells [

	self subclassResponsibility 
]
