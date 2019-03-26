Class {
	#name : #MQMainPresenter,
	#superclass : #ComposablePresenter,
	#instVars : [
		'menu',
		'resultTable',
		'modelPresenter'
	],
	#category : #'MetricQuery-Presenter'
}

{ #category : #specs }
MQMainPresenter class >> defaultSpec [
	^ SpecColumnLayout composed
		newRow: [ :r | r add: #menu ] height: 120;
		newRow: [ :r | 
			r
				add: #modelPresenter;
				add: #resultTable ];
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

{ #category : #initialization }
MQMainPresenter >> initModelPresenter [
	modelPresenter := self instantiate: MQModelPresenter
]

{ #category : #'initialization - private' }
MQMainPresenter >> initResultTable [
	resultTable := self instantiate: MQResultPresenter
]

{ #category : #initialization }
MQMainPresenter >> initializeWidgets [
	self initMenu.
	self initResultTable.
	self initModelPresenter
]

{ #category : #accessing }
MQMainPresenter >> menu [
	^ menu
]

{ #category : #initialization }
MQMainPresenter >> modelPresenter [
	^ modelPresenter
]

{ #category : #accessing }
MQMainPresenter >> resultTable [
	^ resultTable
]
