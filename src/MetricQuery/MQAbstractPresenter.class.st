Class {
	#name : #MQAbstractPresenter,
	#superclass : #ComposablePresenter,
	#instVars : [
		'context'
	],
	#category : #'MetricQuery-Presenter'
}

{ #category : #accessing }
MQAbstractPresenter >> context [
	^ context ifNil: [ MQContext new ]
]

{ #category : #accessing }
MQAbstractPresenter >> context: aContext [
	context := aContext
]
