Class {
	#name : #MQResultPresenter,
	#superclass : #ComposablePresenter,
	#instVars : [
		'table'
	],
	#category : #'MetricQuery-Presenter'
}

{ #category : #specs }
MQResultPresenter class >> defaultSpec [
	^ SpecLayout composed
		add: #table;
		yourself
]

{ #category : #specs }
MQResultPresenter class >> runMe [
	<example>
	self new openWithSpec
]

{ #category : #initialization }
MQResultPresenter >> initTable [
| queryCol queryResultCol |
table:=self newTree .
table rootNodeHolder: [ :item|
	TreeNodePresenter new 
	content: item ].
queryCol:=TreeColumnPresenter new 
displayBlock: [ :node| node content query ];
headerLabel:'Query'.
queryResultCol:=TreeColumnPresenter new 
displayBlock: [ :node| node content result ];
headerLabel:'Query Result'.
table columns: { queryCol.queryResultCol  }


]

{ #category : #initialization }
MQResultPresenter >> initializeWidgets [ 
self initTable .
]

{ #category : #accessing }
MQResultPresenter >> table [
	^ table
]
