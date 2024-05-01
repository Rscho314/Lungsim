"
I represent a point in 3d space.

My instances can be constructed with the `x:y:z:` message. I am designed to be immutable, with an absence of coordinate setters after initialization.

My messages deal with coordinates and their transformations.
"
Class {
	#name : 'Point3d',
	#superclass : 'Object',
	#instVars : [
		'x',
		'y',
		'z'
	],
	#category : 'Lungsim',
	#package : 'Lungsim'
}

{ #category : 'instance creation' }
Point3d class >> new [ 
self shouldNotImplement 
]

{ #category : 'instance creation' }
Point3d class >> x: aNumberx y: aNumbery z: aNumberz [
	"class helper for custom initializer"
	"self flag: #hack inefficient since it takes 3 ints, makes a collection then assigns 3 ints" .
^self basicNew 
	initializex: aNumberx initializey: aNumbery initializez: aNumberz 
yourself.
]

{ #category : 'accessing' }
Point3d >> euclideanCoordinates [ 
"returns coordinates as a dictionary"
^( Dictionary newFrom:{ #x -> x . #y -> y . #z -> z } )
]

{ #category : 'private' }
Point3d >> initializex: aNumberx initializey: aNumbery initializez: aNumberz [
"private initializer"
	x := aNumberx .
	y := aNumbery .
	z := aNumberz .
^self
]

{ #category : 'accessing' }
Point3d >> x [

	^ x
]

{ #category : 'accessing' }
Point3d >> y [

	^ y
]

{ #category : 'accessing' }
Point3d >> z [

	^ z
]
