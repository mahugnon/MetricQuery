Class {
	#name : #MQContext,
	#superclass : #Object,
	#instVars : [
		'model',
		'focus',
		'queryResults'
	],
	#category : #'MetricQuery-Context'
}

{ #category : #accessing }
MQContext >> focus [
	^ focus
]

{ #category : #accessing }
MQContext >> focus: anObject [
	focus := anObject
]

{ #category : #initialization }
MQContext >> initialize [
	super initialize.
	queryResults := Array new
]

{ #category : #accessing }
MQContext >> model [
	^ model
]

{ #category : #accessing }
MQContext >> model: anObject [
	model := anObject
]

{ #category : #accessing }
MQContext >> queryResults [
	^ queryResults
]
