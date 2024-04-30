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
Cell class >> location:aCollection [
	"support custom initializer"
^self basicNew
initializeWithLocation: aCollection 
yourself.
]

{ #category : 'instance creation' }
Cell class >> new [ 
self shouldNotImplement 
]

{ #category : 'instance creation' }
Cell class >> x: aNonNegativeIntegerx y: aNonNegativeIntegery z: aNonNegativeIntegerz [
	"class helper for custom initializer"
	"self flag: #hack inefficient since it takes 3 ints, makes a collection then assigns 3 ints" .
^self basicNew 
	initializeWithLocation: { aNonNegativeIntegerx . aNonNegativeIntegery . aNonNegativeIntegerz }
yourself.
]

{ #category : 'initialization' }
Cell >> initializeWithDefaults [ 
"default initializer"
x := 0 .
y := 0 .
z := 0 .
ø := 1 . "diameter: 0.2 mm = 1 cell of grid space. Base unit is 10th of millimeter"
^self
]

{ #category : 'initialization' }
Cell >> initializeWithLocation: aCollection [
"Grid location is immutable, so this must be an initializer"
ø := 1 .
x := aCollection at: 1 .
y := aCollection at: 2 .
z := aCollection at: 3 .
^self
]

{ #category : 'accessing' }
Cell >> location [
	"access voxel location in grid space, as a collection"
^{ x . y . z }
]
