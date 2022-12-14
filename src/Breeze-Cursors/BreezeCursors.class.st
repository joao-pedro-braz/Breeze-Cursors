Class {
	#name : #BreezeCursors,
	#superclass : #Object,
	#category : #'Breeze-Cursors'
}

{ #category : #'class initialization' }
BreezeCursors class >> initialize [

	self setNormalCursor.
	self setEditableCursor.
	self setResizeVerticalCursor.
	self setResizeHorizontalCursor.
	self setResizeCornerLeftCursor.
	self setResizeCornerRightCursor
]

{ #category : #'class initialization' }
BreezeCursors class >> reset [

	"I reset the changed cursors to the default state"

	Cursor initialize
]

{ #category : #initialization }
BreezeCursors class >> setEditableCursor [

	"I set the editable cursor"

	| form cursor mask |
	form := Form
		        extent: 32 @ 32
		        depth: 32
		        fromArray:
			        #( 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 3206488613 4265493061
			           3848168294 4265493061 3206488613 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1330269261 4280954418
			           1330269261 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 4280954418 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4280954418 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4280954418
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 4280954418 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 4280954418 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4280954418
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 4280954418 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 4280954418 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4280954418
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 4280954418 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 4280954418 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4280954418
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 4280954418 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 908799020 4280954418 908799020
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           4280954418 4265493062 3847773536 4265492805 4280954418
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 )
		        offset: 0 @ 0.
	cursor := CursorWithMask extent: form extent depth: 32.
	cursor offset: -16 @ -16.
	cursor bits: form preMultiplyAlpha bits.
	mask := Form extent: form extent.
	mask
		copy: (0 @ 0 extent: form extent)
		from: 0 @ 0
		in: form
		rule: Form under.
	cursor setMaskForm: mask.
	cursor bits asArray.
	cursor maskForm bits asArray.
	Cursor classPool at: #OverEditableText put: cursor
]

{ #category : #initialization }
BreezeCursors class >> setNormalCursor [

	"I set the default (normal) cursor"

	| form cursor mask |
	form := Form
		        extent: 32 @ 32
		        depth: 32
		        fromArray:
			        #( 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3206488613
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 4280954418 3206488613 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4280954418 4280954418
			           3206488613 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 4280954418 4280954418 4280954418 3206488613
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           4280954418 4280954418 4280954418 4280954418 3206488613
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4280954418
			           4280954418 4280954418 4280954418 4280954418 3206488613
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4280954418
			           4280954418 4280954418 4280954418 4280954418 4280954418
			           3206488613 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 4280954418 4280954418 4280954418 4280954418
			           4280954418 4280954418 4280954418 3206488613 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4280954418
			           4280954418 4280954418 4280954418 4280954418 4280954418
			           4280954418 4280954418 3206488613 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 4280954418 4280954418 4280954418
			           4280954418 4280954418 4280954418 4280954418 4280954418
			           4280954418 3206488613 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 4280954418 4280954418 4280954418 4280954418
			           4280954418 4280954418 4280954418 4280954418 4280954418
			           4280954418 2132088601 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 4280954418 4280954418 4280954418 4280954418
			           4280954418 4280954418 4280954418 4280954418 4280954418
			           3206488613 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4280954418
			           4280954418 4280954418 4280954418 4280954418 4280954418
			           4280954418 4280954418 3206488613 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 4280954418 4280954418 4280954418
			           4280954418 4280954418 4280954418 4280954418 4280954418
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4280954418
			           4280954418 4280954418 4280954418 4280954418 4280954418
			           4280954418 4280954418 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 1057622796 4280954418 4280954418
			           4280954418 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 1057622796 4280954418 4280954418 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1057622796
			           3206488613 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 )
		        offset: 0 @ 0.
	cursor := CursorWithMask extent: form extent depth: 32.
	cursor offset: -4 @ -4.
	cursor bits: form preMultiplyAlpha bits.
	mask := Form extent: form extent.
	mask
		copy: (0 @ 0 extent: form extent)
		from: 0 @ 0
		in: form
		rule: Form under.
	cursor setMaskForm: mask.
	cursor bits asArray.
	cursor maskForm bits asArray.
	Cursor classPool at: #NormalCursor put: cursor
]

{ #category : #initialization }
BreezeCursors class >> setResizeCornerLeftCursor [

	"I set the resize corner left cursor"

	| form cursor mask |
	form := Form
		        extent: 32 @ 32
		        depth: 32
		        fromArray:
			        #( 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 4278190080 4278190080 4278190080 4278190080
			           4278190080 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 4278190080 4278190080 4278190080 4278190080
			           4278190080 4278190080 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 4278190080 4278190080 4278190080
			           4278190080 4278190080 4278190080 4278190080 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4278190080
			           4278190080 4278190080 4278190080 4278190080 4278190080
			           4278190080 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 4278190080 4278190080 4278190080 4278190080
			           4278190080 4278190080 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 4278190080 4278190080 4278190080
			           4278190080 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 4278190080 4278190080 0 0 0 0 4278190080
			           4278190080 4278190080 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 4278190080 4278190080 4278190080
			           4278190080 4278190080 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 4278190080 4278190080 4278190080
			           4278190080 4278190080 4278190080 4278190080 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4278190080
			           4278190080 4278190080 4278190080 4278190080 4278190080
			           4278190080 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 4278190080 4278190080 4278190080 4278190080
			           4278190080 4278190080 4278190080 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 4278190080 4278190080
			           4278190080 4278190080 4278190080 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4278190080 4278190080
			           4278190080 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 4278190080 4278190080
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 4278190080 4278190080 4278190080 4278190080 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4278190080
			           4278190080 4278190080 4278190080 4278190080 4278190080
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4278190080
			           4278190080 4278190080 4278190080 4278190080 4278190080
			           4278190080 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 4278190080 4278190080 4278190080 4278190080
			           4278190080 4278190080 4278190080 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 4278190080 4278190080
			           4278190080 4278190080 4278190080 4278190080 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4278190080
			           4278190080 4278190080 4278190080 4278190080 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 )
		        offset: 0 @ 0.
	cursor := CursorWithMask extent: form extent depth: 32.
	cursor offset: -16 @ -16.
	cursor bits: form preMultiplyAlpha bits.
	mask := Form extent: form extent.
	mask := mask
		        copy: (0 @ 0 extent: form extent)
		        from: 0 @ 0
		        in: form
		        rule: Form under.
	cursor setMaskForm: mask.
	cursor bits asArray.
	cursor maskForm bits asArray.
	Cursor classPool at: #ResizeTopLeftCursor put: cursor
]

{ #category : #initialization }
BreezeCursors class >> setResizeCornerRightCursor [

	"I set the resize corner vertical cursor"

	| form cursor mask |
	form := Form
		        extent: 32 @ 32
		        depth: 32
		        fromArray:
			        #( 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4278190080 4278190080
			           4278190080 4278190080 4278190080 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 4278190080 4278190080
			           4278190080 4278190080 4278190080 4278190080 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4278190080
			           4278190080 4278190080 4278190080 4278190080 4278190080
			           4278190080 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 4278190080 4278190080 4278190080 4278190080
			           4278190080 4278190080 4278190080 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 4278190080 4278190080
			           4278190080 4278190080 4278190080 4278190080 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4278190080
			           4278190080 4278190080 4278190080 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4278190080 4278190080
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4278190080
			           4278190080 4278190080 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 4278190080 4278190080 4278190080
			           4278190080 4278190080 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 4278190080 4278190080 4278190080
			           4278190080 4278190080 4278190080 4278190080 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4278190080
			           4278190080 4278190080 4278190080 4278190080 4278190080
			           4278190080 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 4278190080 4278190080 4278190080 4278190080
			           4278190080 4278190080 4278190080 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 4278190080 4278190080
			           4278190080 4278190080 4278190080 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 4278190080 4278190080 0 0 0 0 4278190080
			           4278190080 4278190080 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 4278190080 4278190080 4278190080 4278190080
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4278190080
			           4278190080 4278190080 4278190080 4278190080 4278190080
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4278190080
			           4278190080 4278190080 4278190080 4278190080 4278190080
			           4278190080 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 4278190080 4278190080 4278190080 4278190080
			           4278190080 4278190080 4278190080 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 4278190080 4278190080
			           4278190080 4278190080 4278190080 4278190080 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4278190080
			           4278190080 4278190080 4278190080 4278190080 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 )
		        offset: 0 @ 0.
	cursor := CursorWithMask extent: form extent depth: 32.
	cursor offset: -16 @ -16.
	cursor bits: form preMultiplyAlpha bits.
	mask := Form extent: form extent.
	mask := mask
		        copy: (0 @ 0 extent: form extent)
		        from: 0 @ 0
		        in: form
		        rule: Form under.
	cursor setMaskForm: mask.
	cursor bits asArray.
	cursor maskForm bits asArray.
	Cursor classPool at: #ResizeTopRightCursor put: cursor
]

{ #category : #initialization }
BreezeCursors class >> setResizeHorizontalCursor [

	"I set the resize horizontal cursor"

	| form cursor mask |
	form := Form
		        extent: 32 @ 32
		        depth: 32
		        fromArray:
			        #( 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 4278190080 4278190080 0 0 0 0 0 4278190080
			           4278190080 4278190080 0 0 0 0 0 4278190080 4278190080
			           0 0 0 0 0 0 0 0 0 0 0 0 0 4278190080 4278190080
			           4278190080 4278190080 4278190080 0 0 0 4278190080
			           4278190080 4278190080 4278190080 4278190080 0 0 0 4278190080
			           4278190080 4278190080 4278190080 4278190080 0 0 0 0 0 0
			           0 0 0 4278190080 4278190080 4278190080 4278190080
			           4278190080 4278190080 4278190080 0 0 4278190080
			           4278190080 4278190080 4278190080 4278190080 4278190080
			           4278190080 0 0 4278190080 4278190080 4278190080
			           4278190080 4278190080 4278190080 4278190080 0 0 0 0 0 0
			           4278190080 4278190080 4278190080 4278190080 4278190080
			           4278190080 4278190080 4278190080 0 0 4278190080
			           4278190080 4278190080 4278190080 4278190080 4278190080
			           4278190080 0 0 4278190080 4278190080 4278190080
			           4278190080 4278190080 4278190080 4278190080 4278190080
			           0 0 0 0 0 0 4278190080 4278190080 4278190080 4278190080
			           4278190080 4278190080 4278190080 0 0 4278190080
			           4278190080 4278190080 4278190080 4278190080 4278190080
			           4278190080 0 0 4278190080 4278190080 4278190080
			           4278190080 4278190080 4278190080 4278190080 0 0 0 0 0 0
			           0 0 0 4278190080 4278190080 4278190080 4278190080
			           4278190080 0 0 0 4278190080 4278190080 4278190080
			           4278190080 4278190080 0 0 0 4278190080 4278190080
			           4278190080 4278190080 4278190080 0 0 0 0 0 0 0 0 0 0 0 0
			           0 4278190080 4278190080 0 0 0 0 0 4278190080 4278190080
			           4278190080 0 0 0 0 0 4278190080 4278190080 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 )
		        offset: 0 @ 0.
	cursor := CursorWithMask extent: form extent depth: 32.
	cursor offset: -16 @ -16.
	cursor bits: form preMultiplyAlpha bits.
	mask := Form extent: form extent.
	mask := mask
		        copy: (0 @ 0 extent: form extent)
		        from: 0 @ 0
		        in: form
		        rule: Form under.
	cursor setMaskForm: mask.
	cursor bits asArray.
	cursor maskForm bits asArray.
	Cursor classPool at: #ResizeLeftCursor put: cursor
]

{ #category : #initialization }
BreezeCursors class >> setResizeVerticalCursor [

	"I set the resize vertical (top) cursor"

	| form cursor mask |
	form := Form
		        extent: 32 @ 32
		        depth: 32
		        fromArray:
			        #( 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4278190080
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 4278190080 4278190080 4278190080 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4278190080
			           4278190080 4278190080 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 4278190080 4278190080 4278190080
			           4278190080 4278190080 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 4278190080 4278190080 4278190080
			           4278190080 4278190080 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 4278190080 4278190080 4278190080
			           4278190080 4278190080 4278190080 4278190080 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4278190080
			           4278190080 4278190080 4278190080 4278190080 4278190080
			           4278190080 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 4278190080 4278190080 4278190080 4278190080
			           4278190080 0 0 0 0 16777215 16777215 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4278190080
			           4278190080 4278190080 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 4278190080 4278190080 4278190080
			           4278190080 4278190080 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 4278190080 4278190080 4278190080
			           4278190080 4278190080 4278190080 4278190080 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4278190080
			           4278190080 4278190080 4278190080 4278190080 4278190080
			           4278190080 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 4278190080 4278190080 4278190080 4278190080
			           4278190080 4278190080 4278190080 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 4278190080 4278190080
			           4278190080 4278190080 4278190080 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4278190080 4278190080
			           4278190080 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 4278190080 4278190080
			           4278190080 4278190080 4278190080 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 4278190080 4278190080
			           4278190080 4278190080 4278190080 4278190080 4278190080
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4278190080
			           4278190080 4278190080 4278190080 4278190080 4278190080
			           4278190080 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 4278190080 4278190080 4278190080 4278190080
			           4278190080 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 4278190080 4278190080 4278190080 4278190080
			           4278190080 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 4278190080 4278190080 4278190080 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4278190080
			           4278190080 4278190080 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 4278190080 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			           0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 )
		        offset: 0 @ 0.
	cursor := CursorWithMask extent: form extent depth: 32.
	cursor offset: -16 @ -16.
	cursor bits: form preMultiplyAlpha bits.
	mask := Form extent: form extent.
	mask := mask
		        copy: (0 @ 0 extent: form extent)
		        from: 0 @ 0
		        in: form
		        rule: Form under.
	cursor setMaskForm: mask.
	cursor bits asArray.
	cursor maskForm bits asArray.
	Cursor classPool at: #ResizeTopCursor put: cursor
]
