Class {
	#name : #MQMainPresenter,
	#superclass : #ComposablePresenter,
	#instVars : [
		'menu',
		'resultTable'
	],
	#category : #'MetricQuery-Presenter'
}

{ #category : #specs }
MQMainPresenter class >> defaultSpec [
	^ SpecColumnLayout composed
		add: #menu;
		add: #resultTable;
		yourself
]

{ #category : #specs }
MQMainPresenter class >> runMe [
	<example>
	self new openWithSpec
]

{ #category : #'initialization - private' }
MQMainPresenter >> initMenu [
	menu := self instantiate: MQMenu
]

{ #category : #'initialization - private' }
MQMainPresenter >> initResultTable [
	resultTable := self instantiate: MQResultPresenter
]

{ #category : #initialization }
MQMainPresenter >> initializeWidgets [
	self initMenu.
	self initResultTable
]

{ #category : #accessing }
MQMainPresenter >> menu [
	^ menu
]

{ #category : #accessing }
MQMainPresenter >> resultTable [
	^ resultTable
]
