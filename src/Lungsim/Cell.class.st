"
I represent a ""cell"" in the 3D grid space.

I am an abstract class never to be instantiated.

I define constructors dealing with location in 3D grid space.
"
Class {
	#name : 'Cell',
	#superclass : 'Object',
	#instVars : [
		'location',
		'diameter'
	],
	#category : 'Lungsim',
	#package : 'Lungsim'
}

{ #category : 'instance creation' }
Cell class >> euclideanCoordinates: aPoint3d [
	"support custom initializer"
^self basicNew
initializeWithEuclideanCoordinates: aPoint3d
yourself.
]

{ #category : 'testing' }
Cell class >> isAbstract [

	^ self == Cell
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
	initializeWithEuclideanCoordinates: ( Point3d x: aNonNegativeIntegerx y: aNonNegativeIntegery z: aNonNegativeIntegerz )
yourself.
]

{ #category : 'accessing' }
Cell >> euclideanCoordinates [
	"access voxel location in grid space, as a collection"
^location euclideanCoordinates 
]

{ #category : 'initialization' }
Cell >> initializeWithDefaults [ 
"default initializer"
location := Point3d x: 0 y: 0 z: 0 .
diameter := 1 . "diameter: 0.2 mm = 1 cell of grid space. Base unit is 10th of millimeter"
^self
]

{ #category : 'private' }
Cell >> initializeWithEuclideanCoordinates: aPoint3d [
"Grid location is immutable, so this must be an initializer"
diameter := 1 .
location := aPoint3d .
^self
]
