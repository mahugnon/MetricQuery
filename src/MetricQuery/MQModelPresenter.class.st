Class {
	#name : #MQModelPresenter,
	#superclass : #ComposablePresenter,
	#instVars : [
		'modelPresenter',
		'name'
	],
	#category : #'MetricQuery-Presenter'
}

{ #category : #specs }
MQModelPresenter class >> defaultSpec [
	^ SpecColumnLayout composed
		add: #name height: self toolbarHeight;
		add: #modelPresenter;
		yourself
]

{ #category : #initialization }
MQModelPresenter >> initModelPresenter [
	modelPresenter := self instantiate: FastTablePresenter.
	modelPresenter handlesDoubleClick: true
]

{ #category : #initialization }
MQModelPresenter >> initName [
name:=self newLabel .
name label: 'Current Model';
emphasis: #bold.
]

{ #category : #initialization }
MQModelPresenter >> initializeWidgets [
	self initModelPresenter.
	self initName
]

{ #category : #accessing }
MQModelPresenter >> modelPresenter [
	^ modelPresenter
]

{ #category : #accessing }
MQModelPresenter >> name [
	^ name
]
