)
íÂ
.
Abs
x"T
y"T"
Ttype:

2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.9.12v2.9.0-18-gd8ce9f9c3018ú£%
h
StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
StateVar
a
StateVar/Read/ReadVariableOpReadVariableOpStateVar*
_output_shapes
:*
dtype0	
l

StateVar_1VarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
StateVar_1
e
StateVar_1/Read/ReadVariableOpReadVariableOp
StateVar_1*
_output_shapes
:*
dtype0	
l

StateVar_2VarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
StateVar_2
e
StateVar_2/Read/ReadVariableOpReadVariableOp
StateVar_2*
_output_shapes
:*
dtype0	
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
l
SGD/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameSGD/momentum
e
 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
_output_shapes
: *
dtype0
v
SGD/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameSGD/learning_rate
o
%SGD/learning_rate/Read/ReadVariableOpReadVariableOpSGD/learning_rate*
_output_shapes
: *
dtype0
f
	SGD/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	SGD/decay
_
SGD/decay/Read/ReadVariableOpReadVariableOp	SGD/decay*
_output_shapes
: *
dtype0
d
SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
SGD/iter
]
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_output_shapes
: *
dtype0	
t
dense_120/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:K*
shared_namedense_120/bias
m
"dense_120/bias/Read/ReadVariableOpReadVariableOpdense_120/bias*
_output_shapes
:K*
dtype0
|
dense_120/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2K*!
shared_namedense_120/kernel
u
$dense_120/kernel/Read/ReadVariableOpReadVariableOpdense_120/kernel*
_output_shapes

:2K*
dtype0
t
dense_119/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namedense_119/bias
m
"dense_119/bias/Read/ReadVariableOpReadVariableOpdense_119/bias*
_output_shapes
:2*
dtype0
}
dense_119/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	À2*!
shared_namedense_119/kernel
v
$dense_119/kernel/Read/ReadVariableOpReadVariableOpdense_119/kernel*
_output_shapes
:	À2*
dtype0
v
conv2d_256/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_256/bias
o
#conv2d_256/bias/Read/ReadVariableOpReadVariableOpconv2d_256/bias*
_output_shapes
:@*
dtype0

conv2d_256/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*"
shared_nameconv2d_256/kernel

%conv2d_256/kernel/Read/ReadVariableOpReadVariableOpconv2d_256/kernel*&
_output_shapes
: @*
dtype0
v
conv2d_255/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_255/bias
o
#conv2d_255/bias/Read/ReadVariableOpReadVariableOpconv2d_255/bias*
_output_shapes
: *
dtype0

conv2d_255/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv2d_255/kernel

%conv2d_255/kernel/Read/ReadVariableOpReadVariableOpconv2d_255/kernel*&
_output_shapes
: *
dtype0
v
conv2d_254/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_254/bias
o
#conv2d_254/bias/Read/ReadVariableOpReadVariableOpconv2d_254/bias*
_output_shapes
:*
dtype0

conv2d_254/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_254/kernel

%conv2d_254/kernel/Read/ReadVariableOpReadVariableOpconv2d_254/kernel*&
_output_shapes
:*
dtype0
v
conv2d_253/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_253/bias
o
#conv2d_253/bias/Read/ReadVariableOpReadVariableOpconv2d_253/bias*
_output_shapes
:*
dtype0

conv2d_253/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_253/kernel

%conv2d_253/kernel/Read/ReadVariableOpReadVariableOpconv2d_253/kernel*&
_output_shapes
:*
dtype0
t
dense_121/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_121/bias
m
"dense_121/bias/Read/ReadVariableOpReadVariableOpdense_121/bias*
_output_shapes
:*
dtype0
|
dense_121/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:K*!
shared_namedense_121/kernel
u
$dense_121/kernel/Read/ReadVariableOpReadVariableOpdense_121/kernel*
_output_shapes

:K*
dtype0

NoOpNoOp
Ýn
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*n
valuenBn Bn
Á
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
* 
Ê
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
layer_with_weights-3
layer-8
layer-9
layer_with_weights-4
layer-10
layer_with_weights-5
layer-11
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses*

!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses* 
¦
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses

-kernel
.bias*
j
/0
01
12
23
34
45
56
67
78
89
910
:11
-12
.13*
j
/0
01
12
23
34
45
56
67
78
89
910
:11
-12
.13*
* 
°
;non_trainable_variables

<layers
=metrics
>layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
@trace_0
Atrace_1
Btrace_2
Ctrace_3* 
6
Dtrace_0
Etrace_1
Ftrace_2
Gtrace_3* 
* 
:
Hiter
	Idecay
Jlearning_rate
Kmomentum*

Lserving_default* 
* 
·
Mlayer-0
Nlayer-1
Olayer-2
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses*
È
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses

/kernel
0bias
 \_jit_compiled_convolution_op*

]	variables
^trainable_variables
_regularization_losses
`	keras_api
a__call__
*b&call_and_return_all_conditional_losses* 
È
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses

1kernel
2bias
 i_jit_compiled_convolution_op*

j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses* 
È
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses

3kernel
4bias
 v_jit_compiled_convolution_op*

w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses* 
Ì
}	variables
~trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

5kernel
6bias
!_jit_compiled_convolution_op*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
¬
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

7kernel
8bias*
¬
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

9kernel
:bias*
Z
/0
01
12
23
34
45
56
67
78
89
910
:11*
Z
/0
01
12
23
34
45
56
67
78
89
910
:11*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses*
:
trace_0
trace_1
trace_2
trace_3* 
:
trace_0
 trace_1
¡trace_2
¢trace_3* 
* 
* 
* 

£non_trainable_variables
¤layers
¥metrics
 ¦layer_regularization_losses
§layer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses* 

¨trace_0
©trace_1* 

ªtrace_0
«trace_1* 

-0
.1*

-0
.1*
* 

¬non_trainable_variables
­layers
®metrics
 ¯layer_regularization_losses
°layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses*

±trace_0* 

²trace_0* 
`Z
VARIABLE_VALUEdense_121/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_121/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv2d_253/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_253/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv2d_254/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_254/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv2d_255/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_255/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv2d_256/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_256/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_119/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_119/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEdense_120/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEdense_120/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
* 
'
0
1
2
3
4*

³0
´1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
KE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUE	SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUESGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUESGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
* 
®
µ	variables
¶trainable_variables
·regularization_losses
¸	keras_api
¹__call__
+º&call_and_return_all_conditional_losses
»_random_generator*
®
¼	variables
½trainable_variables
¾regularization_losses
¿	keras_api
À__call__
+Á&call_and_return_all_conditional_losses
Â_random_generator*
®
Ã	variables
Ätrainable_variables
Åregularization_losses
Æ	keras_api
Ç__call__
+È&call_and_return_all_conditional_losses
É_random_generator*
* 
* 
* 

Ênon_trainable_variables
Ëlayers
Ìmetrics
 Ílayer_regularization_losses
Îlayer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses*
:
Ïtrace_0
Ðtrace_1
Ñtrace_2
Òtrace_3* 
:
Ótrace_0
Ôtrace_1
Õtrace_2
Ötrace_3* 

/0
01*

/0
01*
* 

×non_trainable_variables
Ølayers
Ùmetrics
 Úlayer_regularization_losses
Ûlayer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses*

Ütrace_0* 

Ýtrace_0* 
* 
* 
* 
* 

Þnon_trainable_variables
ßlayers
àmetrics
 álayer_regularization_losses
âlayer_metrics
]	variables
^trainable_variables
_regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses* 

ãtrace_0* 

ätrace_0* 

10
21*

10
21*
* 

ånon_trainable_variables
ælayers
çmetrics
 èlayer_regularization_losses
élayer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses*

êtrace_0* 

ëtrace_0* 
* 
* 
* 
* 

ìnon_trainable_variables
ílayers
îmetrics
 ïlayer_regularization_losses
ðlayer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses* 

ñtrace_0* 

òtrace_0* 

30
41*

30
41*
* 

ónon_trainable_variables
ôlayers
õmetrics
 ölayer_regularization_losses
÷layer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses*

øtrace_0* 

ùtrace_0* 
* 
* 
* 
* 

únon_trainable_variables
ûlayers
ümetrics
 ýlayer_regularization_losses
þlayer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses* 

ÿtrace_0* 

trace_0* 

50
61*

50
61*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
}	variables
~trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

trace_0* 

trace_0* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

trace_0* 

trace_0* 

70
81*

70
81*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

trace_0* 

trace_0* 

90
:1*

90
:1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

trace_0* 

trace_0* 
* 
Z
0
1
2
3
4
5
6
7
8
9
10
11*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
	variables
	keras_api

total

 count*
M
¡	variables
¢	keras_api

£total

¤count
¥
_fn_kwargs*
* 
* 
* 

¦non_trainable_variables
§layers
¨metrics
 ©layer_regularization_losses
ªlayer_metrics
µ	variables
¶trainable_variables
·regularization_losses
¹__call__
+º&call_and_return_all_conditional_losses
'º"call_and_return_conditional_losses* 

«trace_0
¬trace_1* 

­trace_0
®trace_1* 

¯
_generator*
* 
* 
* 

°non_trainable_variables
±layers
²metrics
 ³layer_regularization_losses
´layer_metrics
¼	variables
½trainable_variables
¾regularization_losses
À__call__
+Á&call_and_return_all_conditional_losses
'Á"call_and_return_conditional_losses* 

µtrace_0
¶trace_1* 

·trace_0
¸trace_1* 

¹
_generator*
* 
* 
* 

ºnon_trainable_variables
»layers
¼metrics
 ½layer_regularization_losses
¾layer_metrics
Ã	variables
Ätrainable_variables
Åregularization_losses
Ç__call__
+È&call_and_return_all_conditional_losses
'È"call_and_return_conditional_losses* 

¿trace_0
Àtrace_1* 

Átrace_0
Âtrace_1* 

Ã
_generator*
* 

M0
N1
O2*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

0
 1*

	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

£0
¤1*

¡	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

Ä
_state_var*
* 
* 
* 
* 
* 
* 
* 
* 
* 

Å
_state_var*
* 
* 
* 
* 
* 
* 
* 
* 
* 

Æ
_state_var*

VARIABLE_VALUE
StateVar_2glayer_with_weights-0/layer-1/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE
StateVar_1glayer_with_weights-0/layer-1/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEStateVarglayer_with_weights-0/layer-1/layer-2/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_input_65Placeholder*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK*
dtype0*$
shape:ÿÿÿÿÿÿÿÿÿKK

serving_default_input_66Placeholder*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK*
dtype0*$
shape:ÿÿÿÿÿÿÿÿÿKK
á
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_65serving_default_input_66conv2d_253/kernelconv2d_253/biasconv2d_254/kernelconv2d_254/biasconv2d_255/kernelconv2d_255/biasconv2d_256/kernelconv2d_256/biasdense_119/kerneldense_119/biasdense_120/kerneldense_120/biasdense_121/kerneldense_121/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *.
f)R'
%__inference_signature_wrapper_1012939
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_121/kernel/Read/ReadVariableOp"dense_121/bias/Read/ReadVariableOp%conv2d_253/kernel/Read/ReadVariableOp#conv2d_253/bias/Read/ReadVariableOp%conv2d_254/kernel/Read/ReadVariableOp#conv2d_254/bias/Read/ReadVariableOp%conv2d_255/kernel/Read/ReadVariableOp#conv2d_255/bias/Read/ReadVariableOp%conv2d_256/kernel/Read/ReadVariableOp#conv2d_256/bias/Read/ReadVariableOp$dense_119/kernel/Read/ReadVariableOp"dense_119/bias/Read/ReadVariableOp$dense_120/kernel/Read/ReadVariableOp"dense_120/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpStateVar_2/Read/ReadVariableOpStateVar_1/Read/ReadVariableOpStateVar/Read/ReadVariableOpConst*&
Tin
2				*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__traced_save_1015358

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_121/kerneldense_121/biasconv2d_253/kernelconv2d_253/biasconv2d_254/kernelconv2d_254/biasconv2d_255/kernelconv2d_255/biasconv2d_256/kernelconv2d_256/biasdense_119/kerneldense_119/biasdense_120/kerneldense_120/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotal_1count_1totalcount
StateVar_2
StateVar_1StateVar*%
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference__traced_restore_1015443âò#
ì
j
N__inference_data_augmentation_layer_call_and_return_conditional_losses_1011575

inputs
identityË
random_flip_6/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_random_flip_6_layer_call_and_return_conditional_losses_1011560ó
!random_rotation_6/PartitionedCallPartitionedCall&random_flip_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_random_rotation_6_layer_call_and_return_conditional_losses_1011566ï
random_zoom_6/PartitionedCallPartitionedCall*random_rotation_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_random_zoom_6_layer_call_and_return_conditional_losses_1011572v
IdentityIdentity&random_zoom_6/PartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿKK:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
 
_user_specified_nameinputs
ùí
ñ
E__inference_model_54_layer_call_and_return_conditional_losses_1013836
inputs_0
inputs_1H
:model_53_data_augmentation_random_flip_6_map_while_input_6:	c
Umodel_53_data_augmentation_random_rotation_6_stateful_uniform_rngreadandskip_resource:	_
Qmodel_53_data_augmentation_random_zoom_6_stateful_uniform_rngreadandskip_resource:	L
2model_53_conv2d_253_conv2d_readvariableop_resource:A
3model_53_conv2d_253_biasadd_readvariableop_resource:L
2model_53_conv2d_254_conv2d_readvariableop_resource:A
3model_53_conv2d_254_biasadd_readvariableop_resource:L
2model_53_conv2d_255_conv2d_readvariableop_resource: A
3model_53_conv2d_255_biasadd_readvariableop_resource: L
2model_53_conv2d_256_conv2d_readvariableop_resource: @A
3model_53_conv2d_256_biasadd_readvariableop_resource:@D
1model_53_dense_119_matmul_readvariableop_resource:	À2@
2model_53_dense_119_biasadd_readvariableop_resource:2C
1model_53_dense_120_matmul_readvariableop_resource:2K@
2model_53_dense_120_biasadd_readvariableop_resource:K:
(dense_121_matmul_readvariableop_resource:K7
)dense_121_biasadd_readvariableop_resource:
identity¢ dense_121/BiasAdd/ReadVariableOp¢dense_121/MatMul/ReadVariableOp¢*model_53/conv2d_253/BiasAdd/ReadVariableOp¢,model_53/conv2d_253/BiasAdd_1/ReadVariableOp¢)model_53/conv2d_253/Conv2D/ReadVariableOp¢+model_53/conv2d_253/Conv2D_1/ReadVariableOp¢*model_53/conv2d_254/BiasAdd/ReadVariableOp¢,model_53/conv2d_254/BiasAdd_1/ReadVariableOp¢)model_53/conv2d_254/Conv2D/ReadVariableOp¢+model_53/conv2d_254/Conv2D_1/ReadVariableOp¢*model_53/conv2d_255/BiasAdd/ReadVariableOp¢,model_53/conv2d_255/BiasAdd_1/ReadVariableOp¢)model_53/conv2d_255/Conv2D/ReadVariableOp¢+model_53/conv2d_255/Conv2D_1/ReadVariableOp¢*model_53/conv2d_256/BiasAdd/ReadVariableOp¢,model_53/conv2d_256/BiasAdd_1/ReadVariableOp¢)model_53/conv2d_256/Conv2D/ReadVariableOp¢+model_53/conv2d_256/Conv2D_1/ReadVariableOp¢2model_53/data_augmentation/random_flip_6/map/while¢4model_53/data_augmentation/random_flip_6/map_1/while¢Lmodel_53/data_augmentation/random_rotation_6/stateful_uniform/RngReadAndSkip¢Nmodel_53/data_augmentation/random_rotation_6/stateful_uniform_1/RngReadAndSkip¢Hmodel_53/data_augmentation/random_zoom_6/stateful_uniform/RngReadAndSkip¢Jmodel_53/data_augmentation/random_zoom_6/stateful_uniform_1/RngReadAndSkip¢)model_53/dense_119/BiasAdd/ReadVariableOp¢+model_53/dense_119/BiasAdd_1/ReadVariableOp¢(model_53/dense_119/MatMul/ReadVariableOp¢*model_53/dense_119/MatMul_1/ReadVariableOp¢)model_53/dense_120/BiasAdd/ReadVariableOp¢+model_53/dense_120/BiasAdd_1/ReadVariableOp¢(model_53/dense_120/MatMul/ReadVariableOp¢*model_53/dense_120/MatMul_1/ReadVariableOpj
2model_53/data_augmentation/random_flip_6/map/ShapeShapeinputs_0*
T0*
_output_shapes
:
@model_53/data_augmentation/random_flip_6/map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Bmodel_53/data_augmentation/random_flip_6/map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Bmodel_53/data_augmentation/random_flip_6/map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:²
:model_53/data_augmentation/random_flip_6/map/strided_sliceStridedSlice;model_53/data_augmentation/random_flip_6/map/Shape:output:0Imodel_53/data_augmentation/random_flip_6/map/strided_slice/stack:output:0Kmodel_53/data_augmentation/random_flip_6/map/strided_slice/stack_1:output:0Kmodel_53/data_augmentation/random_flip_6/map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Hmodel_53/data_augmentation/random_flip_6/map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¹
:model_53/data_augmentation/random_flip_6/map/TensorArrayV2TensorListReserveQmodel_53/data_augmentation/random_flip_6/map/TensorArrayV2/element_shape:output:0Cmodel_53/data_augmentation/random_flip_6/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ·
bmodel_53/data_augmentation/random_flip_6/map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"K   K      µ
Tmodel_53/data_augmentation/random_flip_6/map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputs_0kmodel_53/data_augmentation/random_flip_6/map/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒt
2model_53/data_augmentation/random_flip_6/map/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
Jmodel_53/data_augmentation/random_flip_6/map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ½
<model_53/data_augmentation/random_flip_6/map/TensorArrayV2_1TensorListReserveSmodel_53/data_augmentation/random_flip_6/map/TensorArrayV2_1/element_shape:output:0Cmodel_53/data_augmentation/random_flip_6/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
?model_53/data_augmentation/random_flip_6/map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¥
2model_53/data_augmentation/random_flip_6/map/whileWhileHmodel_53/data_augmentation/random_flip_6/map/while/loop_counter:output:0Cmodel_53/data_augmentation/random_flip_6/map/strided_slice:output:0;model_53/data_augmentation/random_flip_6/map/Const:output:0Emodel_53/data_augmentation/random_flip_6/map/TensorArrayV2_1:handle:0Cmodel_53/data_augmentation/random_flip_6/map/strided_slice:output:0dmodel_53/data_augmentation/random_flip_6/map/TensorArrayUnstack/TensorListFromTensor:output_handle:0:model_53_data_augmentation_random_flip_6_map_while_input_6*
T
	2*
_lower_using_switch_merge(*
_num_original_outputs*"
_output_shapes
: : : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( *K
bodyCRA
?model_53_data_augmentation_random_flip_6_map_while_body_1013126*K
condCRA
?model_53_data_augmentation_random_flip_6_map_while_cond_1013125*!
output_shapes
: : : : : : : ²
]model_53/data_augmentation/random_flip_6/map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"K   K      Í
Omodel_53/data_augmentation/random_flip_6/map/TensorArrayV2Stack/TensorListStackTensorListStack;model_53/data_augmentation/random_flip_6/map/while:output:3fmodel_53/data_augmentation/random_flip_6/map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK*
element_dtype0º
2model_53/data_augmentation/random_rotation_6/ShapeShapeXmodel_53/data_augmentation/random_flip_6/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*
_output_shapes
:
@model_53/data_augmentation/random_rotation_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Bmodel_53/data_augmentation/random_rotation_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Bmodel_53/data_augmentation/random_rotation_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:²
:model_53/data_augmentation/random_rotation_6/strided_sliceStridedSlice;model_53/data_augmentation/random_rotation_6/Shape:output:0Imodel_53/data_augmentation/random_rotation_6/strided_slice/stack:output:0Kmodel_53/data_augmentation/random_rotation_6/strided_slice/stack_1:output:0Kmodel_53/data_augmentation/random_rotation_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Bmodel_53/data_augmentation/random_rotation_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ýÿÿÿÿÿÿÿÿ
Dmodel_53/data_augmentation/random_rotation_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿ
Dmodel_53/data_augmentation/random_rotation_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:º
<model_53/data_augmentation/random_rotation_6/strided_slice_1StridedSlice;model_53/data_augmentation/random_rotation_6/Shape:output:0Kmodel_53/data_augmentation/random_rotation_6/strided_slice_1/stack:output:0Mmodel_53/data_augmentation/random_rotation_6/strided_slice_1/stack_1:output:0Mmodel_53/data_augmentation/random_rotation_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask°
1model_53/data_augmentation/random_rotation_6/CastCastEmodel_53/data_augmentation/random_rotation_6/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 
Bmodel_53/data_augmentation/random_rotation_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿ
Dmodel_53/data_augmentation/random_rotation_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ
Dmodel_53/data_augmentation/random_rotation_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:º
<model_53/data_augmentation/random_rotation_6/strided_slice_2StridedSlice;model_53/data_augmentation/random_rotation_6/Shape:output:0Kmodel_53/data_augmentation/random_rotation_6/strided_slice_2/stack:output:0Mmodel_53/data_augmentation/random_rotation_6/strided_slice_2/stack_1:output:0Mmodel_53/data_augmentation/random_rotation_6/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask²
3model_53/data_augmentation/random_rotation_6/Cast_1CastEmodel_53/data_augmentation/random_rotation_6/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: ¾
Cmodel_53/data_augmentation/random_rotation_6/stateful_uniform/shapePackCmodel_53/data_augmentation/random_rotation_6/strided_slice:output:0*
N*
T0*
_output_shapes
:
Amodel_53/data_augmentation/random_rotation_6/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ¿
Amodel_53/data_augmentation/random_rotation_6/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ?
Cmodel_53/data_augmentation/random_rotation_6/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
Bmodel_53/data_augmentation/random_rotation_6/stateful_uniform/ProdProdLmodel_53/data_augmentation/random_rotation_6/stateful_uniform/shape:output:0Lmodel_53/data_augmentation/random_rotation_6/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 
Dmodel_53/data_augmentation/random_rotation_6/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :É
Dmodel_53/data_augmentation/random_rotation_6/stateful_uniform/Cast_1CastKmodel_53/data_augmentation/random_rotation_6/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ê
Lmodel_53/data_augmentation/random_rotation_6/stateful_uniform/RngReadAndSkipRngReadAndSkipUmodel_53_data_augmentation_random_rotation_6_stateful_uniform_rngreadandskip_resourceMmodel_53/data_augmentation/random_rotation_6/stateful_uniform/Cast/x:output:0Hmodel_53/data_augmentation/random_rotation_6/stateful_uniform/Cast_1:y:0*
_output_shapes
:
Qmodel_53/data_augmentation/random_rotation_6/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Smodel_53/data_augmentation/random_rotation_6/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Smodel_53/data_augmentation/random_rotation_6/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Kmodel_53/data_augmentation/random_rotation_6/stateful_uniform/strided_sliceStridedSliceTmodel_53/data_augmentation/random_rotation_6/stateful_uniform/RngReadAndSkip:value:0Zmodel_53/data_augmentation/random_rotation_6/stateful_uniform/strided_slice/stack:output:0\model_53/data_augmentation/random_rotation_6/stateful_uniform/strided_slice/stack_1:output:0\model_53/data_augmentation/random_rotation_6/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask×
Emodel_53/data_augmentation/random_rotation_6/stateful_uniform/BitcastBitcastTmodel_53/data_augmentation/random_rotation_6/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
Smodel_53/data_augmentation/random_rotation_6/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
Umodel_53/data_augmentation/random_rotation_6/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Umodel_53/data_augmentation/random_rotation_6/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Mmodel_53/data_augmentation/random_rotation_6/stateful_uniform/strided_slice_1StridedSliceTmodel_53/data_augmentation/random_rotation_6/stateful_uniform/RngReadAndSkip:value:0\model_53/data_augmentation/random_rotation_6/stateful_uniform/strided_slice_1/stack:output:0^model_53/data_augmentation/random_rotation_6/stateful_uniform/strided_slice_1/stack_1:output:0^model_53/data_augmentation/random_rotation_6/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Û
Gmodel_53/data_augmentation/random_rotation_6/stateful_uniform/Bitcast_1BitcastVmodel_53/data_augmentation/random_rotation_6/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0
Zmodel_53/data_augmentation/random_rotation_6/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :ì
Vmodel_53/data_augmentation/random_rotation_6/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Lmodel_53/data_augmentation/random_rotation_6/stateful_uniform/shape:output:0Pmodel_53/data_augmentation/random_rotation_6/stateful_uniform/Bitcast_1:output:0Nmodel_53/data_augmentation/random_rotation_6/stateful_uniform/Bitcast:output:0cmodel_53/data_augmentation/random_rotation_6/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Amodel_53/data_augmentation/random_rotation_6/stateful_uniform/subSubJmodel_53/data_augmentation/random_rotation_6/stateful_uniform/max:output:0Jmodel_53/data_augmentation/random_rotation_6/stateful_uniform/min:output:0*
T0*
_output_shapes
: 
Amodel_53/data_augmentation/random_rotation_6/stateful_uniform/mulMul_model_53/data_augmentation/random_rotation_6/stateful_uniform/StatelessRandomUniformV2:output:0Emodel_53/data_augmentation/random_rotation_6/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
=model_53/data_augmentation/random_rotation_6/stateful_uniformAddV2Emodel_53/data_augmentation/random_rotation_6/stateful_uniform/mul:z:0Jmodel_53/data_augmentation/random_rotation_6/stateful_uniform/min:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Bmodel_53/data_augmentation/random_rotation_6/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?î
@model_53/data_augmentation/random_rotation_6/rotation_matrix/subSub7model_53/data_augmentation/random_rotation_6/Cast_1:y:0Kmodel_53/data_augmentation/random_rotation_6/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ¸
@model_53/data_augmentation/random_rotation_6/rotation_matrix/CosCosAmodel_53/data_augmentation/random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Dmodel_53/data_augmentation/random_rotation_6/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ò
Bmodel_53/data_augmentation/random_rotation_6/rotation_matrix/sub_1Sub7model_53/data_augmentation/random_rotation_6/Cast_1:y:0Mmodel_53/data_augmentation/random_rotation_6/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 
@model_53/data_augmentation/random_rotation_6/rotation_matrix/mulMulDmodel_53/data_augmentation/random_rotation_6/rotation_matrix/Cos:y:0Fmodel_53/data_augmentation/random_rotation_6/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
@model_53/data_augmentation/random_rotation_6/rotation_matrix/SinSinAmodel_53/data_augmentation/random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Dmodel_53/data_augmentation/random_rotation_6/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ð
Bmodel_53/data_augmentation/random_rotation_6/rotation_matrix/sub_2Sub5model_53/data_augmentation/random_rotation_6/Cast:y:0Mmodel_53/data_augmentation/random_rotation_6/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 
Bmodel_53/data_augmentation/random_rotation_6/rotation_matrix/mul_1MulDmodel_53/data_augmentation/random_rotation_6/rotation_matrix/Sin:y:0Fmodel_53/data_augmentation/random_rotation_6/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Bmodel_53/data_augmentation/random_rotation_6/rotation_matrix/sub_3SubDmodel_53/data_augmentation/random_rotation_6/rotation_matrix/mul:z:0Fmodel_53/data_augmentation/random_rotation_6/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Bmodel_53/data_augmentation/random_rotation_6/rotation_matrix/sub_4SubDmodel_53/data_augmentation/random_rotation_6/rotation_matrix/sub:z:0Fmodel_53/data_augmentation/random_rotation_6/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Fmodel_53/data_augmentation/random_rotation_6/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
Dmodel_53/data_augmentation/random_rotation_6/rotation_matrix/truedivRealDivFmodel_53/data_augmentation/random_rotation_6/rotation_matrix/sub_4:z:0Omodel_53/data_augmentation/random_rotation_6/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Dmodel_53/data_augmentation/random_rotation_6/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ð
Bmodel_53/data_augmentation/random_rotation_6/rotation_matrix/sub_5Sub5model_53/data_augmentation/random_rotation_6/Cast:y:0Mmodel_53/data_augmentation/random_rotation_6/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: º
Bmodel_53/data_augmentation/random_rotation_6/rotation_matrix/Sin_1SinAmodel_53/data_augmentation/random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Dmodel_53/data_augmentation/random_rotation_6/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ò
Bmodel_53/data_augmentation/random_rotation_6/rotation_matrix/sub_6Sub7model_53/data_augmentation/random_rotation_6/Cast_1:y:0Mmodel_53/data_augmentation/random_rotation_6/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 
Bmodel_53/data_augmentation/random_rotation_6/rotation_matrix/mul_2MulFmodel_53/data_augmentation/random_rotation_6/rotation_matrix/Sin_1:y:0Fmodel_53/data_augmentation/random_rotation_6/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
Bmodel_53/data_augmentation/random_rotation_6/rotation_matrix/Cos_1CosAmodel_53/data_augmentation/random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Dmodel_53/data_augmentation/random_rotation_6/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ð
Bmodel_53/data_augmentation/random_rotation_6/rotation_matrix/sub_7Sub5model_53/data_augmentation/random_rotation_6/Cast:y:0Mmodel_53/data_augmentation/random_rotation_6/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 
Bmodel_53/data_augmentation/random_rotation_6/rotation_matrix/mul_3MulFmodel_53/data_augmentation/random_rotation_6/rotation_matrix/Cos_1:y:0Fmodel_53/data_augmentation/random_rotation_6/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@model_53/data_augmentation/random_rotation_6/rotation_matrix/addAddV2Fmodel_53/data_augmentation/random_rotation_6/rotation_matrix/mul_2:z:0Fmodel_53/data_augmentation/random_rotation_6/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Bmodel_53/data_augmentation/random_rotation_6/rotation_matrix/sub_8SubFmodel_53/data_augmentation/random_rotation_6/rotation_matrix/sub_5:z:0Dmodel_53/data_augmentation/random_rotation_6/rotation_matrix/add:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Hmodel_53/data_augmentation/random_rotation_6/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
Fmodel_53/data_augmentation/random_rotation_6/rotation_matrix/truediv_1RealDivFmodel_53/data_augmentation/random_rotation_6/rotation_matrix/sub_8:z:0Qmodel_53/data_augmentation/random_rotation_6/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
Bmodel_53/data_augmentation/random_rotation_6/rotation_matrix/ShapeShapeAmodel_53/data_augmentation/random_rotation_6/stateful_uniform:z:0*
T0*
_output_shapes
:
Pmodel_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Rmodel_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Rmodel_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Jmodel_53/data_augmentation/random_rotation_6/rotation_matrix/strided_sliceStridedSliceKmodel_53/data_augmentation/random_rotation_6/rotation_matrix/Shape:output:0Ymodel_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice/stack:output:0[model_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice/stack_1:output:0[model_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskº
Bmodel_53/data_augmentation/random_rotation_6/rotation_matrix/Cos_2CosAmodel_53/data_augmentation/random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
Rmodel_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        ¥
Tmodel_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        ¥
Tmodel_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      µ
Lmodel_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice_1StridedSliceFmodel_53/data_augmentation/random_rotation_6/rotation_matrix/Cos_2:y:0[model_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice_1/stack:output:0]model_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice_1/stack_1:output:0]model_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_maskº
Bmodel_53/data_augmentation/random_rotation_6/rotation_matrix/Sin_2SinAmodel_53/data_augmentation/random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
Rmodel_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        ¥
Tmodel_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        ¥
Tmodel_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      µ
Lmodel_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice_2StridedSliceFmodel_53/data_augmentation/random_rotation_6/rotation_matrix/Sin_2:y:0[model_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice_2/stack:output:0]model_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice_2/stack_1:output:0]model_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_maskÐ
@model_53/data_augmentation/random_rotation_6/rotation_matrix/NegNegUmodel_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
Rmodel_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        ¥
Tmodel_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        ¥
Tmodel_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ·
Lmodel_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice_3StridedSliceHmodel_53/data_augmentation/random_rotation_6/rotation_matrix/truediv:z:0[model_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice_3/stack:output:0]model_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice_3/stack_1:output:0]model_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_maskº
Bmodel_53/data_augmentation/random_rotation_6/rotation_matrix/Sin_3SinAmodel_53/data_augmentation/random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
Rmodel_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        ¥
Tmodel_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        ¥
Tmodel_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      µ
Lmodel_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice_4StridedSliceFmodel_53/data_augmentation/random_rotation_6/rotation_matrix/Sin_3:y:0[model_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice_4/stack:output:0]model_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice_4/stack_1:output:0]model_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_maskº
Bmodel_53/data_augmentation/random_rotation_6/rotation_matrix/Cos_3CosAmodel_53/data_augmentation/random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
Rmodel_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        ¥
Tmodel_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        ¥
Tmodel_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      µ
Lmodel_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice_5StridedSliceFmodel_53/data_augmentation/random_rotation_6/rotation_matrix/Cos_3:y:0[model_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice_5/stack:output:0]model_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice_5/stack_1:output:0]model_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask£
Rmodel_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        ¥
Tmodel_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        ¥
Tmodel_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¹
Lmodel_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice_6StridedSliceJmodel_53/data_augmentation/random_rotation_6/rotation_matrix/truediv_1:z:0[model_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice_6/stack:output:0]model_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice_6/stack_1:output:0]model_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask
Kmodel_53/data_augmentation/random_rotation_6/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ª
Imodel_53/data_augmentation/random_rotation_6/rotation_matrix/zeros/packedPackSmodel_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice:output:0Tmodel_53/data_augmentation/random_rotation_6/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:
Hmodel_53/data_augmentation/random_rotation_6/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    £
Bmodel_53/data_augmentation/random_rotation_6/rotation_matrix/zerosFillRmodel_53/data_augmentation/random_rotation_6/rotation_matrix/zeros/packed:output:0Qmodel_53/data_augmentation/random_rotation_6/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Hmodel_53/data_augmentation/random_rotation_6/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :£
Cmodel_53/data_augmentation/random_rotation_6/rotation_matrix/concatConcatV2Umodel_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice_1:output:0Dmodel_53/data_augmentation/random_rotation_6/rotation_matrix/Neg:y:0Umodel_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice_3:output:0Umodel_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice_4:output:0Umodel_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice_5:output:0Umodel_53/data_augmentation/random_rotation_6/rotation_matrix/strided_slice_6:output:0Kmodel_53/data_augmentation/random_rotation_6/rotation_matrix/zeros:output:0Qmodel_53/data_augmentation/random_rotation_6/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ
<model_53/data_augmentation/random_rotation_6/transform/ShapeShapeXmodel_53/data_augmentation/random_flip_6/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*
_output_shapes
:
Jmodel_53/data_augmentation/random_rotation_6/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
Lmodel_53/data_augmentation/random_rotation_6/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Lmodel_53/data_augmentation/random_rotation_6/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ð
Dmodel_53/data_augmentation/random_rotation_6/transform/strided_sliceStridedSliceEmodel_53/data_augmentation/random_rotation_6/transform/Shape:output:0Smodel_53/data_augmentation/random_rotation_6/transform/strided_slice/stack:output:0Umodel_53/data_augmentation/random_rotation_6/transform/strided_slice/stack_1:output:0Umodel_53/data_augmentation/random_rotation_6/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:
Amodel_53/data_augmentation/random_rotation_6/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    ¥
Qmodel_53/data_augmentation/random_rotation_6/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Xmodel_53/data_augmentation/random_flip_6/map/TensorArrayV2Stack/TensorListStack:tensor:0Lmodel_53/data_augmentation/random_rotation_6/rotation_matrix/concat:output:0Mmodel_53/data_augmentation/random_rotation_6/transform/strided_slice:output:0Jmodel_53/data_augmentation/random_rotation_6/transform/fill_value:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARÄ
.model_53/data_augmentation/random_zoom_6/ShapeShapefmodel_53/data_augmentation/random_rotation_6/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:
<model_53/data_augmentation/random_zoom_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
>model_53/data_augmentation/random_zoom_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
>model_53/data_augmentation/random_zoom_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
6model_53/data_augmentation/random_zoom_6/strided_sliceStridedSlice7model_53/data_augmentation/random_zoom_6/Shape:output:0Emodel_53/data_augmentation/random_zoom_6/strided_slice/stack:output:0Gmodel_53/data_augmentation/random_zoom_6/strided_slice/stack_1:output:0Gmodel_53/data_augmentation/random_zoom_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
>model_53/data_augmentation/random_zoom_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ýÿÿÿÿÿÿÿÿ
@model_53/data_augmentation/random_zoom_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿ
@model_53/data_augmentation/random_zoom_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¦
8model_53/data_augmentation/random_zoom_6/strided_slice_1StridedSlice7model_53/data_augmentation/random_zoom_6/Shape:output:0Gmodel_53/data_augmentation/random_zoom_6/strided_slice_1/stack:output:0Imodel_53/data_augmentation/random_zoom_6/strided_slice_1/stack_1:output:0Imodel_53/data_augmentation/random_zoom_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask¨
-model_53/data_augmentation/random_zoom_6/CastCastAmodel_53/data_augmentation/random_zoom_6/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 
>model_53/data_augmentation/random_zoom_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿ
@model_53/data_augmentation/random_zoom_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ
@model_53/data_augmentation/random_zoom_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¦
8model_53/data_augmentation/random_zoom_6/strided_slice_2StridedSlice7model_53/data_augmentation/random_zoom_6/Shape:output:0Gmodel_53/data_augmentation/random_zoom_6/strided_slice_2/stack:output:0Imodel_53/data_augmentation/random_zoom_6/strided_slice_2/stack_1:output:0Imodel_53/data_augmentation/random_zoom_6/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskª
/model_53/data_augmentation/random_zoom_6/Cast_1CastAmodel_53/data_augmentation/random_zoom_6/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 
Amodel_53/data_augmentation/random_zoom_6/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?model_53/data_augmentation/random_zoom_6/stateful_uniform/shapePack?model_53/data_augmentation/random_zoom_6/strided_slice:output:0Jmodel_53/data_augmentation/random_zoom_6/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:
=model_53/data_augmentation/random_zoom_6/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL?
=model_53/data_augmentation/random_zoom_6/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *?
?model_53/data_augmentation/random_zoom_6/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: û
>model_53/data_augmentation/random_zoom_6/stateful_uniform/ProdProdHmodel_53/data_augmentation/random_zoom_6/stateful_uniform/shape:output:0Hmodel_53/data_augmentation/random_zoom_6/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 
@model_53/data_augmentation/random_zoom_6/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Á
@model_53/data_augmentation/random_zoom_6/stateful_uniform/Cast_1CastGmodel_53/data_augmentation/random_zoom_6/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Ú
Hmodel_53/data_augmentation/random_zoom_6/stateful_uniform/RngReadAndSkipRngReadAndSkipQmodel_53_data_augmentation_random_zoom_6_stateful_uniform_rngreadandskip_resourceImodel_53/data_augmentation/random_zoom_6/stateful_uniform/Cast/x:output:0Dmodel_53/data_augmentation/random_zoom_6/stateful_uniform/Cast_1:y:0*
_output_shapes
:
Mmodel_53/data_augmentation/random_zoom_6/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Omodel_53/data_augmentation/random_zoom_6/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Omodel_53/data_augmentation/random_zoom_6/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
Gmodel_53/data_augmentation/random_zoom_6/stateful_uniform/strided_sliceStridedSlicePmodel_53/data_augmentation/random_zoom_6/stateful_uniform/RngReadAndSkip:value:0Vmodel_53/data_augmentation/random_zoom_6/stateful_uniform/strided_slice/stack:output:0Xmodel_53/data_augmentation/random_zoom_6/stateful_uniform/strided_slice/stack_1:output:0Xmodel_53/data_augmentation/random_zoom_6/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskÏ
Amodel_53/data_augmentation/random_zoom_6/stateful_uniform/BitcastBitcastPmodel_53/data_augmentation/random_zoom_6/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
Omodel_53/data_augmentation/random_zoom_6/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
Qmodel_53/data_augmentation/random_zoom_6/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Qmodel_53/data_augmentation/random_zoom_6/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ï
Imodel_53/data_augmentation/random_zoom_6/stateful_uniform/strided_slice_1StridedSlicePmodel_53/data_augmentation/random_zoom_6/stateful_uniform/RngReadAndSkip:value:0Xmodel_53/data_augmentation/random_zoom_6/stateful_uniform/strided_slice_1/stack:output:0Zmodel_53/data_augmentation/random_zoom_6/stateful_uniform/strided_slice_1/stack_1:output:0Zmodel_53/data_augmentation/random_zoom_6/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Ó
Cmodel_53/data_augmentation/random_zoom_6/stateful_uniform/Bitcast_1BitcastRmodel_53/data_augmentation/random_zoom_6/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0
Vmodel_53/data_augmentation/random_zoom_6/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Ü
Rmodel_53/data_augmentation/random_zoom_6/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Hmodel_53/data_augmentation/random_zoom_6/stateful_uniform/shape:output:0Lmodel_53/data_augmentation/random_zoom_6/stateful_uniform/Bitcast_1:output:0Jmodel_53/data_augmentation/random_zoom_6/stateful_uniform/Bitcast:output:0_model_53/data_augmentation/random_zoom_6/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿõ
=model_53/data_augmentation/random_zoom_6/stateful_uniform/subSubFmodel_53/data_augmentation/random_zoom_6/stateful_uniform/max:output:0Fmodel_53/data_augmentation/random_zoom_6/stateful_uniform/min:output:0*
T0*
_output_shapes
: 
=model_53/data_augmentation/random_zoom_6/stateful_uniform/mulMul[model_53/data_augmentation/random_zoom_6/stateful_uniform/StatelessRandomUniformV2:output:0Amodel_53/data_augmentation/random_zoom_6/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿ
9model_53/data_augmentation/random_zoom_6/stateful_uniformAddV2Amodel_53/data_augmentation/random_zoom_6/stateful_uniform/mul:z:0Fmodel_53/data_augmentation/random_zoom_6/stateful_uniform/min:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
4model_53/data_augmentation/random_zoom_6/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :³
/model_53/data_augmentation/random_zoom_6/concatConcatV2=model_53/data_augmentation/random_zoom_6/stateful_uniform:z:0=model_53/data_augmentation/random_zoom_6/stateful_uniform:z:0=model_53/data_augmentation/random_zoom_6/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
:model_53/data_augmentation/random_zoom_6/zoom_matrix/ShapeShape8model_53/data_augmentation/random_zoom_6/concat:output:0*
T0*
_output_shapes
:
Hmodel_53/data_augmentation/random_zoom_6/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Jmodel_53/data_augmentation/random_zoom_6/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Jmodel_53/data_augmentation/random_zoom_6/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ú
Bmodel_53/data_augmentation/random_zoom_6/zoom_matrix/strided_sliceStridedSliceCmodel_53/data_augmentation/random_zoom_6/zoom_matrix/Shape:output:0Qmodel_53/data_augmentation/random_zoom_6/zoom_matrix/strided_slice/stack:output:0Smodel_53/data_augmentation/random_zoom_6/zoom_matrix/strided_slice/stack_1:output:0Smodel_53/data_augmentation/random_zoom_6/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
:model_53/data_augmentation/random_zoom_6/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ú
8model_53/data_augmentation/random_zoom_6/zoom_matrix/subSub3model_53/data_augmentation/random_zoom_6/Cast_1:y:0Cmodel_53/data_augmentation/random_zoom_6/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 
>model_53/data_augmentation/random_zoom_6/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @ï
<model_53/data_augmentation/random_zoom_6/zoom_matrix/truedivRealDiv<model_53/data_augmentation/random_zoom_6/zoom_matrix/sub:z:0Gmodel_53/data_augmentation/random_zoom_6/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 
Jmodel_53/data_augmentation/random_zoom_6/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            ¡
Lmodel_53/data_augmentation/random_zoom_6/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           ¡
Lmodel_53/data_augmentation/random_zoom_6/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         
Dmodel_53/data_augmentation/random_zoom_6/zoom_matrix/strided_slice_1StridedSlice8model_53/data_augmentation/random_zoom_6/concat:output:0Smodel_53/data_augmentation/random_zoom_6/zoom_matrix/strided_slice_1/stack:output:0Umodel_53/data_augmentation/random_zoom_6/zoom_matrix/strided_slice_1/stack_1:output:0Umodel_53/data_augmentation/random_zoom_6/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask
<model_53/data_augmentation/random_zoom_6/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
:model_53/data_augmentation/random_zoom_6/zoom_matrix/sub_1SubEmodel_53/data_augmentation/random_zoom_6/zoom_matrix/sub_1/x:output:0Mmodel_53/data_augmentation/random_zoom_6/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿó
8model_53/data_augmentation/random_zoom_6/zoom_matrix/mulMul@model_53/data_augmentation/random_zoom_6/zoom_matrix/truediv:z:0>model_53/data_augmentation/random_zoom_6/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
<model_53/data_augmentation/random_zoom_6/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ü
:model_53/data_augmentation/random_zoom_6/zoom_matrix/sub_2Sub1model_53/data_augmentation/random_zoom_6/Cast:y:0Emodel_53/data_augmentation/random_zoom_6/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 
@model_53/data_augmentation/random_zoom_6/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @õ
>model_53/data_augmentation/random_zoom_6/zoom_matrix/truediv_1RealDiv>model_53/data_augmentation/random_zoom_6/zoom_matrix/sub_2:z:0Imodel_53/data_augmentation/random_zoom_6/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 
Jmodel_53/data_augmentation/random_zoom_6/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           ¡
Lmodel_53/data_augmentation/random_zoom_6/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           ¡
Lmodel_53/data_augmentation/random_zoom_6/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         
Dmodel_53/data_augmentation/random_zoom_6/zoom_matrix/strided_slice_2StridedSlice8model_53/data_augmentation/random_zoom_6/concat:output:0Smodel_53/data_augmentation/random_zoom_6/zoom_matrix/strided_slice_2/stack:output:0Umodel_53/data_augmentation/random_zoom_6/zoom_matrix/strided_slice_2/stack_1:output:0Umodel_53/data_augmentation/random_zoom_6/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask
<model_53/data_augmentation/random_zoom_6/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
:model_53/data_augmentation/random_zoom_6/zoom_matrix/sub_3SubEmodel_53/data_augmentation/random_zoom_6/zoom_matrix/sub_3/x:output:0Mmodel_53/data_augmentation/random_zoom_6/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ÷
:model_53/data_augmentation/random_zoom_6/zoom_matrix/mul_1MulBmodel_53/data_augmentation/random_zoom_6/zoom_matrix/truediv_1:z:0>model_53/data_augmentation/random_zoom_6/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Jmodel_53/data_augmentation/random_zoom_6/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            ¡
Lmodel_53/data_augmentation/random_zoom_6/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           ¡
Lmodel_53/data_augmentation/random_zoom_6/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         
Dmodel_53/data_augmentation/random_zoom_6/zoom_matrix/strided_slice_3StridedSlice8model_53/data_augmentation/random_zoom_6/concat:output:0Smodel_53/data_augmentation/random_zoom_6/zoom_matrix/strided_slice_3/stack:output:0Umodel_53/data_augmentation/random_zoom_6/zoom_matrix/strided_slice_3/stack_1:output:0Umodel_53/data_augmentation/random_zoom_6/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask
Cmodel_53/data_augmentation/random_zoom_6/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
Amodel_53/data_augmentation/random_zoom_6/zoom_matrix/zeros/packedPackKmodel_53/data_augmentation/random_zoom_6/zoom_matrix/strided_slice:output:0Lmodel_53/data_augmentation/random_zoom_6/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:
@model_53/data_augmentation/random_zoom_6/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
:model_53/data_augmentation/random_zoom_6/zoom_matrix/zerosFillJmodel_53/data_augmentation/random_zoom_6/zoom_matrix/zeros/packed:output:0Imodel_53/data_augmentation/random_zoom_6/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Emodel_53/data_augmentation/random_zoom_6/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
Cmodel_53/data_augmentation/random_zoom_6/zoom_matrix/zeros_1/packedPackKmodel_53/data_augmentation/random_zoom_6/zoom_matrix/strided_slice:output:0Nmodel_53/data_augmentation/random_zoom_6/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:
Bmodel_53/data_augmentation/random_zoom_6/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
<model_53/data_augmentation/random_zoom_6/zoom_matrix/zeros_1FillLmodel_53/data_augmentation/random_zoom_6/zoom_matrix/zeros_1/packed:output:0Kmodel_53/data_augmentation/random_zoom_6/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Jmodel_53/data_augmentation/random_zoom_6/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           ¡
Lmodel_53/data_augmentation/random_zoom_6/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           ¡
Lmodel_53/data_augmentation/random_zoom_6/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         
Dmodel_53/data_augmentation/random_zoom_6/zoom_matrix/strided_slice_4StridedSlice8model_53/data_augmentation/random_zoom_6/concat:output:0Smodel_53/data_augmentation/random_zoom_6/zoom_matrix/strided_slice_4/stack:output:0Umodel_53/data_augmentation/random_zoom_6/zoom_matrix/strided_slice_4/stack_1:output:0Umodel_53/data_augmentation/random_zoom_6/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask
Emodel_53/data_augmentation/random_zoom_6/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
Cmodel_53/data_augmentation/random_zoom_6/zoom_matrix/zeros_2/packedPackKmodel_53/data_augmentation/random_zoom_6/zoom_matrix/strided_slice:output:0Nmodel_53/data_augmentation/random_zoom_6/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:
Bmodel_53/data_augmentation/random_zoom_6/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
<model_53/data_augmentation/random_zoom_6/zoom_matrix/zeros_2FillLmodel_53/data_augmentation/random_zoom_6/zoom_matrix/zeros_2/packed:output:0Kmodel_53/data_augmentation/random_zoom_6/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@model_53/data_augmentation/random_zoom_6/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :¼
;model_53/data_augmentation/random_zoom_6/zoom_matrix/concatConcatV2Mmodel_53/data_augmentation/random_zoom_6/zoom_matrix/strided_slice_3:output:0Cmodel_53/data_augmentation/random_zoom_6/zoom_matrix/zeros:output:0<model_53/data_augmentation/random_zoom_6/zoom_matrix/mul:z:0Emodel_53/data_augmentation/random_zoom_6/zoom_matrix/zeros_1:output:0Mmodel_53/data_augmentation/random_zoom_6/zoom_matrix/strided_slice_4:output:0>model_53/data_augmentation/random_zoom_6/zoom_matrix/mul_1:z:0Emodel_53/data_augmentation/random_zoom_6/zoom_matrix/zeros_2:output:0Imodel_53/data_augmentation/random_zoom_6/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ
8model_53/data_augmentation/random_zoom_6/transform/ShapeShapefmodel_53/data_augmentation/random_rotation_6/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:
Fmodel_53/data_augmentation/random_zoom_6/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
Hmodel_53/data_augmentation/random_zoom_6/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Hmodel_53/data_augmentation/random_zoom_6/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¼
@model_53/data_augmentation/random_zoom_6/transform/strided_sliceStridedSliceAmodel_53/data_augmentation/random_zoom_6/transform/Shape:output:0Omodel_53/data_augmentation/random_zoom_6/transform/strided_slice/stack:output:0Qmodel_53/data_augmentation/random_zoom_6/transform/strided_slice/stack_1:output:0Qmodel_53/data_augmentation/random_zoom_6/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:
=model_53/data_augmentation/random_zoom_6/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
Mmodel_53/data_augmentation/random_zoom_6/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3fmodel_53/data_augmentation/random_rotation_6/transform/ImageProjectiveTransformV3:transformed_images:0Dmodel_53/data_augmentation/random_zoom_6/zoom_matrix/concat:output:0Imodel_53/data_augmentation/random_zoom_6/transform/strided_slice:output:0Fmodel_53/data_augmentation/random_zoom_6/transform/fill_value:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR¤
)model_53/conv2d_253/Conv2D/ReadVariableOpReadVariableOp2model_53_conv2d_253_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
model_53/conv2d_253/Conv2DConv2Dbmodel_53/data_augmentation/random_zoom_6/transform/ImageProjectiveTransformV3:transformed_images:01model_53/conv2d_253/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿGG*
paddingVALID*
strides

*model_53/conv2d_253/BiasAdd/ReadVariableOpReadVariableOp3model_53_conv2d_253_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¹
model_53/conv2d_253/BiasAddBiasAdd#model_53/conv2d_253/Conv2D:output:02model_53/conv2d_253/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿGG
model_53/conv2d_253/ReluRelu$model_53/conv2d_253/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿGGÂ
"model_53/max_pooling2d_191/MaxPoolMaxPool&model_53/conv2d_253/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ##*
ksize
*
paddingVALID*
strides
¤
)model_53/conv2d_254/Conv2D/ReadVariableOpReadVariableOp2model_53_conv2d_254_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ç
model_53/conv2d_254/Conv2DConv2D+model_53/max_pooling2d_191/MaxPool:output:01model_53/conv2d_254/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!!*
paddingVALID*
strides

*model_53/conv2d_254/BiasAdd/ReadVariableOpReadVariableOp3model_53_conv2d_254_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¹
model_53/conv2d_254/BiasAddBiasAdd#model_53/conv2d_254/Conv2D:output:02model_53/conv2d_254/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!!
model_53/conv2d_254/ReluRelu$model_53/conv2d_254/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!!Â
"model_53/max_pooling2d_192/MaxPoolMaxPool&model_53/conv2d_254/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
¤
)model_53/conv2d_255/Conv2D/ReadVariableOpReadVariableOp2model_53_conv2d_255_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ç
model_53/conv2d_255/Conv2DConv2D+model_53/max_pooling2d_192/MaxPool:output:01model_53/conv2d_255/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingVALID*
strides

*model_53/conv2d_255/BiasAdd/ReadVariableOpReadVariableOp3model_53_conv2d_255_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¹
model_53/conv2d_255/BiasAddBiasAdd#model_53/conv2d_255/Conv2D:output:02model_53/conv2d_255/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
model_53/conv2d_255/ReluRelu$model_53/conv2d_255/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Â
"model_53/max_pooling2d_193/MaxPoolMaxPool&model_53/conv2d_255/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
ksize
*
paddingVALID*
strides
¤
)model_53/conv2d_256/Conv2D/ReadVariableOpReadVariableOp2model_53_conv2d_256_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0ç
model_53/conv2d_256/Conv2DConv2D+model_53/max_pooling2d_193/MaxPool:output:01model_53/conv2d_256/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides

*model_53/conv2d_256/BiasAdd/ReadVariableOpReadVariableOp3model_53_conv2d_256_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¹
model_53/conv2d_256/BiasAddBiasAdd#model_53/conv2d_256/Conv2D:output:02model_53/conv2d_256/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
model_53/conv2d_256/ReluRelu$model_53/conv2d_256/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@j
model_53/flatten_61/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@  ¥
model_53/flatten_61/ReshapeReshape&model_53/conv2d_256/Relu:activations:0"model_53/flatten_61/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
(model_53/dense_119/MatMul/ReadVariableOpReadVariableOp1model_53_dense_119_matmul_readvariableop_resource*
_output_shapes
:	À2*
dtype0­
model_53/dense_119/MatMulMatMul$model_53/flatten_61/Reshape:output:00model_53/dense_119/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
)model_53/dense_119/BiasAdd/ReadVariableOpReadVariableOp2model_53_dense_119_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0¯
model_53/dense_119/BiasAddBiasAdd#model_53/dense_119/MatMul:product:01model_53/dense_119/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
model_53/dense_119/ReluRelu#model_53/dense_119/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
(model_53/dense_120/MatMul/ReadVariableOpReadVariableOp1model_53_dense_120_matmul_readvariableop_resource*
_output_shapes

:2K*
dtype0®
model_53/dense_120/MatMulMatMul%model_53/dense_119/Relu:activations:00model_53/dense_120/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
)model_53/dense_120/BiasAdd/ReadVariableOpReadVariableOp2model_53_dense_120_biasadd_readvariableop_resource*
_output_shapes
:K*
dtype0¯
model_53/dense_120/BiasAddBiasAdd#model_53/dense_120/MatMul:product:01model_53/dense_120/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK|
model_53/dense_120/SigmoidSigmoid#model_53/dense_120/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿKl
4model_53/data_augmentation/random_flip_6/map_1/ShapeShapeinputs_1*
T0*
_output_shapes
:
Bmodel_53/data_augmentation/random_flip_6/map_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Dmodel_53/data_augmentation/random_flip_6/map_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Dmodel_53/data_augmentation/random_flip_6/map_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¼
<model_53/data_augmentation/random_flip_6/map_1/strided_sliceStridedSlice=model_53/data_augmentation/random_flip_6/map_1/Shape:output:0Kmodel_53/data_augmentation/random_flip_6/map_1/strided_slice/stack:output:0Mmodel_53/data_augmentation/random_flip_6/map_1/strided_slice/stack_1:output:0Mmodel_53/data_augmentation/random_flip_6/map_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Jmodel_53/data_augmentation/random_flip_6/map_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¿
<model_53/data_augmentation/random_flip_6/map_1/TensorArrayV2TensorListReserveSmodel_53/data_augmentation/random_flip_6/map_1/TensorArrayV2/element_shape:output:0Emodel_53/data_augmentation/random_flip_6/map_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ¹
dmodel_53/data_augmentation/random_flip_6/map_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"K   K      ¹
Vmodel_53/data_augmentation/random_flip_6/map_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputs_1mmodel_53/data_augmentation/random_flip_6/map_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒv
4model_53/data_augmentation/random_flip_6/map_1/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
Lmodel_53/data_augmentation/random_flip_6/map_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÃ
>model_53/data_augmentation/random_flip_6/map_1/TensorArrayV2_1TensorListReserveUmodel_53/data_augmentation/random_flip_6/map_1/TensorArrayV2_1/element_shape:output:0Emodel_53/data_augmentation/random_flip_6/map_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Amodel_53/data_augmentation/random_flip_6/map_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ì
4model_53/data_augmentation/random_flip_6/map_1/whileWhileJmodel_53/data_augmentation/random_flip_6/map_1/while/loop_counter:output:0Emodel_53/data_augmentation/random_flip_6/map_1/strided_slice:output:0=model_53/data_augmentation/random_flip_6/map_1/Const:output:0Gmodel_53/data_augmentation/random_flip_6/map_1/TensorArrayV2_1:handle:0Emodel_53/data_augmentation/random_flip_6/map_1/strided_slice:output:0fmodel_53/data_augmentation/random_flip_6/map_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0:model_53_data_augmentation_random_flip_6_map_while_input_63^model_53/data_augmentation/random_flip_6/map/while*
T
	2*
_lower_using_switch_merge(*
_num_original_outputs*"
_output_shapes
: : : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( *M
bodyERC
Amodel_53_data_augmentation_random_flip_6_map_1_while_body_1013490*M
condERC
Amodel_53_data_augmentation_random_flip_6_map_1_while_cond_1013489*!
output_shapes
: : : : : : : ´
_model_53/data_augmentation/random_flip_6/map_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"K   K      Ó
Qmodel_53/data_augmentation/random_flip_6/map_1/TensorArrayV2Stack/TensorListStackTensorListStack=model_53/data_augmentation/random_flip_6/map_1/while:output:3hmodel_53/data_augmentation/random_flip_6/map_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK*
element_dtype0¾
4model_53/data_augmentation/random_rotation_6/Shape_1ShapeZmodel_53/data_augmentation/random_flip_6/map_1/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*
_output_shapes
:
Bmodel_53/data_augmentation/random_rotation_6/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Dmodel_53/data_augmentation/random_rotation_6/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Dmodel_53/data_augmentation/random_rotation_6/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¼
<model_53/data_augmentation/random_rotation_6/strided_slice_3StridedSlice=model_53/data_augmentation/random_rotation_6/Shape_1:output:0Kmodel_53/data_augmentation/random_rotation_6/strided_slice_3/stack:output:0Mmodel_53/data_augmentation/random_rotation_6/strided_slice_3/stack_1:output:0Mmodel_53/data_augmentation/random_rotation_6/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Bmodel_53/data_augmentation/random_rotation_6/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:
ýÿÿÿÿÿÿÿÿ
Dmodel_53/data_augmentation/random_rotation_6/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿ
Dmodel_53/data_augmentation/random_rotation_6/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¼
<model_53/data_augmentation/random_rotation_6/strided_slice_4StridedSlice=model_53/data_augmentation/random_rotation_6/Shape_1:output:0Kmodel_53/data_augmentation/random_rotation_6/strided_slice_4/stack:output:0Mmodel_53/data_augmentation/random_rotation_6/strided_slice_4/stack_1:output:0Mmodel_53/data_augmentation/random_rotation_6/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask²
3model_53/data_augmentation/random_rotation_6/Cast_2CastEmodel_53/data_augmentation/random_rotation_6/strided_slice_4:output:0*

DstT0*

SrcT0*
_output_shapes
: 
Bmodel_53/data_augmentation/random_rotation_6/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿ
Dmodel_53/data_augmentation/random_rotation_6/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ
Dmodel_53/data_augmentation/random_rotation_6/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¼
<model_53/data_augmentation/random_rotation_6/strided_slice_5StridedSlice=model_53/data_augmentation/random_rotation_6/Shape_1:output:0Kmodel_53/data_augmentation/random_rotation_6/strided_slice_5/stack:output:0Mmodel_53/data_augmentation/random_rotation_6/strided_slice_5/stack_1:output:0Mmodel_53/data_augmentation/random_rotation_6/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask²
3model_53/data_augmentation/random_rotation_6/Cast_3CastEmodel_53/data_augmentation/random_rotation_6/strided_slice_5:output:0*

DstT0*

SrcT0*
_output_shapes
: Â
Emodel_53/data_augmentation/random_rotation_6/stateful_uniform_1/shapePackEmodel_53/data_augmentation/random_rotation_6/strided_slice_3:output:0*
N*
T0*
_output_shapes
:
Cmodel_53/data_augmentation/random_rotation_6/stateful_uniform_1/minConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ¿
Cmodel_53/data_augmentation/random_rotation_6/stateful_uniform_1/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ?
Emodel_53/data_augmentation/random_rotation_6/stateful_uniform_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
Dmodel_53/data_augmentation/random_rotation_6/stateful_uniform_1/ProdProdNmodel_53/data_augmentation/random_rotation_6/stateful_uniform_1/shape:output:0Nmodel_53/data_augmentation/random_rotation_6/stateful_uniform_1/Const:output:0*
T0*
_output_shapes
: 
Fmodel_53/data_augmentation/random_rotation_6/stateful_uniform_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Í
Fmodel_53/data_augmentation/random_rotation_6/stateful_uniform_1/Cast_1CastMmodel_53/data_augmentation/random_rotation_6/stateful_uniform_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ¿
Nmodel_53/data_augmentation/random_rotation_6/stateful_uniform_1/RngReadAndSkipRngReadAndSkipUmodel_53_data_augmentation_random_rotation_6_stateful_uniform_rngreadandskip_resourceOmodel_53/data_augmentation/random_rotation_6/stateful_uniform_1/Cast/x:output:0Jmodel_53/data_augmentation/random_rotation_6/stateful_uniform_1/Cast_1:y:0M^model_53/data_augmentation/random_rotation_6/stateful_uniform/RngReadAndSkip*
_output_shapes
:
Smodel_53/data_augmentation/random_rotation_6/stateful_uniform_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Umodel_53/data_augmentation/random_rotation_6/stateful_uniform_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Umodel_53/data_augmentation/random_rotation_6/stateful_uniform_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Mmodel_53/data_augmentation/random_rotation_6/stateful_uniform_1/strided_sliceStridedSliceVmodel_53/data_augmentation/random_rotation_6/stateful_uniform_1/RngReadAndSkip:value:0\model_53/data_augmentation/random_rotation_6/stateful_uniform_1/strided_slice/stack:output:0^model_53/data_augmentation/random_rotation_6/stateful_uniform_1/strided_slice/stack_1:output:0^model_53/data_augmentation/random_rotation_6/stateful_uniform_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskÛ
Gmodel_53/data_augmentation/random_rotation_6/stateful_uniform_1/BitcastBitcastVmodel_53/data_augmentation/random_rotation_6/stateful_uniform_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
Umodel_53/data_augmentation/random_rotation_6/stateful_uniform_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:¡
Wmodel_53/data_augmentation/random_rotation_6/stateful_uniform_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¡
Wmodel_53/data_augmentation/random_rotation_6/stateful_uniform_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Omodel_53/data_augmentation/random_rotation_6/stateful_uniform_1/strided_slice_1StridedSliceVmodel_53/data_augmentation/random_rotation_6/stateful_uniform_1/RngReadAndSkip:value:0^model_53/data_augmentation/random_rotation_6/stateful_uniform_1/strided_slice_1/stack:output:0`model_53/data_augmentation/random_rotation_6/stateful_uniform_1/strided_slice_1/stack_1:output:0`model_53/data_augmentation/random_rotation_6/stateful_uniform_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:ß
Imodel_53/data_augmentation/random_rotation_6/stateful_uniform_1/Bitcast_1BitcastXmodel_53/data_augmentation/random_rotation_6/stateful_uniform_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0
\model_53/data_augmentation/random_rotation_6/stateful_uniform_1/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :ö
Xmodel_53/data_augmentation/random_rotation_6/stateful_uniform_1/StatelessRandomUniformV2StatelessRandomUniformV2Nmodel_53/data_augmentation/random_rotation_6/stateful_uniform_1/shape:output:0Rmodel_53/data_augmentation/random_rotation_6/stateful_uniform_1/Bitcast_1:output:0Pmodel_53/data_augmentation/random_rotation_6/stateful_uniform_1/Bitcast:output:0emodel_53/data_augmentation/random_rotation_6/stateful_uniform_1/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Cmodel_53/data_augmentation/random_rotation_6/stateful_uniform_1/subSubLmodel_53/data_augmentation/random_rotation_6/stateful_uniform_1/max:output:0Lmodel_53/data_augmentation/random_rotation_6/stateful_uniform_1/min:output:0*
T0*
_output_shapes
: ¤
Cmodel_53/data_augmentation/random_rotation_6/stateful_uniform_1/mulMulamodel_53/data_augmentation/random_rotation_6/stateful_uniform_1/StatelessRandomUniformV2:output:0Gmodel_53/data_augmentation/random_rotation_6/stateful_uniform_1/sub:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
?model_53/data_augmentation/random_rotation_6/stateful_uniform_1AddV2Gmodel_53/data_augmentation/random_rotation_6/stateful_uniform_1/mul:z:0Lmodel_53/data_augmentation/random_rotation_6/stateful_uniform_1/min:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Dmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ò
Bmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/subSub7model_53/data_augmentation/random_rotation_6/Cast_3:y:0Mmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/sub/y:output:0*
T0*
_output_shapes
: ¼
Bmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/CosCosCmodel_53/data_augmentation/random_rotation_6/stateful_uniform_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Fmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ö
Dmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/sub_1Sub7model_53/data_augmentation/random_rotation_6/Cast_3:y:0Omodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/sub_1/y:output:0*
T0*
_output_shapes
: 
Bmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/mulMulFmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/Cos:y:0Hmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/sub_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¼
Bmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/SinSinCmodel_53/data_augmentation/random_rotation_6/stateful_uniform_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Fmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ö
Dmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/sub_2Sub7model_53/data_augmentation/random_rotation_6/Cast_2:y:0Omodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/sub_2/y:output:0*
T0*
_output_shapes
: 
Dmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/mul_1MulFmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/Sin:y:0Hmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/sub_2:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Dmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/sub_3SubFmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/mul:z:0Hmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/mul_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Dmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/sub_4SubFmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/sub:z:0Hmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/sub_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Hmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
Fmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/truedivRealDivHmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/sub_4:z:0Qmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/truediv/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Fmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ö
Dmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/sub_5Sub7model_53/data_augmentation/random_rotation_6/Cast_2:y:0Omodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/sub_5/y:output:0*
T0*
_output_shapes
: ¾
Dmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/Sin_1SinCmodel_53/data_augmentation/random_rotation_6/stateful_uniform_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Fmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ö
Dmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/sub_6Sub7model_53/data_augmentation/random_rotation_6/Cast_3:y:0Omodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/sub_6/y:output:0*
T0*
_output_shapes
: 
Dmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/mul_2MulHmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/Sin_1:y:0Hmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/sub_6:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
Dmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/Cos_1CosCmodel_53/data_augmentation/random_rotation_6/stateful_uniform_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Fmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ö
Dmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/sub_7Sub7model_53/data_augmentation/random_rotation_6/Cast_2:y:0Omodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/sub_7/y:output:0*
T0*
_output_shapes
: 
Dmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/mul_3MulHmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/Cos_1:y:0Hmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/sub_7:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Bmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/addAddV2Hmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/mul_2:z:0Hmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/mul_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Dmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/sub_8SubHmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/sub_5:z:0Fmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/add:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Jmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @ 
Hmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/truediv_1RealDivHmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/sub_8:z:0Smodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/truediv_1/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ·
Dmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/ShapeShapeCmodel_53/data_augmentation/random_rotation_6/stateful_uniform_1:z:0*
T0*
_output_shapes
:
Rmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Tmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Tmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Lmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_sliceStridedSliceMmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/Shape:output:0[model_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice/stack:output:0]model_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice/stack_1:output:0]model_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask¾
Dmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/Cos_2CosCmodel_53/data_augmentation/random_rotation_6/stateful_uniform_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
Tmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        §
Vmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        §
Vmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¿
Nmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice_1StridedSliceHmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/Cos_2:y:0]model_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice_1/stack:output:0_model_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice_1/stack_1:output:0_model_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask¾
Dmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/Sin_2SinCmodel_53/data_augmentation/random_rotation_6/stateful_uniform_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
Tmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        §
Vmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        §
Vmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¿
Nmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice_2StridedSliceHmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/Sin_2:y:0]model_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice_2/stack:output:0_model_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice_2/stack_1:output:0_model_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_maskÔ
Bmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/NegNegWmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
Tmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        §
Vmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        §
Vmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Á
Nmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice_3StridedSliceJmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/truediv:z:0]model_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice_3/stack:output:0_model_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice_3/stack_1:output:0_model_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask¾
Dmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/Sin_3SinCmodel_53/data_augmentation/random_rotation_6/stateful_uniform_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
Tmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        §
Vmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        §
Vmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¿
Nmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice_4StridedSliceHmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/Sin_3:y:0]model_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice_4/stack:output:0_model_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice_4/stack_1:output:0_model_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask¾
Dmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/Cos_3CosCmodel_53/data_augmentation/random_rotation_6/stateful_uniform_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
Tmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        §
Vmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        §
Vmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¿
Nmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice_5StridedSliceHmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/Cos_3:y:0]model_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice_5/stack:output:0_model_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice_5/stack_1:output:0_model_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask¥
Tmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        §
Vmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        §
Vmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ã
Nmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice_6StridedSliceLmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/truediv_1:z:0]model_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice_6/stack:output:0_model_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice_6/stack_1:output:0_model_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask
Mmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :°
Kmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/zeros/packedPackUmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice:output:0Vmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:
Jmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ©
Dmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/zerosFillTmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/zeros/packed:output:0Smodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Jmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :µ
Emodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/concatConcatV2Wmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice_1:output:0Fmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/Neg:y:0Wmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice_3:output:0Wmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice_4:output:0Wmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice_5:output:0Wmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/strided_slice_6:output:0Mmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/zeros:output:0Smodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
>model_53/data_augmentation/random_rotation_6/transform_1/ShapeShapeZmodel_53/data_augmentation/random_flip_6/map_1/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*
_output_shapes
:
Lmodel_53/data_augmentation/random_rotation_6/transform_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
Nmodel_53/data_augmentation/random_rotation_6/transform_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Nmodel_53/data_augmentation/random_rotation_6/transform_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ú
Fmodel_53/data_augmentation/random_rotation_6/transform_1/strided_sliceStridedSliceGmodel_53/data_augmentation/random_rotation_6/transform_1/Shape:output:0Umodel_53/data_augmentation/random_rotation_6/transform_1/strided_slice/stack:output:0Wmodel_53/data_augmentation/random_rotation_6/transform_1/strided_slice/stack_1:output:0Wmodel_53/data_augmentation/random_rotation_6/transform_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:
Cmodel_53/data_augmentation/random_rotation_6/transform_1/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    ¯
Smodel_53/data_augmentation/random_rotation_6/transform_1/ImageProjectiveTransformV3ImageProjectiveTransformV3Zmodel_53/data_augmentation/random_flip_6/map_1/TensorArrayV2Stack/TensorListStack:tensor:0Nmodel_53/data_augmentation/random_rotation_6/rotation_matrix_1/concat:output:0Omodel_53/data_augmentation/random_rotation_6/transform_1/strided_slice:output:0Lmodel_53/data_augmentation/random_rotation_6/transform_1/fill_value:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARÈ
0model_53/data_augmentation/random_zoom_6/Shape_1Shapehmodel_53/data_augmentation/random_rotation_6/transform_1/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:
>model_53/data_augmentation/random_zoom_6/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 
@model_53/data_augmentation/random_zoom_6/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
@model_53/data_augmentation/random_zoom_6/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¨
8model_53/data_augmentation/random_zoom_6/strided_slice_3StridedSlice9model_53/data_augmentation/random_zoom_6/Shape_1:output:0Gmodel_53/data_augmentation/random_zoom_6/strided_slice_3/stack:output:0Imodel_53/data_augmentation/random_zoom_6/strided_slice_3/stack_1:output:0Imodel_53/data_augmentation/random_zoom_6/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
>model_53/data_augmentation/random_zoom_6/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:
ýÿÿÿÿÿÿÿÿ
@model_53/data_augmentation/random_zoom_6/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿ
@model_53/data_augmentation/random_zoom_6/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¨
8model_53/data_augmentation/random_zoom_6/strided_slice_4StridedSlice9model_53/data_augmentation/random_zoom_6/Shape_1:output:0Gmodel_53/data_augmentation/random_zoom_6/strided_slice_4/stack:output:0Imodel_53/data_augmentation/random_zoom_6/strided_slice_4/stack_1:output:0Imodel_53/data_augmentation/random_zoom_6/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskª
/model_53/data_augmentation/random_zoom_6/Cast_2CastAmodel_53/data_augmentation/random_zoom_6/strided_slice_4:output:0*

DstT0*

SrcT0*
_output_shapes
: 
>model_53/data_augmentation/random_zoom_6/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿ
@model_53/data_augmentation/random_zoom_6/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ
@model_53/data_augmentation/random_zoom_6/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¨
8model_53/data_augmentation/random_zoom_6/strided_slice_5StridedSlice9model_53/data_augmentation/random_zoom_6/Shape_1:output:0Gmodel_53/data_augmentation/random_zoom_6/strided_slice_5/stack:output:0Imodel_53/data_augmentation/random_zoom_6/strided_slice_5/stack_1:output:0Imodel_53/data_augmentation/random_zoom_6/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskª
/model_53/data_augmentation/random_zoom_6/Cast_3CastAmodel_53/data_augmentation/random_zoom_6/strided_slice_5:output:0*

DstT0*

SrcT0*
_output_shapes
: 
Cmodel_53/data_augmentation/random_zoom_6/stateful_uniform_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
Amodel_53/data_augmentation/random_zoom_6/stateful_uniform_1/shapePackAmodel_53/data_augmentation/random_zoom_6/strided_slice_3:output:0Lmodel_53/data_augmentation/random_zoom_6/stateful_uniform_1/shape/1:output:0*
N*
T0*
_output_shapes
:
?model_53/data_augmentation/random_zoom_6/stateful_uniform_1/minConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL?
?model_53/data_augmentation/random_zoom_6/stateful_uniform_1/maxConst*
_output_shapes
: *
dtype0*
valueB
 *?
Amodel_53/data_augmentation/random_zoom_6/stateful_uniform_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
@model_53/data_augmentation/random_zoom_6/stateful_uniform_1/ProdProdJmodel_53/data_augmentation/random_zoom_6/stateful_uniform_1/shape:output:0Jmodel_53/data_augmentation/random_zoom_6/stateful_uniform_1/Const:output:0*
T0*
_output_shapes
: 
Bmodel_53/data_augmentation/random_zoom_6/stateful_uniform_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Å
Bmodel_53/data_augmentation/random_zoom_6/stateful_uniform_1/Cast_1CastImodel_53/data_augmentation/random_zoom_6/stateful_uniform_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: «
Jmodel_53/data_augmentation/random_zoom_6/stateful_uniform_1/RngReadAndSkipRngReadAndSkipQmodel_53_data_augmentation_random_zoom_6_stateful_uniform_rngreadandskip_resourceKmodel_53/data_augmentation/random_zoom_6/stateful_uniform_1/Cast/x:output:0Fmodel_53/data_augmentation/random_zoom_6/stateful_uniform_1/Cast_1:y:0I^model_53/data_augmentation/random_zoom_6/stateful_uniform/RngReadAndSkip*
_output_shapes
:
Omodel_53/data_augmentation/random_zoom_6/stateful_uniform_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Qmodel_53/data_augmentation/random_zoom_6/stateful_uniform_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Qmodel_53/data_augmentation/random_zoom_6/stateful_uniform_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Imodel_53/data_augmentation/random_zoom_6/stateful_uniform_1/strided_sliceStridedSliceRmodel_53/data_augmentation/random_zoom_6/stateful_uniform_1/RngReadAndSkip:value:0Xmodel_53/data_augmentation/random_zoom_6/stateful_uniform_1/strided_slice/stack:output:0Zmodel_53/data_augmentation/random_zoom_6/stateful_uniform_1/strided_slice/stack_1:output:0Zmodel_53/data_augmentation/random_zoom_6/stateful_uniform_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskÓ
Cmodel_53/data_augmentation/random_zoom_6/stateful_uniform_1/BitcastBitcastRmodel_53/data_augmentation/random_zoom_6/stateful_uniform_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
Qmodel_53/data_augmentation/random_zoom_6/stateful_uniform_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
Smodel_53/data_augmentation/random_zoom_6/stateful_uniform_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Smodel_53/data_augmentation/random_zoom_6/stateful_uniform_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
Kmodel_53/data_augmentation/random_zoom_6/stateful_uniform_1/strided_slice_1StridedSliceRmodel_53/data_augmentation/random_zoom_6/stateful_uniform_1/RngReadAndSkip:value:0Zmodel_53/data_augmentation/random_zoom_6/stateful_uniform_1/strided_slice_1/stack:output:0\model_53/data_augmentation/random_zoom_6/stateful_uniform_1/strided_slice_1/stack_1:output:0\model_53/data_augmentation/random_zoom_6/stateful_uniform_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:×
Emodel_53/data_augmentation/random_zoom_6/stateful_uniform_1/Bitcast_1BitcastTmodel_53/data_augmentation/random_zoom_6/stateful_uniform_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0
Xmodel_53/data_augmentation/random_zoom_6/stateful_uniform_1/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :æ
Tmodel_53/data_augmentation/random_zoom_6/stateful_uniform_1/StatelessRandomUniformV2StatelessRandomUniformV2Jmodel_53/data_augmentation/random_zoom_6/stateful_uniform_1/shape:output:0Nmodel_53/data_augmentation/random_zoom_6/stateful_uniform_1/Bitcast_1:output:0Lmodel_53/data_augmentation/random_zoom_6/stateful_uniform_1/Bitcast:output:0amodel_53/data_augmentation/random_zoom_6/stateful_uniform_1/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿû
?model_53/data_augmentation/random_zoom_6/stateful_uniform_1/subSubHmodel_53/data_augmentation/random_zoom_6/stateful_uniform_1/max:output:0Hmodel_53/data_augmentation/random_zoom_6/stateful_uniform_1/min:output:0*
T0*
_output_shapes
: 
?model_53/data_augmentation/random_zoom_6/stateful_uniform_1/mulMul]model_53/data_augmentation/random_zoom_6/stateful_uniform_1/StatelessRandomUniformV2:output:0Cmodel_53/data_augmentation/random_zoom_6/stateful_uniform_1/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
;model_53/data_augmentation/random_zoom_6/stateful_uniform_1AddV2Cmodel_53/data_augmentation/random_zoom_6/stateful_uniform_1/mul:z:0Hmodel_53/data_augmentation/random_zoom_6/stateful_uniform_1/min:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
6model_53/data_augmentation/random_zoom_6/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :»
1model_53/data_augmentation/random_zoom_6/concat_1ConcatV2?model_53/data_augmentation/random_zoom_6/stateful_uniform_1:z:0?model_53/data_augmentation/random_zoom_6/stateful_uniform_1:z:0?model_53/data_augmentation/random_zoom_6/concat_1/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
<model_53/data_augmentation/random_zoom_6/zoom_matrix_1/ShapeShape:model_53/data_augmentation/random_zoom_6/concat_1:output:0*
T0*
_output_shapes
:
Jmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Lmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Lmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ä
Dmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/strided_sliceStridedSliceEmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/Shape:output:0Smodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/strided_slice/stack:output:0Umodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/strided_slice/stack_1:output:0Umodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
<model_53/data_augmentation/random_zoom_6/zoom_matrix_1/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Þ
:model_53/data_augmentation/random_zoom_6/zoom_matrix_1/subSub3model_53/data_augmentation/random_zoom_6/Cast_3:y:0Emodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/sub/y:output:0*
T0*
_output_shapes
: 
@model_53/data_augmentation/random_zoom_6/zoom_matrix_1/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @õ
>model_53/data_augmentation/random_zoom_6/zoom_matrix_1/truedivRealDiv>model_53/data_augmentation/random_zoom_6/zoom_matrix_1/sub:z:0Imodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/truediv/y:output:0*
T0*
_output_shapes
: ¡
Lmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            £
Nmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           £
Nmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ©
Fmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/strided_slice_1StridedSlice:model_53/data_augmentation/random_zoom_6/concat_1:output:0Umodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/strided_slice_1/stack:output:0Wmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/strided_slice_1/stack_1:output:0Wmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask
>model_53/data_augmentation/random_zoom_6/zoom_matrix_1/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
<model_53/data_augmentation/random_zoom_6/zoom_matrix_1/sub_1SubGmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/sub_1/x:output:0Omodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿù
:model_53/data_augmentation/random_zoom_6/zoom_matrix_1/mulMulBmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/truediv:z:0@model_53/data_augmentation/random_zoom_6/zoom_matrix_1/sub_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
>model_53/data_augmentation/random_zoom_6/zoom_matrix_1/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?â
<model_53/data_augmentation/random_zoom_6/zoom_matrix_1/sub_2Sub3model_53/data_augmentation/random_zoom_6/Cast_2:y:0Gmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/sub_2/y:output:0*
T0*
_output_shapes
: 
Bmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @û
@model_53/data_augmentation/random_zoom_6/zoom_matrix_1/truediv_1RealDiv@model_53/data_augmentation/random_zoom_6/zoom_matrix_1/sub_2:z:0Kmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/truediv_1/y:output:0*
T0*
_output_shapes
: ¡
Lmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           £
Nmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           £
Nmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ©
Fmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/strided_slice_2StridedSlice:model_53/data_augmentation/random_zoom_6/concat_1:output:0Umodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/strided_slice_2/stack:output:0Wmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/strided_slice_2/stack_1:output:0Wmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask
>model_53/data_augmentation/random_zoom_6/zoom_matrix_1/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
<model_53/data_augmentation/random_zoom_6/zoom_matrix_1/sub_3SubGmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/sub_3/x:output:0Omodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿý
<model_53/data_augmentation/random_zoom_6/zoom_matrix_1/mul_1MulDmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/truediv_1:z:0@model_53/data_augmentation/random_zoom_6/zoom_matrix_1/sub_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
Lmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            £
Nmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           £
Nmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ©
Fmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/strided_slice_3StridedSlice:model_53/data_augmentation/random_zoom_6/concat_1:output:0Umodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/strided_slice_3/stack:output:0Wmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/strided_slice_3/stack_1:output:0Wmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask
Emodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
Cmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/zeros/packedPackMmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/strided_slice:output:0Nmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:
Bmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
<model_53/data_augmentation/random_zoom_6/zoom_matrix_1/zerosFillLmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/zeros/packed:output:0Kmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Gmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
Emodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/zeros_1/packedPackMmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/strided_slice:output:0Pmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:
Dmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
>model_53/data_augmentation/random_zoom_6/zoom_matrix_1/zeros_1FillNmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/zeros_1/packed:output:0Mmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
Lmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           £
Nmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           £
Nmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ©
Fmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/strided_slice_4StridedSlice:model_53/data_augmentation/random_zoom_6/concat_1:output:0Umodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/strided_slice_4/stack:output:0Wmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/strided_slice_4/stack_1:output:0Wmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask
Gmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
Emodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/zeros_2/packedPackMmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/strided_slice:output:0Pmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:
Dmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
>model_53/data_augmentation/random_zoom_6/zoom_matrix_1/zeros_2FillNmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/zeros_2/packed:output:0Mmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/zeros_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Bmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Î
=model_53/data_augmentation/random_zoom_6/zoom_matrix_1/concatConcatV2Omodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/strided_slice_3:output:0Emodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/zeros:output:0>model_53/data_augmentation/random_zoom_6/zoom_matrix_1/mul:z:0Gmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/zeros_1:output:0Omodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/strided_slice_4:output:0@model_53/data_augmentation/random_zoom_6/zoom_matrix_1/mul_1:z:0Gmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/zeros_2:output:0Kmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
:model_53/data_augmentation/random_zoom_6/transform_1/ShapeShapehmodel_53/data_augmentation/random_rotation_6/transform_1/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:
Hmodel_53/data_augmentation/random_zoom_6/transform_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
Jmodel_53/data_augmentation/random_zoom_6/transform_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Jmodel_53/data_augmentation/random_zoom_6/transform_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Æ
Bmodel_53/data_augmentation/random_zoom_6/transform_1/strided_sliceStridedSliceCmodel_53/data_augmentation/random_zoom_6/transform_1/Shape:output:0Qmodel_53/data_augmentation/random_zoom_6/transform_1/strided_slice/stack:output:0Smodel_53/data_augmentation/random_zoom_6/transform_1/strided_slice/stack_1:output:0Smodel_53/data_augmentation/random_zoom_6/transform_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:
?model_53/data_augmentation/random_zoom_6/transform_1/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    ©
Omodel_53/data_augmentation/random_zoom_6/transform_1/ImageProjectiveTransformV3ImageProjectiveTransformV3hmodel_53/data_augmentation/random_rotation_6/transform_1/ImageProjectiveTransformV3:transformed_images:0Fmodel_53/data_augmentation/random_zoom_6/zoom_matrix_1/concat:output:0Kmodel_53/data_augmentation/random_zoom_6/transform_1/strided_slice:output:0Hmodel_53/data_augmentation/random_zoom_6/transform_1/fill_value:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR¦
+model_53/conv2d_253/Conv2D_1/ReadVariableOpReadVariableOp2model_53_conv2d_253_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0¤
model_53/conv2d_253/Conv2D_1Conv2Ddmodel_53/data_augmentation/random_zoom_6/transform_1/ImageProjectiveTransformV3:transformed_images:03model_53/conv2d_253/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿGG*
paddingVALID*
strides

,model_53/conv2d_253/BiasAdd_1/ReadVariableOpReadVariableOp3model_53_conv2d_253_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¿
model_53/conv2d_253/BiasAdd_1BiasAdd%model_53/conv2d_253/Conv2D_1:output:04model_53/conv2d_253/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿGG
model_53/conv2d_253/Relu_1Relu&model_53/conv2d_253/BiasAdd_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿGGÆ
$model_53/max_pooling2d_191/MaxPool_1MaxPool(model_53/conv2d_253/Relu_1:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ##*
ksize
*
paddingVALID*
strides
¦
+model_53/conv2d_254/Conv2D_1/ReadVariableOpReadVariableOp2model_53_conv2d_254_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0í
model_53/conv2d_254/Conv2D_1Conv2D-model_53/max_pooling2d_191/MaxPool_1:output:03model_53/conv2d_254/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!!*
paddingVALID*
strides

,model_53/conv2d_254/BiasAdd_1/ReadVariableOpReadVariableOp3model_53_conv2d_254_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¿
model_53/conv2d_254/BiasAdd_1BiasAdd%model_53/conv2d_254/Conv2D_1:output:04model_53/conv2d_254/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!!
model_53/conv2d_254/Relu_1Relu&model_53/conv2d_254/BiasAdd_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!!Æ
$model_53/max_pooling2d_192/MaxPool_1MaxPool(model_53/conv2d_254/Relu_1:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
¦
+model_53/conv2d_255/Conv2D_1/ReadVariableOpReadVariableOp2model_53_conv2d_255_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0í
model_53/conv2d_255/Conv2D_1Conv2D-model_53/max_pooling2d_192/MaxPool_1:output:03model_53/conv2d_255/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingVALID*
strides

,model_53/conv2d_255/BiasAdd_1/ReadVariableOpReadVariableOp3model_53_conv2d_255_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¿
model_53/conv2d_255/BiasAdd_1BiasAdd%model_53/conv2d_255/Conv2D_1:output:04model_53/conv2d_255/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
model_53/conv2d_255/Relu_1Relu&model_53/conv2d_255/BiasAdd_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Æ
$model_53/max_pooling2d_193/MaxPool_1MaxPool(model_53/conv2d_255/Relu_1:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
ksize
*
paddingVALID*
strides
¦
+model_53/conv2d_256/Conv2D_1/ReadVariableOpReadVariableOp2model_53_conv2d_256_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0í
model_53/conv2d_256/Conv2D_1Conv2D-model_53/max_pooling2d_193/MaxPool_1:output:03model_53/conv2d_256/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides

,model_53/conv2d_256/BiasAdd_1/ReadVariableOpReadVariableOp3model_53_conv2d_256_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¿
model_53/conv2d_256/BiasAdd_1BiasAdd%model_53/conv2d_256/Conv2D_1:output:04model_53/conv2d_256/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
model_53/conv2d_256/Relu_1Relu&model_53/conv2d_256/BiasAdd_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
model_53/flatten_61/Const_1Const*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@  «
model_53/flatten_61/Reshape_1Reshape(model_53/conv2d_256/Relu_1:activations:0$model_53/flatten_61/Const_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
*model_53/dense_119/MatMul_1/ReadVariableOpReadVariableOp1model_53_dense_119_matmul_readvariableop_resource*
_output_shapes
:	À2*
dtype0³
model_53/dense_119/MatMul_1MatMul&model_53/flatten_61/Reshape_1:output:02model_53/dense_119/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
+model_53/dense_119/BiasAdd_1/ReadVariableOpReadVariableOp2model_53_dense_119_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0µ
model_53/dense_119/BiasAdd_1BiasAdd%model_53/dense_119/MatMul_1:product:03model_53/dense_119/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z
model_53/dense_119/Relu_1Relu%model_53/dense_119/BiasAdd_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
*model_53/dense_120/MatMul_1/ReadVariableOpReadVariableOp1model_53_dense_120_matmul_readvariableop_resource*
_output_shapes

:2K*
dtype0´
model_53/dense_120/MatMul_1MatMul'model_53/dense_119/Relu_1:activations:02model_53/dense_120/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
+model_53/dense_120/BiasAdd_1/ReadVariableOpReadVariableOp2model_53_dense_120_biasadd_readvariableop_resource*
_output_shapes
:K*
dtype0µ
model_53/dense_120/BiasAdd_1BiasAdd%model_53/dense_120/MatMul_1:product:03model_53/dense_120/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
model_53/dense_120/Sigmoid_1Sigmoid%model_53/dense_120/BiasAdd_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
lambda_31/subSubmodel_53/dense_120/Sigmoid:y:0 model_53/dense_120/Sigmoid_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿKY
lambda_31/AbsAbslambda_31/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
dense_121/MatMul/ReadVariableOpReadVariableOp(dense_121_matmul_readvariableop_resource*
_output_shapes

:K*
dtype0
dense_121/MatMulMatMullambda_31/Abs:y:0'dense_121/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_121/BiasAdd/ReadVariableOpReadVariableOp)dense_121_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_121/BiasAddBiasAdddense_121/MatMul:product:0(dense_121/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
dense_121/SigmoidSigmoiddense_121/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
IdentityIdentitydense_121/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿë
NoOpNoOp!^dense_121/BiasAdd/ReadVariableOp ^dense_121/MatMul/ReadVariableOp+^model_53/conv2d_253/BiasAdd/ReadVariableOp-^model_53/conv2d_253/BiasAdd_1/ReadVariableOp*^model_53/conv2d_253/Conv2D/ReadVariableOp,^model_53/conv2d_253/Conv2D_1/ReadVariableOp+^model_53/conv2d_254/BiasAdd/ReadVariableOp-^model_53/conv2d_254/BiasAdd_1/ReadVariableOp*^model_53/conv2d_254/Conv2D/ReadVariableOp,^model_53/conv2d_254/Conv2D_1/ReadVariableOp+^model_53/conv2d_255/BiasAdd/ReadVariableOp-^model_53/conv2d_255/BiasAdd_1/ReadVariableOp*^model_53/conv2d_255/Conv2D/ReadVariableOp,^model_53/conv2d_255/Conv2D_1/ReadVariableOp+^model_53/conv2d_256/BiasAdd/ReadVariableOp-^model_53/conv2d_256/BiasAdd_1/ReadVariableOp*^model_53/conv2d_256/Conv2D/ReadVariableOp,^model_53/conv2d_256/Conv2D_1/ReadVariableOp3^model_53/data_augmentation/random_flip_6/map/while5^model_53/data_augmentation/random_flip_6/map_1/whileM^model_53/data_augmentation/random_rotation_6/stateful_uniform/RngReadAndSkipO^model_53/data_augmentation/random_rotation_6/stateful_uniform_1/RngReadAndSkipI^model_53/data_augmentation/random_zoom_6/stateful_uniform/RngReadAndSkipK^model_53/data_augmentation/random_zoom_6/stateful_uniform_1/RngReadAndSkip*^model_53/dense_119/BiasAdd/ReadVariableOp,^model_53/dense_119/BiasAdd_1/ReadVariableOp)^model_53/dense_119/MatMul/ReadVariableOp+^model_53/dense_119/MatMul_1/ReadVariableOp*^model_53/dense_120/BiasAdd/ReadVariableOp,^model_53/dense_120/BiasAdd_1/ReadVariableOp)^model_53/dense_120/MatMul/ReadVariableOp+^model_53/dense_120/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:ÿÿÿÿÿÿÿÿÿKK:ÿÿÿÿÿÿÿÿÿKK: : : : : : : : : : : : : : : : : 2D
 dense_121/BiasAdd/ReadVariableOp dense_121/BiasAdd/ReadVariableOp2B
dense_121/MatMul/ReadVariableOpdense_121/MatMul/ReadVariableOp2X
*model_53/conv2d_253/BiasAdd/ReadVariableOp*model_53/conv2d_253/BiasAdd/ReadVariableOp2\
,model_53/conv2d_253/BiasAdd_1/ReadVariableOp,model_53/conv2d_253/BiasAdd_1/ReadVariableOp2V
)model_53/conv2d_253/Conv2D/ReadVariableOp)model_53/conv2d_253/Conv2D/ReadVariableOp2Z
+model_53/conv2d_253/Conv2D_1/ReadVariableOp+model_53/conv2d_253/Conv2D_1/ReadVariableOp2X
*model_53/conv2d_254/BiasAdd/ReadVariableOp*model_53/conv2d_254/BiasAdd/ReadVariableOp2\
,model_53/conv2d_254/BiasAdd_1/ReadVariableOp,model_53/conv2d_254/BiasAdd_1/ReadVariableOp2V
)model_53/conv2d_254/Conv2D/ReadVariableOp)model_53/conv2d_254/Conv2D/ReadVariableOp2Z
+model_53/conv2d_254/Conv2D_1/ReadVariableOp+model_53/conv2d_254/Conv2D_1/ReadVariableOp2X
*model_53/conv2d_255/BiasAdd/ReadVariableOp*model_53/conv2d_255/BiasAdd/ReadVariableOp2\
,model_53/conv2d_255/BiasAdd_1/ReadVariableOp,model_53/conv2d_255/BiasAdd_1/ReadVariableOp2V
)model_53/conv2d_255/Conv2D/ReadVariableOp)model_53/conv2d_255/Conv2D/ReadVariableOp2Z
+model_53/conv2d_255/Conv2D_1/ReadVariableOp+model_53/conv2d_255/Conv2D_1/ReadVariableOp2X
*model_53/conv2d_256/BiasAdd/ReadVariableOp*model_53/conv2d_256/BiasAdd/ReadVariableOp2\
,model_53/conv2d_256/BiasAdd_1/ReadVariableOp,model_53/conv2d_256/BiasAdd_1/ReadVariableOp2V
)model_53/conv2d_256/Conv2D/ReadVariableOp)model_53/conv2d_256/Conv2D/ReadVariableOp2Z
+model_53/conv2d_256/Conv2D_1/ReadVariableOp+model_53/conv2d_256/Conv2D_1/ReadVariableOp2h
2model_53/data_augmentation/random_flip_6/map/while2model_53/data_augmentation/random_flip_6/map/while2l
4model_53/data_augmentation/random_flip_6/map_1/while4model_53/data_augmentation/random_flip_6/map_1/while2
Lmodel_53/data_augmentation/random_rotation_6/stateful_uniform/RngReadAndSkipLmodel_53/data_augmentation/random_rotation_6/stateful_uniform/RngReadAndSkip2 
Nmodel_53/data_augmentation/random_rotation_6/stateful_uniform_1/RngReadAndSkipNmodel_53/data_augmentation/random_rotation_6/stateful_uniform_1/RngReadAndSkip2
Hmodel_53/data_augmentation/random_zoom_6/stateful_uniform/RngReadAndSkipHmodel_53/data_augmentation/random_zoom_6/stateful_uniform/RngReadAndSkip2
Jmodel_53/data_augmentation/random_zoom_6/stateful_uniform_1/RngReadAndSkipJmodel_53/data_augmentation/random_zoom_6/stateful_uniform_1/RngReadAndSkip2V
)model_53/dense_119/BiasAdd/ReadVariableOp)model_53/dense_119/BiasAdd/ReadVariableOp2Z
+model_53/dense_119/BiasAdd_1/ReadVariableOp+model_53/dense_119/BiasAdd_1/ReadVariableOp2T
(model_53/dense_119/MatMul/ReadVariableOp(model_53/dense_119/MatMul/ReadVariableOp2X
*model_53/dense_119/MatMul_1/ReadVariableOp*model_53/dense_119/MatMul_1/ReadVariableOp2V
)model_53/dense_120/BiasAdd/ReadVariableOp)model_53/dense_120/BiasAdd/ReadVariableOp2Z
+model_53/dense_120/BiasAdd_1/ReadVariableOp+model_53/dense_120/BiasAdd_1/ReadVariableOp2T
(model_53/dense_120/MatMul/ReadVariableOp(model_53/dense_120/MatMul/ReadVariableOp2X
*model_53/dense_120/MatMul_1/ReadVariableOp*model_53/dense_120/MatMul_1/ReadVariableOp:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
"
_user_specified_name
inputs/1


?model_53_data_augmentation_random_flip_6_map_while_cond_1013125v
rmodel_53_data_augmentation_random_flip_6_map_while_model_53_data_augmentation_random_flip_6_map_while_loop_counterq
mmodel_53_data_augmentation_random_flip_6_map_while_model_53_data_augmentation_random_flip_6_map_strided_sliceB
>model_53_data_augmentation_random_flip_6_map_while_placeholderD
@model_53_data_augmentation_random_flip_6_map_while_placeholder_1v
rmodel_53_data_augmentation_random_flip_6_map_while_less_model_53_data_augmentation_random_flip_6_map_strided_slice
model_53_data_augmentation_random_flip_6_map_while_model_53_data_augmentation_random_flip_6_map_while_cond_1013125___redundant_placeholder0
model_53_data_augmentation_random_flip_6_map_while_model_53_data_augmentation_random_flip_6_map_while_cond_1013125___redundant_placeholder1?
;model_53_data_augmentation_random_flip_6_map_while_identity

7model_53/data_augmentation/random_flip_6/map/while/LessLess>model_53_data_augmentation_random_flip_6_map_while_placeholderrmodel_53_data_augmentation_random_flip_6_map_while_less_model_53_data_augmentation_random_flip_6_map_strided_slice*
T0*
_output_shapes
: Å
9model_53/data_augmentation/random_flip_6/map/while/Less_1Lessrmodel_53_data_augmentation_random_flip_6_map_while_model_53_data_augmentation_random_flip_6_map_while_loop_countermmodel_53_data_augmentation_random_flip_6_map_while_model_53_data_augmentation_random_flip_6_map_strided_slice*
T0*
_output_shapes
: ß
=model_53/data_augmentation/random_flip_6/map/while/LogicalAnd
LogicalAnd=model_53/data_augmentation/random_flip_6/map/while/Less_1:z:0;model_53/data_augmentation/random_flip_6/map/while/Less:z:0*
_output_shapes
: «
;model_53/data_augmentation/random_flip_6/map/while/IdentityIdentityAmodel_53/data_augmentation/random_flip_6/map/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "
;model_53_data_augmentation_random_flip_6_map_while_identityDmodel_53/data_augmentation/random_flip_6/map/while/Identity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:
ð	
¤
Erandom_flip_6_map_while_stateless_random_flip_left_right_true_1014460
random_flip_6_map_while_stateless_random_flip_left_right_reversev2_random_flip_6_map_while_stateless_random_flip_left_right_control_dependencyE
Arandom_flip_6_map_while_stateless_random_flip_left_right_identity
Grandom_flip_6/map/while/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:ß
Brandom_flip_6/map/while/stateless_random_flip_left_right/ReverseV2	ReverseV2random_flip_6_map_while_stateless_random_flip_left_right_reversev2_random_flip_6_map_while_stateless_random_flip_left_right_control_dependencyPrandom_flip_6/map/while/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*"
_output_shapes
:KKÇ
Arandom_flip_6/map/while/stateless_random_flip_left_right/IdentityIdentityKrandom_flip_6/map/while/stateless_random_flip_left_right/ReverseV2:output:0*
T0*"
_output_shapes
:KK"
Arandom_flip_6_map_while_stateless_random_flip_left_right_identityJrandom_flip_6/map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:KK:( $
"
_output_shapes
:KK
»
ê
8map_while_stateless_random_flip_left_right_false_1014959u
qmap_while_stateless_random_flip_left_right_identity_map_while_stateless_random_flip_left_right_control_dependency7
3map_while_stateless_random_flip_left_right_identityß
3map/while/stateless_random_flip_left_right/IdentityIdentityqmap_while_stateless_random_flip_left_right_identity_map_while_stateless_random_flip_left_right_control_dependency*
T0*"
_output_shapes
:KK"s
3map_while_stateless_random_flip_left_right_identity<map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:KK:( $
"
_output_shapes
:KK
à

%__inference_signature_wrapper_1012939
input_65
input_66!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:	À2
	unknown_8:2
	unknown_9:2K

unknown_10:K

unknown_11:K

unknown_12:
identity¢StatefulPartitionedCallã
StatefulPartitionedCallStatefulPartitionedCallinput_65input_66unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__wrapped_model_1011549o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:ÿÿÿÿÿÿÿÿÿKK:ÿÿÿÿÿÿÿÿÿKK: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
"
_user_specified_name
input_65:YU
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
"
_user_specified_name
input_66

j
N__inference_random_rotation_6_layer_call_and_return_conditional_losses_1015008

inputs
identityV
IdentityIdentityinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿKK:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
 
_user_specified_nameinputs
é

bmodel_53_data_augmentation_random_flip_6_map_1_while_stateless_random_flip_left_right_true_1013549Í
Èmodel_53_data_augmentation_random_flip_6_map_1_while_stateless_random_flip_left_right_reversev2_model_53_data_augmentation_random_flip_6_map_1_while_stateless_random_flip_left_right_control_dependencyb
^model_53_data_augmentation_random_flip_6_map_1_while_stateless_random_flip_left_right_identity®
dmodel_53/data_augmentation/random_flip_6/map_1/while/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:Ó
_model_53/data_augmentation/random_flip_6/map_1/while/stateless_random_flip_left_right/ReverseV2	ReverseV2Èmodel_53_data_augmentation_random_flip_6_map_1_while_stateless_random_flip_left_right_reversev2_model_53_data_augmentation_random_flip_6_map_1_while_stateless_random_flip_left_right_control_dependencymmodel_53/data_augmentation/random_flip_6/map_1/while/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*"
_output_shapes
:KK
^model_53/data_augmentation/random_flip_6/map_1/while/stateless_random_flip_left_right/IdentityIdentityhmodel_53/data_augmentation/random_flip_6/map_1/while/stateless_random_flip_left_right/ReverseV2:output:0*
T0*"
_output_shapes
:KK"É
^model_53_data_augmentation_random_flip_6_map_1_while_stateless_random_flip_left_right_identitygmodel_53/data_augmentation/random_flip_6/map_1/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:KK:( $
"
_output_shapes
:KK
ï
Ý
E__inference_model_54_layer_call_and_return_conditional_losses_1012559

inputs
inputs_1*
model_53_1012494:
model_53_1012496:*
model_53_1012498:
model_53_1012500:*
model_53_1012502: 
model_53_1012504: *
model_53_1012506: @
model_53_1012508:@#
model_53_1012510:	À2
model_53_1012512:2"
model_53_1012514:2K
model_53_1012516:K#
dense_121_1012553:K
dense_121_1012555:
identity¢!dense_121/StatefulPartitionedCall¢ model_53/StatefulPartitionedCall¢"model_53/StatefulPartitionedCall_1»
 model_53/StatefulPartitionedCallStatefulPartitionedCallinputsmodel_53_1012494model_53_1012496model_53_1012498model_53_1012500model_53_1012502model_53_1012504model_53_1012506model_53_1012508model_53_1012510model_53_1012512model_53_1012514model_53_1012516*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_model_53_layer_call_and_return_conditional_losses_1012164¿
"model_53/StatefulPartitionedCall_1StatefulPartitionedCallinputs_1model_53_1012494model_53_1012496model_53_1012498model_53_1012500model_53_1012502model_53_1012504model_53_1012506model_53_1012508model_53_1012510model_53_1012512model_53_1012514model_53_1012516*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_model_53_layer_call_and_return_conditional_losses_1012164
lambda_31/PartitionedCallPartitionedCall)model_53/StatefulPartitionedCall:output:0+model_53/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lambda_31_layer_call_and_return_conditional_losses_1012539
!dense_121/StatefulPartitionedCallStatefulPartitionedCall"lambda_31/PartitionedCall:output:0dense_121_1012553dense_121_1012555*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_121_layer_call_and_return_conditional_losses_1012552y
IdentityIdentity*dense_121/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
NoOpNoOp"^dense_121/StatefulPartitionedCall!^model_53/StatefulPartitionedCall#^model_53/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:ÿÿÿÿÿÿÿÿÿKK:ÿÿÿÿÿÿÿÿÿKK: : : : : : : : : : : : : : 2F
!dense_121/StatefulPartitionedCall!dense_121/StatefulPartitionedCall2D
 model_53/StatefulPartitionedCall model_53/StatefulPartitionedCall2H
"model_53/StatefulPartitionedCall_1"model_53/StatefulPartitionedCall_1:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
 
_user_specified_nameinputs:WS
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
 
_user_specified_nameinputs

w
N__inference_data_augmentation_layer_call_and_return_conditional_losses_1011993
random_flip_6_input
identityØ
random_flip_6/PartitionedCallPartitionedCallrandom_flip_6_input*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_random_flip_6_layer_call_and_return_conditional_losses_1011560ó
!random_rotation_6/PartitionedCallPartitionedCall&random_flip_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_random_rotation_6_layer_call_and_return_conditional_losses_1011566ï
random_zoom_6/PartitionedCallPartitionedCall*random_rotation_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_random_zoom_6_layer_call_and_return_conditional_losses_1011572v
IdentityIdentity&random_zoom_6/PartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿKK:d `
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
-
_user_specified_namerandom_flip_6_input
¦
W
+__inference_lambda_31_layer_call_fn_1014325
inputs_0
inputs_1
identity¾
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lambda_31_layer_call_and_return_conditional_losses_1012539`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿK:ÿÿÿÿÿÿÿÿÿK:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
"
_user_specified_name
inputs/1
V
Õ
map_while_body_1011848$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1#
map_while_map_strided_slice_1_0_
[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0K
=map_while_stateful_uniform_full_int_rngreadandskip_resource_0:	
map_while_identity
map_while_identity_1
map_while_identity_2
map_while_identity_3!
map_while_map_strided_slice_1]
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensorI
;map_while_stateful_uniform_full_int_rngreadandskip_resource:	¢2map/while/stateful_uniform_full_int/RngReadAndSkip
;map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"K   K      µ
-map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0map_while_placeholderDmap/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*"
_output_shapes
:KK*
element_dtype0s
)map/while/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:s
)map/while/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: ¹
(map/while/stateful_uniform_full_int/ProdProd2map/while/stateful_uniform_full_int/shape:output:02map/while/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: l
*map/while/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
*map/while/stateful_uniform_full_int/Cast_1Cast1map/while/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 
2map/while/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip=map_while_stateful_uniform_full_int_rngreadandskip_resource_03map/while/stateful_uniform_full_int/Cast/x:output:0.map/while/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:
7map/while/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
9map/while/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
9map/while/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
1map/while/stateful_uniform_full_int/strided_sliceStridedSlice:map/while/stateful_uniform_full_int/RngReadAndSkip:value:0@map/while/stateful_uniform_full_int/strided_slice/stack:output:0Bmap/while/stateful_uniform_full_int/strided_slice/stack_1:output:0Bmap/while/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask£
+map/while/stateful_uniform_full_int/BitcastBitcast:map/while/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
9map/while/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
;map/while/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
;map/while/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
3map/while/stateful_uniform_full_int/strided_slice_1StridedSlice:map/while/stateful_uniform_full_int/RngReadAndSkip:value:0Bmap/while/stateful_uniform_full_int/strided_slice_1/stack:output:0Dmap/while/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Dmap/while/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:§
-map/while/stateful_uniform_full_int/Bitcast_1Bitcast<map/while/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0i
'map/while/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :Ã
#map/while/stateful_uniform_full_intStatelessRandomUniformFullIntV22map/while/stateful_uniform_full_int/shape:output:06map/while/stateful_uniform_full_int/Bitcast_1:output:04map/while/stateful_uniform_full_int/Bitcast:output:00map/while/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	^
map/while/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R 
map/while/stackPack,map/while/stateful_uniform_full_int:output:0map/while/zeros_like:output:0*
N*
T0	*
_output_shapes

:n
map/while/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
map/while/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       p
map/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ©
map/while/strided_sliceStridedSlicemap/while/stack:output:0&map/while/strided_slice/stack:output:0(map/while/strided_slice/stack_1:output:0(map/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskî
=map/while/stateless_random_flip_left_right/control_dependencyIdentity4map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*@
_class6
42loc:@map/while/TensorArrayV2Read/TensorListGetItem*"
_output_shapes
:KK
Imap/while/stateless_random_flip_left_right/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB 
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ä
`map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter map/while/strided_slice:output:0* 
_output_shapes
::¢
`map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :£
\map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Rmap/while/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0fmap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0jmap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0imap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: 
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/subSubPmap/while/stateless_random_flip_left_right/stateless_random_uniform/max:output:0Pmap/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: £
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/mulMulemap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Kmap/while/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: 
Cmap/while/stateless_random_flip_left_right/stateless_random_uniformAddV2Kmap/while/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0Pmap/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: v
1map/while/stateless_random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ý
/map/while/stateless_random_flip_left_right/LessLessGmap/while/stateless_random_flip_left_right/stateless_random_uniform:z:0:map/while/stateless_random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: 
*map/while/stateless_random_flip_left_rightStatelessIf3map/while/stateless_random_flip_left_right/Less:z:0Fmap/while/stateless_random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*"
_output_shapes
:KK* 
_read_only_resource_inputs
 *K
else_branch<R:
8map_while_stateless_random_flip_left_right_false_1011908*!
output_shapes
:KK*J
then_branch;R9
7map_while_stateless_random_flip_left_right_true_1011907¡
3map/while/stateless_random_flip_left_right/IdentityIdentity3map/while/stateless_random_flip_left_right:output:0*
T0*"
_output_shapes
:KKñ
.map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemmap_while_placeholder_1map_while_placeholder<map/while/stateless_random_flip_left_right/Identity:output:0*
_output_shapes
: *
element_dtype0:éèÒQ
map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :h
map/while/addAddV2map_while_placeholdermap/while/add/y:output:0*
T0*
_output_shapes
: S
map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
map/while/add_1AddV2 map_while_map_while_loop_countermap/while/add_1/y:output:0*
T0*
_output_shapes
: e
map/while/IdentityIdentitymap/while/add_1:z:0^map/while/NoOp*
T0*
_output_shapes
: o
map/while/Identity_1Identitymap_while_map_strided_slice^map/while/NoOp*
T0*
_output_shapes
: e
map/while/Identity_2Identitymap/while/add:z:0^map/while/NoOp*
T0*
_output_shapes
: 
map/while/Identity_3Identity>map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^map/while/NoOp*
T0*
_output_shapes
: 
map/while/NoOpNoOp3^map/while/stateful_uniform_full_int/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "1
map_while_identitymap/while/Identity:output:0"5
map_while_identity_1map/while/Identity_1:output:0"5
map_while_identity_2map/while/Identity_2:output:0"5
map_while_identity_3map/while/Identity_3:output:0"@
map_while_map_strided_slice_1map_while_map_strided_slice_1_0"|
;map_while_stateful_uniform_full_int_rngreadandskip_resource=map_while_stateful_uniform_full_int_rngreadandskip_resource_0"¸
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : : : 2h
2map/while/stateful_uniform_full_int/RngReadAndSkip2map/while/stateful_uniform_full_int/RngReadAndSkip: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 

j
N__inference_max_pooling2d_193_layer_call_and_return_conditional_losses_1014796

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


G__inference_conv2d_254_layer_call_and_return_conditional_losses_1012079

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!!*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!!X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!!i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!!w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ##: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ##
 
_user_specified_nameinputs
¡

ø
F__inference_dense_119_layer_call_and_return_conditional_losses_1014847

inputs1
matmul_readvariableop_resource:	À2-
biasadd_readvariableop_resource:2
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	À2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs
ò
¿
E__inference_model_54_layer_call_and_return_conditional_losses_1012899
input_65
input_66
model_53_1012845:	
model_53_1012847:	
model_53_1012849:	*
model_53_1012851:
model_53_1012853:*
model_53_1012855:
model_53_1012857:*
model_53_1012859: 
model_53_1012861: *
model_53_1012863: @
model_53_1012865:@#
model_53_1012867:	À2
model_53_1012869:2"
model_53_1012871:2K
model_53_1012873:K#
dense_121_1012893:K
dense_121_1012895:
identity¢!dense_121/StatefulPartitionedCall¢ model_53/StatefulPartitionedCall¢"model_53/StatefulPartitionedCall_1ö
 model_53/StatefulPartitionedCallStatefulPartitionedCallinput_65model_53_1012845model_53_1012847model_53_1012849model_53_1012851model_53_1012853model_53_1012855model_53_1012857model_53_1012859model_53_1012861model_53_1012863model_53_1012865model_53_1012867model_53_1012869model_53_1012871model_53_1012873*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_model_53_layer_call_and_return_conditional_losses_1012333
"model_53/StatefulPartitionedCall_1StatefulPartitionedCallinput_66model_53_1012845model_53_1012847model_53_1012849model_53_1012851model_53_1012853model_53_1012855model_53_1012857model_53_1012859model_53_1012861model_53_1012863model_53_1012865model_53_1012867model_53_1012869model_53_1012871model_53_1012873!^model_53/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_model_53_layer_call_and_return_conditional_losses_1012333
lambda_31/PartitionedCallPartitionedCall)model_53/StatefulPartitionedCall:output:0+model_53/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lambda_31_layer_call_and_return_conditional_losses_1012617
!dense_121/StatefulPartitionedCallStatefulPartitionedCall"lambda_31/PartitionedCall:output:0dense_121_1012893dense_121_1012895*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_121_layer_call_and_return_conditional_losses_1012552y
IdentityIdentity*dense_121/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
NoOpNoOp"^dense_121/StatefulPartitionedCall!^model_53/StatefulPartitionedCall#^model_53/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:ÿÿÿÿÿÿÿÿÿKK:ÿÿÿÿÿÿÿÿÿKK: : : : : : : : : : : : : : : : : 2F
!dense_121/StatefulPartitionedCall!dense_121/StatefulPartitionedCall2D
 model_53/StatefulPartitionedCall model_53/StatefulPartitionedCall2H
"model_53/StatefulPartitionedCall_1"model_53/StatefulPartitionedCall_1:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
"
_user_specified_name
input_65:YU
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
"
_user_specified_name
input_66

f
J__inference_random_flip_6_layer_call_and_return_conditional_losses_1014883

inputs
identityV
IdentityIdentityinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿKK:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
 
_user_specified_nameinputs
»~

6data_augmentation_random_flip_6_map_while_body_1013967d
`data_augmentation_random_flip_6_map_while_data_augmentation_random_flip_6_map_while_loop_counter_
[data_augmentation_random_flip_6_map_while_data_augmentation_random_flip_6_map_strided_slice9
5data_augmentation_random_flip_6_map_while_placeholder;
7data_augmentation_random_flip_6_map_while_placeholder_1c
_data_augmentation_random_flip_6_map_while_data_augmentation_random_flip_6_map_strided_slice_1_0 
data_augmentation_random_flip_6_map_while_tensorarrayv2read_tensorlistgetitem_data_augmentation_random_flip_6_map_tensorarrayunstack_tensorlistfromtensor_0k
]data_augmentation_random_flip_6_map_while_stateful_uniform_full_int_rngreadandskip_resource_0:	6
2data_augmentation_random_flip_6_map_while_identity8
4data_augmentation_random_flip_6_map_while_identity_18
4data_augmentation_random_flip_6_map_while_identity_28
4data_augmentation_random_flip_6_map_while_identity_3a
]data_augmentation_random_flip_6_map_while_data_augmentation_random_flip_6_map_strided_slice_1
data_augmentation_random_flip_6_map_while_tensorarrayv2read_tensorlistgetitem_data_augmentation_random_flip_6_map_tensorarrayunstack_tensorlistfromtensori
[data_augmentation_random_flip_6_map_while_stateful_uniform_full_int_rngreadandskip_resource:	¢Rdata_augmentation/random_flip_6/map/while/stateful_uniform_full_int/RngReadAndSkip°
[data_augmentation/random_flip_6/map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"K   K      Ö
Mdata_augmentation/random_flip_6/map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemdata_augmentation_random_flip_6_map_while_tensorarrayv2read_tensorlistgetitem_data_augmentation_random_flip_6_map_tensorarrayunstack_tensorlistfromtensor_05data_augmentation_random_flip_6_map_while_placeholderddata_augmentation/random_flip_6/map/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*"
_output_shapes
:KK*
element_dtype0
Idata_augmentation/random_flip_6/map/while/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:
Idata_augmentation/random_flip_6/map/while/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
Hdata_augmentation/random_flip_6/map/while/stateful_uniform_full_int/ProdProdRdata_augmentation/random_flip_6/map/while/stateful_uniform_full_int/shape:output:0Rdata_augmentation/random_flip_6/map/while/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: 
Jdata_augmentation/random_flip_6/map/while/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Õ
Jdata_augmentation/random_flip_6/map/while/stateful_uniform_full_int/Cast_1CastQdata_augmentation/random_flip_6/map/while/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 
Rdata_augmentation/random_flip_6/map/while/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip]data_augmentation_random_flip_6_map_while_stateful_uniform_full_int_rngreadandskip_resource_0Sdata_augmentation/random_flip_6/map/while/stateful_uniform_full_int/Cast/x:output:0Ndata_augmentation/random_flip_6/map/while/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:¡
Wdata_augmentation/random_flip_6/map/while/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: £
Ydata_augmentation/random_flip_6/map/while/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:£
Ydata_augmentation/random_flip_6/map/while/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:«
Qdata_augmentation/random_flip_6/map/while/stateful_uniform_full_int/strided_sliceStridedSliceZdata_augmentation/random_flip_6/map/while/stateful_uniform_full_int/RngReadAndSkip:value:0`data_augmentation/random_flip_6/map/while/stateful_uniform_full_int/strided_slice/stack:output:0bdata_augmentation/random_flip_6/map/while/stateful_uniform_full_int/strided_slice/stack_1:output:0bdata_augmentation/random_flip_6/map/while/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskã
Kdata_augmentation/random_flip_6/map/while/stateful_uniform_full_int/BitcastBitcastZdata_augmentation/random_flip_6/map/while/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0£
Ydata_augmentation/random_flip_6/map/while/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:¥
[data_augmentation/random_flip_6/map/while/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¥
[data_augmentation/random_flip_6/map/while/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¡
Sdata_augmentation/random_flip_6/map/while/stateful_uniform_full_int/strided_slice_1StridedSliceZdata_augmentation/random_flip_6/map/while/stateful_uniform_full_int/RngReadAndSkip:value:0bdata_augmentation/random_flip_6/map/while/stateful_uniform_full_int/strided_slice_1/stack:output:0ddata_augmentation/random_flip_6/map/while/stateful_uniform_full_int/strided_slice_1/stack_1:output:0ddata_augmentation/random_flip_6/map/while/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:ç
Mdata_augmentation/random_flip_6/map/while/stateful_uniform_full_int/Bitcast_1Bitcast\data_augmentation/random_flip_6/map/while/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0
Gdata_augmentation/random_flip_6/map/while/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :ã
Cdata_augmentation/random_flip_6/map/while/stateful_uniform_full_intStatelessRandomUniformFullIntV2Rdata_augmentation/random_flip_6/map/while/stateful_uniform_full_int/shape:output:0Vdata_augmentation/random_flip_6/map/while/stateful_uniform_full_int/Bitcast_1:output:0Tdata_augmentation/random_flip_6/map/while/stateful_uniform_full_int/Bitcast:output:0Pdata_augmentation/random_flip_6/map/while/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	~
4data_augmentation/random_flip_6/map/while/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R ö
/data_augmentation/random_flip_6/map/while/stackPackLdata_augmentation/random_flip_6/map/while/stateful_uniform_full_int:output:0=data_augmentation/random_flip_6/map/while/zeros_like:output:0*
N*
T0	*
_output_shapes

:
=data_augmentation/random_flip_6/map/while/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
?data_augmentation/random_flip_6/map/while/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
?data_augmentation/random_flip_6/map/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      É
7data_augmentation/random_flip_6/map/while/strided_sliceStridedSlice8data_augmentation/random_flip_6/map/while/stack:output:0Fdata_augmentation/random_flip_6/map/while/strided_slice/stack:output:0Hdata_augmentation/random_flip_6/map/while/strided_slice/stack_1:output:0Hdata_augmentation/random_flip_6/map/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskÎ
]data_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/control_dependencyIdentityTdata_augmentation/random_flip_6/map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*`
_classV
TRloc:@data_augmentation/random_flip_6/map/while/TensorArrayV2Read/TensorListGetItem*"
_output_shapes
:KK¬
idata_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB ¬
gdata_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    ¬
gdata_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
data_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter@data_augmentation/random_flip_6/map/while/strided_slice:output:0* 
_output_shapes
::Ã
data_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Æ
|data_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2rdata_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0data_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0data_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0data_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: ó
gdata_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/subSubpdata_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/max:output:0pdata_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 
gdata_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/mulMuldata_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0kdata_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: ì
cdata_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniformAddV2kdata_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0pdata_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 
Qdata_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?½
Odata_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/LessLessgdata_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform:z:0Zdata_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: £
Jdata_augmentation/random_flip_6/map/while/stateless_random_flip_left_rightStatelessIfSdata_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/Less:z:0fdata_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*"
_output_shapes
:KK* 
_read_only_resource_inputs
 *k
else_branch\RZ
Xdata_augmentation_random_flip_6_map_while_stateless_random_flip_left_right_false_1014027*!
output_shapes
:KK*j
then_branch[RY
Wdata_augmentation_random_flip_6_map_while_stateless_random_flip_left_right_true_1014026á
Sdata_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/IdentityIdentitySdata_augmentation/random_flip_6/map/while/stateless_random_flip_left_right:output:0*
T0*"
_output_shapes
:KKñ
Ndata_augmentation/random_flip_6/map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem7data_augmentation_random_flip_6_map_while_placeholder_15data_augmentation_random_flip_6_map_while_placeholder\data_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/Identity:output:0*
_output_shapes
: *
element_dtype0:éèÒq
/data_augmentation/random_flip_6/map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :È
-data_augmentation/random_flip_6/map/while/addAddV25data_augmentation_random_flip_6_map_while_placeholder8data_augmentation/random_flip_6/map/while/add/y:output:0*
T0*
_output_shapes
: s
1data_augmentation/random_flip_6/map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :÷
/data_augmentation/random_flip_6/map/while/add_1AddV2`data_augmentation_random_flip_6_map_while_data_augmentation_random_flip_6_map_while_loop_counter:data_augmentation/random_flip_6/map/while/add_1/y:output:0*
T0*
_output_shapes
: Å
2data_augmentation/random_flip_6/map/while/IdentityIdentity3data_augmentation/random_flip_6/map/while/add_1:z:0/^data_augmentation/random_flip_6/map/while/NoOp*
T0*
_output_shapes
: ï
4data_augmentation/random_flip_6/map/while/Identity_1Identity[data_augmentation_random_flip_6_map_while_data_augmentation_random_flip_6_map_strided_slice/^data_augmentation/random_flip_6/map/while/NoOp*
T0*
_output_shapes
: Å
4data_augmentation/random_flip_6/map/while/Identity_2Identity1data_augmentation/random_flip_6/map/while/add:z:0/^data_augmentation/random_flip_6/map/while/NoOp*
T0*
_output_shapes
: ò
4data_augmentation/random_flip_6/map/while/Identity_3Identity^data_augmentation/random_flip_6/map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^data_augmentation/random_flip_6/map/while/NoOp*
T0*
_output_shapes
: Å
.data_augmentation/random_flip_6/map/while/NoOpNoOpS^data_augmentation/random_flip_6/map/while/stateful_uniform_full_int/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "À
]data_augmentation_random_flip_6_map_while_data_augmentation_random_flip_6_map_strided_slice_1_data_augmentation_random_flip_6_map_while_data_augmentation_random_flip_6_map_strided_slice_1_0"q
2data_augmentation_random_flip_6_map_while_identity;data_augmentation/random_flip_6/map/while/Identity:output:0"u
4data_augmentation_random_flip_6_map_while_identity_1=data_augmentation/random_flip_6/map/while/Identity_1:output:0"u
4data_augmentation_random_flip_6_map_while_identity_2=data_augmentation/random_flip_6/map/while/Identity_2:output:0"u
4data_augmentation_random_flip_6_map_while_identity_3=data_augmentation/random_flip_6/map/while/Identity_3:output:0"¼
[data_augmentation_random_flip_6_map_while_stateful_uniform_full_int_rngreadandskip_resource]data_augmentation_random_flip_6_map_while_stateful_uniform_full_int_rngreadandskip_resource_0"º
data_augmentation_random_flip_6_map_while_tensorarrayv2read_tensorlistgetitem_data_augmentation_random_flip_6_map_tensorarrayunstack_tensorlistfromtensordata_augmentation_random_flip_6_map_while_tensorarrayv2read_tensorlistgetitem_data_augmentation_random_flip_6_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : : : 2¨
Rdata_augmentation/random_flip_6/map/while/stateful_uniform_full_int/RngReadAndSkipRdata_augmentation/random_flip_6/map/while/stateful_uniform_full_int/RngReadAndSkip: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Ú
ì
Wdata_augmentation_random_flip_6_map_while_stateless_random_flip_left_right_true_1014026·
²data_augmentation_random_flip_6_map_while_stateless_random_flip_left_right_reversev2_data_augmentation_random_flip_6_map_while_stateless_random_flip_left_right_control_dependencyW
Sdata_augmentation_random_flip_6_map_while_stateless_random_flip_left_right_identity£
Ydata_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:§
Tdata_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/ReverseV2	ReverseV2²data_augmentation_random_flip_6_map_while_stateless_random_flip_left_right_reversev2_data_augmentation_random_flip_6_map_while_stateless_random_flip_left_right_control_dependencybdata_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*"
_output_shapes
:KKë
Sdata_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/IdentityIdentity]data_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/ReverseV2:output:0*
T0*"
_output_shapes
:KK"³
Sdata_augmentation_random_flip_6_map_while_stateless_random_flip_left_right_identity\data_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:KK:( $
"
_output_shapes
:KK


*__inference_model_54_layer_call_fn_1012973
inputs_0
inputs_1!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:	À2
	unknown_8:2
	unknown_9:2K

unknown_10:K

unknown_11:K

unknown_12:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_model_54_layer_call_and_return_conditional_losses_1012559o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:ÿÿÿÿÿÿÿÿÿKK:ÿÿÿÿÿÿÿÿÿKK: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
"
_user_specified_name
inputs/1
À?
ñ	
E__inference_model_53_layer_call_and_return_conditional_losses_1013951

inputsC
)conv2d_253_conv2d_readvariableop_resource:8
*conv2d_253_biasadd_readvariableop_resource:C
)conv2d_254_conv2d_readvariableop_resource:8
*conv2d_254_biasadd_readvariableop_resource:C
)conv2d_255_conv2d_readvariableop_resource: 8
*conv2d_255_biasadd_readvariableop_resource: C
)conv2d_256_conv2d_readvariableop_resource: @8
*conv2d_256_biasadd_readvariableop_resource:@;
(dense_119_matmul_readvariableop_resource:	À27
)dense_119_biasadd_readvariableop_resource:2:
(dense_120_matmul_readvariableop_resource:2K7
)dense_120_biasadd_readvariableop_resource:K
identity¢!conv2d_253/BiasAdd/ReadVariableOp¢ conv2d_253/Conv2D/ReadVariableOp¢!conv2d_254/BiasAdd/ReadVariableOp¢ conv2d_254/Conv2D/ReadVariableOp¢!conv2d_255/BiasAdd/ReadVariableOp¢ conv2d_255/Conv2D/ReadVariableOp¢!conv2d_256/BiasAdd/ReadVariableOp¢ conv2d_256/Conv2D/ReadVariableOp¢ dense_119/BiasAdd/ReadVariableOp¢dense_119/MatMul/ReadVariableOp¢ dense_120/BiasAdd/ReadVariableOp¢dense_120/MatMul/ReadVariableOp
 conv2d_253/Conv2D/ReadVariableOpReadVariableOp)conv2d_253_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0°
conv2d_253/Conv2DConv2Dinputs(conv2d_253/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿGG*
paddingVALID*
strides

!conv2d_253/BiasAdd/ReadVariableOpReadVariableOp*conv2d_253_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_253/BiasAddBiasAddconv2d_253/Conv2D:output:0)conv2d_253/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿGGn
conv2d_253/ReluReluconv2d_253/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿGG°
max_pooling2d_191/MaxPoolMaxPoolconv2d_253/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ##*
ksize
*
paddingVALID*
strides

 conv2d_254/Conv2D/ReadVariableOpReadVariableOp)conv2d_254_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ì
conv2d_254/Conv2DConv2D"max_pooling2d_191/MaxPool:output:0(conv2d_254/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!!*
paddingVALID*
strides

!conv2d_254/BiasAdd/ReadVariableOpReadVariableOp*conv2d_254_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_254/BiasAddBiasAddconv2d_254/Conv2D:output:0)conv2d_254/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!!n
conv2d_254/ReluReluconv2d_254/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!!°
max_pooling2d_192/MaxPoolMaxPoolconv2d_254/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides

 conv2d_255/Conv2D/ReadVariableOpReadVariableOp)conv2d_255_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ì
conv2d_255/Conv2DConv2D"max_pooling2d_192/MaxPool:output:0(conv2d_255/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingVALID*
strides

!conv2d_255/BiasAdd/ReadVariableOpReadVariableOp*conv2d_255_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_255/BiasAddBiasAddconv2d_255/Conv2D:output:0)conv2d_255/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
conv2d_255/ReluReluconv2d_255/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ °
max_pooling2d_193/MaxPoolMaxPoolconv2d_255/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
ksize
*
paddingVALID*
strides

 conv2d_256/Conv2D/ReadVariableOpReadVariableOp)conv2d_256_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ì
conv2d_256/Conv2DConv2D"max_pooling2d_193/MaxPool:output:0(conv2d_256/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides

!conv2d_256/BiasAdd/ReadVariableOpReadVariableOp*conv2d_256_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_256/BiasAddBiasAddconv2d_256/Conv2D:output:0)conv2d_256/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
conv2d_256/ReluReluconv2d_256/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
flatten_61/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@  
flatten_61/ReshapeReshapeconv2d_256/Relu:activations:0flatten_61/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
dense_119/MatMul/ReadVariableOpReadVariableOp(dense_119_matmul_readvariableop_resource*
_output_shapes
:	À2*
dtype0
dense_119/MatMulMatMulflatten_61/Reshape:output:0'dense_119/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 dense_119/BiasAdd/ReadVariableOpReadVariableOp)dense_119_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0
dense_119/BiasAddBiasAdddense_119/MatMul:product:0(dense_119/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2d
dense_119/ReluReludense_119/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_120/MatMul/ReadVariableOpReadVariableOp(dense_120_matmul_readvariableop_resource*
_output_shapes

:2K*
dtype0
dense_120/MatMulMatMuldense_119/Relu:activations:0'dense_120/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
 dense_120/BiasAdd/ReadVariableOpReadVariableOp)dense_120_biasadd_readvariableop_resource*
_output_shapes
:K*
dtype0
dense_120/BiasAddBiasAdddense_120/MatMul:product:0(dense_120/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿKj
dense_120/SigmoidSigmoiddense_120/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿKd
IdentityIdentitydense_120/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿKì
NoOpNoOp"^conv2d_253/BiasAdd/ReadVariableOp!^conv2d_253/Conv2D/ReadVariableOp"^conv2d_254/BiasAdd/ReadVariableOp!^conv2d_254/Conv2D/ReadVariableOp"^conv2d_255/BiasAdd/ReadVariableOp!^conv2d_255/Conv2D/ReadVariableOp"^conv2d_256/BiasAdd/ReadVariableOp!^conv2d_256/Conv2D/ReadVariableOp!^dense_119/BiasAdd/ReadVariableOp ^dense_119/MatMul/ReadVariableOp!^dense_120/BiasAdd/ReadVariableOp ^dense_120/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿKK: : : : : : : : : : : : 2F
!conv2d_253/BiasAdd/ReadVariableOp!conv2d_253/BiasAdd/ReadVariableOp2D
 conv2d_253/Conv2D/ReadVariableOp conv2d_253/Conv2D/ReadVariableOp2F
!conv2d_254/BiasAdd/ReadVariableOp!conv2d_254/BiasAdd/ReadVariableOp2D
 conv2d_254/Conv2D/ReadVariableOp conv2d_254/Conv2D/ReadVariableOp2F
!conv2d_255/BiasAdd/ReadVariableOp!conv2d_255/BiasAdd/ReadVariableOp2D
 conv2d_255/Conv2D/ReadVariableOp conv2d_255/Conv2D/ReadVariableOp2F
!conv2d_256/BiasAdd/ReadVariableOp!conv2d_256/BiasAdd/ReadVariableOp2D
 conv2d_256/Conv2D/ReadVariableOp conv2d_256/Conv2D/ReadVariableOp2D
 dense_119/BiasAdd/ReadVariableOp dense_119/BiasAdd/ReadVariableOp2B
dense_119/MatMul/ReadVariableOpdense_119/MatMul/ReadVariableOp2D
 dense_120/BiasAdd/ReadVariableOp dense_120/BiasAdd/ReadVariableOp2B
dense_120/MatMul/ReadVariableOpdense_120/MatMul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
 
_user_specified_nameinputs


G__inference_conv2d_253_layer_call_and_return_conditional_losses_1014726

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿGG*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿGGX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿGGi
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿGGw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿKK: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
 
_user_specified_nameinputs
Ð
±
Amodel_53_data_augmentation_random_flip_6_map_1_while_cond_1013489z
vmodel_53_data_augmentation_random_flip_6_map_1_while_model_53_data_augmentation_random_flip_6_map_1_while_loop_counteru
qmodel_53_data_augmentation_random_flip_6_map_1_while_model_53_data_augmentation_random_flip_6_map_1_strided_sliceD
@model_53_data_augmentation_random_flip_6_map_1_while_placeholderF
Bmodel_53_data_augmentation_random_flip_6_map_1_while_placeholder_1z
vmodel_53_data_augmentation_random_flip_6_map_1_while_less_model_53_data_augmentation_random_flip_6_map_1_strided_slice
model_53_data_augmentation_random_flip_6_map_1_while_model_53_data_augmentation_random_flip_6_map_1_while_cond_1013489___redundant_placeholder0
model_53_data_augmentation_random_flip_6_map_1_while_model_53_data_augmentation_random_flip_6_map_1_while_cond_1013489___redundant_placeholder1A
=model_53_data_augmentation_random_flip_6_map_1_while_identity

9model_53/data_augmentation/random_flip_6/map_1/while/LessLess@model_53_data_augmentation_random_flip_6_map_1_while_placeholdervmodel_53_data_augmentation_random_flip_6_map_1_while_less_model_53_data_augmentation_random_flip_6_map_1_strided_slice*
T0*
_output_shapes
: Ï
;model_53/data_augmentation/random_flip_6/map_1/while/Less_1Lessvmodel_53_data_augmentation_random_flip_6_map_1_while_model_53_data_augmentation_random_flip_6_map_1_while_loop_counterqmodel_53_data_augmentation_random_flip_6_map_1_while_model_53_data_augmentation_random_flip_6_map_1_strided_slice*
T0*
_output_shapes
: å
?model_53/data_augmentation/random_flip_6/map_1/while/LogicalAnd
LogicalAnd?model_53/data_augmentation/random_flip_6/map_1/while/Less_1:z:0=model_53/data_augmentation/random_flip_6/map_1/while/Less:z:0*
_output_shapes
: ¯
=model_53/data_augmentation/random_flip_6/map_1/while/IdentityIdentityCmodel_53/data_augmentation/random_flip_6/map_1/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "
=model_53_data_augmentation_random_flip_6_map_1_while_identityFmodel_53/data_augmentation/random_flip_6/map_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:

r
F__inference_lambda_31_layer_call_and_return_conditional_losses_1014345
inputs_0
inputs_1
identityP
subSubinputs_0inputs_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿKE
AbsAbssub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿKO
IdentityIdentityAbs:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿK:ÿÿÿÿÿÿÿÿÿK:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
"
_user_specified_name
inputs/1
É
c
G__inference_flatten_61_layer_call_and_return_conditional_losses_1012127

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs


G__inference_conv2d_255_layer_call_and_return_conditional_losses_1012097

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

f
J__inference_random_zoom_6_layer_call_and_return_conditional_losses_1015142

inputs
identityV
IdentityIdentityinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿKK:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
 
_user_specified_nameinputs
É
c
G__inference_flatten_61_layer_call_and_return_conditional_losses_1014827

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¡

Amodel_53_data_augmentation_random_flip_6_map_1_while_body_1013490z
vmodel_53_data_augmentation_random_flip_6_map_1_while_model_53_data_augmentation_random_flip_6_map_1_while_loop_counteru
qmodel_53_data_augmentation_random_flip_6_map_1_while_model_53_data_augmentation_random_flip_6_map_1_strided_sliceD
@model_53_data_augmentation_random_flip_6_map_1_while_placeholderF
Bmodel_53_data_augmentation_random_flip_6_map_1_while_placeholder_1y
umodel_53_data_augmentation_random_flip_6_map_1_while_model_53_data_augmentation_random_flip_6_map_1_strided_slice_1_0¶
±model_53_data_augmentation_random_flip_6_map_1_while_tensorarrayv2read_tensorlistgetitem_model_53_data_augmentation_random_flip_6_map_1_tensorarrayunstack_tensorlistfromtensor_0v
hmodel_53_data_augmentation_random_flip_6_map_1_while_stateful_uniform_full_int_rngreadandskip_resource_0:	A
=model_53_data_augmentation_random_flip_6_map_1_while_identityC
?model_53_data_augmentation_random_flip_6_map_1_while_identity_1C
?model_53_data_augmentation_random_flip_6_map_1_while_identity_2C
?model_53_data_augmentation_random_flip_6_map_1_while_identity_3w
smodel_53_data_augmentation_random_flip_6_map_1_while_model_53_data_augmentation_random_flip_6_map_1_strided_slice_1´
¯model_53_data_augmentation_random_flip_6_map_1_while_tensorarrayv2read_tensorlistgetitem_model_53_data_augmentation_random_flip_6_map_1_tensorarrayunstack_tensorlistfromtensort
fmodel_53_data_augmentation_random_flip_6_map_1_while_stateful_uniform_full_int_rngreadandskip_resource:	¢]model_53/data_augmentation/random_flip_6/map_1/while/stateful_uniform_full_int/RngReadAndSkip»
fmodel_53/data_augmentation/random_flip_6/map_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"K   K      
Xmodel_53/data_augmentation/random_flip_6/map_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem±model_53_data_augmentation_random_flip_6_map_1_while_tensorarrayv2read_tensorlistgetitem_model_53_data_augmentation_random_flip_6_map_1_tensorarrayunstack_tensorlistfromtensor_0@model_53_data_augmentation_random_flip_6_map_1_while_placeholderomodel_53/data_augmentation/random_flip_6/map_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*"
_output_shapes
:KK*
element_dtype0
Tmodel_53/data_augmentation/random_flip_6/map_1/while/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:
Tmodel_53/data_augmentation/random_flip_6/map_1/while/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: º
Smodel_53/data_augmentation/random_flip_6/map_1/while/stateful_uniform_full_int/ProdProd]model_53/data_augmentation/random_flip_6/map_1/while/stateful_uniform_full_int/shape:output:0]model_53/data_augmentation/random_flip_6/map_1/while/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: 
Umodel_53/data_augmentation/random_flip_6/map_1/while/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :ë
Umodel_53/data_augmentation/random_flip_6/map_1/while/stateful_uniform_full_int/Cast_1Cast\model_53/data_augmentation/random_flip_6/map_1/while/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: °
]model_53/data_augmentation/random_flip_6/map_1/while/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkiphmodel_53_data_augmentation_random_flip_6_map_1_while_stateful_uniform_full_int_rngreadandskip_resource_0^model_53/data_augmentation/random_flip_6/map_1/while/stateful_uniform_full_int/Cast/x:output:0Ymodel_53/data_augmentation/random_flip_6/map_1/while/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:¬
bmodel_53/data_augmentation/random_flip_6/map_1/while/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ®
dmodel_53/data_augmentation/random_flip_6/map_1/while/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:®
dmodel_53/data_augmentation/random_flip_6/map_1/while/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:â
\model_53/data_augmentation/random_flip_6/map_1/while/stateful_uniform_full_int/strided_sliceStridedSliceemodel_53/data_augmentation/random_flip_6/map_1/while/stateful_uniform_full_int/RngReadAndSkip:value:0kmodel_53/data_augmentation/random_flip_6/map_1/while/stateful_uniform_full_int/strided_slice/stack:output:0mmodel_53/data_augmentation/random_flip_6/map_1/while/stateful_uniform_full_int/strided_slice/stack_1:output:0mmodel_53/data_augmentation/random_flip_6/map_1/while/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskù
Vmodel_53/data_augmentation/random_flip_6/map_1/while/stateful_uniform_full_int/BitcastBitcastemodel_53/data_augmentation/random_flip_6/map_1/while/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0®
dmodel_53/data_augmentation/random_flip_6/map_1/while/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:°
fmodel_53/data_augmentation/random_flip_6/map_1/while/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:°
fmodel_53/data_augmentation/random_flip_6/map_1/while/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ø
^model_53/data_augmentation/random_flip_6/map_1/while/stateful_uniform_full_int/strided_slice_1StridedSliceemodel_53/data_augmentation/random_flip_6/map_1/while/stateful_uniform_full_int/RngReadAndSkip:value:0mmodel_53/data_augmentation/random_flip_6/map_1/while/stateful_uniform_full_int/strided_slice_1/stack:output:0omodel_53/data_augmentation/random_flip_6/map_1/while/stateful_uniform_full_int/strided_slice_1/stack_1:output:0omodel_53/data_augmentation/random_flip_6/map_1/while/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:ý
Xmodel_53/data_augmentation/random_flip_6/map_1/while/stateful_uniform_full_int/Bitcast_1Bitcastgmodel_53/data_augmentation/random_flip_6/map_1/while/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0
Rmodel_53/data_augmentation/random_flip_6/map_1/while/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :
Nmodel_53/data_augmentation/random_flip_6/map_1/while/stateful_uniform_full_intStatelessRandomUniformFullIntV2]model_53/data_augmentation/random_flip_6/map_1/while/stateful_uniform_full_int/shape:output:0amodel_53/data_augmentation/random_flip_6/map_1/while/stateful_uniform_full_int/Bitcast_1:output:0_model_53/data_augmentation/random_flip_6/map_1/while/stateful_uniform_full_int/Bitcast:output:0[model_53/data_augmentation/random_flip_6/map_1/while/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	
?model_53/data_augmentation/random_flip_6/map_1/while/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R 
:model_53/data_augmentation/random_flip_6/map_1/while/stackPackWmodel_53/data_augmentation/random_flip_6/map_1/while/stateful_uniform_full_int:output:0Hmodel_53/data_augmentation/random_flip_6/map_1/while/zeros_like:output:0*
N*
T0	*
_output_shapes

:
Hmodel_53/data_augmentation/random_flip_6/map_1/while/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Jmodel_53/data_augmentation/random_flip_6/map_1/while/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
Jmodel_53/data_augmentation/random_flip_6/map_1/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
Bmodel_53/data_augmentation/random_flip_6/map_1/while/strided_sliceStridedSliceCmodel_53/data_augmentation/random_flip_6/map_1/while/stack:output:0Qmodel_53/data_augmentation/random_flip_6/map_1/while/strided_slice/stack:output:0Smodel_53/data_augmentation/random_flip_6/map_1/while/strided_slice/stack_1:output:0Smodel_53/data_augmentation/random_flip_6/map_1/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskï
hmodel_53/data_augmentation/random_flip_6/map_1/while/stateless_random_flip_left_right/control_dependencyIdentity_model_53/data_augmentation/random_flip_6/map_1/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*k
_classa
_]loc:@model_53/data_augmentation/random_flip_6/map_1/while/TensorArrayV2Read/TensorListGetItem*"
_output_shapes
:KK·
tmodel_53/data_augmentation/random_flip_6/map_1/while/stateless_random_flip_left_right/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB ·
rmodel_53/data_augmentation/random_flip_6/map_1/while/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    ·
rmodel_53/data_augmentation/random_flip_6/map_1/while/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
model_53/data_augmentation/random_flip_6/map_1/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterKmodel_53/data_augmentation/random_flip_6/map_1/while/strided_slice:output:0* 
_output_shapes
::Î
model_53/data_augmentation/random_flip_6/map_1/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :þ
model_53/data_augmentation/random_flip_6/map_1/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2}model_53/data_augmentation/random_flip_6/map_1/while/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0model_53/data_augmentation/random_flip_6/map_1/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0model_53/data_augmentation/random_flip_6/map_1/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0model_53/data_augmentation/random_flip_6/map_1/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: 
rmodel_53/data_augmentation/random_flip_6/map_1/while/stateless_random_flip_left_right/stateless_random_uniform/subSub{model_53/data_augmentation/random_flip_6/map_1/while/stateless_random_flip_left_right/stateless_random_uniform/max:output:0{model_53/data_augmentation/random_flip_6/map_1/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: ¥
rmodel_53/data_augmentation/random_flip_6/map_1/while/stateless_random_flip_left_right/stateless_random_uniform/mulMulmodel_53/data_augmentation/random_flip_6/map_1/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0vmodel_53/data_augmentation/random_flip_6/map_1/while/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: 
nmodel_53/data_augmentation/random_flip_6/map_1/while/stateless_random_flip_left_right/stateless_random_uniformAddV2vmodel_53/data_augmentation/random_flip_6/map_1/while/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0{model_53/data_augmentation/random_flip_6/map_1/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: ¡
\model_53/data_augmentation/random_flip_6/map_1/while/stateless_random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Þ
Zmodel_53/data_augmentation/random_flip_6/map_1/while/stateless_random_flip_left_right/LessLessrmodel_53/data_augmentation/random_flip_6/map_1/while/stateless_random_flip_left_right/stateless_random_uniform:z:0emodel_53/data_augmentation/random_flip_6/map_1/while/stateless_random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: Ú
Umodel_53/data_augmentation/random_flip_6/map_1/while/stateless_random_flip_left_rightStatelessIf^model_53/data_augmentation/random_flip_6/map_1/while/stateless_random_flip_left_right/Less:z:0qmodel_53/data_augmentation/random_flip_6/map_1/while/stateless_random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*"
_output_shapes
:KK* 
_read_only_resource_inputs
 *v
else_branchgRe
cmodel_53_data_augmentation_random_flip_6_map_1_while_stateless_random_flip_left_right_false_1013550*!
output_shapes
:KK*u
then_branchfRd
bmodel_53_data_augmentation_random_flip_6_map_1_while_stateless_random_flip_left_right_true_1013549÷
^model_53/data_augmentation/random_flip_6/map_1/while/stateless_random_flip_left_right/IdentityIdentity^model_53/data_augmentation/random_flip_6/map_1/while/stateless_random_flip_left_right:output:0*
T0*"
_output_shapes
:KK
Ymodel_53/data_augmentation/random_flip_6/map_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemBmodel_53_data_augmentation_random_flip_6_map_1_while_placeholder_1@model_53_data_augmentation_random_flip_6_map_1_while_placeholdergmodel_53/data_augmentation/random_flip_6/map_1/while/stateless_random_flip_left_right/Identity:output:0*
_output_shapes
: *
element_dtype0:éèÒ|
:model_53/data_augmentation/random_flip_6/map_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :é
8model_53/data_augmentation/random_flip_6/map_1/while/addAddV2@model_53_data_augmentation_random_flip_6_map_1_while_placeholderCmodel_53/data_augmentation/random_flip_6/map_1/while/add/y:output:0*
T0*
_output_shapes
: ~
<model_53/data_augmentation/random_flip_6/map_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :£
:model_53/data_augmentation/random_flip_6/map_1/while/add_1AddV2vmodel_53_data_augmentation_random_flip_6_map_1_while_model_53_data_augmentation_random_flip_6_map_1_while_loop_counterEmodel_53/data_augmentation/random_flip_6/map_1/while/add_1/y:output:0*
T0*
_output_shapes
: æ
=model_53/data_augmentation/random_flip_6/map_1/while/IdentityIdentity>model_53/data_augmentation/random_flip_6/map_1/while/add_1:z:0:^model_53/data_augmentation/random_flip_6/map_1/while/NoOp*
T0*
_output_shapes
: 
?model_53/data_augmentation/random_flip_6/map_1/while/Identity_1Identityqmodel_53_data_augmentation_random_flip_6_map_1_while_model_53_data_augmentation_random_flip_6_map_1_strided_slice:^model_53/data_augmentation/random_flip_6/map_1/while/NoOp*
T0*
_output_shapes
: æ
?model_53/data_augmentation/random_flip_6/map_1/while/Identity_2Identity<model_53/data_augmentation/random_flip_6/map_1/while/add:z:0:^model_53/data_augmentation/random_flip_6/map_1/while/NoOp*
T0*
_output_shapes
: 
?model_53/data_augmentation/random_flip_6/map_1/while/Identity_3Identityimodel_53/data_augmentation/random_flip_6/map_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0:^model_53/data_augmentation/random_flip_6/map_1/while/NoOp*
T0*
_output_shapes
: Û
9model_53/data_augmentation/random_flip_6/map_1/while/NoOpNoOp^^model_53/data_augmentation/random_flip_6/map_1/while/stateful_uniform_full_int/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
=model_53_data_augmentation_random_flip_6_map_1_while_identityFmodel_53/data_augmentation/random_flip_6/map_1/while/Identity:output:0"
?model_53_data_augmentation_random_flip_6_map_1_while_identity_1Hmodel_53/data_augmentation/random_flip_6/map_1/while/Identity_1:output:0"
?model_53_data_augmentation_random_flip_6_map_1_while_identity_2Hmodel_53/data_augmentation/random_flip_6/map_1/while/Identity_2:output:0"
?model_53_data_augmentation_random_flip_6_map_1_while_identity_3Hmodel_53/data_augmentation/random_flip_6/map_1/while/Identity_3:output:0"ì
smodel_53_data_augmentation_random_flip_6_map_1_while_model_53_data_augmentation_random_flip_6_map_1_strided_slice_1umodel_53_data_augmentation_random_flip_6_map_1_while_model_53_data_augmentation_random_flip_6_map_1_strided_slice_1_0"Ò
fmodel_53_data_augmentation_random_flip_6_map_1_while_stateful_uniform_full_int_rngreadandskip_resourcehmodel_53_data_augmentation_random_flip_6_map_1_while_stateful_uniform_full_int_rngreadandskip_resource_0"æ
¯model_53_data_augmentation_random_flip_6_map_1_while_tensorarrayv2read_tensorlistgetitem_model_53_data_augmentation_random_flip_6_map_1_tensorarrayunstack_tensorlistfromtensor±model_53_data_augmentation_random_flip_6_map_1_while_tensorarrayv2read_tensorlistgetitem_model_53_data_augmentation_random_flip_6_map_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : : : 2¾
]model_53/data_augmentation/random_flip_6/map_1/while/stateful_uniform_full_int/RngReadAndSkip]model_53/data_augmentation/random_flip_6/map_1/while/stateful_uniform_full_int/RngReadAndSkip: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ð
¡
,__inference_conv2d_253_layer_call_fn_1014715

inputs!
unknown:
	unknown_0:
identity¢StatefulPartitionedCallä
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿGG*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_conv2d_253_layer_call_and_return_conditional_losses_1012061w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿGG`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿKK: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
 
_user_specified_nameinputs

f
J__inference_random_flip_6_layer_call_and_return_conditional_losses_1011560

inputs
identityV
IdentityIdentityinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿKK:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
 
_user_specified_nameinputs
¾
Ü
N__inference_data_augmentation_layer_call_and_return_conditional_losses_1011966

inputs#
random_flip_6_1011956:	'
random_rotation_6_1011959:	#
random_zoom_6_1011962:	
identity¢%random_flip_6/StatefulPartitionedCall¢)random_rotation_6/StatefulPartitionedCall¢%random_zoom_6/StatefulPartitionedCalló
%random_flip_6/StatefulPartitionedCallStatefulPartitionedCallinputsrandom_flip_6_1011956*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_random_flip_6_layer_call_and_return_conditional_losses_1011941§
)random_rotation_6/StatefulPartitionedCallStatefulPartitionedCall.random_flip_6/StatefulPartitionedCall:output:0random_rotation_6_1011959*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_random_rotation_6_layer_call_and_return_conditional_losses_1011819
%random_zoom_6/StatefulPartitionedCallStatefulPartitionedCall2random_rotation_6/StatefulPartitionedCall:output:0random_zoom_6_1011962*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_random_zoom_6_layer_call_and_return_conditional_losses_1011688
IdentityIdentity.random_zoom_6/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKKÂ
NoOpNoOp&^random_flip_6/StatefulPartitionedCall*^random_rotation_6/StatefulPartitionedCall&^random_zoom_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿKK: : : 2N
%random_flip_6/StatefulPartitionedCall%random_flip_6/StatefulPartitionedCall2V
)random_rotation_6/StatefulPartitionedCall)random_rotation_6/StatefulPartitionedCall2N
%random_zoom_6/StatefulPartitionedCall%random_zoom_6/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
 
_user_specified_nameinputs

p
F__inference_lambda_31_layer_call_and_return_conditional_losses_1012617

inputs
inputs_1
identityN
subSubinputsinputs_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿKE
AbsAbssub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿKO
IdentityIdentityAbs:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿK:ÿÿÿÿÿÿÿÿÿK:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
 
_user_specified_nameinputs
Âa
µ
#__inference__traced_restore_1015443
file_prefix3
!assignvariableop_dense_121_kernel:K/
!assignvariableop_1_dense_121_bias:>
$assignvariableop_2_conv2d_253_kernel:0
"assignvariableop_3_conv2d_253_bias:>
$assignvariableop_4_conv2d_254_kernel:0
"assignvariableop_5_conv2d_254_bias:>
$assignvariableop_6_conv2d_255_kernel: 0
"assignvariableop_7_conv2d_255_bias: >
$assignvariableop_8_conv2d_256_kernel: @0
"assignvariableop_9_conv2d_256_bias:@7
$assignvariableop_10_dense_119_kernel:	À20
"assignvariableop_11_dense_119_bias:26
$assignvariableop_12_dense_120_kernel:2K0
"assignvariableop_13_dense_120_bias:K&
assignvariableop_14_sgd_iter:	 '
assignvariableop_15_sgd_decay: /
%assignvariableop_16_sgd_learning_rate: *
 assignvariableop_17_sgd_momentum: %
assignvariableop_18_total_1: %
assignvariableop_19_count_1: #
assignvariableop_20_total: #
assignvariableop_21_count: ,
assignvariableop_22_statevar_2:	,
assignvariableop_23_statevar_1:	*
assignvariableop_24_statevar:	
identity_26¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9ª
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ð

valueÆ
BÃ
B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBglayer_with_weights-0/layer-1/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBglayer_with_weights-0/layer-1/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBglayer_with_weights-0/layer-1/layer-2/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH¤
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B  
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*|
_output_shapesj
h::::::::::::::::::::::::::*(
dtypes
2				[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp!assignvariableop_dense_121_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_121_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv2d_253_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv2d_253_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv2d_254_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv2d_254_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv2d_255_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv2d_255_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp$assignvariableop_8_conv2d_256_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp"assignvariableop_9_conv2d_256_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp$assignvariableop_10_dense_119_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp"assignvariableop_11_dense_119_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp$assignvariableop_12_dense_120_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp"assignvariableop_13_dense_120_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_sgd_iterIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_sgd_decayIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp%assignvariableop_16_sgd_learning_rateIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp assignvariableop_17_sgd_momentumIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOpassignvariableop_18_total_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOpassignvariableop_19_count_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOpassignvariableop_20_totalIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOpassignvariableop_21_countIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_22AssignVariableOpassignvariableop_22_statevar_2Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_23AssignVariableOpassignvariableop_23_statevar_1Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_24AssignVariableOpassignvariableop_24_statevarIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	1
NoOpNoOp"/device:CPU:0*
_output_shapes
 õ
Identity_25Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_26IdentityIdentity_25:output:0^NoOp_1*
T0*
_output_shapes
: â
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_26Identity_26:output:0*G
_input_shapes6
4: : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ä

$random_flip_6_map_while_cond_1014400@
<random_flip_6_map_while_random_flip_6_map_while_loop_counter;
7random_flip_6_map_while_random_flip_6_map_strided_slice'
#random_flip_6_map_while_placeholder)
%random_flip_6_map_while_placeholder_1@
<random_flip_6_map_while_less_random_flip_6_map_strided_sliceY
Urandom_flip_6_map_while_random_flip_6_map_while_cond_1014400___redundant_placeholder0Y
Urandom_flip_6_map_while_random_flip_6_map_while_cond_1014400___redundant_placeholder1$
 random_flip_6_map_while_identity
¨
random_flip_6/map/while/LessLess#random_flip_6_map_while_placeholder<random_flip_6_map_while_less_random_flip_6_map_strided_slice*
T0*
_output_shapes
: ¾
random_flip_6/map/while/Less_1Less<random_flip_6_map_while_random_flip_6_map_while_loop_counter7random_flip_6_map_while_random_flip_6_map_strided_slice*
T0*
_output_shapes
: 
"random_flip_6/map/while/LogicalAnd
LogicalAnd"random_flip_6/map/while/Less_1:z:0 random_flip_6/map/while/Less:z:0*
_output_shapes
: u
 random_flip_6/map/while/IdentityIdentity&random_flip_6/map/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "M
 random_flip_6_map_while_identity)random_flip_6/map/while/Identity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:

Ç
N__inference_random_rotation_6_layer_call_and_return_conditional_losses_1011819

inputs6
(stateful_uniform_rngreadandskip_resource:	
identity¢stateful_uniform/RngReadAndSkip;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ýÿÿÿÿÿÿÿÿj
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿa
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ù
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿj
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ù
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: d
stateful_uniform/shapePackstrided_slice:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ¿Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ¶
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¬
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¢
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: 
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?g
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ^
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: |
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?i
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ~
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?i
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: `
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?i
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
rotation_matrix/ShapeShapestateful_uniform:z:0*
T0*
_output_shapes
:m
#rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¡
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
%rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
%rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_maskv
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
%rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ö
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
%rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
%rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_maskv
%rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ø
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :£
rotation_matrix/zeros/packedPack&rotation_matrix/strided_slice:output:0'rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿE
transform/ShapeShapeinputs*
T0*
_output_shapes
:g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ï
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKKh
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿKK: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
 
_user_specified_nameinputs
¦
W
+__inference_lambda_31_layer_call_fn_1014331
inputs_0
inputs_1
identity¾
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lambda_31_layer_call_and_return_conditional_losses_1012617`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿK:ÿÿÿÿÿÿÿÿÿK:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
"
_user_specified_name
inputs/1
Á
ª
N__inference_data_augmentation_layer_call_and_return_conditional_losses_1014706

inputs-
random_flip_6_map_while_input_6:	H
:random_rotation_6_stateful_uniform_rngreadandskip_resource:	D
6random_zoom_6_stateful_uniform_rngreadandskip_resource:	
identity¢random_flip_6/map/while¢1random_rotation_6/stateful_uniform/RngReadAndSkip¢-random_zoom_6/stateful_uniform/RngReadAndSkipM
random_flip_6/map/ShapeShapeinputs*
T0*
_output_shapes
:o
%random_flip_6/map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'random_flip_6/map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'random_flip_6/map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:«
random_flip_6/map/strided_sliceStridedSlice random_flip_6/map/Shape:output:0.random_flip_6/map/strided_slice/stack:output:00random_flip_6/map/strided_slice/stack_1:output:00random_flip_6/map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
-random_flip_6/map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿè
random_flip_6/map/TensorArrayV2TensorListReserve6random_flip_6/map/TensorArrayV2/element_shape:output:0(random_flip_6/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Grandom_flip_6/map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"K   K      ý
9random_flip_6/map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputsPrandom_flip_6/map/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒY
random_flip_6/map/ConstConst*
_output_shapes
: *
dtype0*
value	B : z
/random_flip_6/map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿì
!random_flip_6/map/TensorArrayV2_1TensorListReserve8random_flip_6/map/TensorArrayV2_1/element_shape:output:0(random_flip_6/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒf
$random_flip_6/map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
random_flip_6/map/whileWhile-random_flip_6/map/while/loop_counter:output:0(random_flip_6/map/strided_slice:output:0 random_flip_6/map/Const:output:0*random_flip_6/map/TensorArrayV2_1:handle:0(random_flip_6/map/strided_slice:output:0Irandom_flip_6/map/TensorArrayUnstack/TensorListFromTensor:output_handle:0random_flip_6_map_while_input_6*
T
	2*
_lower_using_switch_merge(*
_num_original_outputs*"
_output_shapes
: : : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( *0
body(R&
$random_flip_6_map_while_body_1014401*0
cond(R&
$random_flip_6_map_while_cond_1014400*!
output_shapes
: : : : : : : 
Brandom_flip_6/map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"K   K      ü
4random_flip_6/map/TensorArrayV2Stack/TensorListStackTensorListStack random_flip_6/map/while:output:3Krandom_flip_6/map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK*
element_dtype0
random_rotation_6/ShapeShape=random_flip_6/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*
_output_shapes
:o
%random_rotation_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'random_rotation_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'random_rotation_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:«
random_rotation_6/strided_sliceStridedSlice random_rotation_6/Shape:output:0.random_rotation_6/strided_slice/stack:output:00random_rotation_6/strided_slice/stack_1:output:00random_rotation_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
'random_rotation_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ýÿÿÿÿÿÿÿÿ|
)random_rotation_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿs
)random_rotation_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:³
!random_rotation_6/strided_slice_1StridedSlice random_rotation_6/Shape:output:00random_rotation_6/strided_slice_1/stack:output:02random_rotation_6/strided_slice_1/stack_1:output:02random_rotation_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
random_rotation_6/CastCast*random_rotation_6/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: z
'random_rotation_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿ|
)random_rotation_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿs
)random_rotation_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:³
!random_rotation_6/strided_slice_2StridedSlice random_rotation_6/Shape:output:00random_rotation_6/strided_slice_2/stack:output:02random_rotation_6/strided_slice_2/stack_1:output:02random_rotation_6/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
random_rotation_6/Cast_1Cast*random_rotation_6/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 
(random_rotation_6/stateful_uniform/shapePack(random_rotation_6/strided_slice:output:0*
N*
T0*
_output_shapes
:k
&random_rotation_6/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ¿k
&random_rotation_6/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ?r
(random_rotation_6/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: ¶
'random_rotation_6/stateful_uniform/ProdProd1random_rotation_6/stateful_uniform/shape:output:01random_rotation_6/stateful_uniform/Const:output:0*
T0*
_output_shapes
: k
)random_rotation_6/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
)random_rotation_6/stateful_uniform/Cast_1Cast0random_rotation_6/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: þ
1random_rotation_6/stateful_uniform/RngReadAndSkipRngReadAndSkip:random_rotation_6_stateful_uniform_rngreadandskip_resource2random_rotation_6/stateful_uniform/Cast/x:output:0-random_rotation_6/stateful_uniform/Cast_1:y:0*
_output_shapes
:
6random_rotation_6/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
8random_rotation_6/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
8random_rotation_6/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
0random_rotation_6/stateful_uniform/strided_sliceStridedSlice9random_rotation_6/stateful_uniform/RngReadAndSkip:value:0?random_rotation_6/stateful_uniform/strided_slice/stack:output:0Arandom_rotation_6/stateful_uniform/strided_slice/stack_1:output:0Arandom_rotation_6/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask¡
*random_rotation_6/stateful_uniform/BitcastBitcast9random_rotation_6/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
8random_rotation_6/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
:random_rotation_6/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
:random_rotation_6/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ü
2random_rotation_6/stateful_uniform/strided_slice_1StridedSlice9random_rotation_6/stateful_uniform/RngReadAndSkip:value:0Arandom_rotation_6/stateful_uniform/strided_slice_1/stack:output:0Crandom_rotation_6/stateful_uniform/strided_slice_1/stack_1:output:0Crandom_rotation_6/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:¥
,random_rotation_6/stateful_uniform/Bitcast_1Bitcast;random_rotation_6/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0
?random_rotation_6/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :å
;random_rotation_6/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV21random_rotation_6/stateful_uniform/shape:output:05random_rotation_6/stateful_uniform/Bitcast_1:output:03random_rotation_6/stateful_uniform/Bitcast:output:0Hrandom_rotation_6/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
&random_rotation_6/stateful_uniform/subSub/random_rotation_6/stateful_uniform/max:output:0/random_rotation_6/stateful_uniform/min:output:0*
T0*
_output_shapes
: Í
&random_rotation_6/stateful_uniform/mulMulDrandom_rotation_6/stateful_uniform/StatelessRandomUniformV2:output:0*random_rotation_6/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
"random_rotation_6/stateful_uniformAddV2*random_rotation_6/stateful_uniform/mul:z:0/random_rotation_6/stateful_uniform/min:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
'random_rotation_6/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
%random_rotation_6/rotation_matrix/subSubrandom_rotation_6/Cast_1:y:00random_rotation_6/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 
%random_rotation_6/rotation_matrix/CosCos&random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
)random_rotation_6/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¡
'random_rotation_6/rotation_matrix/sub_1Subrandom_rotation_6/Cast_1:y:02random_rotation_6/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: ²
%random_rotation_6/rotation_matrix/mulMul)random_rotation_6/rotation_matrix/Cos:y:0+random_rotation_6/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%random_rotation_6/rotation_matrix/SinSin&random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
)random_rotation_6/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
'random_rotation_6/rotation_matrix/sub_2Subrandom_rotation_6/Cast:y:02random_rotation_6/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ´
'random_rotation_6/rotation_matrix/mul_1Mul)random_rotation_6/rotation_matrix/Sin:y:0+random_rotation_6/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
'random_rotation_6/rotation_matrix/sub_3Sub)random_rotation_6/rotation_matrix/mul:z:0+random_rotation_6/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
'random_rotation_6/rotation_matrix/sub_4Sub)random_rotation_6/rotation_matrix/sub:z:0+random_rotation_6/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
+random_rotation_6/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @Å
)random_rotation_6/rotation_matrix/truedivRealDiv+random_rotation_6/rotation_matrix/sub_4:z:04random_rotation_6/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
)random_rotation_6/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
'random_rotation_6/rotation_matrix/sub_5Subrandom_rotation_6/Cast:y:02random_rotation_6/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 
'random_rotation_6/rotation_matrix/Sin_1Sin&random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
)random_rotation_6/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¡
'random_rotation_6/rotation_matrix/sub_6Subrandom_rotation_6/Cast_1:y:02random_rotation_6/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: ¶
'random_rotation_6/rotation_matrix/mul_2Mul+random_rotation_6/rotation_matrix/Sin_1:y:0+random_rotation_6/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'random_rotation_6/rotation_matrix/Cos_1Cos&random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
)random_rotation_6/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
'random_rotation_6/rotation_matrix/sub_7Subrandom_rotation_6/Cast:y:02random_rotation_6/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: ¶
'random_rotation_6/rotation_matrix/mul_3Mul+random_rotation_6/rotation_matrix/Cos_1:y:0+random_rotation_6/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
%random_rotation_6/rotation_matrix/addAddV2+random_rotation_6/rotation_matrix/mul_2:z:0+random_rotation_6/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
'random_rotation_6/rotation_matrix/sub_8Sub+random_rotation_6/rotation_matrix/sub_5:z:0)random_rotation_6/rotation_matrix/add:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
-random_rotation_6/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @É
+random_rotation_6/rotation_matrix/truediv_1RealDiv+random_rotation_6/rotation_matrix/sub_8:z:06random_rotation_6/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
'random_rotation_6/rotation_matrix/ShapeShape&random_rotation_6/stateful_uniform:z:0*
T0*
_output_shapes
:
5random_rotation_6/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
7random_rotation_6/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
7random_rotation_6/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:û
/random_rotation_6/rotation_matrix/strided_sliceStridedSlice0random_rotation_6/rotation_matrix/Shape:output:0>random_rotation_6/rotation_matrix/strided_slice/stack:output:0@random_rotation_6/rotation_matrix/strided_slice/stack_1:output:0@random_rotation_6/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
'random_rotation_6/rotation_matrix/Cos_2Cos&random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
7random_rotation_6/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_6/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_6/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ®
1random_rotation_6/rotation_matrix/strided_slice_1StridedSlice+random_rotation_6/rotation_matrix/Cos_2:y:0@random_rotation_6/rotation_matrix/strided_slice_1/stack:output:0Brandom_rotation_6/rotation_matrix/strided_slice_1/stack_1:output:0Brandom_rotation_6/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask
'random_rotation_6/rotation_matrix/Sin_2Sin&random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
7random_rotation_6/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_6/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_6/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ®
1random_rotation_6/rotation_matrix/strided_slice_2StridedSlice+random_rotation_6/rotation_matrix/Sin_2:y:0@random_rotation_6/rotation_matrix/strided_slice_2/stack:output:0Brandom_rotation_6/rotation_matrix/strided_slice_2/stack_1:output:0Brandom_rotation_6/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask
%random_rotation_6/rotation_matrix/NegNeg:random_rotation_6/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
7random_rotation_6/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_6/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_6/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      °
1random_rotation_6/rotation_matrix/strided_slice_3StridedSlice-random_rotation_6/rotation_matrix/truediv:z:0@random_rotation_6/rotation_matrix/strided_slice_3/stack:output:0Brandom_rotation_6/rotation_matrix/strided_slice_3/stack_1:output:0Brandom_rotation_6/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask
'random_rotation_6/rotation_matrix/Sin_3Sin&random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
7random_rotation_6/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_6/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_6/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ®
1random_rotation_6/rotation_matrix/strided_slice_4StridedSlice+random_rotation_6/rotation_matrix/Sin_3:y:0@random_rotation_6/rotation_matrix/strided_slice_4/stack:output:0Brandom_rotation_6/rotation_matrix/strided_slice_4/stack_1:output:0Brandom_rotation_6/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask
'random_rotation_6/rotation_matrix/Cos_3Cos&random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
7random_rotation_6/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_6/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_6/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ®
1random_rotation_6/rotation_matrix/strided_slice_5StridedSlice+random_rotation_6/rotation_matrix/Cos_3:y:0@random_rotation_6/rotation_matrix/strided_slice_5/stack:output:0Brandom_rotation_6/rotation_matrix/strided_slice_5/stack_1:output:0Brandom_rotation_6/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask
7random_rotation_6/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_6/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_6/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ²
1random_rotation_6/rotation_matrix/strided_slice_6StridedSlice/random_rotation_6/rotation_matrix/truediv_1:z:0@random_rotation_6/rotation_matrix/strided_slice_6/stack:output:0Brandom_rotation_6/rotation_matrix/strided_slice_6/stack_1:output:0Brandom_rotation_6/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_maskr
0random_rotation_6/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ù
.random_rotation_6/rotation_matrix/zeros/packedPack8random_rotation_6/rotation_matrix/strided_slice:output:09random_rotation_6/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:r
-random_rotation_6/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ò
'random_rotation_6/rotation_matrix/zerosFill7random_rotation_6/rotation_matrix/zeros/packed:output:06random_rotation_6/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
-random_rotation_6/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :°
(random_rotation_6/rotation_matrix/concatConcatV2:random_rotation_6/rotation_matrix/strided_slice_1:output:0)random_rotation_6/rotation_matrix/Neg:y:0:random_rotation_6/rotation_matrix/strided_slice_3:output:0:random_rotation_6/rotation_matrix/strided_slice_4:output:0:random_rotation_6/rotation_matrix/strided_slice_5:output:0:random_rotation_6/rotation_matrix/strided_slice_6:output:00random_rotation_6/rotation_matrix/zeros:output:06random_rotation_6/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!random_rotation_6/transform/ShapeShape=random_flip_6/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*
_output_shapes
:y
/random_rotation_6/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1random_rotation_6/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1random_rotation_6/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
)random_rotation_6/transform/strided_sliceStridedSlice*random_rotation_6/transform/Shape:output:08random_rotation_6/transform/strided_slice/stack:output:0:random_rotation_6/transform/strided_slice/stack_1:output:0:random_rotation_6/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:k
&random_rotation_6/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
6random_rotation_6/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3=random_flip_6/map/TensorArrayV2Stack/TensorListStack:tensor:01random_rotation_6/rotation_matrix/concat:output:02random_rotation_6/transform/strided_slice:output:0/random_rotation_6/transform/fill_value:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR
random_zoom_6/ShapeShapeKrandom_rotation_6/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:k
!random_zoom_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#random_zoom_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#random_zoom_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
random_zoom_6/strided_sliceStridedSlicerandom_zoom_6/Shape:output:0*random_zoom_6/strided_slice/stack:output:0,random_zoom_6/strided_slice/stack_1:output:0,random_zoom_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
#random_zoom_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ýÿÿÿÿÿÿÿÿx
%random_zoom_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿo
%random_zoom_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
random_zoom_6/strided_slice_1StridedSlicerandom_zoom_6/Shape:output:0,random_zoom_6/strided_slice_1/stack:output:0.random_zoom_6/strided_slice_1/stack_1:output:0.random_zoom_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
random_zoom_6/CastCast&random_zoom_6/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: v
#random_zoom_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿx
%random_zoom_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿo
%random_zoom_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
random_zoom_6/strided_slice_2StridedSlicerandom_zoom_6/Shape:output:0,random_zoom_6/strided_slice_2/stack:output:0.random_zoom_6/strided_slice_2/stack_1:output:0.random_zoom_6/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
random_zoom_6/Cast_1Cast&random_zoom_6/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: h
&random_zoom_6/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :±
$random_zoom_6/stateful_uniform/shapePack$random_zoom_6/strided_slice:output:0/random_zoom_6/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:g
"random_zoom_6/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL?g
"random_zoom_6/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *?n
$random_zoom_6/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: ª
#random_zoom_6/stateful_uniform/ProdProd-random_zoom_6/stateful_uniform/shape:output:0-random_zoom_6/stateful_uniform/Const:output:0*
T0*
_output_shapes
: g
%random_zoom_6/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
%random_zoom_6/stateful_uniform/Cast_1Cast,random_zoom_6/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: î
-random_zoom_6/stateful_uniform/RngReadAndSkipRngReadAndSkip6random_zoom_6_stateful_uniform_rngreadandskip_resource.random_zoom_6/stateful_uniform/Cast/x:output:0)random_zoom_6/stateful_uniform/Cast_1:y:0*
_output_shapes
:|
2random_zoom_6/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4random_zoom_6/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4random_zoom_6/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ò
,random_zoom_6/stateful_uniform/strided_sliceStridedSlice5random_zoom_6/stateful_uniform/RngReadAndSkip:value:0;random_zoom_6/stateful_uniform/strided_slice/stack:output:0=random_zoom_6/stateful_uniform/strided_slice/stack_1:output:0=random_zoom_6/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask
&random_zoom_6/stateful_uniform/BitcastBitcast5random_zoom_6/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0~
4random_zoom_6/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
6random_zoom_6/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6random_zoom_6/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:è
.random_zoom_6/stateful_uniform/strided_slice_1StridedSlice5random_zoom_6/stateful_uniform/RngReadAndSkip:value:0=random_zoom_6/stateful_uniform/strided_slice_1/stack:output:0?random_zoom_6/stateful_uniform/strided_slice_1/stack_1:output:0?random_zoom_6/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:
(random_zoom_6/stateful_uniform/Bitcast_1Bitcast7random_zoom_6/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0}
;random_zoom_6/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Õ
7random_zoom_6/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2-random_zoom_6/stateful_uniform/shape:output:01random_zoom_6/stateful_uniform/Bitcast_1:output:0/random_zoom_6/stateful_uniform/Bitcast:output:0Drandom_zoom_6/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
"random_zoom_6/stateful_uniform/subSub+random_zoom_6/stateful_uniform/max:output:0+random_zoom_6/stateful_uniform/min:output:0*
T0*
_output_shapes
: Å
"random_zoom_6/stateful_uniform/mulMul@random_zoom_6/stateful_uniform/StatelessRandomUniformV2:output:0&random_zoom_6/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
random_zoom_6/stateful_uniformAddV2&random_zoom_6/stateful_uniform/mul:z:0+random_zoom_6/stateful_uniform/min:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
random_zoom_6/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ç
random_zoom_6/concatConcatV2"random_zoom_6/stateful_uniform:z:0"random_zoom_6/stateful_uniform:z:0"random_zoom_6/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
random_zoom_6/zoom_matrix/ShapeShaperandom_zoom_6/concat:output:0*
T0*
_output_shapes
:w
-random_zoom_6/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/random_zoom_6/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/random_zoom_6/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ó
'random_zoom_6/zoom_matrix/strided_sliceStridedSlice(random_zoom_6/zoom_matrix/Shape:output:06random_zoom_6/zoom_matrix/strided_slice/stack:output:08random_zoom_6/zoom_matrix/strided_slice/stack_1:output:08random_zoom_6/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
random_zoom_6/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
random_zoom_6/zoom_matrix/subSubrandom_zoom_6/Cast_1:y:0(random_zoom_6/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: h
#random_zoom_6/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
!random_zoom_6/zoom_matrix/truedivRealDiv!random_zoom_6/zoom_matrix/sub:z:0,random_zoom_6/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 
/random_zoom_6/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            
1random_zoom_6/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
1random_zoom_6/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         
)random_zoom_6/zoom_matrix/strided_slice_1StridedSlicerandom_zoom_6/concat:output:08random_zoom_6/zoom_matrix/strided_slice_1/stack:output:0:random_zoom_6/zoom_matrix/strided_slice_1/stack_1:output:0:random_zoom_6/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskf
!random_zoom_6/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¸
random_zoom_6/zoom_matrix/sub_1Sub*random_zoom_6/zoom_matrix/sub_1/x:output:02random_zoom_6/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
random_zoom_6/zoom_matrix/mulMul%random_zoom_6/zoom_matrix/truediv:z:0#random_zoom_6/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
!random_zoom_6/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
random_zoom_6/zoom_matrix/sub_2Subrandom_zoom_6/Cast:y:0*random_zoom_6/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: j
%random_zoom_6/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @¤
#random_zoom_6/zoom_matrix/truediv_1RealDiv#random_zoom_6/zoom_matrix/sub_2:z:0.random_zoom_6/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 
/random_zoom_6/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           
1random_zoom_6/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
1random_zoom_6/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         
)random_zoom_6/zoom_matrix/strided_slice_2StridedSlicerandom_zoom_6/concat:output:08random_zoom_6/zoom_matrix/strided_slice_2/stack:output:0:random_zoom_6/zoom_matrix/strided_slice_2/stack_1:output:0:random_zoom_6/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskf
!random_zoom_6/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¸
random_zoom_6/zoom_matrix/sub_3Sub*random_zoom_6/zoom_matrix/sub_3/x:output:02random_zoom_6/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
random_zoom_6/zoom_matrix/mul_1Mul'random_zoom_6/zoom_matrix/truediv_1:z:0#random_zoom_6/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/random_zoom_6/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            
1random_zoom_6/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
1random_zoom_6/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         
)random_zoom_6/zoom_matrix/strided_slice_3StridedSlicerandom_zoom_6/concat:output:08random_zoom_6/zoom_matrix/strided_slice_3/stack:output:0:random_zoom_6/zoom_matrix/strided_slice_3/stack_1:output:0:random_zoom_6/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskj
(random_zoom_6/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Á
&random_zoom_6/zoom_matrix/zeros/packedPack0random_zoom_6/zoom_matrix/strided_slice:output:01random_zoom_6/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:j
%random_zoom_6/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    º
random_zoom_6/zoom_matrix/zerosFill/random_zoom_6/zoom_matrix/zeros/packed:output:0.random_zoom_6/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
*random_zoom_6/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Å
(random_zoom_6/zoom_matrix/zeros_1/packedPack0random_zoom_6/zoom_matrix/strided_slice:output:03random_zoom_6/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:l
'random_zoom_6/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    À
!random_zoom_6/zoom_matrix/zeros_1Fill1random_zoom_6/zoom_matrix/zeros_1/packed:output:00random_zoom_6/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/random_zoom_6/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           
1random_zoom_6/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
1random_zoom_6/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         
)random_zoom_6/zoom_matrix/strided_slice_4StridedSlicerandom_zoom_6/concat:output:08random_zoom_6/zoom_matrix/strided_slice_4/stack:output:0:random_zoom_6/zoom_matrix/strided_slice_4/stack_1:output:0:random_zoom_6/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskl
*random_zoom_6/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Å
(random_zoom_6/zoom_matrix/zeros_2/packedPack0random_zoom_6/zoom_matrix/strided_slice:output:03random_zoom_6/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:l
'random_zoom_6/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    À
!random_zoom_6/zoom_matrix/zeros_2Fill1random_zoom_6/zoom_matrix/zeros_2/packed:output:00random_zoom_6/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
%random_zoom_6/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :É
 random_zoom_6/zoom_matrix/concatConcatV22random_zoom_6/zoom_matrix/strided_slice_3:output:0(random_zoom_6/zoom_matrix/zeros:output:0!random_zoom_6/zoom_matrix/mul:z:0*random_zoom_6/zoom_matrix/zeros_1:output:02random_zoom_6/zoom_matrix/strided_slice_4:output:0#random_zoom_6/zoom_matrix/mul_1:z:0*random_zoom_6/zoom_matrix/zeros_2:output:0.random_zoom_6/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
random_zoom_6/transform/ShapeShapeKrandom_rotation_6/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:u
+random_zoom_6/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-random_zoom_6/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-random_zoom_6/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:µ
%random_zoom_6/transform/strided_sliceStridedSlice&random_zoom_6/transform/Shape:output:04random_zoom_6/transform/strided_slice/stack:output:06random_zoom_6/transform/strided_slice/stack_1:output:06random_zoom_6/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:g
"random_zoom_6/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
2random_zoom_6/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Krandom_rotation_6/transform/ImageProjectiveTransformV3:transformed_images:0)random_zoom_6/zoom_matrix/concat:output:0.random_zoom_6/transform/strided_slice:output:0+random_zoom_6/transform/fill_value:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR
IdentityIdentityGrandom_zoom_6/transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKKÄ
NoOpNoOp^random_flip_6/map/while2^random_rotation_6/stateful_uniform/RngReadAndSkip.^random_zoom_6/stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿKK: : : 22
random_flip_6/map/whilerandom_flip_6/map/while2f
1random_rotation_6/stateful_uniform/RngReadAndSkip1random_rotation_6/stateful_uniform/RngReadAndSkip2^
-random_zoom_6/stateful_uniform/RngReadAndSkip-random_zoom_6/stateful_uniform/RngReadAndSkip:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
 
_user_specified_nameinputs

Ý
*__inference_model_54_layer_call_fn_1013013
inputs_0
inputs_1
unknown:	
	unknown_0:	
	unknown_1:	#
	unknown_2:
	unknown_3:#
	unknown_4:
	unknown_5:#
	unknown_6: 
	unknown_7: #
	unknown_8: @
	unknown_9:@

unknown_10:	À2

unknown_11:2

unknown_12:2K

unknown_13:K

unknown_14:K

unknown_15:
identity¢StatefulPartitionedCall­
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_model_54_layer_call_and_return_conditional_losses_1012715o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:ÿÿÿÿÿÿÿÿÿKK:ÿÿÿÿÿÿÿÿÿKK: : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
"
_user_specified_name
inputs/1

Ç
*__inference_model_53_layer_call_fn_1013865

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:	À2
	unknown_8:2
	unknown_9:2K

unknown_10:K
identity¢StatefulPartitionedCallÝ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_model_53_layer_call_and_return_conditional_losses_1012164o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿKK: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
 
_user_specified_nameinputs
ù3
´
E__inference_model_53_layer_call_and_return_conditional_losses_1012333

inputs'
data_augmentation_1012291:	'
data_augmentation_1012293:	'
data_augmentation_1012295:	,
conv2d_253_1012298: 
conv2d_253_1012300:,
conv2d_254_1012304: 
conv2d_254_1012306:,
conv2d_255_1012310:  
conv2d_255_1012312: ,
conv2d_256_1012316: @ 
conv2d_256_1012318:@$
dense_119_1012322:	À2
dense_119_1012324:2#
dense_120_1012327:2K
dense_120_1012329:K
identity¢"conv2d_253/StatefulPartitionedCall¢"conv2d_254/StatefulPartitionedCall¢"conv2d_255/StatefulPartitionedCall¢"conv2d_256/StatefulPartitionedCall¢)data_augmentation/StatefulPartitionedCall¢!dense_119/StatefulPartitionedCall¢!dense_120/StatefulPartitionedCall·
)data_augmentation/StatefulPartitionedCallStatefulPartitionedCallinputsdata_augmentation_1012291data_augmentation_1012293data_augmentation_1012295*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_data_augmentation_layer_call_and_return_conditional_losses_1011966¯
"conv2d_253/StatefulPartitionedCallStatefulPartitionedCall2data_augmentation/StatefulPartitionedCall:output:0conv2d_253_1012298conv2d_253_1012300*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿGG*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_conv2d_253_layer_call_and_return_conditional_losses_1012061ø
!max_pooling2d_191/PartitionedCallPartitionedCall+conv2d_253/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ##* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_max_pooling2d_191_layer_call_and_return_conditional_losses_1012015§
"conv2d_254/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_191/PartitionedCall:output:0conv2d_254_1012304conv2d_254_1012306*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!!*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_conv2d_254_layer_call_and_return_conditional_losses_1012079ø
!max_pooling2d_192/PartitionedCallPartitionedCall+conv2d_254/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_max_pooling2d_192_layer_call_and_return_conditional_losses_1012027§
"conv2d_255/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_192/PartitionedCall:output:0conv2d_255_1012310conv2d_255_1012312*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_conv2d_255_layer_call_and_return_conditional_losses_1012097ø
!max_pooling2d_193/PartitionedCallPartitionedCall+conv2d_255/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_max_pooling2d_193_layer_call_and_return_conditional_losses_1012039§
"conv2d_256/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_193/PartitionedCall:output:0conv2d_256_1012316conv2d_256_1012318*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_conv2d_256_layer_call_and_return_conditional_losses_1012115ã
flatten_61/PartitionedCallPartitionedCall+conv2d_256/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_61_layer_call_and_return_conditional_losses_1012127
!dense_119/StatefulPartitionedCallStatefulPartitionedCall#flatten_61/PartitionedCall:output:0dense_119_1012322dense_119_1012324*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_119_layer_call_and_return_conditional_losses_1012140
!dense_120/StatefulPartitionedCallStatefulPartitionedCall*dense_119/StatefulPartitionedCall:output:0dense_120_1012327dense_120_1012329*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_120_layer_call_and_return_conditional_losses_1012157y
IdentityIdentity*dense_120/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿKÎ
NoOpNoOp#^conv2d_253/StatefulPartitionedCall#^conv2d_254/StatefulPartitionedCall#^conv2d_255/StatefulPartitionedCall#^conv2d_256/StatefulPartitionedCall*^data_augmentation/StatefulPartitionedCall"^dense_119/StatefulPartitionedCall"^dense_120/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:ÿÿÿÿÿÿÿÿÿKK: : : : : : : : : : : : : : : 2H
"conv2d_253/StatefulPartitionedCall"conv2d_253/StatefulPartitionedCall2H
"conv2d_254/StatefulPartitionedCall"conv2d_254/StatefulPartitionedCall2H
"conv2d_255/StatefulPartitionedCall"conv2d_255/StatefulPartitionedCall2H
"conv2d_256/StatefulPartitionedCall"conv2d_256/StatefulPartitionedCall2V
)data_augmentation/StatefulPartitionedCall)data_augmentation/StatefulPartitionedCall2F
!dense_119/StatefulPartitionedCall!dense_119/StatefulPartitionedCall2F
!dense_120/StatefulPartitionedCall!dense_120/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
 
_user_specified_nameinputs


÷
F__inference_dense_120_layer_call_and_return_conditional_losses_1012157

inputs0
matmul_readvariableop_resource:2K-
biasadd_readvariableop_resource:K
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2K*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿKr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:K*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿKV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿKZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿKw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs

j
N__inference_data_augmentation_layer_call_and_return_conditional_losses_1014385

inputs
identityV
IdentityIdentityinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿKK:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
 
_user_specified_nameinputs

j
N__inference_max_pooling2d_193_layer_call_and_return_conditional_losses_1012039

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¾

/__inference_random_zoom_6_layer_call_fn_1015138

inputs
unknown:	
identity¢StatefulPartitionedCall×
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_random_zoom_6_layer_call_and_return_conditional_losses_1011688w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿKK: 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
 
_user_specified_nameinputs

r
F__inference_lambda_31_layer_call_and_return_conditional_losses_1014338
inputs_0
inputs_1
identityP
subSubinputs_0inputs_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿKE
AbsAbssub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿKO
IdentityIdentityAbs:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿK:ÿÿÿÿÿÿÿÿÿK:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
"
_user_specified_name
inputs/1
Æ

+__inference_dense_120_layer_call_fn_1014856

inputs
unknown:2K
	unknown_0:K
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_120_layer_call_and_return_conditional_losses_1012157o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs

µ
3__inference_data_augmentation_layer_call_fn_1014381

inputs
unknown:	
	unknown_0:	
	unknown_1:	
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_data_augmentation_layer_call_and_return_conditional_losses_1011966w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿKK: : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
 
_user_specified_nameinputs
½
Ó
map_while_cond_1011847$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1$
 map_while_less_map_strided_slice=
9map_while_map_while_cond_1011847___redundant_placeholder0=
9map_while_map_while_cond_1011847___redundant_placeholder1
map_while_identity
p
map/while/LessLessmap_while_placeholder map_while_less_map_strided_slice*
T0*
_output_shapes
: x
map/while/Less_1Less map_while_map_while_loop_countermap_while_map_strided_slice*
T0*
_output_shapes
: d
map/while/LogicalAnd
LogicalAndmap/while/Less_1:z:0map/while/Less:z:0*
_output_shapes
: Y
map/while/IdentityIdentitymap/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "1
map_while_identitymap/while/Identity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:
°

amodel_53_data_augmentation_random_flip_6_map_while_stateless_random_flip_left_right_false_1013186È
Ãmodel_53_data_augmentation_random_flip_6_map_while_stateless_random_flip_left_right_identity_model_53_data_augmentation_random_flip_6_map_while_stateless_random_flip_left_right_control_dependency`
\model_53_data_augmentation_random_flip_6_map_while_stateless_random_flip_left_right_identityÛ
\model_53/data_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/IdentityIdentityÃmodel_53_data_augmentation_random_flip_6_map_while_stateless_random_flip_left_right_identity_model_53_data_augmentation_random_flip_6_map_while_stateless_random_flip_left_right_control_dependency*
T0*"
_output_shapes
:KK"Å
\model_53_data_augmentation_random_flip_6_map_while_stateless_random_flip_left_right_identityemodel_53/data_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:KK:( $
"
_output_shapes
:KK


6data_augmentation_random_flip_6_map_while_cond_1013966d
`data_augmentation_random_flip_6_map_while_data_augmentation_random_flip_6_map_while_loop_counter_
[data_augmentation_random_flip_6_map_while_data_augmentation_random_flip_6_map_strided_slice9
5data_augmentation_random_flip_6_map_while_placeholder;
7data_augmentation_random_flip_6_map_while_placeholder_1d
`data_augmentation_random_flip_6_map_while_less_data_augmentation_random_flip_6_map_strided_slice}
ydata_augmentation_random_flip_6_map_while_data_augmentation_random_flip_6_map_while_cond_1013966___redundant_placeholder0}
ydata_augmentation_random_flip_6_map_while_data_augmentation_random_flip_6_map_while_cond_1013966___redundant_placeholder16
2data_augmentation_random_flip_6_map_while_identity
ð
.data_augmentation/random_flip_6/map/while/LessLess5data_augmentation_random_flip_6_map_while_placeholder`data_augmentation_random_flip_6_map_while_less_data_augmentation_random_flip_6_map_strided_slice*
T0*
_output_shapes
: 
0data_augmentation/random_flip_6/map/while/Less_1Less`data_augmentation_random_flip_6_map_while_data_augmentation_random_flip_6_map_while_loop_counter[data_augmentation_random_flip_6_map_while_data_augmentation_random_flip_6_map_strided_slice*
T0*
_output_shapes
: Ä
4data_augmentation/random_flip_6/map/while/LogicalAnd
LogicalAnd4data_augmentation/random_flip_6/map/while/Less_1:z:02data_augmentation/random_flip_6/map/while/Less:z:0*
_output_shapes
: 
2data_augmentation/random_flip_6/map/while/IdentityIdentity8data_augmentation/random_flip_6/map/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "q
2data_augmentation_random_flip_6_map_while_identity;data_augmentation/random_flip_6/map/while/Identity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:
¾
O
3__inference_max_pooling2d_191_layer_call_fn_1014731

inputs
identityÜ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_max_pooling2d_191_layer_call_and_return_conditional_losses_1012015
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÌÄ

E__inference_model_53_layer_call_and_return_conditional_losses_1014319

inputs?
1data_augmentation_random_flip_6_map_while_input_6:	Z
Ldata_augmentation_random_rotation_6_stateful_uniform_rngreadandskip_resource:	V
Hdata_augmentation_random_zoom_6_stateful_uniform_rngreadandskip_resource:	C
)conv2d_253_conv2d_readvariableop_resource:8
*conv2d_253_biasadd_readvariableop_resource:C
)conv2d_254_conv2d_readvariableop_resource:8
*conv2d_254_biasadd_readvariableop_resource:C
)conv2d_255_conv2d_readvariableop_resource: 8
*conv2d_255_biasadd_readvariableop_resource: C
)conv2d_256_conv2d_readvariableop_resource: @8
*conv2d_256_biasadd_readvariableop_resource:@;
(dense_119_matmul_readvariableop_resource:	À27
)dense_119_biasadd_readvariableop_resource:2:
(dense_120_matmul_readvariableop_resource:2K7
)dense_120_biasadd_readvariableop_resource:K
identity¢!conv2d_253/BiasAdd/ReadVariableOp¢ conv2d_253/Conv2D/ReadVariableOp¢!conv2d_254/BiasAdd/ReadVariableOp¢ conv2d_254/Conv2D/ReadVariableOp¢!conv2d_255/BiasAdd/ReadVariableOp¢ conv2d_255/Conv2D/ReadVariableOp¢!conv2d_256/BiasAdd/ReadVariableOp¢ conv2d_256/Conv2D/ReadVariableOp¢)data_augmentation/random_flip_6/map/while¢Cdata_augmentation/random_rotation_6/stateful_uniform/RngReadAndSkip¢?data_augmentation/random_zoom_6/stateful_uniform/RngReadAndSkip¢ dense_119/BiasAdd/ReadVariableOp¢dense_119/MatMul/ReadVariableOp¢ dense_120/BiasAdd/ReadVariableOp¢dense_120/MatMul/ReadVariableOp_
)data_augmentation/random_flip_6/map/ShapeShapeinputs*
T0*
_output_shapes
:
7data_augmentation/random_flip_6/map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
9data_augmentation/random_flip_6/map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
9data_augmentation/random_flip_6/map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
1data_augmentation/random_flip_6/map/strided_sliceStridedSlice2data_augmentation/random_flip_6/map/Shape:output:0@data_augmentation/random_flip_6/map/strided_slice/stack:output:0Bdata_augmentation/random_flip_6/map/strided_slice/stack_1:output:0Bdata_augmentation/random_flip_6/map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?data_augmentation/random_flip_6/map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
1data_augmentation/random_flip_6/map/TensorArrayV2TensorListReserveHdata_augmentation/random_flip_6/map/TensorArrayV2/element_shape:output:0:data_augmentation/random_flip_6/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ®
Ydata_augmentation/random_flip_6/map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"K   K      ¡
Kdata_augmentation/random_flip_6/map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputsbdata_augmentation/random_flip_6/map/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒk
)data_augmentation/random_flip_6/map/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
Adata_augmentation/random_flip_6/map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¢
3data_augmentation/random_flip_6/map/TensorArrayV2_1TensorListReserveJdata_augmentation/random_flip_6/map/TensorArrayV2_1/element_shape:output:0:data_augmentation/random_flip_6/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒx
6data_augmentation/random_flip_6/map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ë
)data_augmentation/random_flip_6/map/whileWhile?data_augmentation/random_flip_6/map/while/loop_counter:output:0:data_augmentation/random_flip_6/map/strided_slice:output:02data_augmentation/random_flip_6/map/Const:output:0<data_augmentation/random_flip_6/map/TensorArrayV2_1:handle:0:data_augmentation/random_flip_6/map/strided_slice:output:0[data_augmentation/random_flip_6/map/TensorArrayUnstack/TensorListFromTensor:output_handle:01data_augmentation_random_flip_6_map_while_input_6*
T
	2*
_lower_using_switch_merge(*
_num_original_outputs*"
_output_shapes
: : : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( *B
body:R8
6data_augmentation_random_flip_6_map_while_body_1013967*B
cond:R8
6data_augmentation_random_flip_6_map_while_cond_1013966*!
output_shapes
: : : : : : : ©
Tdata_augmentation/random_flip_6/map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"K   K      ²
Fdata_augmentation/random_flip_6/map/TensorArrayV2Stack/TensorListStackTensorListStack2data_augmentation/random_flip_6/map/while:output:3]data_augmentation/random_flip_6/map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK*
element_dtype0¨
)data_augmentation/random_rotation_6/ShapeShapeOdata_augmentation/random_flip_6/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*
_output_shapes
:
7data_augmentation/random_rotation_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
9data_augmentation/random_rotation_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
9data_augmentation/random_rotation_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
1data_augmentation/random_rotation_6/strided_sliceStridedSlice2data_augmentation/random_rotation_6/Shape:output:0@data_augmentation/random_rotation_6/strided_slice/stack:output:0Bdata_augmentation/random_rotation_6/strided_slice/stack_1:output:0Bdata_augmentation/random_rotation_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
9data_augmentation/random_rotation_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ýÿÿÿÿÿÿÿÿ
;data_augmentation/random_rotation_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿ
;data_augmentation/random_rotation_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
3data_augmentation/random_rotation_6/strided_slice_1StridedSlice2data_augmentation/random_rotation_6/Shape:output:0Bdata_augmentation/random_rotation_6/strided_slice_1/stack:output:0Ddata_augmentation/random_rotation_6/strided_slice_1/stack_1:output:0Ddata_augmentation/random_rotation_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
(data_augmentation/random_rotation_6/CastCast<data_augmentation/random_rotation_6/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 
9data_augmentation/random_rotation_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿ
;data_augmentation/random_rotation_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ
;data_augmentation/random_rotation_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
3data_augmentation/random_rotation_6/strided_slice_2StridedSlice2data_augmentation/random_rotation_6/Shape:output:0Bdata_augmentation/random_rotation_6/strided_slice_2/stack:output:0Ddata_augmentation/random_rotation_6/strided_slice_2/stack_1:output:0Ddata_augmentation/random_rotation_6/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask 
*data_augmentation/random_rotation_6/Cast_1Cast<data_augmentation/random_rotation_6/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: ¬
:data_augmentation/random_rotation_6/stateful_uniform/shapePack:data_augmentation/random_rotation_6/strided_slice:output:0*
N*
T0*
_output_shapes
:}
8data_augmentation/random_rotation_6/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ¿}
8data_augmentation/random_rotation_6/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ?
:data_augmentation/random_rotation_6/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: ì
9data_augmentation/random_rotation_6/stateful_uniform/ProdProdCdata_augmentation/random_rotation_6/stateful_uniform/shape:output:0Cdata_augmentation/random_rotation_6/stateful_uniform/Const:output:0*
T0*
_output_shapes
: }
;data_augmentation/random_rotation_6/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :·
;data_augmentation/random_rotation_6/stateful_uniform/Cast_1CastBdata_augmentation/random_rotation_6/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Æ
Cdata_augmentation/random_rotation_6/stateful_uniform/RngReadAndSkipRngReadAndSkipLdata_augmentation_random_rotation_6_stateful_uniform_rngreadandskip_resourceDdata_augmentation/random_rotation_6/stateful_uniform/Cast/x:output:0?data_augmentation/random_rotation_6/stateful_uniform/Cast_1:y:0*
_output_shapes
:
Hdata_augmentation/random_rotation_6/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Jdata_augmentation/random_rotation_6/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Jdata_augmentation/random_rotation_6/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:à
Bdata_augmentation/random_rotation_6/stateful_uniform/strided_sliceStridedSliceKdata_augmentation/random_rotation_6/stateful_uniform/RngReadAndSkip:value:0Qdata_augmentation/random_rotation_6/stateful_uniform/strided_slice/stack:output:0Sdata_augmentation/random_rotation_6/stateful_uniform/strided_slice/stack_1:output:0Sdata_augmentation/random_rotation_6/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskÅ
<data_augmentation/random_rotation_6/stateful_uniform/BitcastBitcastKdata_augmentation/random_rotation_6/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
Jdata_augmentation/random_rotation_6/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
Ldata_augmentation/random_rotation_6/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Ldata_augmentation/random_rotation_6/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ö
Ddata_augmentation/random_rotation_6/stateful_uniform/strided_slice_1StridedSliceKdata_augmentation/random_rotation_6/stateful_uniform/RngReadAndSkip:value:0Sdata_augmentation/random_rotation_6/stateful_uniform/strided_slice_1/stack:output:0Udata_augmentation/random_rotation_6/stateful_uniform/strided_slice_1/stack_1:output:0Udata_augmentation/random_rotation_6/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:É
>data_augmentation/random_rotation_6/stateful_uniform/Bitcast_1BitcastMdata_augmentation/random_rotation_6/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0
Qdata_augmentation/random_rotation_6/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :¿
Mdata_augmentation/random_rotation_6/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Cdata_augmentation/random_rotation_6/stateful_uniform/shape:output:0Gdata_augmentation/random_rotation_6/stateful_uniform/Bitcast_1:output:0Edata_augmentation/random_rotation_6/stateful_uniform/Bitcast:output:0Zdata_augmentation/random_rotation_6/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ
8data_augmentation/random_rotation_6/stateful_uniform/subSubAdata_augmentation/random_rotation_6/stateful_uniform/max:output:0Adata_augmentation/random_rotation_6/stateful_uniform/min:output:0*
T0*
_output_shapes
: 
8data_augmentation/random_rotation_6/stateful_uniform/mulMulVdata_augmentation/random_rotation_6/stateful_uniform/StatelessRandomUniformV2:output:0<data_augmentation/random_rotation_6/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿì
4data_augmentation/random_rotation_6/stateful_uniformAddV2<data_augmentation/random_rotation_6/stateful_uniform/mul:z:0Adata_augmentation/random_rotation_6/stateful_uniform/min:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
9data_augmentation/random_rotation_6/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ó
7data_augmentation/random_rotation_6/rotation_matrix/subSub.data_augmentation/random_rotation_6/Cast_1:y:0Bdata_augmentation/random_rotation_6/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ¦
7data_augmentation/random_rotation_6/rotation_matrix/CosCos8data_augmentation/random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
;data_augmentation/random_rotation_6/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?×
9data_augmentation/random_rotation_6/rotation_matrix/sub_1Sub.data_augmentation/random_rotation_6/Cast_1:y:0Ddata_augmentation/random_rotation_6/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: è
7data_augmentation/random_rotation_6/rotation_matrix/mulMul;data_augmentation/random_rotation_6/rotation_matrix/Cos:y:0=data_augmentation/random_rotation_6/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
7data_augmentation/random_rotation_6/rotation_matrix/SinSin8data_augmentation/random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
;data_augmentation/random_rotation_6/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Õ
9data_augmentation/random_rotation_6/rotation_matrix/sub_2Sub,data_augmentation/random_rotation_6/Cast:y:0Ddata_augmentation/random_rotation_6/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ê
9data_augmentation/random_rotation_6/rotation_matrix/mul_1Mul;data_augmentation/random_rotation_6/rotation_matrix/Sin:y:0=data_augmentation/random_rotation_6/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿê
9data_augmentation/random_rotation_6/rotation_matrix/sub_3Sub;data_augmentation/random_rotation_6/rotation_matrix/mul:z:0=data_augmentation/random_rotation_6/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿê
9data_augmentation/random_rotation_6/rotation_matrix/sub_4Sub;data_augmentation/random_rotation_6/rotation_matrix/sub:z:0=data_augmentation/random_rotation_6/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
=data_augmentation/random_rotation_6/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @û
;data_augmentation/random_rotation_6/rotation_matrix/truedivRealDiv=data_augmentation/random_rotation_6/rotation_matrix/sub_4:z:0Fdata_augmentation/random_rotation_6/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
;data_augmentation/random_rotation_6/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Õ
9data_augmentation/random_rotation_6/rotation_matrix/sub_5Sub,data_augmentation/random_rotation_6/Cast:y:0Ddata_augmentation/random_rotation_6/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: ¨
9data_augmentation/random_rotation_6/rotation_matrix/Sin_1Sin8data_augmentation/random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
;data_augmentation/random_rotation_6/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?×
9data_augmentation/random_rotation_6/rotation_matrix/sub_6Sub.data_augmentation/random_rotation_6/Cast_1:y:0Ddata_augmentation/random_rotation_6/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: ì
9data_augmentation/random_rotation_6/rotation_matrix/mul_2Mul=data_augmentation/random_rotation_6/rotation_matrix/Sin_1:y:0=data_augmentation/random_rotation_6/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
9data_augmentation/random_rotation_6/rotation_matrix/Cos_1Cos8data_augmentation/random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
;data_augmentation/random_rotation_6/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Õ
9data_augmentation/random_rotation_6/rotation_matrix/sub_7Sub,data_augmentation/random_rotation_6/Cast:y:0Ddata_augmentation/random_rotation_6/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: ì
9data_augmentation/random_rotation_6/rotation_matrix/mul_3Mul=data_augmentation/random_rotation_6/rotation_matrix/Cos_1:y:0=data_augmentation/random_rotation_6/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿì
7data_augmentation/random_rotation_6/rotation_matrix/addAddV2=data_augmentation/random_rotation_6/rotation_matrix/mul_2:z:0=data_augmentation/random_rotation_6/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿê
9data_augmentation/random_rotation_6/rotation_matrix/sub_8Sub=data_augmentation/random_rotation_6/rotation_matrix/sub_5:z:0;data_augmentation/random_rotation_6/rotation_matrix/add:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
?data_augmentation/random_rotation_6/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @ÿ
=data_augmentation/random_rotation_6/rotation_matrix/truediv_1RealDiv=data_augmentation/random_rotation_6/rotation_matrix/sub_8:z:0Hdata_augmentation/random_rotation_6/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
9data_augmentation/random_rotation_6/rotation_matrix/ShapeShape8data_augmentation/random_rotation_6/stateful_uniform:z:0*
T0*
_output_shapes
:
Gdata_augmentation/random_rotation_6/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Idata_augmentation/random_rotation_6/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Idata_augmentation/random_rotation_6/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Õ
Adata_augmentation/random_rotation_6/rotation_matrix/strided_sliceStridedSliceBdata_augmentation/random_rotation_6/rotation_matrix/Shape:output:0Pdata_augmentation/random_rotation_6/rotation_matrix/strided_slice/stack:output:0Rdata_augmentation/random_rotation_6/rotation_matrix/strided_slice/stack_1:output:0Rdata_augmentation/random_rotation_6/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask¨
9data_augmentation/random_rotation_6/rotation_matrix/Cos_2Cos8data_augmentation/random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Idata_augmentation/random_rotation_6/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Kdata_augmentation/random_rotation_6/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
Kdata_augmentation/random_rotation_6/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
Cdata_augmentation/random_rotation_6/rotation_matrix/strided_slice_1StridedSlice=data_augmentation/random_rotation_6/rotation_matrix/Cos_2:y:0Rdata_augmentation/random_rotation_6/rotation_matrix/strided_slice_1/stack:output:0Tdata_augmentation/random_rotation_6/rotation_matrix/strided_slice_1/stack_1:output:0Tdata_augmentation/random_rotation_6/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask¨
9data_augmentation/random_rotation_6/rotation_matrix/Sin_2Sin8data_augmentation/random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Idata_augmentation/random_rotation_6/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Kdata_augmentation/random_rotation_6/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
Kdata_augmentation/random_rotation_6/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
Cdata_augmentation/random_rotation_6/rotation_matrix/strided_slice_2StridedSlice=data_augmentation/random_rotation_6/rotation_matrix/Sin_2:y:0Rdata_augmentation/random_rotation_6/rotation_matrix/strided_slice_2/stack:output:0Tdata_augmentation/random_rotation_6/rotation_matrix/strided_slice_2/stack_1:output:0Tdata_augmentation/random_rotation_6/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask¾
7data_augmentation/random_rotation_6/rotation_matrix/NegNegLdata_augmentation/random_rotation_6/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Idata_augmentation/random_rotation_6/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Kdata_augmentation/random_rotation_6/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
Kdata_augmentation/random_rotation_6/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
Cdata_augmentation/random_rotation_6/rotation_matrix/strided_slice_3StridedSlice?data_augmentation/random_rotation_6/rotation_matrix/truediv:z:0Rdata_augmentation/random_rotation_6/rotation_matrix/strided_slice_3/stack:output:0Tdata_augmentation/random_rotation_6/rotation_matrix/strided_slice_3/stack_1:output:0Tdata_augmentation/random_rotation_6/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask¨
9data_augmentation/random_rotation_6/rotation_matrix/Sin_3Sin8data_augmentation/random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Idata_augmentation/random_rotation_6/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Kdata_augmentation/random_rotation_6/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
Kdata_augmentation/random_rotation_6/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
Cdata_augmentation/random_rotation_6/rotation_matrix/strided_slice_4StridedSlice=data_augmentation/random_rotation_6/rotation_matrix/Sin_3:y:0Rdata_augmentation/random_rotation_6/rotation_matrix/strided_slice_4/stack:output:0Tdata_augmentation/random_rotation_6/rotation_matrix/strided_slice_4/stack_1:output:0Tdata_augmentation/random_rotation_6/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask¨
9data_augmentation/random_rotation_6/rotation_matrix/Cos_3Cos8data_augmentation/random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Idata_augmentation/random_rotation_6/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Kdata_augmentation/random_rotation_6/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
Kdata_augmentation/random_rotation_6/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
Cdata_augmentation/random_rotation_6/rotation_matrix/strided_slice_5StridedSlice=data_augmentation/random_rotation_6/rotation_matrix/Cos_3:y:0Rdata_augmentation/random_rotation_6/rotation_matrix/strided_slice_5/stack:output:0Tdata_augmentation/random_rotation_6/rotation_matrix/strided_slice_5/stack_1:output:0Tdata_augmentation/random_rotation_6/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask
Idata_augmentation/random_rotation_6/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Kdata_augmentation/random_rotation_6/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
Kdata_augmentation/random_rotation_6/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
Cdata_augmentation/random_rotation_6/rotation_matrix/strided_slice_6StridedSliceAdata_augmentation/random_rotation_6/rotation_matrix/truediv_1:z:0Rdata_augmentation/random_rotation_6/rotation_matrix/strided_slice_6/stack:output:0Tdata_augmentation/random_rotation_6/rotation_matrix/strided_slice_6/stack_1:output:0Tdata_augmentation/random_rotation_6/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask
Bdata_augmentation/random_rotation_6/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
@data_augmentation/random_rotation_6/rotation_matrix/zeros/packedPackJdata_augmentation/random_rotation_6/rotation_matrix/strided_slice:output:0Kdata_augmentation/random_rotation_6/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:
?data_augmentation/random_rotation_6/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
9data_augmentation/random_rotation_6/rotation_matrix/zerosFillIdata_augmentation/random_rotation_6/rotation_matrix/zeros/packed:output:0Hdata_augmentation/random_rotation_6/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
?data_augmentation/random_rotation_6/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ò
:data_augmentation/random_rotation_6/rotation_matrix/concatConcatV2Ldata_augmentation/random_rotation_6/rotation_matrix/strided_slice_1:output:0;data_augmentation/random_rotation_6/rotation_matrix/Neg:y:0Ldata_augmentation/random_rotation_6/rotation_matrix/strided_slice_3:output:0Ldata_augmentation/random_rotation_6/rotation_matrix/strided_slice_4:output:0Ldata_augmentation/random_rotation_6/rotation_matrix/strided_slice_5:output:0Ldata_augmentation/random_rotation_6/rotation_matrix/strided_slice_6:output:0Bdata_augmentation/random_rotation_6/rotation_matrix/zeros:output:0Hdata_augmentation/random_rotation_6/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
3data_augmentation/random_rotation_6/transform/ShapeShapeOdata_augmentation/random_flip_6/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*
_output_shapes
:
Adata_augmentation/random_rotation_6/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
Cdata_augmentation/random_rotation_6/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Cdata_augmentation/random_rotation_6/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:£
;data_augmentation/random_rotation_6/transform/strided_sliceStridedSlice<data_augmentation/random_rotation_6/transform/Shape:output:0Jdata_augmentation/random_rotation_6/transform/strided_slice/stack:output:0Ldata_augmentation/random_rotation_6/transform/strided_slice/stack_1:output:0Ldata_augmentation/random_rotation_6/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:}
8data_augmentation/random_rotation_6/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    ø
Hdata_augmentation/random_rotation_6/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Odata_augmentation/random_flip_6/map/TensorArrayV2Stack/TensorListStack:tensor:0Cdata_augmentation/random_rotation_6/rotation_matrix/concat:output:0Ddata_augmentation/random_rotation_6/transform/strided_slice:output:0Adata_augmentation/random_rotation_6/transform/fill_value:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR²
%data_augmentation/random_zoom_6/ShapeShape]data_augmentation/random_rotation_6/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:}
3data_augmentation/random_zoom_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5data_augmentation/random_zoom_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5data_augmentation/random_zoom_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ñ
-data_augmentation/random_zoom_6/strided_sliceStridedSlice.data_augmentation/random_zoom_6/Shape:output:0<data_augmentation/random_zoom_6/strided_slice/stack:output:0>data_augmentation/random_zoom_6/strided_slice/stack_1:output:0>data_augmentation/random_zoom_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
5data_augmentation/random_zoom_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ýÿÿÿÿÿÿÿÿ
7data_augmentation/random_zoom_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿ
7data_augmentation/random_zoom_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
/data_augmentation/random_zoom_6/strided_slice_1StridedSlice.data_augmentation/random_zoom_6/Shape:output:0>data_augmentation/random_zoom_6/strided_slice_1/stack:output:0@data_augmentation/random_zoom_6/strided_slice_1/stack_1:output:0@data_augmentation/random_zoom_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
$data_augmentation/random_zoom_6/CastCast8data_augmentation/random_zoom_6/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 
5data_augmentation/random_zoom_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿ
7data_augmentation/random_zoom_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ
7data_augmentation/random_zoom_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
/data_augmentation/random_zoom_6/strided_slice_2StridedSlice.data_augmentation/random_zoom_6/Shape:output:0>data_augmentation/random_zoom_6/strided_slice_2/stack:output:0@data_augmentation/random_zoom_6/strided_slice_2/stack_1:output:0@data_augmentation/random_zoom_6/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
&data_augmentation/random_zoom_6/Cast_1Cast8data_augmentation/random_zoom_6/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: z
8data_augmentation/random_zoom_6/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :ç
6data_augmentation/random_zoom_6/stateful_uniform/shapePack6data_augmentation/random_zoom_6/strided_slice:output:0Adata_augmentation/random_zoom_6/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:y
4data_augmentation/random_zoom_6/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL?y
4data_augmentation/random_zoom_6/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *?
6data_augmentation/random_zoom_6/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: à
5data_augmentation/random_zoom_6/stateful_uniform/ProdProd?data_augmentation/random_zoom_6/stateful_uniform/shape:output:0?data_augmentation/random_zoom_6/stateful_uniform/Const:output:0*
T0*
_output_shapes
: y
7data_augmentation/random_zoom_6/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :¯
7data_augmentation/random_zoom_6/stateful_uniform/Cast_1Cast>data_augmentation/random_zoom_6/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ¶
?data_augmentation/random_zoom_6/stateful_uniform/RngReadAndSkipRngReadAndSkipHdata_augmentation_random_zoom_6_stateful_uniform_rngreadandskip_resource@data_augmentation/random_zoom_6/stateful_uniform/Cast/x:output:0;data_augmentation/random_zoom_6/stateful_uniform/Cast_1:y:0*
_output_shapes
:
Ddata_augmentation/random_zoom_6/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Fdata_augmentation/random_zoom_6/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Fdata_augmentation/random_zoom_6/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ì
>data_augmentation/random_zoom_6/stateful_uniform/strided_sliceStridedSliceGdata_augmentation/random_zoom_6/stateful_uniform/RngReadAndSkip:value:0Mdata_augmentation/random_zoom_6/stateful_uniform/strided_slice/stack:output:0Odata_augmentation/random_zoom_6/stateful_uniform/strided_slice/stack_1:output:0Odata_augmentation/random_zoom_6/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask½
8data_augmentation/random_zoom_6/stateful_uniform/BitcastBitcastGdata_augmentation/random_zoom_6/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
Fdata_augmentation/random_zoom_6/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
Hdata_augmentation/random_zoom_6/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Hdata_augmentation/random_zoom_6/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Â
@data_augmentation/random_zoom_6/stateful_uniform/strided_slice_1StridedSliceGdata_augmentation/random_zoom_6/stateful_uniform/RngReadAndSkip:value:0Odata_augmentation/random_zoom_6/stateful_uniform/strided_slice_1/stack:output:0Qdata_augmentation/random_zoom_6/stateful_uniform/strided_slice_1/stack_1:output:0Qdata_augmentation/random_zoom_6/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Á
:data_augmentation/random_zoom_6/stateful_uniform/Bitcast_1BitcastIdata_augmentation/random_zoom_6/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0
Mdata_augmentation/random_zoom_6/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :¯
Idata_augmentation/random_zoom_6/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2?data_augmentation/random_zoom_6/stateful_uniform/shape:output:0Cdata_augmentation/random_zoom_6/stateful_uniform/Bitcast_1:output:0Adata_augmentation/random_zoom_6/stateful_uniform/Bitcast:output:0Vdata_augmentation/random_zoom_6/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ
4data_augmentation/random_zoom_6/stateful_uniform/subSub=data_augmentation/random_zoom_6/stateful_uniform/max:output:0=data_augmentation/random_zoom_6/stateful_uniform/min:output:0*
T0*
_output_shapes
: û
4data_augmentation/random_zoom_6/stateful_uniform/mulMulRdata_augmentation/random_zoom_6/stateful_uniform/StatelessRandomUniformV2:output:08data_augmentation/random_zoom_6/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿä
0data_augmentation/random_zoom_6/stateful_uniformAddV28data_augmentation/random_zoom_6/stateful_uniform/mul:z:0=data_augmentation/random_zoom_6/stateful_uniform/min:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
+data_augmentation/random_zoom_6/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
&data_augmentation/random_zoom_6/concatConcatV24data_augmentation/random_zoom_6/stateful_uniform:z:04data_augmentation/random_zoom_6/stateful_uniform:z:04data_augmentation/random_zoom_6/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1data_augmentation/random_zoom_6/zoom_matrix/ShapeShape/data_augmentation/random_zoom_6/concat:output:0*
T0*
_output_shapes
:
?data_augmentation/random_zoom_6/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Adata_augmentation/random_zoom_6/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Adata_augmentation/random_zoom_6/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:­
9data_augmentation/random_zoom_6/zoom_matrix/strided_sliceStridedSlice:data_augmentation/random_zoom_6/zoom_matrix/Shape:output:0Hdata_augmentation/random_zoom_6/zoom_matrix/strided_slice/stack:output:0Jdata_augmentation/random_zoom_6/zoom_matrix/strided_slice/stack_1:output:0Jdata_augmentation/random_zoom_6/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
1data_augmentation/random_zoom_6/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¿
/data_augmentation/random_zoom_6/zoom_matrix/subSub*data_augmentation/random_zoom_6/Cast_1:y:0:data_augmentation/random_zoom_6/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: z
5data_augmentation/random_zoom_6/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @Ô
3data_augmentation/random_zoom_6/zoom_matrix/truedivRealDiv3data_augmentation/random_zoom_6/zoom_matrix/sub:z:0>data_augmentation/random_zoom_6/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 
Adata_augmentation/random_zoom_6/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            
Cdata_augmentation/random_zoom_6/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
Cdata_augmentation/random_zoom_6/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ò
;data_augmentation/random_zoom_6/zoom_matrix/strided_slice_1StridedSlice/data_augmentation/random_zoom_6/concat:output:0Jdata_augmentation/random_zoom_6/zoom_matrix/strided_slice_1/stack:output:0Ldata_augmentation/random_zoom_6/zoom_matrix/strided_slice_1/stack_1:output:0Ldata_augmentation/random_zoom_6/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskx
3data_augmentation/random_zoom_6/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?î
1data_augmentation/random_zoom_6/zoom_matrix/sub_1Sub<data_augmentation/random_zoom_6/zoom_matrix/sub_1/x:output:0Ddata_augmentation/random_zoom_6/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
/data_augmentation/random_zoom_6/zoom_matrix/mulMul7data_augmentation/random_zoom_6/zoom_matrix/truediv:z:05data_augmentation/random_zoom_6/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
3data_augmentation/random_zoom_6/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Á
1data_augmentation/random_zoom_6/zoom_matrix/sub_2Sub(data_augmentation/random_zoom_6/Cast:y:0<data_augmentation/random_zoom_6/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: |
7data_augmentation/random_zoom_6/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @Ú
5data_augmentation/random_zoom_6/zoom_matrix/truediv_1RealDiv5data_augmentation/random_zoom_6/zoom_matrix/sub_2:z:0@data_augmentation/random_zoom_6/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 
Adata_augmentation/random_zoom_6/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           
Cdata_augmentation/random_zoom_6/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
Cdata_augmentation/random_zoom_6/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ò
;data_augmentation/random_zoom_6/zoom_matrix/strided_slice_2StridedSlice/data_augmentation/random_zoom_6/concat:output:0Jdata_augmentation/random_zoom_6/zoom_matrix/strided_slice_2/stack:output:0Ldata_augmentation/random_zoom_6/zoom_matrix/strided_slice_2/stack_1:output:0Ldata_augmentation/random_zoom_6/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskx
3data_augmentation/random_zoom_6/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?î
1data_augmentation/random_zoom_6/zoom_matrix/sub_3Sub<data_augmentation/random_zoom_6/zoom_matrix/sub_3/x:output:0Ddata_augmentation/random_zoom_6/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÜ
1data_augmentation/random_zoom_6/zoom_matrix/mul_1Mul9data_augmentation/random_zoom_6/zoom_matrix/truediv_1:z:05data_augmentation/random_zoom_6/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Adata_augmentation/random_zoom_6/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            
Cdata_augmentation/random_zoom_6/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
Cdata_augmentation/random_zoom_6/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ò
;data_augmentation/random_zoom_6/zoom_matrix/strided_slice_3StridedSlice/data_augmentation/random_zoom_6/concat:output:0Jdata_augmentation/random_zoom_6/zoom_matrix/strided_slice_3/stack:output:0Ldata_augmentation/random_zoom_6/zoom_matrix/strided_slice_3/stack_1:output:0Ldata_augmentation/random_zoom_6/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask|
:data_augmentation/random_zoom_6/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :÷
8data_augmentation/random_zoom_6/zoom_matrix/zeros/packedPackBdata_augmentation/random_zoom_6/zoom_matrix/strided_slice:output:0Cdata_augmentation/random_zoom_6/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:|
7data_augmentation/random_zoom_6/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ð
1data_augmentation/random_zoom_6/zoom_matrix/zerosFillAdata_augmentation/random_zoom_6/zoom_matrix/zeros/packed:output:0@data_augmentation/random_zoom_6/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
<data_augmentation/random_zoom_6/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :û
:data_augmentation/random_zoom_6/zoom_matrix/zeros_1/packedPackBdata_augmentation/random_zoom_6/zoom_matrix/strided_slice:output:0Edata_augmentation/random_zoom_6/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:~
9data_augmentation/random_zoom_6/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ö
3data_augmentation/random_zoom_6/zoom_matrix/zeros_1FillCdata_augmentation/random_zoom_6/zoom_matrix/zeros_1/packed:output:0Bdata_augmentation/random_zoom_6/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Adata_augmentation/random_zoom_6/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           
Cdata_augmentation/random_zoom_6/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
Cdata_augmentation/random_zoom_6/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ò
;data_augmentation/random_zoom_6/zoom_matrix/strided_slice_4StridedSlice/data_augmentation/random_zoom_6/concat:output:0Jdata_augmentation/random_zoom_6/zoom_matrix/strided_slice_4/stack:output:0Ldata_augmentation/random_zoom_6/zoom_matrix/strided_slice_4/stack_1:output:0Ldata_augmentation/random_zoom_6/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask~
<data_augmentation/random_zoom_6/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :û
:data_augmentation/random_zoom_6/zoom_matrix/zeros_2/packedPackBdata_augmentation/random_zoom_6/zoom_matrix/strided_slice:output:0Edata_augmentation/random_zoom_6/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:~
9data_augmentation/random_zoom_6/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ö
3data_augmentation/random_zoom_6/zoom_matrix/zeros_2FillCdata_augmentation/random_zoom_6/zoom_matrix/zeros_2/packed:output:0Bdata_augmentation/random_zoom_6/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
7data_augmentation/random_zoom_6/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ë
2data_augmentation/random_zoom_6/zoom_matrix/concatConcatV2Ddata_augmentation/random_zoom_6/zoom_matrix/strided_slice_3:output:0:data_augmentation/random_zoom_6/zoom_matrix/zeros:output:03data_augmentation/random_zoom_6/zoom_matrix/mul:z:0<data_augmentation/random_zoom_6/zoom_matrix/zeros_1:output:0Ddata_augmentation/random_zoom_6/zoom_matrix/strided_slice_4:output:05data_augmentation/random_zoom_6/zoom_matrix/mul_1:z:0<data_augmentation/random_zoom_6/zoom_matrix/zeros_2:output:0@data_augmentation/random_zoom_6/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¼
/data_augmentation/random_zoom_6/transform/ShapeShape]data_augmentation/random_rotation_6/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:
=data_augmentation/random_zoom_6/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?data_augmentation/random_zoom_6/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?data_augmentation/random_zoom_6/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
7data_augmentation/random_zoom_6/transform/strided_sliceStridedSlice8data_augmentation/random_zoom_6/transform/Shape:output:0Fdata_augmentation/random_zoom_6/transform/strided_slice/stack:output:0Hdata_augmentation/random_zoom_6/transform/strided_slice/stack_1:output:0Hdata_augmentation/random_zoom_6/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:y
4data_augmentation/random_zoom_6/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    ò
Ddata_augmentation/random_zoom_6/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3]data_augmentation/random_rotation_6/transform/ImageProjectiveTransformV3:transformed_images:0;data_augmentation/random_zoom_6/zoom_matrix/concat:output:0@data_augmentation/random_zoom_6/transform/strided_slice:output:0=data_augmentation/random_zoom_6/transform/fill_value:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR
 conv2d_253/Conv2D/ReadVariableOpReadVariableOp)conv2d_253_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
conv2d_253/Conv2DConv2DYdata_augmentation/random_zoom_6/transform/ImageProjectiveTransformV3:transformed_images:0(conv2d_253/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿGG*
paddingVALID*
strides

!conv2d_253/BiasAdd/ReadVariableOpReadVariableOp*conv2d_253_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_253/BiasAddBiasAddconv2d_253/Conv2D:output:0)conv2d_253/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿGGn
conv2d_253/ReluReluconv2d_253/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿGG°
max_pooling2d_191/MaxPoolMaxPoolconv2d_253/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ##*
ksize
*
paddingVALID*
strides

 conv2d_254/Conv2D/ReadVariableOpReadVariableOp)conv2d_254_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ì
conv2d_254/Conv2DConv2D"max_pooling2d_191/MaxPool:output:0(conv2d_254/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!!*
paddingVALID*
strides

!conv2d_254/BiasAdd/ReadVariableOpReadVariableOp*conv2d_254_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_254/BiasAddBiasAddconv2d_254/Conv2D:output:0)conv2d_254/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!!n
conv2d_254/ReluReluconv2d_254/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!!°
max_pooling2d_192/MaxPoolMaxPoolconv2d_254/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides

 conv2d_255/Conv2D/ReadVariableOpReadVariableOp)conv2d_255_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ì
conv2d_255/Conv2DConv2D"max_pooling2d_192/MaxPool:output:0(conv2d_255/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingVALID*
strides

!conv2d_255/BiasAdd/ReadVariableOpReadVariableOp*conv2d_255_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_255/BiasAddBiasAddconv2d_255/Conv2D:output:0)conv2d_255/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
conv2d_255/ReluReluconv2d_255/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ °
max_pooling2d_193/MaxPoolMaxPoolconv2d_255/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
ksize
*
paddingVALID*
strides

 conv2d_256/Conv2D/ReadVariableOpReadVariableOp)conv2d_256_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ì
conv2d_256/Conv2DConv2D"max_pooling2d_193/MaxPool:output:0(conv2d_256/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides

!conv2d_256/BiasAdd/ReadVariableOpReadVariableOp*conv2d_256_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_256/BiasAddBiasAddconv2d_256/Conv2D:output:0)conv2d_256/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
conv2d_256/ReluReluconv2d_256/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
flatten_61/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@  
flatten_61/ReshapeReshapeconv2d_256/Relu:activations:0flatten_61/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
dense_119/MatMul/ReadVariableOpReadVariableOp(dense_119_matmul_readvariableop_resource*
_output_shapes
:	À2*
dtype0
dense_119/MatMulMatMulflatten_61/Reshape:output:0'dense_119/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 dense_119/BiasAdd/ReadVariableOpReadVariableOp)dense_119_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0
dense_119/BiasAddBiasAdddense_119/MatMul:product:0(dense_119/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2d
dense_119/ReluReludense_119/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_120/MatMul/ReadVariableOpReadVariableOp(dense_120_matmul_readvariableop_resource*
_output_shapes

:2K*
dtype0
dense_120/MatMulMatMuldense_119/Relu:activations:0'dense_120/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
 dense_120/BiasAdd/ReadVariableOpReadVariableOp)dense_120_biasadd_readvariableop_resource*
_output_shapes
:K*
dtype0
dense_120/BiasAddBiasAdddense_120/MatMul:product:0(dense_120/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿKj
dense_120/SigmoidSigmoiddense_120/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿKd
IdentityIdentitydense_120/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK 
NoOpNoOp"^conv2d_253/BiasAdd/ReadVariableOp!^conv2d_253/Conv2D/ReadVariableOp"^conv2d_254/BiasAdd/ReadVariableOp!^conv2d_254/Conv2D/ReadVariableOp"^conv2d_255/BiasAdd/ReadVariableOp!^conv2d_255/Conv2D/ReadVariableOp"^conv2d_256/BiasAdd/ReadVariableOp!^conv2d_256/Conv2D/ReadVariableOp*^data_augmentation/random_flip_6/map/whileD^data_augmentation/random_rotation_6/stateful_uniform/RngReadAndSkip@^data_augmentation/random_zoom_6/stateful_uniform/RngReadAndSkip!^dense_119/BiasAdd/ReadVariableOp ^dense_119/MatMul/ReadVariableOp!^dense_120/BiasAdd/ReadVariableOp ^dense_120/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:ÿÿÿÿÿÿÿÿÿKK: : : : : : : : : : : : : : : 2F
!conv2d_253/BiasAdd/ReadVariableOp!conv2d_253/BiasAdd/ReadVariableOp2D
 conv2d_253/Conv2D/ReadVariableOp conv2d_253/Conv2D/ReadVariableOp2F
!conv2d_254/BiasAdd/ReadVariableOp!conv2d_254/BiasAdd/ReadVariableOp2D
 conv2d_254/Conv2D/ReadVariableOp conv2d_254/Conv2D/ReadVariableOp2F
!conv2d_255/BiasAdd/ReadVariableOp!conv2d_255/BiasAdd/ReadVariableOp2D
 conv2d_255/Conv2D/ReadVariableOp conv2d_255/Conv2D/ReadVariableOp2F
!conv2d_256/BiasAdd/ReadVariableOp!conv2d_256/BiasAdd/ReadVariableOp2D
 conv2d_256/Conv2D/ReadVariableOp conv2d_256/Conv2D/ReadVariableOp2V
)data_augmentation/random_flip_6/map/while)data_augmentation/random_flip_6/map/while2
Cdata_augmentation/random_rotation_6/stateful_uniform/RngReadAndSkipCdata_augmentation/random_rotation_6/stateful_uniform/RngReadAndSkip2
?data_augmentation/random_zoom_6/stateful_uniform/RngReadAndSkip?data_augmentation/random_zoom_6/stateful_uniform/RngReadAndSkip2D
 dense_119/BiasAdd/ReadVariableOp dense_119/BiasAdd/ReadVariableOp2B
dense_119/MatMul/ReadVariableOpdense_119/MatMul/ReadVariableOp2D
 dense_120/BiasAdd/ReadVariableOp dense_120/BiasAdd/ReadVariableOp2B
dense_120/MatMul/ReadVariableOpdense_120/MatMul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
 
_user_specified_nameinputs
¶
ê
7map_while_stateless_random_flip_left_right_true_1014958v
rmap_while_stateless_random_flip_left_right_reversev2_map_while_stateless_random_flip_left_right_control_dependency7
3map_while_stateless_random_flip_left_right_identity
9map/while/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:¦
4map/while/stateless_random_flip_left_right/ReverseV2	ReverseV2rmap_while_stateless_random_flip_left_right_reversev2_map_while_stateless_random_flip_left_right_control_dependencyBmap/while/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*"
_output_shapes
:KK«
3map/while/stateless_random_flip_left_right/IdentityIdentity=map/while/stateless_random_flip_left_right/ReverseV2:output:0*
T0*"
_output_shapes
:KK"s
3map_while_stateless_random_flip_left_right_identity<map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:KK:( $
"
_output_shapes
:KK


G__inference_conv2d_256_layer_call_and_return_conditional_losses_1012115

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
¡

ø
F__inference_dense_119_layer_call_and_return_conditional_losses_1012140

inputs1
matmul_readvariableop_resource:	À2-
biasadd_readvariableop_resource:2
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	À2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs
ª

"__inference__wrapped_model_1011549
input_65
input_66U
;model_54_model_53_conv2d_253_conv2d_readvariableop_resource:J
<model_54_model_53_conv2d_253_biasadd_readvariableop_resource:U
;model_54_model_53_conv2d_254_conv2d_readvariableop_resource:J
<model_54_model_53_conv2d_254_biasadd_readvariableop_resource:U
;model_54_model_53_conv2d_255_conv2d_readvariableop_resource: J
<model_54_model_53_conv2d_255_biasadd_readvariableop_resource: U
;model_54_model_53_conv2d_256_conv2d_readvariableop_resource: @J
<model_54_model_53_conv2d_256_biasadd_readvariableop_resource:@M
:model_54_model_53_dense_119_matmul_readvariableop_resource:	À2I
;model_54_model_53_dense_119_biasadd_readvariableop_resource:2L
:model_54_model_53_dense_120_matmul_readvariableop_resource:2KI
;model_54_model_53_dense_120_biasadd_readvariableop_resource:KC
1model_54_dense_121_matmul_readvariableop_resource:K@
2model_54_dense_121_biasadd_readvariableop_resource:
identity¢)model_54/dense_121/BiasAdd/ReadVariableOp¢(model_54/dense_121/MatMul/ReadVariableOp¢3model_54/model_53/conv2d_253/BiasAdd/ReadVariableOp¢5model_54/model_53/conv2d_253/BiasAdd_1/ReadVariableOp¢2model_54/model_53/conv2d_253/Conv2D/ReadVariableOp¢4model_54/model_53/conv2d_253/Conv2D_1/ReadVariableOp¢3model_54/model_53/conv2d_254/BiasAdd/ReadVariableOp¢5model_54/model_53/conv2d_254/BiasAdd_1/ReadVariableOp¢2model_54/model_53/conv2d_254/Conv2D/ReadVariableOp¢4model_54/model_53/conv2d_254/Conv2D_1/ReadVariableOp¢3model_54/model_53/conv2d_255/BiasAdd/ReadVariableOp¢5model_54/model_53/conv2d_255/BiasAdd_1/ReadVariableOp¢2model_54/model_53/conv2d_255/Conv2D/ReadVariableOp¢4model_54/model_53/conv2d_255/Conv2D_1/ReadVariableOp¢3model_54/model_53/conv2d_256/BiasAdd/ReadVariableOp¢5model_54/model_53/conv2d_256/BiasAdd_1/ReadVariableOp¢2model_54/model_53/conv2d_256/Conv2D/ReadVariableOp¢4model_54/model_53/conv2d_256/Conv2D_1/ReadVariableOp¢2model_54/model_53/dense_119/BiasAdd/ReadVariableOp¢4model_54/model_53/dense_119/BiasAdd_1/ReadVariableOp¢1model_54/model_53/dense_119/MatMul/ReadVariableOp¢3model_54/model_53/dense_119/MatMul_1/ReadVariableOp¢2model_54/model_53/dense_120/BiasAdd/ReadVariableOp¢4model_54/model_53/dense_120/BiasAdd_1/ReadVariableOp¢1model_54/model_53/dense_120/MatMul/ReadVariableOp¢3model_54/model_53/dense_120/MatMul_1/ReadVariableOp¶
2model_54/model_53/conv2d_253/Conv2D/ReadVariableOpReadVariableOp;model_54_model_53_conv2d_253_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ö
#model_54/model_53/conv2d_253/Conv2DConv2Dinput_65:model_54/model_53/conv2d_253/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿGG*
paddingVALID*
strides
¬
3model_54/model_53/conv2d_253/BiasAdd/ReadVariableOpReadVariableOp<model_54_model_53_conv2d_253_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ô
$model_54/model_53/conv2d_253/BiasAddBiasAdd,model_54/model_53/conv2d_253/Conv2D:output:0;model_54/model_53/conv2d_253/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿGG
!model_54/model_53/conv2d_253/ReluRelu-model_54/model_53/conv2d_253/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿGGÔ
+model_54/model_53/max_pooling2d_191/MaxPoolMaxPool/model_54/model_53/conv2d_253/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ##*
ksize
*
paddingVALID*
strides
¶
2model_54/model_53/conv2d_254/Conv2D/ReadVariableOpReadVariableOp;model_54_model_53_conv2d_254_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
#model_54/model_53/conv2d_254/Conv2DConv2D4model_54/model_53/max_pooling2d_191/MaxPool:output:0:model_54/model_53/conv2d_254/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!!*
paddingVALID*
strides
¬
3model_54/model_53/conv2d_254/BiasAdd/ReadVariableOpReadVariableOp<model_54_model_53_conv2d_254_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ô
$model_54/model_53/conv2d_254/BiasAddBiasAdd,model_54/model_53/conv2d_254/Conv2D:output:0;model_54/model_53/conv2d_254/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!!
!model_54/model_53/conv2d_254/ReluRelu-model_54/model_53/conv2d_254/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!!Ô
+model_54/model_53/max_pooling2d_192/MaxPoolMaxPool/model_54/model_53/conv2d_254/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
¶
2model_54/model_53/conv2d_255/Conv2D/ReadVariableOpReadVariableOp;model_54_model_53_conv2d_255_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
#model_54/model_53/conv2d_255/Conv2DConv2D4model_54/model_53/max_pooling2d_192/MaxPool:output:0:model_54/model_53/conv2d_255/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingVALID*
strides
¬
3model_54/model_53/conv2d_255/BiasAdd/ReadVariableOpReadVariableOp<model_54_model_53_conv2d_255_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ô
$model_54/model_53/conv2d_255/BiasAddBiasAdd,model_54/model_53/conv2d_255/Conv2D:output:0;model_54/model_53/conv2d_255/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
!model_54/model_53/conv2d_255/ReluRelu-model_54/model_53/conv2d_255/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ô
+model_54/model_53/max_pooling2d_193/MaxPoolMaxPool/model_54/model_53/conv2d_255/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
ksize
*
paddingVALID*
strides
¶
2model_54/model_53/conv2d_256/Conv2D/ReadVariableOpReadVariableOp;model_54_model_53_conv2d_256_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
#model_54/model_53/conv2d_256/Conv2DConv2D4model_54/model_53/max_pooling2d_193/MaxPool:output:0:model_54/model_53/conv2d_256/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
¬
3model_54/model_53/conv2d_256/BiasAdd/ReadVariableOpReadVariableOp<model_54_model_53_conv2d_256_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ô
$model_54/model_53/conv2d_256/BiasAddBiasAdd,model_54/model_53/conv2d_256/Conv2D:output:0;model_54/model_53/conv2d_256/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
!model_54/model_53/conv2d_256/ReluRelu-model_54/model_53/conv2d_256/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@s
"model_54/model_53/flatten_61/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@  À
$model_54/model_53/flatten_61/ReshapeReshape/model_54/model_53/conv2d_256/Relu:activations:0+model_54/model_53/flatten_61/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ­
1model_54/model_53/dense_119/MatMul/ReadVariableOpReadVariableOp:model_54_model_53_dense_119_matmul_readvariableop_resource*
_output_shapes
:	À2*
dtype0È
"model_54/model_53/dense_119/MatMulMatMul-model_54/model_53/flatten_61/Reshape:output:09model_54/model_53/dense_119/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2ª
2model_54/model_53/dense_119/BiasAdd/ReadVariableOpReadVariableOp;model_54_model_53_dense_119_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0Ê
#model_54/model_53/dense_119/BiasAddBiasAdd,model_54/model_53/dense_119/MatMul:product:0:model_54/model_53/dense_119/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 model_54/model_53/dense_119/ReluRelu,model_54/model_53/dense_119/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¬
1model_54/model_53/dense_120/MatMul/ReadVariableOpReadVariableOp:model_54_model_53_dense_120_matmul_readvariableop_resource*
_output_shapes

:2K*
dtype0É
"model_54/model_53/dense_120/MatMulMatMul.model_54/model_53/dense_119/Relu:activations:09model_54/model_53/dense_120/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿKª
2model_54/model_53/dense_120/BiasAdd/ReadVariableOpReadVariableOp;model_54_model_53_dense_120_biasadd_readvariableop_resource*
_output_shapes
:K*
dtype0Ê
#model_54/model_53/dense_120/BiasAddBiasAdd,model_54/model_53/dense_120/MatMul:product:0:model_54/model_53/dense_120/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
#model_54/model_53/dense_120/SigmoidSigmoid,model_54/model_53/dense_120/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK¸
4model_54/model_53/conv2d_253/Conv2D_1/ReadVariableOpReadVariableOp;model_54_model_53_conv2d_253_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ú
%model_54/model_53/conv2d_253/Conv2D_1Conv2Dinput_66<model_54/model_53/conv2d_253/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿGG*
paddingVALID*
strides
®
5model_54/model_53/conv2d_253/BiasAdd_1/ReadVariableOpReadVariableOp<model_54_model_53_conv2d_253_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ú
&model_54/model_53/conv2d_253/BiasAdd_1BiasAdd.model_54/model_53/conv2d_253/Conv2D_1:output:0=model_54/model_53/conv2d_253/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿGG
#model_54/model_53/conv2d_253/Relu_1Relu/model_54/model_53/conv2d_253/BiasAdd_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿGGØ
-model_54/model_53/max_pooling2d_191/MaxPool_1MaxPool1model_54/model_53/conv2d_253/Relu_1:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ##*
ksize
*
paddingVALID*
strides
¸
4model_54/model_53/conv2d_254/Conv2D_1/ReadVariableOpReadVariableOp;model_54_model_53_conv2d_254_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
%model_54/model_53/conv2d_254/Conv2D_1Conv2D6model_54/model_53/max_pooling2d_191/MaxPool_1:output:0<model_54/model_53/conv2d_254/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!!*
paddingVALID*
strides
®
5model_54/model_53/conv2d_254/BiasAdd_1/ReadVariableOpReadVariableOp<model_54_model_53_conv2d_254_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ú
&model_54/model_53/conv2d_254/BiasAdd_1BiasAdd.model_54/model_53/conv2d_254/Conv2D_1:output:0=model_54/model_53/conv2d_254/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!!
#model_54/model_53/conv2d_254/Relu_1Relu/model_54/model_53/conv2d_254/BiasAdd_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!!Ø
-model_54/model_53/max_pooling2d_192/MaxPool_1MaxPool1model_54/model_53/conv2d_254/Relu_1:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
¸
4model_54/model_53/conv2d_255/Conv2D_1/ReadVariableOpReadVariableOp;model_54_model_53_conv2d_255_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
%model_54/model_53/conv2d_255/Conv2D_1Conv2D6model_54/model_53/max_pooling2d_192/MaxPool_1:output:0<model_54/model_53/conv2d_255/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingVALID*
strides
®
5model_54/model_53/conv2d_255/BiasAdd_1/ReadVariableOpReadVariableOp<model_54_model_53_conv2d_255_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ú
&model_54/model_53/conv2d_255/BiasAdd_1BiasAdd.model_54/model_53/conv2d_255/Conv2D_1:output:0=model_54/model_53/conv2d_255/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
#model_54/model_53/conv2d_255/Relu_1Relu/model_54/model_53/conv2d_255/BiasAdd_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ø
-model_54/model_53/max_pooling2d_193/MaxPool_1MaxPool1model_54/model_53/conv2d_255/Relu_1:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
ksize
*
paddingVALID*
strides
¸
4model_54/model_53/conv2d_256/Conv2D_1/ReadVariableOpReadVariableOp;model_54_model_53_conv2d_256_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
%model_54/model_53/conv2d_256/Conv2D_1Conv2D6model_54/model_53/max_pooling2d_193/MaxPool_1:output:0<model_54/model_53/conv2d_256/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
®
5model_54/model_53/conv2d_256/BiasAdd_1/ReadVariableOpReadVariableOp<model_54_model_53_conv2d_256_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ú
&model_54/model_53/conv2d_256/BiasAdd_1BiasAdd.model_54/model_53/conv2d_256/Conv2D_1:output:0=model_54/model_53/conv2d_256/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#model_54/model_53/conv2d_256/Relu_1Relu/model_54/model_53/conv2d_256/BiasAdd_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@u
$model_54/model_53/flatten_61/Const_1Const*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@  Æ
&model_54/model_53/flatten_61/Reshape_1Reshape1model_54/model_53/conv2d_256/Relu_1:activations:0-model_54/model_53/flatten_61/Const_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¯
3model_54/model_53/dense_119/MatMul_1/ReadVariableOpReadVariableOp:model_54_model_53_dense_119_matmul_readvariableop_resource*
_output_shapes
:	À2*
dtype0Î
$model_54/model_53/dense_119/MatMul_1MatMul/model_54/model_53/flatten_61/Reshape_1:output:0;model_54/model_53/dense_119/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¬
4model_54/model_53/dense_119/BiasAdd_1/ReadVariableOpReadVariableOp;model_54_model_53_dense_119_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0Ð
%model_54/model_53/dense_119/BiasAdd_1BiasAdd.model_54/model_53/dense_119/MatMul_1:product:0<model_54/model_53/dense_119/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"model_54/model_53/dense_119/Relu_1Relu.model_54/model_53/dense_119/BiasAdd_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2®
3model_54/model_53/dense_120/MatMul_1/ReadVariableOpReadVariableOp:model_54_model_53_dense_120_matmul_readvariableop_resource*
_output_shapes

:2K*
dtype0Ï
$model_54/model_53/dense_120/MatMul_1MatMul0model_54/model_53/dense_119/Relu_1:activations:0;model_54/model_53/dense_120/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK¬
4model_54/model_53/dense_120/BiasAdd_1/ReadVariableOpReadVariableOp;model_54_model_53_dense_120_biasadd_readvariableop_resource*
_output_shapes
:K*
dtype0Ð
%model_54/model_53/dense_120/BiasAdd_1BiasAdd.model_54/model_53/dense_120/MatMul_1:product:0<model_54/model_53/dense_120/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
%model_54/model_53/dense_120/Sigmoid_1Sigmoid.model_54/model_53/dense_120/BiasAdd_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK£
model_54/lambda_31/subSub'model_54/model_53/dense_120/Sigmoid:y:0)model_54/model_53/dense_120/Sigmoid_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿKk
model_54/lambda_31/AbsAbsmodel_54/lambda_31/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
(model_54/dense_121/MatMul/ReadVariableOpReadVariableOp1model_54_dense_121_matmul_readvariableop_resource*
_output_shapes

:K*
dtype0£
model_54/dense_121/MatMulMatMulmodel_54/lambda_31/Abs:y:00model_54/dense_121/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)model_54/dense_121/BiasAdd/ReadVariableOpReadVariableOp2model_54_dense_121_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¯
model_54/dense_121/BiasAddBiasAdd#model_54/dense_121/MatMul:product:01model_54/dense_121/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
model_54/dense_121/SigmoidSigmoid#model_54/dense_121/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
IdentityIdentitymodel_54/dense_121/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ±
NoOpNoOp*^model_54/dense_121/BiasAdd/ReadVariableOp)^model_54/dense_121/MatMul/ReadVariableOp4^model_54/model_53/conv2d_253/BiasAdd/ReadVariableOp6^model_54/model_53/conv2d_253/BiasAdd_1/ReadVariableOp3^model_54/model_53/conv2d_253/Conv2D/ReadVariableOp5^model_54/model_53/conv2d_253/Conv2D_1/ReadVariableOp4^model_54/model_53/conv2d_254/BiasAdd/ReadVariableOp6^model_54/model_53/conv2d_254/BiasAdd_1/ReadVariableOp3^model_54/model_53/conv2d_254/Conv2D/ReadVariableOp5^model_54/model_53/conv2d_254/Conv2D_1/ReadVariableOp4^model_54/model_53/conv2d_255/BiasAdd/ReadVariableOp6^model_54/model_53/conv2d_255/BiasAdd_1/ReadVariableOp3^model_54/model_53/conv2d_255/Conv2D/ReadVariableOp5^model_54/model_53/conv2d_255/Conv2D_1/ReadVariableOp4^model_54/model_53/conv2d_256/BiasAdd/ReadVariableOp6^model_54/model_53/conv2d_256/BiasAdd_1/ReadVariableOp3^model_54/model_53/conv2d_256/Conv2D/ReadVariableOp5^model_54/model_53/conv2d_256/Conv2D_1/ReadVariableOp3^model_54/model_53/dense_119/BiasAdd/ReadVariableOp5^model_54/model_53/dense_119/BiasAdd_1/ReadVariableOp2^model_54/model_53/dense_119/MatMul/ReadVariableOp4^model_54/model_53/dense_119/MatMul_1/ReadVariableOp3^model_54/model_53/dense_120/BiasAdd/ReadVariableOp5^model_54/model_53/dense_120/BiasAdd_1/ReadVariableOp2^model_54/model_53/dense_120/MatMul/ReadVariableOp4^model_54/model_53/dense_120/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:ÿÿÿÿÿÿÿÿÿKK:ÿÿÿÿÿÿÿÿÿKK: : : : : : : : : : : : : : 2V
)model_54/dense_121/BiasAdd/ReadVariableOp)model_54/dense_121/BiasAdd/ReadVariableOp2T
(model_54/dense_121/MatMul/ReadVariableOp(model_54/dense_121/MatMul/ReadVariableOp2j
3model_54/model_53/conv2d_253/BiasAdd/ReadVariableOp3model_54/model_53/conv2d_253/BiasAdd/ReadVariableOp2n
5model_54/model_53/conv2d_253/BiasAdd_1/ReadVariableOp5model_54/model_53/conv2d_253/BiasAdd_1/ReadVariableOp2h
2model_54/model_53/conv2d_253/Conv2D/ReadVariableOp2model_54/model_53/conv2d_253/Conv2D/ReadVariableOp2l
4model_54/model_53/conv2d_253/Conv2D_1/ReadVariableOp4model_54/model_53/conv2d_253/Conv2D_1/ReadVariableOp2j
3model_54/model_53/conv2d_254/BiasAdd/ReadVariableOp3model_54/model_53/conv2d_254/BiasAdd/ReadVariableOp2n
5model_54/model_53/conv2d_254/BiasAdd_1/ReadVariableOp5model_54/model_53/conv2d_254/BiasAdd_1/ReadVariableOp2h
2model_54/model_53/conv2d_254/Conv2D/ReadVariableOp2model_54/model_53/conv2d_254/Conv2D/ReadVariableOp2l
4model_54/model_53/conv2d_254/Conv2D_1/ReadVariableOp4model_54/model_53/conv2d_254/Conv2D_1/ReadVariableOp2j
3model_54/model_53/conv2d_255/BiasAdd/ReadVariableOp3model_54/model_53/conv2d_255/BiasAdd/ReadVariableOp2n
5model_54/model_53/conv2d_255/BiasAdd_1/ReadVariableOp5model_54/model_53/conv2d_255/BiasAdd_1/ReadVariableOp2h
2model_54/model_53/conv2d_255/Conv2D/ReadVariableOp2model_54/model_53/conv2d_255/Conv2D/ReadVariableOp2l
4model_54/model_53/conv2d_255/Conv2D_1/ReadVariableOp4model_54/model_53/conv2d_255/Conv2D_1/ReadVariableOp2j
3model_54/model_53/conv2d_256/BiasAdd/ReadVariableOp3model_54/model_53/conv2d_256/BiasAdd/ReadVariableOp2n
5model_54/model_53/conv2d_256/BiasAdd_1/ReadVariableOp5model_54/model_53/conv2d_256/BiasAdd_1/ReadVariableOp2h
2model_54/model_53/conv2d_256/Conv2D/ReadVariableOp2model_54/model_53/conv2d_256/Conv2D/ReadVariableOp2l
4model_54/model_53/conv2d_256/Conv2D_1/ReadVariableOp4model_54/model_53/conv2d_256/Conv2D_1/ReadVariableOp2h
2model_54/model_53/dense_119/BiasAdd/ReadVariableOp2model_54/model_53/dense_119/BiasAdd/ReadVariableOp2l
4model_54/model_53/dense_119/BiasAdd_1/ReadVariableOp4model_54/model_53/dense_119/BiasAdd_1/ReadVariableOp2f
1model_54/model_53/dense_119/MatMul/ReadVariableOp1model_54/model_53/dense_119/MatMul/ReadVariableOp2j
3model_54/model_53/dense_119/MatMul_1/ReadVariableOp3model_54/model_53/dense_119/MatMul_1/ReadVariableOp2h
2model_54/model_53/dense_120/BiasAdd/ReadVariableOp2model_54/model_53/dense_120/BiasAdd/ReadVariableOp2l
4model_54/model_53/dense_120/BiasAdd_1/ReadVariableOp4model_54/model_53/dense_120/BiasAdd_1/ReadVariableOp2f
1model_54/model_53/dense_120/MatMul/ReadVariableOp1model_54/model_53/dense_120/MatMul/ReadVariableOp2j
3model_54/model_53/dense_120/MatMul_1/ReadVariableOp3model_54/model_53/dense_120/MatMul_1/ReadVariableOp:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
"
_user_specified_name
input_65:YU
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
"
_user_specified_name
input_66
÷
ß
E__inference_model_54_layer_call_and_return_conditional_losses_1012841
input_65
input_66*
model_53_1012796:
model_53_1012798:*
model_53_1012800:
model_53_1012802:*
model_53_1012804: 
model_53_1012806: *
model_53_1012808: @
model_53_1012810:@#
model_53_1012812:	À2
model_53_1012814:2"
model_53_1012816:2K
model_53_1012818:K#
dense_121_1012835:K
dense_121_1012837:
identity¢!dense_121/StatefulPartitionedCall¢ model_53/StatefulPartitionedCall¢"model_53/StatefulPartitionedCall_1½
 model_53/StatefulPartitionedCallStatefulPartitionedCallinput_65model_53_1012796model_53_1012798model_53_1012800model_53_1012802model_53_1012804model_53_1012806model_53_1012808model_53_1012810model_53_1012812model_53_1012814model_53_1012816model_53_1012818*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_model_53_layer_call_and_return_conditional_losses_1012164¿
"model_53/StatefulPartitionedCall_1StatefulPartitionedCallinput_66model_53_1012796model_53_1012798model_53_1012800model_53_1012802model_53_1012804model_53_1012806model_53_1012808model_53_1012810model_53_1012812model_53_1012814model_53_1012816model_53_1012818*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_model_53_layer_call_and_return_conditional_losses_1012164
lambda_31/PartitionedCallPartitionedCall)model_53/StatefulPartitionedCall:output:0+model_53/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lambda_31_layer_call_and_return_conditional_losses_1012539
!dense_121/StatefulPartitionedCallStatefulPartitionedCall"lambda_31/PartitionedCall:output:0dense_121_1012835dense_121_1012837*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_121_layer_call_and_return_conditional_losses_1012552y
IdentityIdentity*dense_121/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
NoOpNoOp"^dense_121/StatefulPartitionedCall!^model_53/StatefulPartitionedCall#^model_53/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:ÿÿÿÿÿÿÿÿÿKK:ÿÿÿÿÿÿÿÿÿKK: : : : : : : : : : : : : : 2F
!dense_121/StatefulPartitionedCall!dense_121/StatefulPartitionedCall2D
 model_53/StatefulPartitionedCall model_53/StatefulPartitionedCall2H
"model_53/StatefulPartitionedCall_1"model_53/StatefulPartitionedCall_1:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
"
_user_specified_name
input_65:YU
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
"
_user_specified_name
input_66
Ü0

E__inference_model_53_layer_call_and_return_conditional_losses_1012164

inputs,
conv2d_253_1012062: 
conv2d_253_1012064:,
conv2d_254_1012080: 
conv2d_254_1012082:,
conv2d_255_1012098:  
conv2d_255_1012100: ,
conv2d_256_1012116: @ 
conv2d_256_1012118:@$
dense_119_1012141:	À2
dense_119_1012143:2#
dense_120_1012158:2K
dense_120_1012160:K
identity¢"conv2d_253/StatefulPartitionedCall¢"conv2d_254/StatefulPartitionedCall¢"conv2d_255/StatefulPartitionedCall¢"conv2d_256/StatefulPartitionedCall¢!dense_119/StatefulPartitionedCall¢!dense_120/StatefulPartitionedCallÓ
!data_augmentation/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_data_augmentation_layer_call_and_return_conditional_losses_1011575§
"conv2d_253/StatefulPartitionedCallStatefulPartitionedCall*data_augmentation/PartitionedCall:output:0conv2d_253_1012062conv2d_253_1012064*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿGG*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_conv2d_253_layer_call_and_return_conditional_losses_1012061ø
!max_pooling2d_191/PartitionedCallPartitionedCall+conv2d_253/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ##* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_max_pooling2d_191_layer_call_and_return_conditional_losses_1012015§
"conv2d_254/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_191/PartitionedCall:output:0conv2d_254_1012080conv2d_254_1012082*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!!*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_conv2d_254_layer_call_and_return_conditional_losses_1012079ø
!max_pooling2d_192/PartitionedCallPartitionedCall+conv2d_254/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_max_pooling2d_192_layer_call_and_return_conditional_losses_1012027§
"conv2d_255/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_192/PartitionedCall:output:0conv2d_255_1012098conv2d_255_1012100*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_conv2d_255_layer_call_and_return_conditional_losses_1012097ø
!max_pooling2d_193/PartitionedCallPartitionedCall+conv2d_255/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_max_pooling2d_193_layer_call_and_return_conditional_losses_1012039§
"conv2d_256/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_193/PartitionedCall:output:0conv2d_256_1012116conv2d_256_1012118*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_conv2d_256_layer_call_and_return_conditional_losses_1012115ã
flatten_61/PartitionedCallPartitionedCall+conv2d_256/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_61_layer_call_and_return_conditional_losses_1012127
!dense_119/StatefulPartitionedCallStatefulPartitionedCall#flatten_61/PartitionedCall:output:0dense_119_1012141dense_119_1012143*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_119_layer_call_and_return_conditional_losses_1012140
!dense_120/StatefulPartitionedCallStatefulPartitionedCall*dense_119/StatefulPartitionedCall:output:0dense_120_1012158dense_120_1012160*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_120_layer_call_and_return_conditional_losses_1012157y
IdentityIdentity*dense_120/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK¢
NoOpNoOp#^conv2d_253/StatefulPartitionedCall#^conv2d_254/StatefulPartitionedCall#^conv2d_255/StatefulPartitionedCall#^conv2d_256/StatefulPartitionedCall"^dense_119/StatefulPartitionedCall"^dense_120/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿKK: : : : : : : : : : : : 2H
"conv2d_253/StatefulPartitionedCall"conv2d_253/StatefulPartitionedCall2H
"conv2d_254/StatefulPartitionedCall"conv2d_254/StatefulPartitionedCall2H
"conv2d_255/StatefulPartitionedCall"conv2d_255/StatefulPartitionedCall2H
"conv2d_256/StatefulPartitionedCall"conv2d_256/StatefulPartitionedCall2F
!dense_119/StatefulPartitionedCall!dense_119/StatefulPartitionedCall2F
!dense_120/StatefulPartitionedCall!dense_120/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
 
_user_specified_nameinputs
£

J__inference_random_flip_6_layer_call_and_return_conditional_losses_1014992

inputs
map_while_input_6:	
identity¢	map/while?
	map/ShapeShapeinputs*
T0*
_output_shapes
:a
map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
map/strided_sliceStridedSlicemap/Shape:output:0 map/strided_slice/stack:output:0"map/strided_slice/stack_1:output:0"map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¾
map/TensorArrayV2TensorListReserve(map/TensorArrayV2/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
9map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"K   K      á
+map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputsBmap/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒK
	map/ConstConst*
_output_shapes
: *
dtype0*
value	B : l
!map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÂ
map/TensorArrayV2_1TensorListReserve*map/TensorArrayV2_1/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒX
map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
	map/whileWhilemap/while/loop_counter:output:0map/strided_slice:output:0map/Const:output:0map/TensorArrayV2_1:handle:0map/strided_slice:output:0;map/TensorArrayUnstack/TensorListFromTensor:output_handle:0map_while_input_6*
T
	2*
_lower_using_switch_merge(*
_num_original_outputs*"
_output_shapes
: : : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( *"
bodyR
map_while_body_1014899*"
condR
map_while_cond_1014898*!
output_shapes
: : : : : : : 
4map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"K   K      Ò
&map/TensorArrayV2Stack/TensorListStackTensorListStackmap/while:output:3=map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK*
element_dtype0
IdentityIdentity/map/TensorArrayV2Stack/TensorListStack:tensor:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKKR
NoOpNoOp
^map/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿKK: 2
	map/while	map/while:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
 
_user_specified_nameinputs
½
Ó
map_while_cond_1014898$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1$
 map_while_less_map_strided_slice=
9map_while_map_while_cond_1014898___redundant_placeholder0=
9map_while_map_while_cond_1014898___redundant_placeholder1
map_while_identity
p
map/while/LessLessmap_while_placeholder map_while_less_map_strided_slice*
T0*
_output_shapes
: x
map/while/Less_1Less map_while_map_while_loop_countermap_while_map_strided_slice*
T0*
_output_shapes
: d
map/while/LogicalAnd
LogicalAndmap/while/Less_1:z:0map/while/Less:z:0*
_output_shapes
: Y
map/while/IdentityIdentitymap/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "1
map_while_identitymap/while/Identity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:

j
N__inference_max_pooling2d_191_layer_call_and_return_conditional_losses_1012015

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ñ
O
3__inference_data_augmentation_layer_call_fn_1014370

inputs
identityÁ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_data_augmentation_layer_call_and_return_conditional_losses_1011575h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿKK:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
 
_user_specified_nameinputs
£

J__inference_random_flip_6_layer_call_and_return_conditional_losses_1011941

inputs
map_while_input_6:	
identity¢	map/while?
	map/ShapeShapeinputs*
T0*
_output_shapes
:a
map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
map/strided_sliceStridedSlicemap/Shape:output:0 map/strided_slice/stack:output:0"map/strided_slice/stack_1:output:0"map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¾
map/TensorArrayV2TensorListReserve(map/TensorArrayV2/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
9map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"K   K      á
+map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputsBmap/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒK
	map/ConstConst*
_output_shapes
: *
dtype0*
value	B : l
!map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÂ
map/TensorArrayV2_1TensorListReserve*map/TensorArrayV2_1/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒX
map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
	map/whileWhilemap/while/loop_counter:output:0map/strided_slice:output:0map/Const:output:0map/TensorArrayV2_1:handle:0map/strided_slice:output:0;map/TensorArrayUnstack/TensorListFromTensor:output_handle:0map_while_input_6*
T
	2*
_lower_using_switch_merge(*
_num_original_outputs*"
_output_shapes
: : : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( *"
bodyR
map_while_body_1011848*"
condR
map_while_cond_1011847*!
output_shapes
: : : : : : : 
4map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"K   K      Ò
&map/TensorArrayV2Stack/TensorListStackTensorListStackmap/while:output:3=map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK*
element_dtype0
IdentityIdentity/map/TensorArrayV2Stack/TensorListStack:tensor:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKKR
NoOpNoOp
^map/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿKK: 2
	map/while	map/while:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
 
_user_specified_nameinputs
è0

E__inference_model_53_layer_call_and_return_conditional_losses_1012440

base_input,
conv2d_253_1012405: 
conv2d_253_1012407:,
conv2d_254_1012411: 
conv2d_254_1012413:,
conv2d_255_1012417:  
conv2d_255_1012419: ,
conv2d_256_1012423: @ 
conv2d_256_1012425:@$
dense_119_1012429:	À2
dense_119_1012431:2#
dense_120_1012434:2K
dense_120_1012436:K
identity¢"conv2d_253/StatefulPartitionedCall¢"conv2d_254/StatefulPartitionedCall¢"conv2d_255/StatefulPartitionedCall¢"conv2d_256/StatefulPartitionedCall¢!dense_119/StatefulPartitionedCall¢!dense_120/StatefulPartitionedCall×
!data_augmentation/PartitionedCallPartitionedCall
base_input*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_data_augmentation_layer_call_and_return_conditional_losses_1011575§
"conv2d_253/StatefulPartitionedCallStatefulPartitionedCall*data_augmentation/PartitionedCall:output:0conv2d_253_1012405conv2d_253_1012407*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿGG*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_conv2d_253_layer_call_and_return_conditional_losses_1012061ø
!max_pooling2d_191/PartitionedCallPartitionedCall+conv2d_253/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ##* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_max_pooling2d_191_layer_call_and_return_conditional_losses_1012015§
"conv2d_254/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_191/PartitionedCall:output:0conv2d_254_1012411conv2d_254_1012413*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!!*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_conv2d_254_layer_call_and_return_conditional_losses_1012079ø
!max_pooling2d_192/PartitionedCallPartitionedCall+conv2d_254/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_max_pooling2d_192_layer_call_and_return_conditional_losses_1012027§
"conv2d_255/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_192/PartitionedCall:output:0conv2d_255_1012417conv2d_255_1012419*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_conv2d_255_layer_call_and_return_conditional_losses_1012097ø
!max_pooling2d_193/PartitionedCallPartitionedCall+conv2d_255/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_max_pooling2d_193_layer_call_and_return_conditional_losses_1012039§
"conv2d_256/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_193/PartitionedCall:output:0conv2d_256_1012423conv2d_256_1012425*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_conv2d_256_layer_call_and_return_conditional_losses_1012115ã
flatten_61/PartitionedCallPartitionedCall+conv2d_256/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_61_layer_call_and_return_conditional_losses_1012127
!dense_119/StatefulPartitionedCallStatefulPartitionedCall#flatten_61/PartitionedCall:output:0dense_119_1012429dense_119_1012431*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_119_layer_call_and_return_conditional_losses_1012140
!dense_120/StatefulPartitionedCallStatefulPartitionedCall*dense_119/StatefulPartitionedCall:output:0dense_120_1012434dense_120_1012436*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_120_layer_call_and_return_conditional_losses_1012157y
IdentityIdentity*dense_120/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK¢
NoOpNoOp#^conv2d_253/StatefulPartitionedCall#^conv2d_254/StatefulPartitionedCall#^conv2d_255/StatefulPartitionedCall#^conv2d_256/StatefulPartitionedCall"^dense_119/StatefulPartitionedCall"^dense_120/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿKK: : : : : : : : : : : : 2H
"conv2d_253/StatefulPartitionedCall"conv2d_253/StatefulPartitionedCall2H
"conv2d_254/StatefulPartitionedCall"conv2d_254/StatefulPartitionedCall2H
"conv2d_255/StatefulPartitionedCall"conv2d_255/StatefulPartitionedCall2H
"conv2d_256/StatefulPartitionedCall"conv2d_256/StatefulPartitionedCall2F
!dense_119/StatefulPartitionedCall!dense_119/StatefulPartitionedCall2F
!dense_120/StatefulPartitionedCall!dense_120/StatefulPartitionedCall:[ W
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
$
_user_specified_name
base_input


÷
F__inference_dense_121_layer_call_and_return_conditional_losses_1014365

inputs0
matmul_readvariableop_resource:K-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:K*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿK: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
 
_user_specified_nameinputs
ð
¡
,__inference_conv2d_254_layer_call_fn_1014745

inputs!
unknown:
	unknown_0:
identity¢StatefulPartitionedCallä
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!!*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_conv2d_254_layer_call_and_return_conditional_losses_1012079w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!!`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ##: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ##
 
_user_specified_nameinputs
µ
H
,__inference_flatten_61_layer_call_fn_1014821

inputs
identity³
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_61_layer_call_and_return_conditional_losses_1012127a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

j
N__inference_max_pooling2d_192_layer_call_and_return_conditional_losses_1014766

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
§5
â	
 __inference__traced_save_1015358
file_prefix/
+savev2_dense_121_kernel_read_readvariableop-
)savev2_dense_121_bias_read_readvariableop0
,savev2_conv2d_253_kernel_read_readvariableop.
*savev2_conv2d_253_bias_read_readvariableop0
,savev2_conv2d_254_kernel_read_readvariableop.
*savev2_conv2d_254_bias_read_readvariableop0
,savev2_conv2d_255_kernel_read_readvariableop.
*savev2_conv2d_255_bias_read_readvariableop0
,savev2_conv2d_256_kernel_read_readvariableop.
*savev2_conv2d_256_bias_read_readvariableop/
+savev2_dense_119_kernel_read_readvariableop-
)savev2_dense_119_bias_read_readvariableop/
+savev2_dense_120_kernel_read_readvariableop-
)savev2_dense_120_bias_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop)
%savev2_statevar_2_read_readvariableop	)
%savev2_statevar_1_read_readvariableop	'
#savev2_statevar_read_readvariableop	
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: §
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ð

valueÆ
BÃ
B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBglayer_with_weights-0/layer-1/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBglayer_with_weights-0/layer-1/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBglayer_with_weights-0/layer-1/layer-2/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH¡
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B Ú	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_121_kernel_read_readvariableop)savev2_dense_121_bias_read_readvariableop,savev2_conv2d_253_kernel_read_readvariableop*savev2_conv2d_253_bias_read_readvariableop,savev2_conv2d_254_kernel_read_readvariableop*savev2_conv2d_254_bias_read_readvariableop,savev2_conv2d_255_kernel_read_readvariableop*savev2_conv2d_255_bias_read_readvariableop,savev2_conv2d_256_kernel_read_readvariableop*savev2_conv2d_256_bias_read_readvariableop+savev2_dense_119_kernel_read_readvariableop)savev2_dense_119_bias_read_readvariableop+savev2_dense_120_kernel_read_readvariableop)savev2_dense_120_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop%savev2_statevar_2_read_readvariableop%savev2_statevar_1_read_readvariableop#savev2_statevar_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *(
dtypes
2				
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*Ì
_input_shapesº
·: :K:::::: : : @:@:	À2:2:2K:K: : : : : : : : :::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:K: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,	(
&
_output_shapes
: @: 


_output_shapes
:@:%!

_output_shapes
:	À2: 

_output_shapes
:2:$ 

_output_shapes

:2K: 

_output_shapes
:K:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: 
4
¸
E__inference_model_53_layer_call_and_return_conditional_losses_1012485

base_input'
data_augmentation_1012443:	'
data_augmentation_1012445:	'
data_augmentation_1012447:	,
conv2d_253_1012450: 
conv2d_253_1012452:,
conv2d_254_1012456: 
conv2d_254_1012458:,
conv2d_255_1012462:  
conv2d_255_1012464: ,
conv2d_256_1012468: @ 
conv2d_256_1012470:@$
dense_119_1012474:	À2
dense_119_1012476:2#
dense_120_1012479:2K
dense_120_1012481:K
identity¢"conv2d_253/StatefulPartitionedCall¢"conv2d_254/StatefulPartitionedCall¢"conv2d_255/StatefulPartitionedCall¢"conv2d_256/StatefulPartitionedCall¢)data_augmentation/StatefulPartitionedCall¢!dense_119/StatefulPartitionedCall¢!dense_120/StatefulPartitionedCall»
)data_augmentation/StatefulPartitionedCallStatefulPartitionedCall
base_inputdata_augmentation_1012443data_augmentation_1012445data_augmentation_1012447*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_data_augmentation_layer_call_and_return_conditional_losses_1011966¯
"conv2d_253/StatefulPartitionedCallStatefulPartitionedCall2data_augmentation/StatefulPartitionedCall:output:0conv2d_253_1012450conv2d_253_1012452*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿGG*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_conv2d_253_layer_call_and_return_conditional_losses_1012061ø
!max_pooling2d_191/PartitionedCallPartitionedCall+conv2d_253/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ##* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_max_pooling2d_191_layer_call_and_return_conditional_losses_1012015§
"conv2d_254/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_191/PartitionedCall:output:0conv2d_254_1012456conv2d_254_1012458*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!!*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_conv2d_254_layer_call_and_return_conditional_losses_1012079ø
!max_pooling2d_192/PartitionedCallPartitionedCall+conv2d_254/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_max_pooling2d_192_layer_call_and_return_conditional_losses_1012027§
"conv2d_255/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_192/PartitionedCall:output:0conv2d_255_1012462conv2d_255_1012464*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_conv2d_255_layer_call_and_return_conditional_losses_1012097ø
!max_pooling2d_193/PartitionedCallPartitionedCall+conv2d_255/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_max_pooling2d_193_layer_call_and_return_conditional_losses_1012039§
"conv2d_256/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_193/PartitionedCall:output:0conv2d_256_1012468conv2d_256_1012470*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_conv2d_256_layer_call_and_return_conditional_losses_1012115ã
flatten_61/PartitionedCallPartitionedCall+conv2d_256/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_61_layer_call_and_return_conditional_losses_1012127
!dense_119/StatefulPartitionedCallStatefulPartitionedCall#flatten_61/PartitionedCall:output:0dense_119_1012474dense_119_1012476*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_119_layer_call_and_return_conditional_losses_1012140
!dense_120/StatefulPartitionedCallStatefulPartitionedCall*dense_119/StatefulPartitionedCall:output:0dense_120_1012479dense_120_1012481*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_120_layer_call_and_return_conditional_losses_1012157y
IdentityIdentity*dense_120/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿKÎ
NoOpNoOp#^conv2d_253/StatefulPartitionedCall#^conv2d_254/StatefulPartitionedCall#^conv2d_255/StatefulPartitionedCall#^conv2d_256/StatefulPartitionedCall*^data_augmentation/StatefulPartitionedCall"^dense_119/StatefulPartitionedCall"^dense_120/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:ÿÿÿÿÿÿÿÿÿKK: : : : : : : : : : : : : : : 2H
"conv2d_253/StatefulPartitionedCall"conv2d_253/StatefulPartitionedCall2H
"conv2d_254/StatefulPartitionedCall"conv2d_254/StatefulPartitionedCall2H
"conv2d_255/StatefulPartitionedCall"conv2d_255/StatefulPartitionedCall2H
"conv2d_256/StatefulPartitionedCall"conv2d_256/StatefulPartitionedCall2V
)data_augmentation/StatefulPartitionedCall)data_augmentation/StatefulPartitionedCall2F
!dense_119/StatefulPartitionedCall!dense_119/StatefulPartitionedCall2F
!dense_120/StatefulPartitionedCall!dense_120/StatefulPartitionedCall:[ W
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
$
_user_specified_name
base_input

Ç
N__inference_random_rotation_6_layer_call_and_return_conditional_losses_1015126

inputs6
(stateful_uniform_rngreadandskip_resource:	
identity¢stateful_uniform/RngReadAndSkip;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ýÿÿÿÿÿÿÿÿj
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿa
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ù
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿj
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ù
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: d
stateful_uniform/shapePackstrided_slice:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ¿Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ¶
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¬
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¢
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: 
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?g
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ^
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: |
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?i
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ~
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?i
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: `
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?i
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
rotation_matrix/ShapeShapestateful_uniform:z:0*
T0*
_output_shapes
:m
#rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¡
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
%rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
%rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_maskv
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
%rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ö
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
%rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
%rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_maskv
%rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ø
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :£
rotation_matrix/zeros/packedPack&rotation_matrix/strided_slice:output:0'rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿE
transform/ShapeShapeinputs*
T0*
_output_shapes
:g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ï
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKKh
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿKK: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
 
_user_specified_nameinputs
å
é
N__inference_data_augmentation_layer_call_and_return_conditional_losses_1012006
random_flip_6_input#
random_flip_6_1011996:	'
random_rotation_6_1011999:	#
random_zoom_6_1012002:	
identity¢%random_flip_6/StatefulPartitionedCall¢)random_rotation_6/StatefulPartitionedCall¢%random_zoom_6/StatefulPartitionedCall
%random_flip_6/StatefulPartitionedCallStatefulPartitionedCallrandom_flip_6_inputrandom_flip_6_1011996*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_random_flip_6_layer_call_and_return_conditional_losses_1011941§
)random_rotation_6/StatefulPartitionedCallStatefulPartitionedCall.random_flip_6/StatefulPartitionedCall:output:0random_rotation_6_1011999*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_random_rotation_6_layer_call_and_return_conditional_losses_1011819
%random_zoom_6/StatefulPartitionedCallStatefulPartitionedCall2random_rotation_6/StatefulPartitionedCall:output:0random_zoom_6_1012002*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_random_zoom_6_layer_call_and_return_conditional_losses_1011688
IdentityIdentity.random_zoom_6/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKKÂ
NoOpNoOp&^random_flip_6/StatefulPartitionedCall*^random_rotation_6/StatefulPartitionedCall&^random_zoom_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿKK: : : 2N
%random_flip_6/StatefulPartitionedCall%random_flip_6/StatefulPartitionedCall2V
)random_rotation_6/StatefulPartitionedCall)random_rotation_6/StatefulPartitionedCall2N
%random_zoom_6/StatefulPartitionedCall%random_zoom_6/StatefulPartitionedCall:d `
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
-
_user_specified_namerandom_flip_6_input


G__inference_conv2d_256_layer_call_and_return_conditional_losses_1014816

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
¼
Â
3__inference_data_augmentation_layer_call_fn_1011986
random_flip_6_input
unknown:	
	unknown_0:	
	unknown_1:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallrandom_flip_6_inputunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_data_augmentation_layer_call_and_return_conditional_losses_1011966w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿKK: : : 22
StatefulPartitionedCallStatefulPartitionedCall:d `
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
-
_user_specified_namerandom_flip_6_input
¢

*__inference_model_53_layer_call_fn_1012401

base_input
unknown:	
	unknown_0:	
	unknown_1:	#
	unknown_2:
	unknown_3:#
	unknown_4:
	unknown_5:#
	unknown_6: 
	unknown_7: #
	unknown_8: @
	unknown_9:@

unknown_10:	À2

unknown_11:2

unknown_12:2K

unknown_13:K
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCall
base_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_model_53_layer_call_and_return_conditional_losses_1012333o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:ÿÿÿÿÿÿÿÿÿKK: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
$
_user_specified_name
base_input

j
N__inference_max_pooling2d_191_layer_call_and_return_conditional_losses_1014736

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
É
K
/__inference_random_flip_6_layer_call_fn_1014872

inputs
identity½
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_random_flip_6_layer_call_and_return_conditional_losses_1011560h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿKK:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
 
_user_specified_nameinputs
ß
ì
Xdata_augmentation_random_flip_6_map_while_stateless_random_flip_left_right_false_1014027¶
±data_augmentation_random_flip_6_map_while_stateless_random_flip_left_right_identity_data_augmentation_random_flip_6_map_while_stateless_random_flip_left_right_control_dependencyW
Sdata_augmentation_random_flip_6_map_while_stateless_random_flip_left_right_identityÀ
Sdata_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/IdentityIdentity±data_augmentation_random_flip_6_map_while_stateless_random_flip_left_right_identity_data_augmentation_random_flip_6_map_while_stateless_random_flip_left_right_control_dependency*
T0*"
_output_shapes
:KK"³
Sdata_augmentation_random_flip_6_map_while_stateless_random_flip_left_right_identity\data_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:KK:( $
"
_output_shapes
:KK

p
F__inference_lambda_31_layer_call_and_return_conditional_losses_1012539

inputs
inputs_1
identityN
subSubinputsinputs_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿKE
AbsAbssub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿKO
IdentityIdentityAbs:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿK:ÿÿÿÿÿÿÿÿÿK:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
 
_user_specified_nameinputs


G__inference_conv2d_253_layer_call_and_return_conditional_losses_1012061

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿGG*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿGGX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿGGi
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿGGw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿKK: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
 
_user_specified_nameinputs
n
Ã
J__inference_random_zoom_6_layer_call_and_return_conditional_losses_1011688

inputs6
(stateful_uniform_rngreadandskip_resource:	
identity¢stateful_uniform/RngReadAndSkip;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ýÿÿÿÿÿÿÿÿj
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿa
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ù
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿj
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ù
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: Z
stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
stateful_uniform/shapePackstrided_slice:output:0!stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL?Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ¶
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¬
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¢
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: 
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2stateful_uniform:z:0stateful_uniform:z:0concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
zoom_matrix/ShapeShapeconcat:output:0*
T0*
_output_shapes
:i
zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
zoom_matrix/strided_sliceStridedSlicezoom_matrix/Shape:output:0(zoom_matrix/strided_slice/stack:output:0*zoom_matrix/strided_slice/stack_1:output:0*zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?_
zoom_matrix/subSub
Cast_1:y:0zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: Z
zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @t
zoom_matrix/truedivRealDivzoom_matrix/sub:z:0zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: v
!zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            x
#zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         Ò
zoom_matrix/strided_slice_1StridedSliceconcat:output:0*zoom_matrix/strided_slice_1/stack:output:0,zoom_matrix/strided_slice_1/stack_1:output:0,zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
zoom_matrix/sub_1Subzoom_matrix/sub_1/x:output:0$zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
zoom_matrix/mulMulzoom_matrix/truediv:z:0zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?a
zoom_matrix/sub_2SubCast:y:0zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: \
zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @z
zoom_matrix/truediv_1RealDivzoom_matrix/sub_2:z:0 zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: v
!zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         Ò
zoom_matrix/strided_slice_2StridedSliceconcat:output:0*zoom_matrix/strided_slice_2/stack:output:0,zoom_matrix/strided_slice_2/stack_1:output:0,zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
zoom_matrix/sub_3Subzoom_matrix/sub_3/x:output:0$zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
zoom_matrix/mul_1Mulzoom_matrix/truediv_1:z:0zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
!zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            x
#zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         Ò
zoom_matrix/strided_slice_3StridedSliceconcat:output:0*zoom_matrix/strided_slice_3/stack:output:0,zoom_matrix/strided_slice_3/stack_1:output:0,zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask\
zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
zoom_matrix/zeros/packedPack"zoom_matrix/strided_slice:output:0#zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:\
zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
zoom_matrix/zerosFill!zoom_matrix/zeros/packed:output:0 zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
zoom_matrix/zeros_1/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:^
zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
zoom_matrix/zeros_1Fill#zoom_matrix/zeros_1/packed:output:0"zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
!zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         Ò
zoom_matrix/strided_slice_4StridedSliceconcat:output:0*zoom_matrix/strided_slice_4/stack:output:0,zoom_matrix/strided_slice_4/stack_1:output:0,zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask^
zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
zoom_matrix/zeros_2/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:^
zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
zoom_matrix/zeros_2Fill#zoom_matrix/zeros_2/packed:output:0"zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ë
zoom_matrix/concatConcatV2$zoom_matrix/strided_slice_3:output:0zoom_matrix/zeros:output:0zoom_matrix/mul:z:0zoom_matrix/zeros_1:output:0$zoom_matrix/strided_slice_4:output:0zoom_matrix/mul_1:z:0zoom_matrix/zeros_2:output:0 zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿE
transform/ShapeShapeinputs*
T0*
_output_shapes
:g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ï
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputszoom_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKKh
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿKK: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
 
_user_specified_nameinputs
Æ

+__inference_dense_121_layer_call_fn_1014354

inputs
unknown:K
	unknown_0:
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_121_layer_call_and_return_conditional_losses_1012552o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿK: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
 
_user_specified_nameinputs
½
¤
Frandom_flip_6_map_while_stateless_random_flip_left_right_false_1014461
random_flip_6_map_while_stateless_random_flip_left_right_identity_random_flip_6_map_while_stateless_random_flip_left_right_control_dependencyE
Arandom_flip_6_map_while_stateless_random_flip_left_right_identity
Arandom_flip_6/map/while/stateless_random_flip_left_right/IdentityIdentityrandom_flip_6_map_while_stateless_random_flip_left_right_identity_random_flip_6_map_while_stateless_random_flip_left_right_control_dependency*
T0*"
_output_shapes
:KK"
Arandom_flip_6_map_while_stateless_random_flip_left_right_identityJrandom_flip_6/map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:KK:( $
"
_output_shapes
:KK


G__inference_conv2d_254_layer_call_and_return_conditional_losses_1014756

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!!*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!!X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!!i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!!w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ##: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ##
 
_user_specified_nameinputs
V
Õ
map_while_body_1014899$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1#
map_while_map_strided_slice_1_0_
[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0K
=map_while_stateful_uniform_full_int_rngreadandskip_resource_0:	
map_while_identity
map_while_identity_1
map_while_identity_2
map_while_identity_3!
map_while_map_strided_slice_1]
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensorI
;map_while_stateful_uniform_full_int_rngreadandskip_resource:	¢2map/while/stateful_uniform_full_int/RngReadAndSkip
;map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"K   K      µ
-map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0map_while_placeholderDmap/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*"
_output_shapes
:KK*
element_dtype0s
)map/while/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:s
)map/while/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: ¹
(map/while/stateful_uniform_full_int/ProdProd2map/while/stateful_uniform_full_int/shape:output:02map/while/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: l
*map/while/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
*map/while/stateful_uniform_full_int/Cast_1Cast1map/while/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 
2map/while/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip=map_while_stateful_uniform_full_int_rngreadandskip_resource_03map/while/stateful_uniform_full_int/Cast/x:output:0.map/while/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:
7map/while/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
9map/while/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
9map/while/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
1map/while/stateful_uniform_full_int/strided_sliceStridedSlice:map/while/stateful_uniform_full_int/RngReadAndSkip:value:0@map/while/stateful_uniform_full_int/strided_slice/stack:output:0Bmap/while/stateful_uniform_full_int/strided_slice/stack_1:output:0Bmap/while/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask£
+map/while/stateful_uniform_full_int/BitcastBitcast:map/while/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
9map/while/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
;map/while/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
;map/while/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
3map/while/stateful_uniform_full_int/strided_slice_1StridedSlice:map/while/stateful_uniform_full_int/RngReadAndSkip:value:0Bmap/while/stateful_uniform_full_int/strided_slice_1/stack:output:0Dmap/while/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Dmap/while/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:§
-map/while/stateful_uniform_full_int/Bitcast_1Bitcast<map/while/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0i
'map/while/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :Ã
#map/while/stateful_uniform_full_intStatelessRandomUniformFullIntV22map/while/stateful_uniform_full_int/shape:output:06map/while/stateful_uniform_full_int/Bitcast_1:output:04map/while/stateful_uniform_full_int/Bitcast:output:00map/while/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	^
map/while/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R 
map/while/stackPack,map/while/stateful_uniform_full_int:output:0map/while/zeros_like:output:0*
N*
T0	*
_output_shapes

:n
map/while/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
map/while/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       p
map/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ©
map/while/strided_sliceStridedSlicemap/while/stack:output:0&map/while/strided_slice/stack:output:0(map/while/strided_slice/stack_1:output:0(map/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskî
=map/while/stateless_random_flip_left_right/control_dependencyIdentity4map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*@
_class6
42loc:@map/while/TensorArrayV2Read/TensorListGetItem*"
_output_shapes
:KK
Imap/while/stateless_random_flip_left_right/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB 
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ä
`map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter map/while/strided_slice:output:0* 
_output_shapes
::¢
`map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :£
\map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Rmap/while/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0fmap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0jmap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0imap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: 
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/subSubPmap/while/stateless_random_flip_left_right/stateless_random_uniform/max:output:0Pmap/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: £
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/mulMulemap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Kmap/while/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: 
Cmap/while/stateless_random_flip_left_right/stateless_random_uniformAddV2Kmap/while/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0Pmap/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: v
1map/while/stateless_random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ý
/map/while/stateless_random_flip_left_right/LessLessGmap/while/stateless_random_flip_left_right/stateless_random_uniform:z:0:map/while/stateless_random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: 
*map/while/stateless_random_flip_left_rightStatelessIf3map/while/stateless_random_flip_left_right/Less:z:0Fmap/while/stateless_random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*"
_output_shapes
:KK* 
_read_only_resource_inputs
 *K
else_branch<R:
8map_while_stateless_random_flip_left_right_false_1014959*!
output_shapes
:KK*J
then_branch;R9
7map_while_stateless_random_flip_left_right_true_1014958¡
3map/while/stateless_random_flip_left_right/IdentityIdentity3map/while/stateless_random_flip_left_right:output:0*
T0*"
_output_shapes
:KKñ
.map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemmap_while_placeholder_1map_while_placeholder<map/while/stateless_random_flip_left_right/Identity:output:0*
_output_shapes
: *
element_dtype0:éèÒQ
map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :h
map/while/addAddV2map_while_placeholdermap/while/add/y:output:0*
T0*
_output_shapes
: S
map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
map/while/add_1AddV2 map_while_map_while_loop_countermap/while/add_1/y:output:0*
T0*
_output_shapes
: e
map/while/IdentityIdentitymap/while/add_1:z:0^map/while/NoOp*
T0*
_output_shapes
: o
map/while/Identity_1Identitymap_while_map_strided_slice^map/while/NoOp*
T0*
_output_shapes
: e
map/while/Identity_2Identitymap/while/add:z:0^map/while/NoOp*
T0*
_output_shapes
: 
map/while/Identity_3Identity>map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^map/while/NoOp*
T0*
_output_shapes
: 
map/while/NoOpNoOp3^map/while/stateful_uniform_full_int/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "1
map_while_identitymap/while/Identity:output:0"5
map_while_identity_1map/while/Identity_1:output:0"5
map_while_identity_2map/while/Identity_2:output:0"5
map_while_identity_3map/while/Identity_3:output:0"@
map_while_map_strided_slice_1map_while_map_strided_slice_1_0"|
;map_while_stateful_uniform_full_int_rngreadandskip_resource=map_while_stateful_uniform_full_int_rngreadandskip_resource_0"¸
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : : : 2h
2map/while/stateful_uniform_full_int/RngReadAndSkip2map/while/stateful_uniform_full_int/RngReadAndSkip: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ð
¡
,__inference_conv2d_256_layer_call_fn_1014805

inputs!
unknown: @
	unknown_0:@
identity¢StatefulPartitionedCallä
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_conv2d_256_layer_call_and_return_conditional_losses_1012115w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
É
K
/__inference_random_zoom_6_layer_call_fn_1015131

inputs
identity½
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_random_zoom_6_layer_call_and_return_conditional_losses_1011572h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿKK:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
 
_user_specified_nameinputs
§
Ë
*__inference_model_53_layer_call_fn_1012191

base_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:	À2
	unknown_8:2
	unknown_9:2K

unknown_10:K
identity¢StatefulPartitionedCallá
StatefulPartitionedCallStatefulPartitionedCall
base_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_model_53_layer_call_and_return_conditional_losses_1012164o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿKK: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
$
_user_specified_name
base_input
n
Ã
J__inference_random_zoom_6_layer_call_and_return_conditional_losses_1015244

inputs6
(stateful_uniform_rngreadandskip_resource:	
identity¢stateful_uniform/RngReadAndSkip;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ýÿÿÿÿÿÿÿÿj
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿa
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ù
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿj
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ù
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: Z
stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
stateful_uniform/shapePackstrided_slice:output:0!stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL?Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ¶
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¬
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¢
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: 
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2stateful_uniform:z:0stateful_uniform:z:0concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
zoom_matrix/ShapeShapeconcat:output:0*
T0*
_output_shapes
:i
zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
zoom_matrix/strided_sliceStridedSlicezoom_matrix/Shape:output:0(zoom_matrix/strided_slice/stack:output:0*zoom_matrix/strided_slice/stack_1:output:0*zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?_
zoom_matrix/subSub
Cast_1:y:0zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: Z
zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @t
zoom_matrix/truedivRealDivzoom_matrix/sub:z:0zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: v
!zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            x
#zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         Ò
zoom_matrix/strided_slice_1StridedSliceconcat:output:0*zoom_matrix/strided_slice_1/stack:output:0,zoom_matrix/strided_slice_1/stack_1:output:0,zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
zoom_matrix/sub_1Subzoom_matrix/sub_1/x:output:0$zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
zoom_matrix/mulMulzoom_matrix/truediv:z:0zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?a
zoom_matrix/sub_2SubCast:y:0zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: \
zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @z
zoom_matrix/truediv_1RealDivzoom_matrix/sub_2:z:0 zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: v
!zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         Ò
zoom_matrix/strided_slice_2StridedSliceconcat:output:0*zoom_matrix/strided_slice_2/stack:output:0,zoom_matrix/strided_slice_2/stack_1:output:0,zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
zoom_matrix/sub_3Subzoom_matrix/sub_3/x:output:0$zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
zoom_matrix/mul_1Mulzoom_matrix/truediv_1:z:0zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
!zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            x
#zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         Ò
zoom_matrix/strided_slice_3StridedSliceconcat:output:0*zoom_matrix/strided_slice_3/stack:output:0,zoom_matrix/strided_slice_3/stack_1:output:0,zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask\
zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
zoom_matrix/zeros/packedPack"zoom_matrix/strided_slice:output:0#zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:\
zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
zoom_matrix/zerosFill!zoom_matrix/zeros/packed:output:0 zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
zoom_matrix/zeros_1/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:^
zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
zoom_matrix/zeros_1Fill#zoom_matrix/zeros_1/packed:output:0"zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
!zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         Ò
zoom_matrix/strided_slice_4StridedSliceconcat:output:0*zoom_matrix/strided_slice_4/stack:output:0,zoom_matrix/strided_slice_4/stack_1:output:0,zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask^
zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
zoom_matrix/zeros_2/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:^
zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
zoom_matrix/zeros_2Fill#zoom_matrix/zeros_2/packed:output:0"zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ë
zoom_matrix/concatConcatV2$zoom_matrix/strided_slice_3:output:0zoom_matrix/zeros:output:0zoom_matrix/mul:z:0zoom_matrix/zeros_1:output:0$zoom_matrix/strided_slice_4:output:0zoom_matrix/mul_1:z:0zoom_matrix/zeros_2:output:0 zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿE
transform/ShapeShapeinputs*
T0*
_output_shapes
:g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ï
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputszoom_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKKh
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿKK: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
 
_user_specified_nameinputs
¾

/__inference_random_flip_6_layer_call_fn_1014879

inputs
unknown:	
identity¢StatefulPartitionedCall×
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_random_flip_6_layer_call_and_return_conditional_losses_1011941w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿKK: 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
 
_user_specified_nameinputs


*__inference_model_54_layer_call_fn_1012590
input_65
input_66!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:	À2
	unknown_8:2
	unknown_9:2K

unknown_10:K

unknown_11:K

unknown_12:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_65input_66unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_model_54_layer_call_and_return_conditional_losses_1012559o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:ÿÿÿÿÿÿÿÿÿKK:ÿÿÿÿÿÿÿÿÿKK: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
"
_user_specified_name
input_65:YU
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
"
_user_specified_name
input_66
ê
½
E__inference_model_54_layer_call_and_return_conditional_losses_1012715

inputs
inputs_1
model_53_1012661:	
model_53_1012663:	
model_53_1012665:	*
model_53_1012667:
model_53_1012669:*
model_53_1012671:
model_53_1012673:*
model_53_1012675: 
model_53_1012677: *
model_53_1012679: @
model_53_1012681:@#
model_53_1012683:	À2
model_53_1012685:2"
model_53_1012687:2K
model_53_1012689:K#
dense_121_1012709:K
dense_121_1012711:
identity¢!dense_121/StatefulPartitionedCall¢ model_53/StatefulPartitionedCall¢"model_53/StatefulPartitionedCall_1ô
 model_53/StatefulPartitionedCallStatefulPartitionedCallinputsmodel_53_1012661model_53_1012663model_53_1012665model_53_1012667model_53_1012669model_53_1012671model_53_1012673model_53_1012675model_53_1012677model_53_1012679model_53_1012681model_53_1012683model_53_1012685model_53_1012687model_53_1012689*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_model_53_layer_call_and_return_conditional_losses_1012333
"model_53/StatefulPartitionedCall_1StatefulPartitionedCallinputs_1model_53_1012661model_53_1012663model_53_1012665model_53_1012667model_53_1012669model_53_1012671model_53_1012673model_53_1012675model_53_1012677model_53_1012679model_53_1012681model_53_1012683model_53_1012685model_53_1012687model_53_1012689!^model_53/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_model_53_layer_call_and_return_conditional_losses_1012333
lambda_31/PartitionedCallPartitionedCall)model_53/StatefulPartitionedCall:output:0+model_53/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lambda_31_layer_call_and_return_conditional_losses_1012617
!dense_121/StatefulPartitionedCallStatefulPartitionedCall"lambda_31/PartitionedCall:output:0dense_121_1012709dense_121_1012711*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_121_layer_call_and_return_conditional_losses_1012552y
IdentityIdentity*dense_121/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
NoOpNoOp"^dense_121/StatefulPartitionedCall!^model_53/StatefulPartitionedCall#^model_53/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:ÿÿÿÿÿÿÿÿÿKK:ÿÿÿÿÿÿÿÿÿKK: : : : : : : : : : : : : : : : : 2F
!dense_121/StatefulPartitionedCall!dense_121/StatefulPartitionedCall2D
 model_53/StatefulPartitionedCall model_53/StatefulPartitionedCall2H
"model_53/StatefulPartitionedCall_1"model_53/StatefulPartitionedCall_1:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
 
_user_specified_nameinputs:WS
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
 
_user_specified_nameinputs

Ý
*__inference_model_54_layer_call_fn_1012792
input_65
input_66
unknown:	
	unknown_0:	
	unknown_1:	#
	unknown_2:
	unknown_3:#
	unknown_4:
	unknown_5:#
	unknown_6: 
	unknown_7: #
	unknown_8: @
	unknown_9:@

unknown_10:	À2

unknown_11:2

unknown_12:2K

unknown_13:K

unknown_14:K

unknown_15:
identity¢StatefulPartitionedCall­
StatefulPartitionedCallStatefulPartitionedCallinput_65input_66unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_model_54_layer_call_and_return_conditional_losses_1012715o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:ÿÿÿÿÿÿÿÿÿKK:ÿÿÿÿÿÿÿÿÿKK: : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
"
_user_specified_name
input_65:YU
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
"
_user_specified_name
input_66


G__inference_conv2d_255_layer_call_and_return_conditional_losses_1014786

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
«
½
E__inference_model_54_layer_call_and_return_conditional_losses_1013109
inputs_0
inputs_1L
2model_53_conv2d_253_conv2d_readvariableop_resource:A
3model_53_conv2d_253_biasadd_readvariableop_resource:L
2model_53_conv2d_254_conv2d_readvariableop_resource:A
3model_53_conv2d_254_biasadd_readvariableop_resource:L
2model_53_conv2d_255_conv2d_readvariableop_resource: A
3model_53_conv2d_255_biasadd_readvariableop_resource: L
2model_53_conv2d_256_conv2d_readvariableop_resource: @A
3model_53_conv2d_256_biasadd_readvariableop_resource:@D
1model_53_dense_119_matmul_readvariableop_resource:	À2@
2model_53_dense_119_biasadd_readvariableop_resource:2C
1model_53_dense_120_matmul_readvariableop_resource:2K@
2model_53_dense_120_biasadd_readvariableop_resource:K:
(dense_121_matmul_readvariableop_resource:K7
)dense_121_biasadd_readvariableop_resource:
identity¢ dense_121/BiasAdd/ReadVariableOp¢dense_121/MatMul/ReadVariableOp¢*model_53/conv2d_253/BiasAdd/ReadVariableOp¢,model_53/conv2d_253/BiasAdd_1/ReadVariableOp¢)model_53/conv2d_253/Conv2D/ReadVariableOp¢+model_53/conv2d_253/Conv2D_1/ReadVariableOp¢*model_53/conv2d_254/BiasAdd/ReadVariableOp¢,model_53/conv2d_254/BiasAdd_1/ReadVariableOp¢)model_53/conv2d_254/Conv2D/ReadVariableOp¢+model_53/conv2d_254/Conv2D_1/ReadVariableOp¢*model_53/conv2d_255/BiasAdd/ReadVariableOp¢,model_53/conv2d_255/BiasAdd_1/ReadVariableOp¢)model_53/conv2d_255/Conv2D/ReadVariableOp¢+model_53/conv2d_255/Conv2D_1/ReadVariableOp¢*model_53/conv2d_256/BiasAdd/ReadVariableOp¢,model_53/conv2d_256/BiasAdd_1/ReadVariableOp¢)model_53/conv2d_256/Conv2D/ReadVariableOp¢+model_53/conv2d_256/Conv2D_1/ReadVariableOp¢)model_53/dense_119/BiasAdd/ReadVariableOp¢+model_53/dense_119/BiasAdd_1/ReadVariableOp¢(model_53/dense_119/MatMul/ReadVariableOp¢*model_53/dense_119/MatMul_1/ReadVariableOp¢)model_53/dense_120/BiasAdd/ReadVariableOp¢+model_53/dense_120/BiasAdd_1/ReadVariableOp¢(model_53/dense_120/MatMul/ReadVariableOp¢*model_53/dense_120/MatMul_1/ReadVariableOp¤
)model_53/conv2d_253/Conv2D/ReadVariableOpReadVariableOp2model_53_conv2d_253_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ä
model_53/conv2d_253/Conv2DConv2Dinputs_01model_53/conv2d_253/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿGG*
paddingVALID*
strides

*model_53/conv2d_253/BiasAdd/ReadVariableOpReadVariableOp3model_53_conv2d_253_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¹
model_53/conv2d_253/BiasAddBiasAdd#model_53/conv2d_253/Conv2D:output:02model_53/conv2d_253/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿGG
model_53/conv2d_253/ReluRelu$model_53/conv2d_253/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿGGÂ
"model_53/max_pooling2d_191/MaxPoolMaxPool&model_53/conv2d_253/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ##*
ksize
*
paddingVALID*
strides
¤
)model_53/conv2d_254/Conv2D/ReadVariableOpReadVariableOp2model_53_conv2d_254_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ç
model_53/conv2d_254/Conv2DConv2D+model_53/max_pooling2d_191/MaxPool:output:01model_53/conv2d_254/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!!*
paddingVALID*
strides

*model_53/conv2d_254/BiasAdd/ReadVariableOpReadVariableOp3model_53_conv2d_254_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¹
model_53/conv2d_254/BiasAddBiasAdd#model_53/conv2d_254/Conv2D:output:02model_53/conv2d_254/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!!
model_53/conv2d_254/ReluRelu$model_53/conv2d_254/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!!Â
"model_53/max_pooling2d_192/MaxPoolMaxPool&model_53/conv2d_254/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
¤
)model_53/conv2d_255/Conv2D/ReadVariableOpReadVariableOp2model_53_conv2d_255_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ç
model_53/conv2d_255/Conv2DConv2D+model_53/max_pooling2d_192/MaxPool:output:01model_53/conv2d_255/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingVALID*
strides

*model_53/conv2d_255/BiasAdd/ReadVariableOpReadVariableOp3model_53_conv2d_255_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¹
model_53/conv2d_255/BiasAddBiasAdd#model_53/conv2d_255/Conv2D:output:02model_53/conv2d_255/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
model_53/conv2d_255/ReluRelu$model_53/conv2d_255/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Â
"model_53/max_pooling2d_193/MaxPoolMaxPool&model_53/conv2d_255/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
ksize
*
paddingVALID*
strides
¤
)model_53/conv2d_256/Conv2D/ReadVariableOpReadVariableOp2model_53_conv2d_256_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0ç
model_53/conv2d_256/Conv2DConv2D+model_53/max_pooling2d_193/MaxPool:output:01model_53/conv2d_256/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides

*model_53/conv2d_256/BiasAdd/ReadVariableOpReadVariableOp3model_53_conv2d_256_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¹
model_53/conv2d_256/BiasAddBiasAdd#model_53/conv2d_256/Conv2D:output:02model_53/conv2d_256/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
model_53/conv2d_256/ReluRelu$model_53/conv2d_256/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@j
model_53/flatten_61/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@  ¥
model_53/flatten_61/ReshapeReshape&model_53/conv2d_256/Relu:activations:0"model_53/flatten_61/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
(model_53/dense_119/MatMul/ReadVariableOpReadVariableOp1model_53_dense_119_matmul_readvariableop_resource*
_output_shapes
:	À2*
dtype0­
model_53/dense_119/MatMulMatMul$model_53/flatten_61/Reshape:output:00model_53/dense_119/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
)model_53/dense_119/BiasAdd/ReadVariableOpReadVariableOp2model_53_dense_119_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0¯
model_53/dense_119/BiasAddBiasAdd#model_53/dense_119/MatMul:product:01model_53/dense_119/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
model_53/dense_119/ReluRelu#model_53/dense_119/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
(model_53/dense_120/MatMul/ReadVariableOpReadVariableOp1model_53_dense_120_matmul_readvariableop_resource*
_output_shapes

:2K*
dtype0®
model_53/dense_120/MatMulMatMul%model_53/dense_119/Relu:activations:00model_53/dense_120/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
)model_53/dense_120/BiasAdd/ReadVariableOpReadVariableOp2model_53_dense_120_biasadd_readvariableop_resource*
_output_shapes
:K*
dtype0¯
model_53/dense_120/BiasAddBiasAdd#model_53/dense_120/MatMul:product:01model_53/dense_120/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK|
model_53/dense_120/SigmoidSigmoid#model_53/dense_120/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK¦
+model_53/conv2d_253/Conv2D_1/ReadVariableOpReadVariableOp2model_53_conv2d_253_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0È
model_53/conv2d_253/Conv2D_1Conv2Dinputs_13model_53/conv2d_253/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿGG*
paddingVALID*
strides

,model_53/conv2d_253/BiasAdd_1/ReadVariableOpReadVariableOp3model_53_conv2d_253_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¿
model_53/conv2d_253/BiasAdd_1BiasAdd%model_53/conv2d_253/Conv2D_1:output:04model_53/conv2d_253/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿGG
model_53/conv2d_253/Relu_1Relu&model_53/conv2d_253/BiasAdd_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿGGÆ
$model_53/max_pooling2d_191/MaxPool_1MaxPool(model_53/conv2d_253/Relu_1:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ##*
ksize
*
paddingVALID*
strides
¦
+model_53/conv2d_254/Conv2D_1/ReadVariableOpReadVariableOp2model_53_conv2d_254_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0í
model_53/conv2d_254/Conv2D_1Conv2D-model_53/max_pooling2d_191/MaxPool_1:output:03model_53/conv2d_254/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!!*
paddingVALID*
strides

,model_53/conv2d_254/BiasAdd_1/ReadVariableOpReadVariableOp3model_53_conv2d_254_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¿
model_53/conv2d_254/BiasAdd_1BiasAdd%model_53/conv2d_254/Conv2D_1:output:04model_53/conv2d_254/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!!
model_53/conv2d_254/Relu_1Relu&model_53/conv2d_254/BiasAdd_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!!Æ
$model_53/max_pooling2d_192/MaxPool_1MaxPool(model_53/conv2d_254/Relu_1:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
¦
+model_53/conv2d_255/Conv2D_1/ReadVariableOpReadVariableOp2model_53_conv2d_255_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0í
model_53/conv2d_255/Conv2D_1Conv2D-model_53/max_pooling2d_192/MaxPool_1:output:03model_53/conv2d_255/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingVALID*
strides

,model_53/conv2d_255/BiasAdd_1/ReadVariableOpReadVariableOp3model_53_conv2d_255_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¿
model_53/conv2d_255/BiasAdd_1BiasAdd%model_53/conv2d_255/Conv2D_1:output:04model_53/conv2d_255/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
model_53/conv2d_255/Relu_1Relu&model_53/conv2d_255/BiasAdd_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Æ
$model_53/max_pooling2d_193/MaxPool_1MaxPool(model_53/conv2d_255/Relu_1:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
ksize
*
paddingVALID*
strides
¦
+model_53/conv2d_256/Conv2D_1/ReadVariableOpReadVariableOp2model_53_conv2d_256_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0í
model_53/conv2d_256/Conv2D_1Conv2D-model_53/max_pooling2d_193/MaxPool_1:output:03model_53/conv2d_256/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides

,model_53/conv2d_256/BiasAdd_1/ReadVariableOpReadVariableOp3model_53_conv2d_256_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¿
model_53/conv2d_256/BiasAdd_1BiasAdd%model_53/conv2d_256/Conv2D_1:output:04model_53/conv2d_256/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
model_53/conv2d_256/Relu_1Relu&model_53/conv2d_256/BiasAdd_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
model_53/flatten_61/Const_1Const*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@  «
model_53/flatten_61/Reshape_1Reshape(model_53/conv2d_256/Relu_1:activations:0$model_53/flatten_61/Const_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
*model_53/dense_119/MatMul_1/ReadVariableOpReadVariableOp1model_53_dense_119_matmul_readvariableop_resource*
_output_shapes
:	À2*
dtype0³
model_53/dense_119/MatMul_1MatMul&model_53/flatten_61/Reshape_1:output:02model_53/dense_119/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
+model_53/dense_119/BiasAdd_1/ReadVariableOpReadVariableOp2model_53_dense_119_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0µ
model_53/dense_119/BiasAdd_1BiasAdd%model_53/dense_119/MatMul_1:product:03model_53/dense_119/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z
model_53/dense_119/Relu_1Relu%model_53/dense_119/BiasAdd_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
*model_53/dense_120/MatMul_1/ReadVariableOpReadVariableOp1model_53_dense_120_matmul_readvariableop_resource*
_output_shapes

:2K*
dtype0´
model_53/dense_120/MatMul_1MatMul'model_53/dense_119/Relu_1:activations:02model_53/dense_120/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
+model_53/dense_120/BiasAdd_1/ReadVariableOpReadVariableOp2model_53_dense_120_biasadd_readvariableop_resource*
_output_shapes
:K*
dtype0µ
model_53/dense_120/BiasAdd_1BiasAdd%model_53/dense_120/MatMul_1:product:03model_53/dense_120/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
model_53/dense_120/Sigmoid_1Sigmoid%model_53/dense_120/BiasAdd_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
lambda_31/subSubmodel_53/dense_120/Sigmoid:y:0 model_53/dense_120/Sigmoid_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿKY
lambda_31/AbsAbslambda_31/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
dense_121/MatMul/ReadVariableOpReadVariableOp(dense_121_matmul_readvariableop_resource*
_output_shapes

:K*
dtype0
dense_121/MatMulMatMullambda_31/Abs:y:0'dense_121/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_121/BiasAdd/ReadVariableOpReadVariableOp)dense_121_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_121/BiasAddBiasAdddense_121/MatMul:product:0(dense_121/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
dense_121/SigmoidSigmoiddense_121/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
IdentityIdentitydense_121/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÇ	
NoOpNoOp!^dense_121/BiasAdd/ReadVariableOp ^dense_121/MatMul/ReadVariableOp+^model_53/conv2d_253/BiasAdd/ReadVariableOp-^model_53/conv2d_253/BiasAdd_1/ReadVariableOp*^model_53/conv2d_253/Conv2D/ReadVariableOp,^model_53/conv2d_253/Conv2D_1/ReadVariableOp+^model_53/conv2d_254/BiasAdd/ReadVariableOp-^model_53/conv2d_254/BiasAdd_1/ReadVariableOp*^model_53/conv2d_254/Conv2D/ReadVariableOp,^model_53/conv2d_254/Conv2D_1/ReadVariableOp+^model_53/conv2d_255/BiasAdd/ReadVariableOp-^model_53/conv2d_255/BiasAdd_1/ReadVariableOp*^model_53/conv2d_255/Conv2D/ReadVariableOp,^model_53/conv2d_255/Conv2D_1/ReadVariableOp+^model_53/conv2d_256/BiasAdd/ReadVariableOp-^model_53/conv2d_256/BiasAdd_1/ReadVariableOp*^model_53/conv2d_256/Conv2D/ReadVariableOp,^model_53/conv2d_256/Conv2D_1/ReadVariableOp*^model_53/dense_119/BiasAdd/ReadVariableOp,^model_53/dense_119/BiasAdd_1/ReadVariableOp)^model_53/dense_119/MatMul/ReadVariableOp+^model_53/dense_119/MatMul_1/ReadVariableOp*^model_53/dense_120/BiasAdd/ReadVariableOp,^model_53/dense_120/BiasAdd_1/ReadVariableOp)^model_53/dense_120/MatMul/ReadVariableOp+^model_53/dense_120/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:ÿÿÿÿÿÿÿÿÿKK:ÿÿÿÿÿÿÿÿÿKK: : : : : : : : : : : : : : 2D
 dense_121/BiasAdd/ReadVariableOp dense_121/BiasAdd/ReadVariableOp2B
dense_121/MatMul/ReadVariableOpdense_121/MatMul/ReadVariableOp2X
*model_53/conv2d_253/BiasAdd/ReadVariableOp*model_53/conv2d_253/BiasAdd/ReadVariableOp2\
,model_53/conv2d_253/BiasAdd_1/ReadVariableOp,model_53/conv2d_253/BiasAdd_1/ReadVariableOp2V
)model_53/conv2d_253/Conv2D/ReadVariableOp)model_53/conv2d_253/Conv2D/ReadVariableOp2Z
+model_53/conv2d_253/Conv2D_1/ReadVariableOp+model_53/conv2d_253/Conv2D_1/ReadVariableOp2X
*model_53/conv2d_254/BiasAdd/ReadVariableOp*model_53/conv2d_254/BiasAdd/ReadVariableOp2\
,model_53/conv2d_254/BiasAdd_1/ReadVariableOp,model_53/conv2d_254/BiasAdd_1/ReadVariableOp2V
)model_53/conv2d_254/Conv2D/ReadVariableOp)model_53/conv2d_254/Conv2D/ReadVariableOp2Z
+model_53/conv2d_254/Conv2D_1/ReadVariableOp+model_53/conv2d_254/Conv2D_1/ReadVariableOp2X
*model_53/conv2d_255/BiasAdd/ReadVariableOp*model_53/conv2d_255/BiasAdd/ReadVariableOp2\
,model_53/conv2d_255/BiasAdd_1/ReadVariableOp,model_53/conv2d_255/BiasAdd_1/ReadVariableOp2V
)model_53/conv2d_255/Conv2D/ReadVariableOp)model_53/conv2d_255/Conv2D/ReadVariableOp2Z
+model_53/conv2d_255/Conv2D_1/ReadVariableOp+model_53/conv2d_255/Conv2D_1/ReadVariableOp2X
*model_53/conv2d_256/BiasAdd/ReadVariableOp*model_53/conv2d_256/BiasAdd/ReadVariableOp2\
,model_53/conv2d_256/BiasAdd_1/ReadVariableOp,model_53/conv2d_256/BiasAdd_1/ReadVariableOp2V
)model_53/conv2d_256/Conv2D/ReadVariableOp)model_53/conv2d_256/Conv2D/ReadVariableOp2Z
+model_53/conv2d_256/Conv2D_1/ReadVariableOp+model_53/conv2d_256/Conv2D_1/ReadVariableOp2V
)model_53/dense_119/BiasAdd/ReadVariableOp)model_53/dense_119/BiasAdd/ReadVariableOp2Z
+model_53/dense_119/BiasAdd_1/ReadVariableOp+model_53/dense_119/BiasAdd_1/ReadVariableOp2T
(model_53/dense_119/MatMul/ReadVariableOp(model_53/dense_119/MatMul/ReadVariableOp2X
*model_53/dense_119/MatMul_1/ReadVariableOp*model_53/dense_119/MatMul_1/ReadVariableOp2V
)model_53/dense_120/BiasAdd/ReadVariableOp)model_53/dense_120/BiasAdd/ReadVariableOp2Z
+model_53/dense_120/BiasAdd_1/ReadVariableOp+model_53/dense_120/BiasAdd_1/ReadVariableOp2T
(model_53/dense_120/MatMul/ReadVariableOp(model_53/dense_120/MatMul/ReadVariableOp2X
*model_53/dense_120/MatMul_1/ReadVariableOp*model_53/dense_120/MatMul_1/ReadVariableOp:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
"
_user_specified_name
inputs/1
ø
\
3__inference_data_augmentation_layer_call_fn_1011578
random_flip_6_input
identityÎ
PartitionedCallPartitionedCallrandom_flip_6_input*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_data_augmentation_layer_call_and_return_conditional_losses_1011575h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿKK:d `
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
-
_user_specified_namerandom_flip_6_input
¾
O
3__inference_max_pooling2d_193_layer_call_fn_1014791

inputs
identityÜ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_max_pooling2d_193_layer_call_and_return_conditional_losses_1012039
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
á
ß
?model_53_data_augmentation_random_flip_6_map_while_body_1013126v
rmodel_53_data_augmentation_random_flip_6_map_while_model_53_data_augmentation_random_flip_6_map_while_loop_counterq
mmodel_53_data_augmentation_random_flip_6_map_while_model_53_data_augmentation_random_flip_6_map_strided_sliceB
>model_53_data_augmentation_random_flip_6_map_while_placeholderD
@model_53_data_augmentation_random_flip_6_map_while_placeholder_1u
qmodel_53_data_augmentation_random_flip_6_map_while_model_53_data_augmentation_random_flip_6_map_strided_slice_1_0²
­model_53_data_augmentation_random_flip_6_map_while_tensorarrayv2read_tensorlistgetitem_model_53_data_augmentation_random_flip_6_map_tensorarrayunstack_tensorlistfromtensor_0t
fmodel_53_data_augmentation_random_flip_6_map_while_stateful_uniform_full_int_rngreadandskip_resource_0:	?
;model_53_data_augmentation_random_flip_6_map_while_identityA
=model_53_data_augmentation_random_flip_6_map_while_identity_1A
=model_53_data_augmentation_random_flip_6_map_while_identity_2A
=model_53_data_augmentation_random_flip_6_map_while_identity_3s
omodel_53_data_augmentation_random_flip_6_map_while_model_53_data_augmentation_random_flip_6_map_strided_slice_1°
«model_53_data_augmentation_random_flip_6_map_while_tensorarrayv2read_tensorlistgetitem_model_53_data_augmentation_random_flip_6_map_tensorarrayunstack_tensorlistfromtensorr
dmodel_53_data_augmentation_random_flip_6_map_while_stateful_uniform_full_int_rngreadandskip_resource:	¢[model_53/data_augmentation/random_flip_6/map/while/stateful_uniform_full_int/RngReadAndSkip¹
dmodel_53/data_augmentation/random_flip_6/map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"K   K      
Vmodel_53/data_augmentation/random_flip_6/map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem­model_53_data_augmentation_random_flip_6_map_while_tensorarrayv2read_tensorlistgetitem_model_53_data_augmentation_random_flip_6_map_tensorarrayunstack_tensorlistfromtensor_0>model_53_data_augmentation_random_flip_6_map_while_placeholdermmodel_53/data_augmentation/random_flip_6/map/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*"
_output_shapes
:KK*
element_dtype0
Rmodel_53/data_augmentation/random_flip_6/map/while/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:
Rmodel_53/data_augmentation/random_flip_6/map/while/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: ´
Qmodel_53/data_augmentation/random_flip_6/map/while/stateful_uniform_full_int/ProdProd[model_53/data_augmentation/random_flip_6/map/while/stateful_uniform_full_int/shape:output:0[model_53/data_augmentation/random_flip_6/map/while/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: 
Smodel_53/data_augmentation/random_flip_6/map/while/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :ç
Smodel_53/data_augmentation/random_flip_6/map/while/stateful_uniform_full_int/Cast_1CastZmodel_53/data_augmentation/random_flip_6/map/while/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ¨
[model_53/data_augmentation/random_flip_6/map/while/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkipfmodel_53_data_augmentation_random_flip_6_map_while_stateful_uniform_full_int_rngreadandskip_resource_0\model_53/data_augmentation/random_flip_6/map/while/stateful_uniform_full_int/Cast/x:output:0Wmodel_53/data_augmentation/random_flip_6/map/while/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:ª
`model_53/data_augmentation/random_flip_6/map/while/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ¬
bmodel_53/data_augmentation/random_flip_6/map/while/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¬
bmodel_53/data_augmentation/random_flip_6/map/while/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ø
Zmodel_53/data_augmentation/random_flip_6/map/while/stateful_uniform_full_int/strided_sliceStridedSlicecmodel_53/data_augmentation/random_flip_6/map/while/stateful_uniform_full_int/RngReadAndSkip:value:0imodel_53/data_augmentation/random_flip_6/map/while/stateful_uniform_full_int/strided_slice/stack:output:0kmodel_53/data_augmentation/random_flip_6/map/while/stateful_uniform_full_int/strided_slice/stack_1:output:0kmodel_53/data_augmentation/random_flip_6/map/while/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskõ
Tmodel_53/data_augmentation/random_flip_6/map/while/stateful_uniform_full_int/BitcastBitcastcmodel_53/data_augmentation/random_flip_6/map/while/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0¬
bmodel_53/data_augmentation/random_flip_6/map/while/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:®
dmodel_53/data_augmentation/random_flip_6/map/while/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:®
dmodel_53/data_augmentation/random_flip_6/map/while/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Î
\model_53/data_augmentation/random_flip_6/map/while/stateful_uniform_full_int/strided_slice_1StridedSlicecmodel_53/data_augmentation/random_flip_6/map/while/stateful_uniform_full_int/RngReadAndSkip:value:0kmodel_53/data_augmentation/random_flip_6/map/while/stateful_uniform_full_int/strided_slice_1/stack:output:0mmodel_53/data_augmentation/random_flip_6/map/while/stateful_uniform_full_int/strided_slice_1/stack_1:output:0mmodel_53/data_augmentation/random_flip_6/map/while/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:ù
Vmodel_53/data_augmentation/random_flip_6/map/while/stateful_uniform_full_int/Bitcast_1Bitcastemodel_53/data_augmentation/random_flip_6/map/while/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0
Pmodel_53/data_augmentation/random_flip_6/map/while/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :
Lmodel_53/data_augmentation/random_flip_6/map/while/stateful_uniform_full_intStatelessRandomUniformFullIntV2[model_53/data_augmentation/random_flip_6/map/while/stateful_uniform_full_int/shape:output:0_model_53/data_augmentation/random_flip_6/map/while/stateful_uniform_full_int/Bitcast_1:output:0]model_53/data_augmentation/random_flip_6/map/while/stateful_uniform_full_int/Bitcast:output:0Ymodel_53/data_augmentation/random_flip_6/map/while/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	
=model_53/data_augmentation/random_flip_6/map/while/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R 
8model_53/data_augmentation/random_flip_6/map/while/stackPackUmodel_53/data_augmentation/random_flip_6/map/while/stateful_uniform_full_int:output:0Fmodel_53/data_augmentation/random_flip_6/map/while/zeros_like:output:0*
N*
T0	*
_output_shapes

:
Fmodel_53/data_augmentation/random_flip_6/map/while/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Hmodel_53/data_augmentation/random_flip_6/map/while/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
Hmodel_53/data_augmentation/random_flip_6/map/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ö
@model_53/data_augmentation/random_flip_6/map/while/strided_sliceStridedSliceAmodel_53/data_augmentation/random_flip_6/map/while/stack:output:0Omodel_53/data_augmentation/random_flip_6/map/while/strided_slice/stack:output:0Qmodel_53/data_augmentation/random_flip_6/map/while/strided_slice/stack_1:output:0Qmodel_53/data_augmentation/random_flip_6/map/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maské
fmodel_53/data_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/control_dependencyIdentity]model_53/data_augmentation/random_flip_6/map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*i
_class_
][loc:@model_53/data_augmentation/random_flip_6/map/while/TensorArrayV2Read/TensorListGetItem*"
_output_shapes
:KKµ
rmodel_53/data_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB µ
pmodel_53/data_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    µ
pmodel_53/data_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
model_53/data_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterImodel_53/data_augmentation/random_flip_6/map/while/strided_slice:output:0* 
_output_shapes
::Ì
model_53/data_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :ô
model_53/data_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2{model_53/data_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0model_53/data_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0model_53/data_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0model_53/data_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: 
pmodel_53/data_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/subSubymodel_53/data_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/max:output:0ymodel_53/data_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 
pmodel_53/data_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/mulMulmodel_53/data_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0tmodel_53/data_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: 
lmodel_53/data_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniformAddV2tmodel_53/data_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0ymodel_53/data_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 
Zmodel_53/data_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ø
Xmodel_53/data_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/LessLesspmodel_53/data_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform:z:0cmodel_53/data_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: Ð
Smodel_53/data_augmentation/random_flip_6/map/while/stateless_random_flip_left_rightStatelessIf\model_53/data_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/Less:z:0omodel_53/data_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*"
_output_shapes
:KK* 
_read_only_resource_inputs
 *t
else_brancheRc
amodel_53_data_augmentation_random_flip_6_map_while_stateless_random_flip_left_right_false_1013186*!
output_shapes
:KK*s
then_branchdRb
`model_53_data_augmentation_random_flip_6_map_while_stateless_random_flip_left_right_true_1013185ó
\model_53/data_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/IdentityIdentity\model_53/data_augmentation/random_flip_6/map/while/stateless_random_flip_left_right:output:0*
T0*"
_output_shapes
:KK
Wmodel_53/data_augmentation/random_flip_6/map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem@model_53_data_augmentation_random_flip_6_map_while_placeholder_1>model_53_data_augmentation_random_flip_6_map_while_placeholderemodel_53/data_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/Identity:output:0*
_output_shapes
: *
element_dtype0:éèÒz
8model_53/data_augmentation/random_flip_6/map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ã
6model_53/data_augmentation/random_flip_6/map/while/addAddV2>model_53_data_augmentation_random_flip_6_map_while_placeholderAmodel_53/data_augmentation/random_flip_6/map/while/add/y:output:0*
T0*
_output_shapes
: |
:model_53/data_augmentation/random_flip_6/map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
8model_53/data_augmentation/random_flip_6/map/while/add_1AddV2rmodel_53_data_augmentation_random_flip_6_map_while_model_53_data_augmentation_random_flip_6_map_while_loop_counterCmodel_53/data_augmentation/random_flip_6/map/while/add_1/y:output:0*
T0*
_output_shapes
: à
;model_53/data_augmentation/random_flip_6/map/while/IdentityIdentity<model_53/data_augmentation/random_flip_6/map/while/add_1:z:08^model_53/data_augmentation/random_flip_6/map/while/NoOp*
T0*
_output_shapes
: 
=model_53/data_augmentation/random_flip_6/map/while/Identity_1Identitymmodel_53_data_augmentation_random_flip_6_map_while_model_53_data_augmentation_random_flip_6_map_strided_slice8^model_53/data_augmentation/random_flip_6/map/while/NoOp*
T0*
_output_shapes
: à
=model_53/data_augmentation/random_flip_6/map/while/Identity_2Identity:model_53/data_augmentation/random_flip_6/map/while/add:z:08^model_53/data_augmentation/random_flip_6/map/while/NoOp*
T0*
_output_shapes
: 
=model_53/data_augmentation/random_flip_6/map/while/Identity_3Identitygmodel_53/data_augmentation/random_flip_6/map/while/TensorArrayV2Write/TensorListSetItem:output_handle:08^model_53/data_augmentation/random_flip_6/map/while/NoOp*
T0*
_output_shapes
: ×
7model_53/data_augmentation/random_flip_6/map/while/NoOpNoOp\^model_53/data_augmentation/random_flip_6/map/while/stateful_uniform_full_int/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
;model_53_data_augmentation_random_flip_6_map_while_identityDmodel_53/data_augmentation/random_flip_6/map/while/Identity:output:0"
=model_53_data_augmentation_random_flip_6_map_while_identity_1Fmodel_53/data_augmentation/random_flip_6/map/while/Identity_1:output:0"
=model_53_data_augmentation_random_flip_6_map_while_identity_2Fmodel_53/data_augmentation/random_flip_6/map/while/Identity_2:output:0"
=model_53_data_augmentation_random_flip_6_map_while_identity_3Fmodel_53/data_augmentation/random_flip_6/map/while/Identity_3:output:0"ä
omodel_53_data_augmentation_random_flip_6_map_while_model_53_data_augmentation_random_flip_6_map_strided_slice_1qmodel_53_data_augmentation_random_flip_6_map_while_model_53_data_augmentation_random_flip_6_map_strided_slice_1_0"Î
dmodel_53_data_augmentation_random_flip_6_map_while_stateful_uniform_full_int_rngreadandskip_resourcefmodel_53_data_augmentation_random_flip_6_map_while_stateful_uniform_full_int_rngreadandskip_resource_0"Þ
«model_53_data_augmentation_random_flip_6_map_while_tensorarrayv2read_tensorlistgetitem_model_53_data_augmentation_random_flip_6_map_tensorarrayunstack_tensorlistfromtensor­model_53_data_augmentation_random_flip_6_map_while_tensorarrayv2read_tensorlistgetitem_model_53_data_augmentation_random_flip_6_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : : : 2º
[model_53/data_augmentation/random_flip_6/map/while/stateful_uniform_full_int/RngReadAndSkip[model_53/data_augmentation/random_flip_6/map/while/stateful_uniform_full_int/RngReadAndSkip: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
èg

$random_flip_6_map_while_body_1014401@
<random_flip_6_map_while_random_flip_6_map_while_loop_counter;
7random_flip_6_map_while_random_flip_6_map_strided_slice'
#random_flip_6_map_while_placeholder)
%random_flip_6_map_while_placeholder_1?
;random_flip_6_map_while_random_flip_6_map_strided_slice_1_0{
wrandom_flip_6_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_6_map_tensorarrayunstack_tensorlistfromtensor_0Y
Krandom_flip_6_map_while_stateful_uniform_full_int_rngreadandskip_resource_0:	$
 random_flip_6_map_while_identity&
"random_flip_6_map_while_identity_1&
"random_flip_6_map_while_identity_2&
"random_flip_6_map_while_identity_3=
9random_flip_6_map_while_random_flip_6_map_strided_slice_1y
urandom_flip_6_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_6_map_tensorarrayunstack_tensorlistfromtensorW
Irandom_flip_6_map_while_stateful_uniform_full_int_rngreadandskip_resource:	¢@random_flip_6/map/while/stateful_uniform_full_int/RngReadAndSkip
Irandom_flip_6/map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"K   K      û
;random_flip_6/map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemwrandom_flip_6_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_6_map_tensorarrayunstack_tensorlistfromtensor_0#random_flip_6_map_while_placeholderRrandom_flip_6/map/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*"
_output_shapes
:KK*
element_dtype0
7random_flip_6/map/while/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:
7random_flip_6/map/while/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: ã
6random_flip_6/map/while/stateful_uniform_full_int/ProdProd@random_flip_6/map/while/stateful_uniform_full_int/shape:output:0@random_flip_6/map/while/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: z
8random_flip_6/map/while/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :±
8random_flip_6/map/while/stateful_uniform_full_int/Cast_1Cast?random_flip_6/map/while/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ¼
@random_flip_6/map/while/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkipKrandom_flip_6_map_while_stateful_uniform_full_int_rngreadandskip_resource_0Arandom_flip_6/map/while/stateful_uniform_full_int/Cast/x:output:0<random_flip_6/map/while/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:
Erandom_flip_6/map/while/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Grandom_flip_6/map/while/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Grandom_flip_6/map/while/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
?random_flip_6/map/while/stateful_uniform_full_int/strided_sliceStridedSliceHrandom_flip_6/map/while/stateful_uniform_full_int/RngReadAndSkip:value:0Nrandom_flip_6/map/while/stateful_uniform_full_int/strided_slice/stack:output:0Prandom_flip_6/map/while/stateful_uniform_full_int/strided_slice/stack_1:output:0Prandom_flip_6/map/while/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask¿
9random_flip_6/map/while/stateful_uniform_full_int/BitcastBitcastHrandom_flip_6/map/while/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
Grandom_flip_6/map/while/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
Irandom_flip_6/map/while/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Irandom_flip_6/map/while/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ç
Arandom_flip_6/map/while/stateful_uniform_full_int/strided_slice_1StridedSliceHrandom_flip_6/map/while/stateful_uniform_full_int/RngReadAndSkip:value:0Prandom_flip_6/map/while/stateful_uniform_full_int/strided_slice_1/stack:output:0Rrandom_flip_6/map/while/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Rrandom_flip_6/map/while/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Ã
;random_flip_6/map/while/stateful_uniform_full_int/Bitcast_1BitcastJrandom_flip_6/map/while/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0w
5random_flip_6/map/while/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :
1random_flip_6/map/while/stateful_uniform_full_intStatelessRandomUniformFullIntV2@random_flip_6/map/while/stateful_uniform_full_int/shape:output:0Drandom_flip_6/map/while/stateful_uniform_full_int/Bitcast_1:output:0Brandom_flip_6/map/while/stateful_uniform_full_int/Bitcast:output:0>random_flip_6/map/while/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	l
"random_flip_6/map/while/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R À
random_flip_6/map/while/stackPack:random_flip_6/map/while/stateful_uniform_full_int:output:0+random_flip_6/map/while/zeros_like:output:0*
N*
T0	*
_output_shapes

:|
+random_flip_6/map/while/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ~
-random_flip_6/map/while/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ~
-random_flip_6/map/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ï
%random_flip_6/map/while/strided_sliceStridedSlice&random_flip_6/map/while/stack:output:04random_flip_6/map/while/strided_slice/stack:output:06random_flip_6/map/while/strided_slice/stack_1:output:06random_flip_6/map/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask
Krandom_flip_6/map/while/stateless_random_flip_left_right/control_dependencyIdentityBrandom_flip_6/map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*N
_classD
B@loc:@random_flip_6/map/while/TensorArrayV2Read/TensorListGetItem*"
_output_shapes
:KK
Wrandom_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB 
Urandom_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
Urandom_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?à
nrandom_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter.random_flip_6/map/while/strided_slice:output:0* 
_output_shapes
::°
nrandom_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :é
jrandom_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2`random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0trandom_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0xrandom_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0wrandom_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: ½
Urandom_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/subSub^random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/max:output:0^random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: Í
Urandom_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/mulMulsrandom_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Yrandom_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: ¶
Qrandom_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniformAddV2Yrandom_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0^random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 
?random_flip_6/map/while/stateless_random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
=random_flip_6/map/while/stateless_random_flip_left_right/LessLessUrandom_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform:z:0Hrandom_flip_6/map/while/stateless_random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: É
8random_flip_6/map/while/stateless_random_flip_left_rightStatelessIfArandom_flip_6/map/while/stateless_random_flip_left_right/Less:z:0Trandom_flip_6/map/while/stateless_random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*"
_output_shapes
:KK* 
_read_only_resource_inputs
 *Y
else_branchJRH
Frandom_flip_6_map_while_stateless_random_flip_left_right_false_1014461*!
output_shapes
:KK*X
then_branchIRG
Erandom_flip_6_map_while_stateless_random_flip_left_right_true_1014460½
Arandom_flip_6/map/while/stateless_random_flip_left_right/IdentityIdentityArandom_flip_6/map/while/stateless_random_flip_left_right:output:0*
T0*"
_output_shapes
:KK©
<random_flip_6/map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem%random_flip_6_map_while_placeholder_1#random_flip_6_map_while_placeholderJrandom_flip_6/map/while/stateless_random_flip_left_right/Identity:output:0*
_output_shapes
: *
element_dtype0:éèÒ_
random_flip_6/map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
random_flip_6/map/while/addAddV2#random_flip_6_map_while_placeholder&random_flip_6/map/while/add/y:output:0*
T0*
_output_shapes
: a
random_flip_6/map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :¯
random_flip_6/map/while/add_1AddV2<random_flip_6_map_while_random_flip_6_map_while_loop_counter(random_flip_6/map/while/add_1/y:output:0*
T0*
_output_shapes
: 
 random_flip_6/map/while/IdentityIdentity!random_flip_6/map/while/add_1:z:0^random_flip_6/map/while/NoOp*
T0*
_output_shapes
: §
"random_flip_6/map/while/Identity_1Identity7random_flip_6_map_while_random_flip_6_map_strided_slice^random_flip_6/map/while/NoOp*
T0*
_output_shapes
: 
"random_flip_6/map/while/Identity_2Identityrandom_flip_6/map/while/add:z:0^random_flip_6/map/while/NoOp*
T0*
_output_shapes
: ¼
"random_flip_6/map/while/Identity_3IdentityLrandom_flip_6/map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^random_flip_6/map/while/NoOp*
T0*
_output_shapes
: ¡
random_flip_6/map/while/NoOpNoOpA^random_flip_6/map/while/stateful_uniform_full_int/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "M
 random_flip_6_map_while_identity)random_flip_6/map/while/Identity:output:0"Q
"random_flip_6_map_while_identity_1+random_flip_6/map/while/Identity_1:output:0"Q
"random_flip_6_map_while_identity_2+random_flip_6/map/while/Identity_2:output:0"Q
"random_flip_6_map_while_identity_3+random_flip_6/map/while/Identity_3:output:0"x
9random_flip_6_map_while_random_flip_6_map_strided_slice_1;random_flip_6_map_while_random_flip_6_map_strided_slice_1_0"
Irandom_flip_6_map_while_stateful_uniform_full_int_rngreadandskip_resourceKrandom_flip_6_map_while_stateful_uniform_full_int_rngreadandskip_resource_0"ð
urandom_flip_6_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_6_map_tensorarrayunstack_tensorlistfromtensorwrandom_flip_6_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_6_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : : : 2
@random_flip_6/map/while/stateful_uniform_full_int/RngReadAndSkip@random_flip_6/map/while/stateful_uniform_full_int/RngReadAndSkip: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Ñ
O
3__inference_random_rotation_6_layer_call_fn_1014997

inputs
identityÁ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_random_rotation_6_layer_call_and_return_conditional_losses_1011566h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿKK:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
 
_user_specified_nameinputs
Ï

`model_53_data_augmentation_random_flip_6_map_while_stateless_random_flip_left_right_true_1013185É
Ämodel_53_data_augmentation_random_flip_6_map_while_stateless_random_flip_left_right_reversev2_model_53_data_augmentation_random_flip_6_map_while_stateless_random_flip_left_right_control_dependency`
\model_53_data_augmentation_random_flip_6_map_while_stateless_random_flip_left_right_identity¬
bmodel_53/data_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:Ë
]model_53/data_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/ReverseV2	ReverseV2Ämodel_53_data_augmentation_random_flip_6_map_while_stateless_random_flip_left_right_reversev2_model_53_data_augmentation_random_flip_6_map_while_stateless_random_flip_left_right_control_dependencykmodel_53/data_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*"
_output_shapes
:KKý
\model_53/data_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/IdentityIdentityfmodel_53/data_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/ReverseV2:output:0*
T0*"
_output_shapes
:KK"Å
\model_53_data_augmentation_random_flip_6_map_while_stateless_random_flip_left_right_identityemodel_53/data_augmentation/random_flip_6/map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:KK:( $
"
_output_shapes
:KK
Ç

3__inference_random_rotation_6_layer_call_fn_1015004

inputs
unknown:	
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_random_rotation_6_layer_call_and_return_conditional_losses_1011819w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿKK: 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
 
_user_specified_nameinputs

j
N__inference_max_pooling2d_192_layer_call_and_return_conditional_losses_1012027

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¾
O
3__inference_max_pooling2d_192_layer_call_fn_1014761

inputs
identityÜ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_max_pooling2d_192_layer_call_and_return_conditional_losses_1012027
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


÷
F__inference_dense_121_layer_call_and_return_conditional_losses_1012552

inputs0
matmul_readvariableop_resource:K-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:K*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿK: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
 
_user_specified_nameinputs
»
ê
8map_while_stateless_random_flip_left_right_false_1011908u
qmap_while_stateless_random_flip_left_right_identity_map_while_stateless_random_flip_left_right_control_dependency7
3map_while_stateless_random_flip_left_right_identityß
3map/while/stateless_random_flip_left_right/IdentityIdentityqmap_while_stateless_random_flip_left_right_identity_map_while_stateless_random_flip_left_right_control_dependency*
T0*"
_output_shapes
:KK"s
3map_while_stateless_random_flip_left_right_identity<map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:KK:( $
"
_output_shapes
:KK

j
N__inference_random_rotation_6_layer_call_and_return_conditional_losses_1011566

inputs
identityV
IdentityIdentityinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿKK:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
 
_user_specified_nameinputs
Â

cmodel_53_data_augmentation_random_flip_6_map_1_while_stateless_random_flip_left_right_false_1013550Ì
Çmodel_53_data_augmentation_random_flip_6_map_1_while_stateless_random_flip_left_right_identity_model_53_data_augmentation_random_flip_6_map_1_while_stateless_random_flip_left_right_control_dependencyb
^model_53_data_augmentation_random_flip_6_map_1_while_stateless_random_flip_left_right_identityá
^model_53/data_augmentation/random_flip_6/map_1/while/stateless_random_flip_left_right/IdentityIdentityÇmodel_53_data_augmentation_random_flip_6_map_1_while_stateless_random_flip_left_right_identity_model_53_data_augmentation_random_flip_6_map_1_while_stateless_random_flip_left_right_control_dependency*
T0*"
_output_shapes
:KK"É
^model_53_data_augmentation_random_flip_6_map_1_while_stateless_random_flip_left_right_identitygmodel_53/data_augmentation/random_flip_6/map_1/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:KK:( $
"
_output_shapes
:KK
ð
¡
,__inference_conv2d_255_layer_call_fn_1014775

inputs!
unknown: 
	unknown_0: 
identity¢StatefulPartitionedCallä
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_conv2d_255_layer_call_and_return_conditional_losses_1012097w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


*__inference_model_53_layer_call_fn_1013900

inputs
unknown:	
	unknown_0:	
	unknown_1:	#
	unknown_2:
	unknown_3:#
	unknown_4:
	unknown_5:#
	unknown_6: 
	unknown_7: #
	unknown_8: @
	unknown_9:@

unknown_10:	À2

unknown_11:2

unknown_12:2K

unknown_13:K
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_model_53_layer_call_and_return_conditional_losses_1012333o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:ÿÿÿÿÿÿÿÿÿKK: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
 
_user_specified_nameinputs

f
J__inference_random_zoom_6_layer_call_and_return_conditional_losses_1011572

inputs
identityV
IdentityIdentityinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿKK:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿKK
 
_user_specified_nameinputs
¶
ê
7map_while_stateless_random_flip_left_right_true_1011907v
rmap_while_stateless_random_flip_left_right_reversev2_map_while_stateless_random_flip_left_right_control_dependency7
3map_while_stateless_random_flip_left_right_identity
9map/while/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:¦
4map/while/stateless_random_flip_left_right/ReverseV2	ReverseV2rmap_while_stateless_random_flip_left_right_reversev2_map_while_stateless_random_flip_left_right_control_dependencyBmap/while/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*"
_output_shapes
:KK«
3map/while/stateless_random_flip_left_right/IdentityIdentity=map/while/stateless_random_flip_left_right/ReverseV2:output:0*
T0*"
_output_shapes
:KK"s
3map_while_stateless_random_flip_left_right_identity<map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:KK:( $
"
_output_shapes
:KK


÷
F__inference_dense_120_layer_call_and_return_conditional_losses_1014867

inputs0
matmul_readvariableop_resource:2K-
biasadd_readvariableop_resource:K
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2K*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿKr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:K*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿKV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿKZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿKw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
É

+__inference_dense_119_layer_call_fn_1014836

inputs
unknown:	À2
	unknown_0:2
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_119_layer_call_and_return_conditional_losses_1012140o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs"¿L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ý
serving_defaulté
E
input_659
serving_default_input_65:0ÿÿÿÿÿÿÿÿÿKK
E
input_669
serving_default_input_66:0ÿÿÿÿÿÿÿÿÿKK=
	dense_1210
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:àÇ
Ø
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
"
_tf_keras_input_layer
á
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
layer_with_weights-3
layer-8
layer-9
layer_with_weights-4
layer-10
layer_with_weights-5
layer-11
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses"
_tf_keras_network
¥
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses"
_tf_keras_layer
»
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses

-kernel
.bias"
_tf_keras_layer

/0
01
12
23
34
45
56
67
78
89
910
:11
-12
.13"
trackable_list_wrapper

/0
01
12
23
34
45
56
67
78
89
910
:11
-12
.13"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
;non_trainable_variables

<layers
=metrics
>layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Þ
@trace_0
Atrace_1
Btrace_2
Ctrace_32ó
*__inference_model_54_layer_call_fn_1012590
*__inference_model_54_layer_call_fn_1012973
*__inference_model_54_layer_call_fn_1013013
*__inference_model_54_layer_call_fn_1012792À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 z@trace_0zAtrace_1zBtrace_2zCtrace_3
Ê
Dtrace_0
Etrace_1
Ftrace_2
Gtrace_32ß
E__inference_model_54_layer_call_and_return_conditional_losses_1013109
E__inference_model_54_layer_call_and_return_conditional_losses_1013836
E__inference_model_54_layer_call_and_return_conditional_losses_1012841
E__inference_model_54_layer_call_and_return_conditional_losses_1012899À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zDtrace_0zEtrace_1zFtrace_2zGtrace_3
ØBÕ
"__inference__wrapped_model_1011549input_65input_66"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
I
Hiter
	Idecay
Jlearning_rate
Kmomentum"
	optimizer
,
Lserving_default"
signature_map
"
_tf_keras_input_layer
Ñ
Mlayer-0
Nlayer-1
Olayer-2
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses"
_tf_keras_sequential
Ý
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses

/kernel
0bias
 \_jit_compiled_convolution_op"
_tf_keras_layer
¥
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a__call__
*b&call_and_return_all_conditional_losses"
_tf_keras_layer
Ý
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses

1kernel
2bias
 i_jit_compiled_convolution_op"
_tf_keras_layer
¥
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses"
_tf_keras_layer
Ý
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses

3kernel
4bias
 v_jit_compiled_convolution_op"
_tf_keras_layer
¥
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses"
_tf_keras_layer
á
}	variables
~trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

5kernel
6bias
!_jit_compiled_convolution_op"
_tf_keras_layer
«
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Á
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

7kernel
8bias"
_tf_keras_layer
Á
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

9kernel
:bias"
_tf_keras_layer
v
/0
01
12
23
34
45
56
67
78
89
910
:11"
trackable_list_wrapper
v
/0
01
12
23
34
45
56
67
78
89
910
:11"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
æ
trace_0
trace_1
trace_2
trace_32ó
*__inference_model_53_layer_call_fn_1012191
*__inference_model_53_layer_call_fn_1013865
*__inference_model_53_layer_call_fn_1013900
*__inference_model_53_layer_call_fn_1012401À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 ztrace_0ztrace_1ztrace_2ztrace_3
Ò
trace_0
 trace_1
¡trace_2
¢trace_32ß
E__inference_model_53_layer_call_and_return_conditional_losses_1013951
E__inference_model_53_layer_call_and_return_conditional_losses_1014319
E__inference_model_53_layer_call_and_return_conditional_losses_1012440
E__inference_model_53_layer_call_and_return_conditional_losses_1012485À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 ztrace_0z trace_1z¡trace_2z¢trace_3
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
£non_trainable_variables
¤layers
¥metrics
 ¦layer_regularization_losses
§layer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
Ø
¨trace_0
©trace_12
+__inference_lambda_31_layer_call_fn_1014325
+__inference_lambda_31_layer_call_fn_1014331À
·²³
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 z¨trace_0z©trace_1

ªtrace_0
«trace_12Ó
F__inference_lambda_31_layer_call_and_return_conditional_losses_1014338
F__inference_lambda_31_layer_call_and_return_conditional_losses_1014345À
·²³
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zªtrace_0z«trace_1
.
-0
.1"
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
¬non_trainable_variables
­layers
®metrics
 ¯layer_regularization_losses
°layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
ñ
±trace_02Ò
+__inference_dense_121_layer_call_fn_1014354¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z±trace_0

²trace_02í
F__inference_dense_121_layer_call_and_return_conditional_losses_1014365¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z²trace_0
": K2dense_121/kernel
:2dense_121/bias
+:)2conv2d_253/kernel
:2conv2d_253/bias
+:)2conv2d_254/kernel
:2conv2d_254/bias
+:) 2conv2d_255/kernel
: 2conv2d_255/bias
+:) @2conv2d_256/kernel
:@2conv2d_256/bias
#:!	À22dense_119/kernel
:22dense_119/bias
": 2K2dense_120/kernel
:K2dense_120/bias
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
0
³0
´1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
*__inference_model_54_layer_call_fn_1012590input_65input_66"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
*__inference_model_54_layer_call_fn_1012973inputs/0inputs/1"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
*__inference_model_54_layer_call_fn_1013013inputs/0inputs/1"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
*__inference_model_54_layer_call_fn_1012792input_65input_66"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
£B 
E__inference_model_54_layer_call_and_return_conditional_losses_1013109inputs/0inputs/1"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
£B 
E__inference_model_54_layer_call_and_return_conditional_losses_1013836inputs/0inputs/1"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
£B 
E__inference_model_54_layer_call_and_return_conditional_losses_1012841input_65input_66"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
£B 
E__inference_model_54_layer_call_and_return_conditional_losses_1012899input_65input_66"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
ÕBÒ
%__inference_signature_wrapper_1012939input_65input_66"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ã
µ	variables
¶trainable_variables
·regularization_losses
¸	keras_api
¹__call__
+º&call_and_return_all_conditional_losses
»_random_generator"
_tf_keras_layer
Ã
¼	variables
½trainable_variables
¾regularization_losses
¿	keras_api
À__call__
+Á&call_and_return_all_conditional_losses
Â_random_generator"
_tf_keras_layer
Ã
Ã	variables
Ätrainable_variables
Åregularization_losses
Æ	keras_api
Ç__call__
+È&call_and_return_all_conditional_losses
É_random_generator"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ênon_trainable_variables
Ëlayers
Ìmetrics
 Ílayer_regularization_losses
Îlayer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object

Ïtrace_0
Ðtrace_1
Ñtrace_2
Òtrace_32
3__inference_data_augmentation_layer_call_fn_1011578
3__inference_data_augmentation_layer_call_fn_1014370
3__inference_data_augmentation_layer_call_fn_1014381
3__inference_data_augmentation_layer_call_fn_1011986À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zÏtrace_0zÐtrace_1zÑtrace_2zÒtrace_3
ö
Ótrace_0
Ôtrace_1
Õtrace_2
Ötrace_32
N__inference_data_augmentation_layer_call_and_return_conditional_losses_1014385
N__inference_data_augmentation_layer_call_and_return_conditional_losses_1014706
N__inference_data_augmentation_layer_call_and_return_conditional_losses_1011993
N__inference_data_augmentation_layer_call_and_return_conditional_losses_1012006À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zÓtrace_0zÔtrace_1zÕtrace_2zÖtrace_3
.
/0
01"
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
²
×non_trainable_variables
Ølayers
Ùmetrics
 Úlayer_regularization_losses
Ûlayer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
ò
Ütrace_02Ó
,__inference_conv2d_253_layer_call_fn_1014715¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÜtrace_0

Ýtrace_02î
G__inference_conv2d_253_layer_call_and_return_conditional_losses_1014726¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÝtrace_0
´2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
Þnon_trainable_variables
ßlayers
àmetrics
 álayer_regularization_losses
âlayer_metrics
]	variables
^trainable_variables
_regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses"
_generic_user_object
ù
ãtrace_02Ú
3__inference_max_pooling2d_191_layer_call_fn_1014731¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zãtrace_0

ätrace_02õ
N__inference_max_pooling2d_191_layer_call_and_return_conditional_losses_1014736¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zätrace_0
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
²
ånon_trainable_variables
ælayers
çmetrics
 èlayer_regularization_losses
élayer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
ò
êtrace_02Ó
,__inference_conv2d_254_layer_call_fn_1014745¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zêtrace_0

ëtrace_02î
G__inference_conv2d_254_layer_call_and_return_conditional_losses_1014756¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zëtrace_0
´2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
ìnon_trainable_variables
ílayers
îmetrics
 ïlayer_regularization_losses
ðlayer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses"
_generic_user_object
ù
ñtrace_02Ú
3__inference_max_pooling2d_192_layer_call_fn_1014761¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zñtrace_0

òtrace_02õ
N__inference_max_pooling2d_192_layer_call_and_return_conditional_losses_1014766¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zòtrace_0
.
30
41"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
²
ónon_trainable_variables
ôlayers
õmetrics
 ölayer_regularization_losses
÷layer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
ò
øtrace_02Ó
,__inference_conv2d_255_layer_call_fn_1014775¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zøtrace_0

ùtrace_02î
G__inference_conv2d_255_layer_call_and_return_conditional_losses_1014786¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zùtrace_0
´2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
únon_trainable_variables
ûlayers
ümetrics
 ýlayer_regularization_losses
þlayer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
ù
ÿtrace_02Ú
3__inference_max_pooling2d_193_layer_call_fn_1014791¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÿtrace_0

trace_02õ
N__inference_max_pooling2d_193_layer_call_and_return_conditional_losses_1014796¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0
.
50
61"
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
}	variables
~trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ò
trace_02Ó
,__inference_conv2d_256_layer_call_fn_1014805¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0

trace_02î
G__inference_conv2d_256_layer_call_and_return_conditional_losses_1014816¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0
´2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ò
trace_02Ó
,__inference_flatten_61_layer_call_fn_1014821¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0

trace_02î
G__inference_flatten_61_layer_call_and_return_conditional_losses_1014827¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0
.
70
81"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ñ
trace_02Ò
+__inference_dense_119_layer_call_fn_1014836¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0

trace_02í
F__inference_dense_119_layer_call_and_return_conditional_losses_1014847¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0
.
90
:1"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ñ
trace_02Ò
+__inference_dense_120_layer_call_fn_1014856¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0

trace_02í
F__inference_dense_120_layer_call_and_return_conditional_losses_1014867¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0
 "
trackable_list_wrapper
v
0
1
2
3
4
5
6
7
8
9
10
11"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
Bý
*__inference_model_53_layer_call_fn_1012191
base_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
üBù
*__inference_model_53_layer_call_fn_1013865inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
üBù
*__inference_model_53_layer_call_fn_1013900inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Bý
*__inference_model_53_layer_call_fn_1012401
base_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
E__inference_model_53_layer_call_and_return_conditional_losses_1013951inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
E__inference_model_53_layer_call_and_return_conditional_losses_1014319inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
E__inference_model_53_layer_call_and_return_conditional_losses_1012440
base_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
E__inference_model_53_layer_call_and_return_conditional_losses_1012485
base_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
+__inference_lambda_31_layer_call_fn_1014325inputs/0inputs/1"À
·²³
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
+__inference_lambda_31_layer_call_fn_1014331inputs/0inputs/1"À
·²³
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¤B¡
F__inference_lambda_31_layer_call_and_return_conditional_losses_1014338inputs/0inputs/1"À
·²³
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¤B¡
F__inference_lambda_31_layer_call_and_return_conditional_losses_1014345inputs/0inputs/1"À
·²³
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ßBÜ
+__inference_dense_121_layer_call_fn_1014354inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
úB÷
F__inference_dense_121_layer_call_and_return_conditional_losses_1014365inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
R
	variables
	keras_api

total

 count"
_tf_keras_metric
c
¡	variables
¢	keras_api

£total

¤count
¥
_fn_kwargs"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¦non_trainable_variables
§layers
¨metrics
 ©layer_regularization_losses
ªlayer_metrics
µ	variables
¶trainable_variables
·regularization_losses
¹__call__
+º&call_and_return_all_conditional_losses
'º"call_and_return_conditional_losses"
_generic_user_object
Ô
«trace_0
¬trace_12
/__inference_random_flip_6_layer_call_fn_1014872
/__inference_random_flip_6_layer_call_fn_1014879´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 z«trace_0z¬trace_1

­trace_0
®trace_12Ï
J__inference_random_flip_6_layer_call_and_return_conditional_losses_1014883
J__inference_random_flip_6_layer_call_and_return_conditional_losses_1014992´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 z­trace_0z®trace_1
/
¯
_generator"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
°non_trainable_variables
±layers
²metrics
 ³layer_regularization_losses
´layer_metrics
¼	variables
½trainable_variables
¾regularization_losses
À__call__
+Á&call_and_return_all_conditional_losses
'Á"call_and_return_conditional_losses"
_generic_user_object
Ü
µtrace_0
¶trace_12¡
3__inference_random_rotation_6_layer_call_fn_1014997
3__inference_random_rotation_6_layer_call_fn_1015004´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zµtrace_0z¶trace_1

·trace_0
¸trace_12×
N__inference_random_rotation_6_layer_call_and_return_conditional_losses_1015008
N__inference_random_rotation_6_layer_call_and_return_conditional_losses_1015126´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 z·trace_0z¸trace_1
/
¹
_generator"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ºnon_trainable_variables
»layers
¼metrics
 ½layer_regularization_losses
¾layer_metrics
Ã	variables
Ätrainable_variables
Åregularization_losses
Ç__call__
+È&call_and_return_all_conditional_losses
'È"call_and_return_conditional_losses"
_generic_user_object
Ô
¿trace_0
Àtrace_12
/__inference_random_zoom_6_layer_call_fn_1015131
/__inference_random_zoom_6_layer_call_fn_1015138´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 z¿trace_0zÀtrace_1

Átrace_0
Âtrace_12Ï
J__inference_random_zoom_6_layer_call_and_return_conditional_losses_1015142
J__inference_random_zoom_6_layer_call_and_return_conditional_losses_1015244´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zÁtrace_0zÂtrace_1
/
Ã
_generator"
_generic_user_object
 "
trackable_list_wrapper
5
M0
N1
O2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
3__inference_data_augmentation_layer_call_fn_1011578random_flip_6_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
3__inference_data_augmentation_layer_call_fn_1014370inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
3__inference_data_augmentation_layer_call_fn_1014381inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
3__inference_data_augmentation_layer_call_fn_1011986random_flip_6_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 B
N__inference_data_augmentation_layer_call_and_return_conditional_losses_1014385inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 B
N__inference_data_augmentation_layer_call_and_return_conditional_losses_1014706inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
­Bª
N__inference_data_augmentation_layer_call_and_return_conditional_losses_1011993random_flip_6_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
­Bª
N__inference_data_augmentation_layer_call_and_return_conditional_losses_1012006random_flip_6_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
àBÝ
,__inference_conv2d_253_layer_call_fn_1014715inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ûBø
G__inference_conv2d_253_layer_call_and_return_conditional_losses_1014726inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
çBä
3__inference_max_pooling2d_191_layer_call_fn_1014731inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Bÿ
N__inference_max_pooling2d_191_layer_call_and_return_conditional_losses_1014736inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
àBÝ
,__inference_conv2d_254_layer_call_fn_1014745inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ûBø
G__inference_conv2d_254_layer_call_and_return_conditional_losses_1014756inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
çBä
3__inference_max_pooling2d_192_layer_call_fn_1014761inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Bÿ
N__inference_max_pooling2d_192_layer_call_and_return_conditional_losses_1014766inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
àBÝ
,__inference_conv2d_255_layer_call_fn_1014775inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ûBø
G__inference_conv2d_255_layer_call_and_return_conditional_losses_1014786inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
çBä
3__inference_max_pooling2d_193_layer_call_fn_1014791inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Bÿ
N__inference_max_pooling2d_193_layer_call_and_return_conditional_losses_1014796inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
àBÝ
,__inference_conv2d_256_layer_call_fn_1014805inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ûBø
G__inference_conv2d_256_layer_call_and_return_conditional_losses_1014816inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
àBÝ
,__inference_flatten_61_layer_call_fn_1014821inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ûBø
G__inference_flatten_61_layer_call_and_return_conditional_losses_1014827inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ßBÜ
+__inference_dense_119_layer_call_fn_1014836inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
úB÷
F__inference_dense_119_layer_call_and_return_conditional_losses_1014847inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ßBÜ
+__inference_dense_120_layer_call_fn_1014856inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
úB÷
F__inference_dense_120_layer_call_and_return_conditional_losses_1014867inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
0
0
 1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
0
£0
¤1"
trackable_list_wrapper
.
¡	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
õBò
/__inference_random_flip_6_layer_call_fn_1014872inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
õBò
/__inference_random_flip_6_layer_call_fn_1014879inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
J__inference_random_flip_6_layer_call_and_return_conditional_losses_1014883inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
J__inference_random_flip_6_layer_call_and_return_conditional_losses_1014992inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
/
Ä
_state_var"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ùBö
3__inference_random_rotation_6_layer_call_fn_1014997inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ùBö
3__inference_random_rotation_6_layer_call_fn_1015004inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
N__inference_random_rotation_6_layer_call_and_return_conditional_losses_1015008inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
N__inference_random_rotation_6_layer_call_and_return_conditional_losses_1015126inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
/
Å
_state_var"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
õBò
/__inference_random_zoom_6_layer_call_fn_1015131inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
õBò
/__inference_random_zoom_6_layer_call_fn_1015138inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
J__inference_random_zoom_6_layer_call_and_return_conditional_losses_1015142inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
J__inference_random_zoom_6_layer_call_and_return_conditional_losses_1015244inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
/
Æ
_state_var"
_generic_user_object
:	2StateVar
:	2StateVar
:	2StateVarÚ
"__inference__wrapped_model_1011549³/0123456789:-.j¢g
`¢]
[X
*'
input_65ÿÿÿÿÿÿÿÿÿKK
*'
input_66ÿÿÿÿÿÿÿÿÿKK
ª "5ª2
0
	dense_121# 
	dense_121ÿÿÿÿÿÿÿÿÿ·
G__inference_conv2d_253_layer_call_and_return_conditional_losses_1014726l/07¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿKK
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿGG
 
,__inference_conv2d_253_layer_call_fn_1014715_/07¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿKK
ª " ÿÿÿÿÿÿÿÿÿGG·
G__inference_conv2d_254_layer_call_and_return_conditional_losses_1014756l127¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ##
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ!!
 
,__inference_conv2d_254_layer_call_fn_1014745_127¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ##
ª " ÿÿÿÿÿÿÿÿÿ!!·
G__inference_conv2d_255_layer_call_and_return_conditional_losses_1014786l347¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ 
 
,__inference_conv2d_255_layer_call_fn_1014775_347¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª " ÿÿÿÿÿÿÿÿÿ ·
G__inference_conv2d_256_layer_call_and_return_conditional_losses_1014816l567¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@
 
,__inference_conv2d_256_layer_call_fn_1014805_567¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ 
ª " ÿÿÿÿÿÿÿÿÿ@Ï
N__inference_data_augmentation_layer_call_and_return_conditional_losses_1011993}L¢I
B¢?
52
random_flip_6_inputÿÿÿÿÿÿÿÿÿKK
p 

 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿKK
 Ø
N__inference_data_augmentation_layer_call_and_return_conditional_losses_1012006ÄÅÆL¢I
B¢?
52
random_flip_6_inputÿÿÿÿÿÿÿÿÿKK
p

 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿKK
 Â
N__inference_data_augmentation_layer_call_and_return_conditional_losses_1014385p?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿKK
p 

 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿKK
 Ê
N__inference_data_augmentation_layer_call_and_return_conditional_losses_1014706xÄÅÆ?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿKK
p

 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿKK
 §
3__inference_data_augmentation_layer_call_fn_1011578pL¢I
B¢?
52
random_flip_6_inputÿÿÿÿÿÿÿÿÿKK
p 

 
ª " ÿÿÿÿÿÿÿÿÿKK¯
3__inference_data_augmentation_layer_call_fn_1011986xÄÅÆL¢I
B¢?
52
random_flip_6_inputÿÿÿÿÿÿÿÿÿKK
p

 
ª " ÿÿÿÿÿÿÿÿÿKK
3__inference_data_augmentation_layer_call_fn_1014370c?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿKK
p 

 
ª " ÿÿÿÿÿÿÿÿÿKK¢
3__inference_data_augmentation_layer_call_fn_1014381kÄÅÆ?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿKK
p

 
ª " ÿÿÿÿÿÿÿÿÿKK§
F__inference_dense_119_layer_call_and_return_conditional_losses_1014847]780¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÀ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ2
 
+__inference_dense_119_layer_call_fn_1014836P780¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÀ
ª "ÿÿÿÿÿÿÿÿÿ2¦
F__inference_dense_120_layer_call_and_return_conditional_losses_1014867\9:/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ2
ª "%¢"

0ÿÿÿÿÿÿÿÿÿK
 ~
+__inference_dense_120_layer_call_fn_1014856O9:/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ2
ª "ÿÿÿÿÿÿÿÿÿK¦
F__inference_dense_121_layer_call_and_return_conditional_losses_1014365\-./¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿK
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ~
+__inference_dense_121_layer_call_fn_1014354O-./¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿK
ª "ÿÿÿÿÿÿÿÿÿ¬
G__inference_flatten_61_layer_call_and_return_conditional_losses_1014827a7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÀ
 
,__inference_flatten_61_layer_call_fn_1014821T7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿÀÖ
F__inference_lambda_31_layer_call_and_return_conditional_losses_1014338b¢_
X¢U
KH
"
inputs/0ÿÿÿÿÿÿÿÿÿK
"
inputs/1ÿÿÿÿÿÿÿÿÿK

 
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿK
 Ö
F__inference_lambda_31_layer_call_and_return_conditional_losses_1014345b¢_
X¢U
KH
"
inputs/0ÿÿÿÿÿÿÿÿÿK
"
inputs/1ÿÿÿÿÿÿÿÿÿK

 
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿK
 ­
+__inference_lambda_31_layer_call_fn_1014325~b¢_
X¢U
KH
"
inputs/0ÿÿÿÿÿÿÿÿÿK
"
inputs/1ÿÿÿÿÿÿÿÿÿK

 
p 
ª "ÿÿÿÿÿÿÿÿÿK­
+__inference_lambda_31_layer_call_fn_1014331~b¢_
X¢U
KH
"
inputs/0ÿÿÿÿÿÿÿÿÿK
"
inputs/1ÿÿÿÿÿÿÿÿÿK

 
p
ª "ÿÿÿÿÿÿÿÿÿKñ
N__inference_max_pooling2d_191_layer_call_and_return_conditional_losses_1014736R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 É
3__inference_max_pooling2d_191_layer_call_fn_1014731R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿñ
N__inference_max_pooling2d_192_layer_call_and_return_conditional_losses_1014766R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 É
3__inference_max_pooling2d_192_layer_call_fn_1014761R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿñ
N__inference_max_pooling2d_193_layer_call_and_return_conditional_losses_1014796R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 É
3__inference_max_pooling2d_193_layer_call_fn_1014791R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÃ
E__inference_model_53_layer_call_and_return_conditional_losses_1012440z/0123456789:C¢@
9¢6
,)

base_inputÿÿÿÿÿÿÿÿÿKK
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿK
 Ê
E__inference_model_53_layer_call_and_return_conditional_losses_1012485ÄÅÆ/0123456789:C¢@
9¢6
,)

base_inputÿÿÿÿÿÿÿÿÿKK
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿK
 ¿
E__inference_model_53_layer_call_and_return_conditional_losses_1013951v/0123456789:?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿKK
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿK
 Å
E__inference_model_53_layer_call_and_return_conditional_losses_1014319|ÄÅÆ/0123456789:?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿKK
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿK
 
*__inference_model_53_layer_call_fn_1012191m/0123456789:C¢@
9¢6
,)

base_inputÿÿÿÿÿÿÿÿÿKK
p 

 
ª "ÿÿÿÿÿÿÿÿÿK¡
*__inference_model_53_layer_call_fn_1012401sÄÅÆ/0123456789:C¢@
9¢6
,)

base_inputÿÿÿÿÿÿÿÿÿKK
p

 
ª "ÿÿÿÿÿÿÿÿÿK
*__inference_model_53_layer_call_fn_1013865i/0123456789:?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿKK
p 

 
ª "ÿÿÿÿÿÿÿÿÿK
*__inference_model_53_layer_call_fn_1013900oÄÅÆ/0123456789:?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿKK
p

 
ª "ÿÿÿÿÿÿÿÿÿKõ
E__inference_model_54_layer_call_and_return_conditional_losses_1012841«/0123456789:-.r¢o
h¢e
[X
*'
input_65ÿÿÿÿÿÿÿÿÿKK
*'
input_66ÿÿÿÿÿÿÿÿÿKK
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 û
E__inference_model_54_layer_call_and_return_conditional_losses_1012899±ÄÅÆ/0123456789:-.r¢o
h¢e
[X
*'
input_65ÿÿÿÿÿÿÿÿÿKK
*'
input_66ÿÿÿÿÿÿÿÿÿKK
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 õ
E__inference_model_54_layer_call_and_return_conditional_losses_1013109«/0123456789:-.r¢o
h¢e
[X
*'
inputs/0ÿÿÿÿÿÿÿÿÿKK
*'
inputs/1ÿÿÿÿÿÿÿÿÿKK
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 û
E__inference_model_54_layer_call_and_return_conditional_losses_1013836±ÄÅÆ/0123456789:-.r¢o
h¢e
[X
*'
inputs/0ÿÿÿÿÿÿÿÿÿKK
*'
inputs/1ÿÿÿÿÿÿÿÿÿKK
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Í
*__inference_model_54_layer_call_fn_1012590/0123456789:-.r¢o
h¢e
[X
*'
input_65ÿÿÿÿÿÿÿÿÿKK
*'
input_66ÿÿÿÿÿÿÿÿÿKK
p 

 
ª "ÿÿÿÿÿÿÿÿÿÓ
*__inference_model_54_layer_call_fn_1012792¤ÄÅÆ/0123456789:-.r¢o
h¢e
[X
*'
input_65ÿÿÿÿÿÿÿÿÿKK
*'
input_66ÿÿÿÿÿÿÿÿÿKK
p

 
ª "ÿÿÿÿÿÿÿÿÿÍ
*__inference_model_54_layer_call_fn_1012973/0123456789:-.r¢o
h¢e
[X
*'
inputs/0ÿÿÿÿÿÿÿÿÿKK
*'
inputs/1ÿÿÿÿÿÿÿÿÿKK
p 

 
ª "ÿÿÿÿÿÿÿÿÿÓ
*__inference_model_54_layer_call_fn_1013013¤ÄÅÆ/0123456789:-.r¢o
h¢e
[X
*'
inputs/0ÿÿÿÿÿÿÿÿÿKK
*'
inputs/1ÿÿÿÿÿÿÿÿÿKK
p

 
ª "ÿÿÿÿÿÿÿÿÿº
J__inference_random_flip_6_layer_call_and_return_conditional_losses_1014883l;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿKK
p 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿKK
 ¾
J__inference_random_flip_6_layer_call_and_return_conditional_losses_1014992pÄ;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿKK
p
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿKK
 
/__inference_random_flip_6_layer_call_fn_1014872_;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿKK
p 
ª " ÿÿÿÿÿÿÿÿÿKK
/__inference_random_flip_6_layer_call_fn_1014879cÄ;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿKK
p
ª " ÿÿÿÿÿÿÿÿÿKK¾
N__inference_random_rotation_6_layer_call_and_return_conditional_losses_1015008l;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿKK
p 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿKK
 Â
N__inference_random_rotation_6_layer_call_and_return_conditional_losses_1015126pÅ;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿKK
p
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿKK
 
3__inference_random_rotation_6_layer_call_fn_1014997_;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿKK
p 
ª " ÿÿÿÿÿÿÿÿÿKK
3__inference_random_rotation_6_layer_call_fn_1015004cÅ;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿKK
p
ª " ÿÿÿÿÿÿÿÿÿKKº
J__inference_random_zoom_6_layer_call_and_return_conditional_losses_1015142l;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿKK
p 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿKK
 ¾
J__inference_random_zoom_6_layer_call_and_return_conditional_losses_1015244pÆ;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿKK
p
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿKK
 
/__inference_random_zoom_6_layer_call_fn_1015131_;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿKK
p 
ª " ÿÿÿÿÿÿÿÿÿKK
/__inference_random_zoom_6_layer_call_fn_1015138cÆ;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿKK
p
ª " ÿÿÿÿÿÿÿÿÿKKð
%__inference_signature_wrapper_1012939Æ/0123456789:-.}¢z
¢ 
sªp
6
input_65*'
input_65ÿÿÿÿÿÿÿÿÿKK
6
input_66*'
input_66ÿÿÿÿÿÿÿÿÿKK"5ª2
0
	dense_121# 
	dense_121ÿÿÿÿÿÿÿÿÿ