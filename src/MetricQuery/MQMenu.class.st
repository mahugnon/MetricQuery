Class {
	#name : #MQMenu,
	#superclass : #ComposablePresenter,
	#instVars : [
		'queryType',
		'queryPatternLabel',
		'querPatten',
		'properties',
		'navigations',
		'queryField'
	],
	#category : #'MetricQuery-Presenter'
}

{ #category : #specs }
MQMenu class >> defaultSpec [
	^ SpecColumnLayout composed
		add: #queryType height: self toolbarHeight;
		newRow: [ :patternRow | 
			patternRow
				add: #queryPatternLabel;
				add: #querPatten ]
			height: self toolbarHeight;
		newRow: [ :navPropRow | 
			navPropRow
				add: #navigations;
				add: #properties ]
			height: self toolbarHeight;
		add: #queryField height: self toolbarHeight;
		yourself
]

{ #category : #specs }
MQMenu class >> runMe [
	<example>
	^ self new openWithSpec
]

{ #category : #api }
MQMenu >> extent [
	^ 500 @ 200
]

{ #category : #initialization }
MQMenu >> initializeWidgets [
	queryType := self newDropList.
	queryPatternLabel := self newLabel.
	queryPatternLabel
		label: 'Query:';
		emphasis: #bold.
	querPatten := self newButton.
	querPatten color: Color white.
	properties := self newDropList.
	navigations := self newDropList.
	queryField := self newTextInput.
	queryField ghostText: 'write query your here'
]

{ #category : #accessing }
MQMenu >> navigations [
	^ navigations
]

{ #category : #accessing }
MQMenu >> properties [
	^ properties
]

{ #category : #accessing }
MQMenu >> querPatten [
	^ querPatten
]

{ #category : #initialization }
MQMenu >> queryField [
	^ queryField
]

{ #category : #accessing }
MQMenu >> queryPatternLabel [
	^ queryPatternLabel
]

{ #category : #accessing }
MQMenu >> queryType [
	^ queryType
]
