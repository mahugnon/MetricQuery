Class {
	#name : #MQNavigationWithOperatorQuery,
	#superclass : #MQAbstractQuery,
	#category : #'MetricQuery-Query'
}

{ #category : #accessing }
MQNavigationWithOperatorQuery >> help [
^'I am a navigation Query' 
]

{ #category : #accessing }
MQNavigationWithOperatorQuery >> pattern [
	^ '<in/out-going><association><operator><value>' ,
		 Character cr,
		'ex: incoming invocation > 20' , 
		Character cr,
		' outgoing access includes: anAttribute'
]
