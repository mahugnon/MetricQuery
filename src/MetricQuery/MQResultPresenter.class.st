Class {
	#name : #MQResultPresenter,
	#superclass : #ComposablePresenter,
	#instVars : [
		'table',
		'name'
	],
	#category : #'MetricQuery-Presenter'
}

{ #category : #specs }
MQResultPresenter class >> defaultSpec [
	^ SpecColumnLayout composed
		add: #name height: self toolbarHeight;
		add: #table;
		yourself
]

{ #category : #specs }
MQResultPresenter class >> runMe [
	<example>
	self new openWithSpec
]

{ #category : #initialization }
MQResultPresenter >> initName [
	name := self newLabel.
	name
		label: 'Query History';
		emphasis: #bold
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
	self initTable.
	self initName
]

{ #category : #'private-example' }
MQResultPresenter >> justeSaveTheExampleCode [
	| r m col1 col2 |
	r := FileLocator vmDirectory.
	m := TreePresenter new.
	"m roots: r allFiles."
	m rootNodeHolder: [ :item | TreeNodePresenter new content: item ].
	col1 := TreeColumnPresenter new
		displayBlock: [ :node | node content basename ];
		headerLabel: 'Name'.
	col2 := TreeColumnPresenter new
		displayBlock: [ :node | node content creationTime ];
		headerLabel: 'Time'.
	m
		columns:
			{col1.
			col2}.
	m openWithSpec
]

{ #category : #initialization }
MQResultPresenter >> name [
	^ name
]

{ #category : #accessing }
MQResultPresenter >> table [
	^ table
]
