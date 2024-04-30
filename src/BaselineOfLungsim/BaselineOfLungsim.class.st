"
I represent the baseline of a lung simulation.

I deal with dependencies and initial state.
"
Class {
	#name : 'BaselineOfLungsim',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfLungsim',
	#package : 'BaselineOfLungsim'
}

{ #category : 'baselines' }
BaselineOfLungsim >> baseline: spec [ 
	<baseline>
	spec for: #common do: [
        spec package: 'Lungsim' ]
]
