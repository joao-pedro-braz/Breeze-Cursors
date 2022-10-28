Class {
	#name : #BaselineOfBreezeCursors,
	#superclass : #BaselineOf,
	#category : #BaselineOfBreezeCursors
}

{ #category : #baselines }
BaselineOfBreezeCursors >> baseline: spec [

	<baseline>
	spec for: #common do: [ "Packages" spec package: #'Breeze-Cursors' ]
]
