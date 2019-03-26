Class {
	#name : #MQPropertyQuery,
	#superclass : #MQAbstractQuery,
	#category : #'MetricQuery-Query'
}

{ #category : #accessing }
MQPropertyQuery >> help [
^'I am a select query on a property'
]

{ #category : #accessing }
MQPropertyQuery >> pattern [
	^ '<property-boolean><property><comparison><value>' , Character cr
		,
			'
ex: isStub.' , Character cr
		,
			'
     or  numberOfLinesOfCode > 100' , Character cr
		,
			' 
      or name endsWith: ''Test'''
]
