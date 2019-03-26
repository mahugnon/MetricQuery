Class {
	#name : #MQAbstractQuery,
	#superclass : #Object,
	#category : #'MetricQuery-Query'
}

{ #category : #accessing }
MQAbstractQuery >> help [
^self subclassResponsibility 
]

{ #category : #accessing }
MQAbstractQuery >> pattern [
	^ self subclassResponsibility
]
