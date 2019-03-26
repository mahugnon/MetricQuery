Class {
	#name : #MQModelPresenter,
	#superclass : #MQAbstractPresenter,
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

{ #category : #accessing }
MQModelPresenter >> context: aContext [
	super context: aContext.
	self refresh
]

{ #category : #initialization }
MQModelPresenter >> focus: item [
	^ self context focus: item
]

{ #category : #initialization }
MQModelPresenter >> initModelPresenter [
	modelPresenter := self instantiate: FastTablePresenter
]

{ #category : #initialization }
MQModelPresenter >> initName [
name:=self newLabel .
name label: 'Current Model';
emphasis: #bold.
]

{ #category : #initialization }
MQModelPresenter >> initializePresenter [
	modelPresenter whenSelectedItemChanged: [ :item | self focus: item ]
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

{ #category : #refreshing }
MQModelPresenter >> refresh [
	modelPresenter items: context model
]
