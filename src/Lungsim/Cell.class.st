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

{ #category : 'initialization' }
Cell class >> initializeWithDefaults [ 
	"default initializer"
^self basicNew
	initializeWithPoint3d: ( Point3d x: 0 y: 0 z: 0 )
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
Cell class >> point3d: aPoint3d [
	"support custom initializer"
^self basicNew
initializeWithPoint3d: aPoint3d
yourself.
]

{ #category : 'instance creation' }
Cell class >> x: aNonNegativeIntegerx y: aNonNegativeIntegery z: aNonNegativeIntegerz [
	
	"class helper for custom initializer"

	^self basicNew 
		initializeWithPoint3d: ( Point3d x: aNonNegativeIntegerx y: aNonNegativeIntegery z: aNonNegativeIntegerz )
	yourself.
]

{ #category : 'private' }
Cell >> initializeWithPoint3d: aPoint3d [
"Grid location is immutable, so this must be an initializer"
diameter := 1 .
location := aPoint3d .
^self
]

{ #category : 'accessing' }
Cell >> xyz [
	"access voxel location in grid space, as a collection"
^location 
]
