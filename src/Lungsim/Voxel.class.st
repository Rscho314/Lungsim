"
I represent a ""cell"" in the 3D grid space.

I am an abstract class never to be instantiated.

I define constructors dealing with location in 3D grid space.
"
Class {
	#name : 'Voxel',
	#superclass : 'Object',
	#instVars : [
		'x',
		'y',
		'z'
	],
	#category : 'Lungsim',
	#package : 'Lungsim'
}

{ #category : 'testing' }
Voxel class >> isAbstract [

	^ self == Voxel
]

{ #category : 'accessing' }
Voxel class >> location:aCollection [
	"support custom initializer"
^self basicNew
initializeWithLocation: aCollection 
yourself.
]

{ #category : 'instance creation' }
Voxel class >> new [ 
self shouldNotImplement 
]

{ #category : 'accessing' }
Voxel class >> x: aNonNegativeIntegerx y: aNonNegativeIntegery z: aNonNegativeIntegerz [
	"class helper for custom initializer"
	"self flag: #hack inefficient since it takes 3 ints, makes a collection then assigns 3 ints" .
^self basicNew 
	initializeWithLocation: { aNonNegativeIntegerx . aNonNegativeIntegery . aNonNegativeIntegerz }
yourself.
]

{ #category : 'initialization' }
Voxel >> initialize [ 
"default initializer"
x := 0 .
y := 0 .
z := 0 .
]

{ #category : 'initialization' }
Voxel >> initializeWithLocation: aCollection [
"Grid location is immutable, so this must be an initializer"
self initialize .
x := aCollection at: 1 .
y := aCollection at: 2 .
z := aCollection at: 3 .
^self
]
