??+
??
B
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
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
?
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
?
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%??8"&
exponential_avg_factorfloat%  ??";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
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
?
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
:
Maximum
x"T
y"T
z"T"
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
dtypetype?
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
-
Sqrt
x"T
y"T"
Ttype:

2
?
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
executor_typestring ?
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
;
Sub
x"T
y"T
z"T"
Ttype:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.12v2.4.0-49-g85c8b2a817f8??%
?
conv2D_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2D_1/kernel
{
#conv2D_1/kernel/Read/ReadVariableOpReadVariableOpconv2D_1/kernel*&
_output_shapes
:@*
dtype0
r
conv2D_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2D_1/bias
k
!conv2D_1/bias/Read/ReadVariableOpReadVariableOpconv2D_1/bias*
_output_shapes
:@*
dtype0
z
BatchNorm_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameBatchNorm_1/gamma
s
%BatchNorm_1/gamma/Read/ReadVariableOpReadVariableOpBatchNorm_1/gamma*
_output_shapes
:@*
dtype0
x
BatchNorm_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameBatchNorm_1/beta
q
$BatchNorm_1/beta/Read/ReadVariableOpReadVariableOpBatchNorm_1/beta*
_output_shapes
:@*
dtype0
?
BatchNorm_1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameBatchNorm_1/moving_mean

+BatchNorm_1/moving_mean/Read/ReadVariableOpReadVariableOpBatchNorm_1/moving_mean*
_output_shapes
:@*
dtype0
?
BatchNorm_1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_nameBatchNorm_1/moving_variance
?
/BatchNorm_1/moving_variance/Read/ReadVariableOpReadVariableOpBatchNorm_1/moving_variance*
_output_shapes
:@*
dtype0
?
conv2D_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?* 
shared_nameconv2D_2/kernel
|
#conv2D_2/kernel/Read/ReadVariableOpReadVariableOpconv2D_2/kernel*'
_output_shapes
:@?*
dtype0
s
conv2D_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2D_2/bias
l
!conv2D_2/bias/Read/ReadVariableOpReadVariableOpconv2D_2/bias*
_output_shapes	
:?*
dtype0
{
BatchNorm_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameBatchNorm_2/gamma
t
%BatchNorm_2/gamma/Read/ReadVariableOpReadVariableOpBatchNorm_2/gamma*
_output_shapes	
:?*
dtype0
y
BatchNorm_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*!
shared_nameBatchNorm_2/beta
r
$BatchNorm_2/beta/Read/ReadVariableOpReadVariableOpBatchNorm_2/beta*
_output_shapes	
:?*
dtype0
?
BatchNorm_2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_nameBatchNorm_2/moving_mean
?
+BatchNorm_2/moving_mean/Read/ReadVariableOpReadVariableOpBatchNorm_2/moving_mean*
_output_shapes	
:?*
dtype0
?
BatchNorm_2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_nameBatchNorm_2/moving_variance
?
/BatchNorm_2/moving_variance/Read/ReadVariableOpReadVariableOpBatchNorm_2/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2D_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??* 
shared_nameconv2D_3/kernel
}
#conv2D_3/kernel/Read/ReadVariableOpReadVariableOpconv2D_3/kernel*(
_output_shapes
:??*
dtype0
s
conv2D_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2D_3/bias
l
!conv2D_3/bias/Read/ReadVariableOpReadVariableOpconv2D_3/bias*
_output_shapes	
:?*
dtype0
?
conv2D_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??* 
shared_nameconv2D_4/kernel
}
#conv2D_4/kernel/Read/ReadVariableOpReadVariableOpconv2D_4/kernel*(
_output_shapes
:??*
dtype0
s
conv2D_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2D_4/bias
l
!conv2D_4/bias/Read/ReadVariableOpReadVariableOpconv2D_4/bias*
_output_shapes	
:?*
dtype0
?
conv2D_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??* 
shared_nameconv2D_5/kernel
}
#conv2D_5/kernel/Read/ReadVariableOpReadVariableOpconv2D_5/kernel*(
_output_shapes
:??*
dtype0
s
conv2D_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2D_5/bias
l
!conv2D_5/bias/Read/ReadVariableOpReadVariableOpconv2D_5/bias*
_output_shapes	
:?*
dtype0
{
Dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*
shared_nameDense_6/kernel
t
"Dense_6/kernel/Read/ReadVariableOpReadVariableOpDense_6/kernel*!
_output_shapes
:???*
dtype0
q
Dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameDense_6/bias
j
 Dense_6/bias/Read/ReadVariableOpReadVariableOpDense_6/bias*
_output_shapes	
:?*
dtype0
z
Dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_nameDense_7/kernel
s
"Dense_7/kernel/Read/ReadVariableOpReadVariableOpDense_7/kernel* 
_output_shapes
:
??*
dtype0
q
Dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameDense_7/bias
j
 Dense_7/bias/Read/ReadVariableOpReadVariableOpDense_7/bias*
_output_shapes	
:?*
dtype0
y
Dense_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*
shared_nameDense_8/kernel
r
"Dense_8/kernel/Read/ReadVariableOpReadVariableOpDense_8/kernel*
_output_shapes
:	?@*
dtype0
p
Dense_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameDense_8/bias
i
 Dense_8/bias/Read/ReadVariableOpReadVariableOpDense_8/bias*
_output_shapes
:@*
dtype0
x
softmax/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namesoftmax/kernel
q
"softmax/kernel/Read/ReadVariableOpReadVariableOpsoftmax/kernel*
_output_shapes

:@*
dtype0
p
softmax/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namesoftmax/bias
i
 softmax/bias/Read/ReadVariableOpReadVariableOpsoftmax/bias*
_output_shapes
:*
dtype0
\
iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameiter
U
iter/Read/ReadVariableOpReadVariableOpiter*
_output_shapes
: *
dtype0	
^
decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedecay
W
decay/Read/ReadVariableOpReadVariableOpdecay*
_output_shapes
: *
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
d
momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
momentum
]
momentum/Read/ReadVariableOpReadVariableOpmomentum*
_output_shapes
: *
dtype0
?
normalization_4/meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_namenormalization_4/mean
y
(normalization_4/mean/Read/ReadVariableOpReadVariableOpnormalization_4/mean*
_output_shapes
:*
dtype0
?
normalization_4/varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namenormalization_4/variance
?
,normalization_4/variance/Read/ReadVariableOpReadVariableOpnormalization_4/variance*
_output_shapes
:*
dtype0
~
normalization_4/countVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *&
shared_namenormalization_4/count
w
)normalization_4/count/Read/ReadVariableOpReadVariableOpnormalization_4/count*
_output_shapes
: *
dtype0	
h
VariableVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
Variable
a
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
:*
dtype0	
l

Variable_1VarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
Variable_1
e
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
:*
dtype0	
l

Variable_2VarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
Variable_2
e
Variable_2/Read/ReadVariableOpReadVariableOp
Variable_2*
_output_shapes
:*
dtype0	
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
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0

NoOpNoOp
?l
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?l
value?lB?l B?l
?
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

layer_with_weights-4

layer-9
layer-10
layer_with_weights-5
layer-11
layer-12
layer_with_weights-6
layer-13
layer-14
layer_with_weights-7
layer-15
layer-16
layer-17
layer-18
layer_with_weights-8
layer-19
layer-20
layer_with_weights-9
layer-21
layer-22
layer_with_weights-10
layer-23
layer-24
layer_with_weights-11
layer-25
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api
 
signatures
 
?
!layer_with_weights-0
!layer-0
"layer-1
#layer-2
$layer-3
%	variables
&regularization_losses
'trainable_variables
(	keras_api

)	keras_api
h

*kernel
+bias
,	variables
-regularization_losses
.trainable_variables
/	keras_api
R
0	variables
1regularization_losses
2trainable_variables
3	keras_api
?
4axis
	5gamma
6beta
7moving_mean
8moving_variance
9	variables
:regularization_losses
;trainable_variables
<	keras_api
R
=	variables
>regularization_losses
?trainable_variables
@	keras_api
h

Akernel
Bbias
C	variables
Dregularization_losses
Etrainable_variables
F	keras_api
R
G	variables
Hregularization_losses
Itrainable_variables
J	keras_api
?
Kaxis
	Lgamma
Mbeta
Nmoving_mean
Omoving_variance
P	variables
Qregularization_losses
Rtrainable_variables
S	keras_api
R
T	variables
Uregularization_losses
Vtrainable_variables
W	keras_api
h

Xkernel
Ybias
Z	variables
[regularization_losses
\trainable_variables
]	keras_api
R
^	variables
_regularization_losses
`trainable_variables
a	keras_api
h

bkernel
cbias
d	variables
eregularization_losses
ftrainable_variables
g	keras_api
R
h	variables
iregularization_losses
jtrainable_variables
k	keras_api
h

lkernel
mbias
n	variables
oregularization_losses
ptrainable_variables
q	keras_api
R
r	variables
sregularization_losses
ttrainable_variables
u	keras_api
R
v	variables
wregularization_losses
xtrainable_variables
y	keras_api
R
z	variables
{regularization_losses
|trainable_variables
}	keras_api
l

~kernel
bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
n
?kernel
	?bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
n
?kernel
	?bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
n
?kernel
	?bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
:
	?iter

?decay
?learning_rate
?momentum
?
?0
?1
?2
*3
+4
55
66
77
88
A9
B10
L11
M12
N13
O14
X15
Y16
b17
c18
l19
m20
~21
22
?23
?24
?25
?26
?27
?28
 
?
*0
+1
52
63
A4
B5
L6
M7
X8
Y9
b10
c11
l12
m13
~14
15
?16
?17
?18
?19
?20
?21
?
?layers
?metrics
?layer_metrics
	variables
 ?layer_regularization_losses
?non_trainable_variables
regularization_losses
trainable_variables
 
c
?state_variables
?_broadcast_shape
	?mean
?variance

?count
?	keras_api

	?_rng
?	keras_api

	?_rng
?	keras_api

	?_rng
?	keras_api

?0
?1
?2
 
 
?
?layers
?metrics
?layer_metrics
%	variables
 ?layer_regularization_losses
?non_trainable_variables
&regularization_losses
'trainable_variables
 
[Y
VARIABLE_VALUEconv2D_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2D_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

*0
+1
 

*0
+1
?
?layers
?metrics
?layer_metrics
,	variables
 ?layer_regularization_losses
?non_trainable_variables
-regularization_losses
.trainable_variables
 
 
 
?
?layers
?metrics
?layer_metrics
0	variables
 ?layer_regularization_losses
?non_trainable_variables
1regularization_losses
2trainable_variables
 
\Z
VARIABLE_VALUEBatchNorm_1/gamma5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEBatchNorm_1/beta4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUEBatchNorm_1/moving_mean;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEBatchNorm_1/moving_variance?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

50
61
72
83
 

50
61
?
?layers
?metrics
?layer_metrics
9	variables
 ?layer_regularization_losses
?non_trainable_variables
:regularization_losses
;trainable_variables
 
 
 
?
?layers
?metrics
?layer_metrics
=	variables
 ?layer_regularization_losses
?non_trainable_variables
>regularization_losses
?trainable_variables
[Y
VARIABLE_VALUEconv2D_2/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2D_2/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

A0
B1
 

A0
B1
?
?layers
?metrics
?layer_metrics
C	variables
 ?layer_regularization_losses
?non_trainable_variables
Dregularization_losses
Etrainable_variables
 
 
 
?
?layers
?metrics
?layer_metrics
G	variables
 ?layer_regularization_losses
?non_trainable_variables
Hregularization_losses
Itrainable_variables
 
\Z
VARIABLE_VALUEBatchNorm_2/gamma5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEBatchNorm_2/beta4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUEBatchNorm_2/moving_mean;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEBatchNorm_2/moving_variance?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

L0
M1
N2
O3
 

L0
M1
?
?layers
?metrics
?layer_metrics
P	variables
 ?layer_regularization_losses
?non_trainable_variables
Qregularization_losses
Rtrainable_variables
 
 
 
?
?layers
?metrics
?layer_metrics
T	variables
 ?layer_regularization_losses
?non_trainable_variables
Uregularization_losses
Vtrainable_variables
[Y
VARIABLE_VALUEconv2D_3/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2D_3/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

X0
Y1
 

X0
Y1
?
?layers
?metrics
?layer_metrics
Z	variables
 ?layer_regularization_losses
?non_trainable_variables
[regularization_losses
\trainable_variables
 
 
 
?
?layers
?metrics
?layer_metrics
^	variables
 ?layer_regularization_losses
?non_trainable_variables
_regularization_losses
`trainable_variables
[Y
VARIABLE_VALUEconv2D_4/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2D_4/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

b0
c1
 

b0
c1
?
?layers
?metrics
?layer_metrics
d	variables
 ?layer_regularization_losses
?non_trainable_variables
eregularization_losses
ftrainable_variables
 
 
 
?
?layers
?metrics
?layer_metrics
h	variables
 ?layer_regularization_losses
?non_trainable_variables
iregularization_losses
jtrainable_variables
[Y
VARIABLE_VALUEconv2D_5/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2D_5/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE

l0
m1
 

l0
m1
?
?layers
?metrics
?layer_metrics
n	variables
 ?layer_regularization_losses
?non_trainable_variables
oregularization_losses
ptrainable_variables
 
 
 
?
?layers
?metrics
?layer_metrics
r	variables
 ?layer_regularization_losses
?non_trainable_variables
sregularization_losses
ttrainable_variables
 
 
 
?
?layers
?metrics
?layer_metrics
v	variables
 ?layer_regularization_losses
?non_trainable_variables
wregularization_losses
xtrainable_variables
 
 
 
?
?layers
?metrics
?layer_metrics
z	variables
 ?layer_regularization_losses
?non_trainable_variables
{regularization_losses
|trainable_variables
ZX
VARIABLE_VALUEDense_6/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEDense_6/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE

~0
1
 

~0
1
?
?layers
?metrics
?layer_metrics
?	variables
 ?layer_regularization_losses
?non_trainable_variables
?regularization_losses
?trainable_variables
 
 
 
?
?layers
?metrics
?layer_metrics
?	variables
 ?layer_regularization_losses
?non_trainable_variables
?regularization_losses
?trainable_variables
ZX
VARIABLE_VALUEDense_7/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEDense_7/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1
 

?0
?1
?
?layers
?metrics
?layer_metrics
?	variables
 ?layer_regularization_losses
?non_trainable_variables
?regularization_losses
?trainable_variables
 
 
 
?
?layers
?metrics
?layer_metrics
?	variables
 ?layer_regularization_losses
?non_trainable_variables
?regularization_losses
?trainable_variables
[Y
VARIABLE_VALUEDense_8/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEDense_8/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1
 

?0
?1
?
?layers
?metrics
?layer_metrics
?	variables
 ?layer_regularization_losses
?non_trainable_variables
?regularization_losses
?trainable_variables
 
 
 
?
?layers
?metrics
?layer_metrics
?	variables
 ?layer_regularization_losses
?non_trainable_variables
?regularization_losses
?trainable_variables
[Y
VARIABLE_VALUEsoftmax/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEsoftmax/bias5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1
 

?0
?1
?
?layers
?metrics
?layer_metrics
?	variables
 ?layer_regularization_losses
?non_trainable_variables
?regularization_losses
?trainable_variables
CA
VARIABLE_VALUEiter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
EC
VARIABLE_VALUEdecay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElearning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEmomentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEnormalization_4/mean&variables/0/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEnormalization_4/variance&variables/1/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEnormalization_4/count&variables/2/.ATTRIBUTES/VARIABLE_VALUE
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25

?0
?1
?2
 
 
4
?0
?1
?2
73
84
N5
O6
&
	?mean
?variance

?count
 
 

?
_state_var
 

?
_state_var
 

?
_state_var
 

!0
"1
#2
$3
 
 
 

?0
?1
?2
 
 
 
 
 
 
 
 
 
 
 
 
 
 

70
81
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

N0
O1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
ec
VARIABLE_VALUEVariableGlayer_with_weights-0/layer-1/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUE
Variable_1Glayer_with_weights-0/layer-2/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUE
Variable_2Glayer_with_weights-0/layer-3/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
?
serving_default_inputPlaceholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputnormalization_4/meannormalization_4/varianceconv2D_1/kernelconv2D_1/biasBatchNorm_1/gammaBatchNorm_1/betaBatchNorm_1/moving_meanBatchNorm_1/moving_varianceconv2D_2/kernelconv2D_2/biasBatchNorm_2/gammaBatchNorm_2/betaBatchNorm_2/moving_meanBatchNorm_2/moving_varianceconv2D_3/kernelconv2D_3/biasconv2D_4/kernelconv2D_4/biasconv2D_5/kernelconv2D_5/biasDense_6/kernelDense_6/biasDense_7/kernelDense_7/biasDense_8/kernelDense_8/biassoftmax/kernelsoftmax/bias*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*>
_read_only_resource_inputs 
	
*0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference_signature_wrapper_4410
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv2D_1/kernel/Read/ReadVariableOp!conv2D_1/bias/Read/ReadVariableOp%BatchNorm_1/gamma/Read/ReadVariableOp$BatchNorm_1/beta/Read/ReadVariableOp+BatchNorm_1/moving_mean/Read/ReadVariableOp/BatchNorm_1/moving_variance/Read/ReadVariableOp#conv2D_2/kernel/Read/ReadVariableOp!conv2D_2/bias/Read/ReadVariableOp%BatchNorm_2/gamma/Read/ReadVariableOp$BatchNorm_2/beta/Read/ReadVariableOp+BatchNorm_2/moving_mean/Read/ReadVariableOp/BatchNorm_2/moving_variance/Read/ReadVariableOp#conv2D_3/kernel/Read/ReadVariableOp!conv2D_3/bias/Read/ReadVariableOp#conv2D_4/kernel/Read/ReadVariableOp!conv2D_4/bias/Read/ReadVariableOp#conv2D_5/kernel/Read/ReadVariableOp!conv2D_5/bias/Read/ReadVariableOp"Dense_6/kernel/Read/ReadVariableOp Dense_6/bias/Read/ReadVariableOp"Dense_7/kernel/Read/ReadVariableOp Dense_7/bias/Read/ReadVariableOp"Dense_8/kernel/Read/ReadVariableOp Dense_8/bias/Read/ReadVariableOp"softmax/kernel/Read/ReadVariableOp softmax/bias/Read/ReadVariableOpiter/Read/ReadVariableOpdecay/Read/ReadVariableOp!learning_rate/Read/ReadVariableOpmomentum/Read/ReadVariableOp(normalization_4/mean/Read/ReadVariableOp,normalization_4/variance/Read/ReadVariableOp)normalization_4/count/Read/ReadVariableOpVariable/Read/ReadVariableOpVariable_1/Read/ReadVariableOpVariable_2/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOpConst*7
Tin0
.2,					*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *&
f!R
__inference__traced_save_6213
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2D_1/kernelconv2D_1/biasBatchNorm_1/gammaBatchNorm_1/betaBatchNorm_1/moving_meanBatchNorm_1/moving_varianceconv2D_2/kernelconv2D_2/biasBatchNorm_2/gammaBatchNorm_2/betaBatchNorm_2/moving_meanBatchNorm_2/moving_varianceconv2D_3/kernelconv2D_3/biasconv2D_4/kernelconv2D_4/biasconv2D_5/kernelconv2D_5/biasDense_6/kernelDense_6/biasDense_7/kernelDense_7/biasDense_8/kernelDense_8/biassoftmax/kernelsoftmax/biasiterdecaylearning_ratemomentumnormalization_4/meannormalization_4/variancenormalization_4/countVariable
Variable_1
Variable_2totalcounttotal_1count_1total_2count_2*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__traced_restore_6349??#
?	
?
B__inference_conv2D_5_layer_call_and_return_conditional_losses_3700

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
\
@__inference_ReLu_4_layer_call_and_return_conditional_losses_5844

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:??????????2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
A
%__inference_ReLu_1_layer_call_fn_5506

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????~~@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_ReLu_1_layer_call_and_return_conditional_losses_34172
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????~~@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????~~@:W S
/
_output_shapes
:?????????~~@
 
_user_specified_nameinputs
?
D
(__inference_Dropout_6_layer_call_fn_5936

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_Dropout_6_layer_call_and_return_conditional_losses_37882
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
B__inference_conv2D_2_layer_call_and_return_conditional_losses_5644

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????::?*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????::?2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????::?2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????>>@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????>>@
 
_user_specified_nameinputs
?
?
'__inference_model_14_layer_call_fn_5049

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29*+
Tin$
"2 *
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*:
_read_only_resource_inputs
	*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_14_layer_call_and_return_conditional_losses_41272
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????:::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
E__inference_BatchNorm_2_layer_call_and_return_conditional_losses_3575

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????::?:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:?????????::?2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????::?::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????::?
 
_user_specified_nameinputs
?
b
C__inference_Dropout_6_layer_call_and_return_conditional_losses_3783

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
a
(__inference_Dropout_6_layer_call_fn_5931

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_Dropout_6_layer_call_and_return_conditional_losses_37832
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
_
C__inference_MaxPool_5_layer_call_and_return_conditional_losses_3337

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
E__inference_BatchNorm_1_layer_call_and_return_conditional_losses_3161

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?

b
C__inference_Dropout_8_layer_call_and_return_conditional_losses_3896

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
B__inference_conv2D_1_layer_call_and_return_conditional_losses_3396

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????~~@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????~~@2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????~~@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:???????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
E__inference_BatchNorm_1_layer_call_and_return_conditional_losses_5526

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
??
?
B__inference_model_14_layer_call_and_return_conditional_losses_4982

inputsD
@dataaugmentation_normalization_4_reshape_readvariableop_resourceF
Bdataaugmentation_normalization_4_reshape_1_readvariableop_resource+
'conv2d_1_conv2d_readvariableop_resource,
(conv2d_1_biasadd_readvariableop_resource'
#batchnorm_1_readvariableop_resource)
%batchnorm_1_readvariableop_1_resource8
4batchnorm_1_fusedbatchnormv3_readvariableop_resource:
6batchnorm_1_fusedbatchnormv3_readvariableop_1_resource+
'conv2d_2_conv2d_readvariableop_resource,
(conv2d_2_biasadd_readvariableop_resource'
#batchnorm_2_readvariableop_resource)
%batchnorm_2_readvariableop_1_resource8
4batchnorm_2_fusedbatchnormv3_readvariableop_resource:
6batchnorm_2_fusedbatchnormv3_readvariableop_1_resource+
'conv2d_3_conv2d_readvariableop_resource,
(conv2d_3_biasadd_readvariableop_resource+
'conv2d_4_conv2d_readvariableop_resource,
(conv2d_4_biasadd_readvariableop_resource+
'conv2d_5_conv2d_readvariableop_resource,
(conv2d_5_biasadd_readvariableop_resource*
&dense_6_matmul_readvariableop_resource+
'dense_6_biasadd_readvariableop_resource*
&dense_7_matmul_readvariableop_resource+
'dense_7_biasadd_readvariableop_resource*
&dense_8_matmul_readvariableop_resource+
'dense_8_biasadd_readvariableop_resource*
&softmax_matmul_readvariableop_resource+
'softmax_biasadd_readvariableop_resource
identity??+BatchNorm_1/FusedBatchNormV3/ReadVariableOp?-BatchNorm_1/FusedBatchNormV3/ReadVariableOp_1?BatchNorm_1/ReadVariableOp?BatchNorm_1/ReadVariableOp_1?+BatchNorm_2/FusedBatchNormV3/ReadVariableOp?-BatchNorm_2/FusedBatchNormV3/ReadVariableOp_1?BatchNorm_2/ReadVariableOp?BatchNorm_2/ReadVariableOp_1?Dense_6/BiasAdd/ReadVariableOp?Dense_6/MatMul/ReadVariableOp?Dense_7/BiasAdd/ReadVariableOp?Dense_7/MatMul/ReadVariableOp?Dense_8/BiasAdd/ReadVariableOp?Dense_8/MatMul/ReadVariableOp?conv2D_1/BiasAdd/ReadVariableOp?conv2D_1/Conv2D/ReadVariableOp?conv2D_2/BiasAdd/ReadVariableOp?conv2D_2/Conv2D/ReadVariableOp?conv2D_3/BiasAdd/ReadVariableOp?conv2D_3/Conv2D/ReadVariableOp?conv2D_4/BiasAdd/ReadVariableOp?conv2D_4/Conv2D/ReadVariableOp?conv2D_5/BiasAdd/ReadVariableOp?conv2D_5/Conv2D/ReadVariableOp?7dataAugmentation/normalization_4/Reshape/ReadVariableOp?9dataAugmentation/normalization_4/Reshape_1/ReadVariableOp?softmax/BiasAdd/ReadVariableOp?softmax/MatMul/ReadVariableOp?
7dataAugmentation/normalization_4/Reshape/ReadVariableOpReadVariableOp@dataaugmentation_normalization_4_reshape_readvariableop_resource*
_output_shapes
:*
dtype029
7dataAugmentation/normalization_4/Reshape/ReadVariableOp?
.dataAugmentation/normalization_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            20
.dataAugmentation/normalization_4/Reshape/shape?
(dataAugmentation/normalization_4/ReshapeReshape?dataAugmentation/normalization_4/Reshape/ReadVariableOp:value:07dataAugmentation/normalization_4/Reshape/shape:output:0*
T0*&
_output_shapes
:2*
(dataAugmentation/normalization_4/Reshape?
9dataAugmentation/normalization_4/Reshape_1/ReadVariableOpReadVariableOpBdataaugmentation_normalization_4_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02;
9dataAugmentation/normalization_4/Reshape_1/ReadVariableOp?
0dataAugmentation/normalization_4/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            22
0dataAugmentation/normalization_4/Reshape_1/shape?
*dataAugmentation/normalization_4/Reshape_1ReshapeAdataAugmentation/normalization_4/Reshape_1/ReadVariableOp:value:09dataAugmentation/normalization_4/Reshape_1/shape:output:0*
T0*&
_output_shapes
:2,
*dataAugmentation/normalization_4/Reshape_1?
$dataAugmentation/normalization_4/subSubinputs1dataAugmentation/normalization_4/Reshape:output:0*
T0*1
_output_shapes
:???????????2&
$dataAugmentation/normalization_4/sub?
%dataAugmentation/normalization_4/SqrtSqrt3dataAugmentation/normalization_4/Reshape_1:output:0*
T0*&
_output_shapes
:2'
%dataAugmentation/normalization_4/Sqrt?
*dataAugmentation/normalization_4/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32,
*dataAugmentation/normalization_4/Maximum/y?
(dataAugmentation/normalization_4/MaximumMaximum)dataAugmentation/normalization_4/Sqrt:y:03dataAugmentation/normalization_4/Maximum/y:output:0*
T0*&
_output_shapes
:2*
(dataAugmentation/normalization_4/Maximum?
(dataAugmentation/normalization_4/truedivRealDiv(dataAugmentation/normalization_4/sub:z:0,dataAugmentation/normalization_4/Maximum:z:0*
T0*1
_output_shapes
:???????????2*
(dataAugmentation/normalization_4/truedivi
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
rescaling/Cast/xm
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling/Cast_1/x?
rescaling/mulMul,dataAugmentation/normalization_4/truediv:z:0rescaling/Cast/x:output:0*
T0*1
_output_shapes
:???????????2
rescaling/mul?
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:???????????2
rescaling/add?
conv2D_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02 
conv2D_1/Conv2D/ReadVariableOp?
conv2D_1/Conv2DConv2Drescaling/add:z:0&conv2D_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????~~@*
paddingVALID*
strides
2
conv2D_1/Conv2D?
conv2D_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2D_1/BiasAdd/ReadVariableOp?
conv2D_1/BiasAddBiasAddconv2D_1/Conv2D:output:0'conv2D_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????~~@2
conv2D_1/BiasAddw
ReLu_1/ReluReluconv2D_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????~~@2
ReLu_1/Relu?
BatchNorm_1/ReadVariableOpReadVariableOp#batchnorm_1_readvariableop_resource*
_output_shapes
:@*
dtype02
BatchNorm_1/ReadVariableOp?
BatchNorm_1/ReadVariableOp_1ReadVariableOp%batchnorm_1_readvariableop_1_resource*
_output_shapes
:@*
dtype02
BatchNorm_1/ReadVariableOp_1?
+BatchNorm_1/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02-
+BatchNorm_1/FusedBatchNormV3/ReadVariableOp?
-BatchNorm_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02/
-BatchNorm_1/FusedBatchNormV3/ReadVariableOp_1?
BatchNorm_1/FusedBatchNormV3FusedBatchNormV3ReLu_1/Relu:activations:0"BatchNorm_1/ReadVariableOp:value:0$BatchNorm_1/ReadVariableOp_1:value:03BatchNorm_1/FusedBatchNormV3/ReadVariableOp:value:05BatchNorm_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????~~@:@:@:@:@:*
epsilon%o?:*
is_training( 2
BatchNorm_1/FusedBatchNormV3?
MaxPool_1/MaxPoolMaxPool BatchNorm_1/FusedBatchNormV3:y:0*/
_output_shapes
:?????????>>@*
ksize
*
paddingVALID*
strides
2
MaxPool_1/MaxPool?
conv2D_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02 
conv2D_2/Conv2D/ReadVariableOp?
conv2D_2/Conv2DConv2DMaxPool_1/MaxPool:output:0&conv2D_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????::?*
paddingVALID*
strides
2
conv2D_2/Conv2D?
conv2D_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv2D_2/BiasAdd/ReadVariableOp?
conv2D_2/BiasAddBiasAddconv2D_2/Conv2D:output:0'conv2D_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????::?2
conv2D_2/BiasAddx
ReLu_2/ReluReluconv2D_2/BiasAdd:output:0*
T0*0
_output_shapes
:?????????::?2
ReLu_2/Relu?
BatchNorm_2/ReadVariableOpReadVariableOp#batchnorm_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
BatchNorm_2/ReadVariableOp?
BatchNorm_2/ReadVariableOp_1ReadVariableOp%batchnorm_2_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
BatchNorm_2/ReadVariableOp_1?
+BatchNorm_2/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+BatchNorm_2/FusedBatchNormV3/ReadVariableOp?
-BatchNorm_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02/
-BatchNorm_2/FusedBatchNormV3/ReadVariableOp_1?
BatchNorm_2/FusedBatchNormV3FusedBatchNormV3ReLu_2/Relu:activations:0"BatchNorm_2/ReadVariableOp:value:0$BatchNorm_2/ReadVariableOp_1:value:03BatchNorm_2/FusedBatchNormV3/ReadVariableOp:value:05BatchNorm_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????::?:?:?:?:?:*
epsilon%o?:*
is_training( 2
BatchNorm_2/FusedBatchNormV3?
MaxPool_2/MaxPoolMaxPool BatchNorm_2/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
MaxPool_2/MaxPool?
conv2D_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02 
conv2D_3/Conv2D/ReadVariableOp?
conv2D_3/Conv2DConv2DMaxPool_2/MaxPool:output:0&conv2D_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
conv2D_3/Conv2D?
conv2D_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv2D_3/BiasAdd/ReadVariableOp?
conv2D_3/BiasAddBiasAddconv2D_3/Conv2D:output:0'conv2D_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2D_3/BiasAddx
ReLu_3/ReluReluconv2D_3/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
ReLu_3/Relu?
conv2D_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02 
conv2D_4/Conv2D/ReadVariableOp?
conv2D_4/Conv2DConv2DReLu_3/Relu:activations:0&conv2D_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
conv2D_4/Conv2D?
conv2D_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv2D_4/BiasAdd/ReadVariableOp?
conv2D_4/BiasAddBiasAddconv2D_4/Conv2D:output:0'conv2D_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2D_4/BiasAddx
ReLu_4/ReluReluconv2D_4/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
ReLu_4/Relu?
conv2D_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02 
conv2D_5/Conv2D/ReadVariableOp?
conv2D_5/Conv2DConv2DReLu_4/Relu:activations:0&conv2D_5/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
conv2D_5/Conv2D?
conv2D_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv2D_5/BiasAdd/ReadVariableOp?
conv2D_5/BiasAddBiasAddconv2D_5/Conv2D:output:0'conv2D_5/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2D_5/BiasAddx
ReLu_5/ReluReluconv2D_5/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
ReLu_5/Relu?
MaxPool_5/MaxPoolMaxPoolReLu_5/Relu:activations:0*0
_output_shapes
:?????????

?*
ksize
*
paddingVALID*
strides
2
MaxPool_5/MaxPools
flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? d  2
flatten_4/Const?
flatten_4/ReshapeReshapeMaxPool_5/MaxPool:output:0flatten_4/Const:output:0*
T0*)
_output_shapes
:???????????2
flatten_4/Reshape?
Dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype02
Dense_6/MatMul/ReadVariableOp?
Dense_6/MatMulMatMulflatten_4/Reshape:output:0%Dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Dense_6/MatMul?
Dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
Dense_6/BiasAdd/ReadVariableOp?
Dense_6/BiasAddBiasAddDense_6/MatMul:product:0&Dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Dense_6/BiasAddq
Dense_6/ReluReluDense_6/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Dense_6/Relu?
Dropout_6/IdentityIdentityDense_6/Relu:activations:0*
T0*(
_output_shapes
:??????????2
Dropout_6/Identity?
Dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
Dense_7/MatMul/ReadVariableOp?
Dense_7/MatMulMatMulDropout_6/Identity:output:0%Dense_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Dense_7/MatMul?
Dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
Dense_7/BiasAdd/ReadVariableOp?
Dense_7/BiasAddBiasAddDense_7/MatMul:product:0&Dense_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Dense_7/BiasAddq
Dense_7/ReluReluDense_7/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Dense_7/Relu?
Dropout_7/IdentityIdentityDense_7/Relu:activations:0*
T0*(
_output_shapes
:??????????2
Dropout_7/Identity?
Dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
Dense_8/MatMul/ReadVariableOp?
Dense_8/MatMulMatMulDropout_7/Identity:output:0%Dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
Dense_8/MatMul?
Dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
Dense_8/BiasAdd/ReadVariableOp?
Dense_8/BiasAddBiasAddDense_8/MatMul:product:0&Dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
Dense_8/BiasAdd?
Dropout_8/IdentityIdentityDense_8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Dropout_8/Identity?
softmax/MatMul/ReadVariableOpReadVariableOp&softmax_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
softmax/MatMul/ReadVariableOp?
softmax/MatMulMatMulDropout_8/Identity:output:0%softmax/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
softmax/MatMul?
softmax/BiasAdd/ReadVariableOpReadVariableOp'softmax_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
softmax/BiasAdd/ReadVariableOp?
softmax/BiasAddBiasAddsoftmax/MatMul:product:0&softmax/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
softmax/BiasAddy
softmax/SoftmaxSoftmaxsoftmax/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
softmax/Softmax?
IdentityIdentitysoftmax/Softmax:softmax:0,^BatchNorm_1/FusedBatchNormV3/ReadVariableOp.^BatchNorm_1/FusedBatchNormV3/ReadVariableOp_1^BatchNorm_1/ReadVariableOp^BatchNorm_1/ReadVariableOp_1,^BatchNorm_2/FusedBatchNormV3/ReadVariableOp.^BatchNorm_2/FusedBatchNormV3/ReadVariableOp_1^BatchNorm_2/ReadVariableOp^BatchNorm_2/ReadVariableOp_1^Dense_6/BiasAdd/ReadVariableOp^Dense_6/MatMul/ReadVariableOp^Dense_7/BiasAdd/ReadVariableOp^Dense_7/MatMul/ReadVariableOp^Dense_8/BiasAdd/ReadVariableOp^Dense_8/MatMul/ReadVariableOp ^conv2D_1/BiasAdd/ReadVariableOp^conv2D_1/Conv2D/ReadVariableOp ^conv2D_2/BiasAdd/ReadVariableOp^conv2D_2/Conv2D/ReadVariableOp ^conv2D_3/BiasAdd/ReadVariableOp^conv2D_3/Conv2D/ReadVariableOp ^conv2D_4/BiasAdd/ReadVariableOp^conv2D_4/Conv2D/ReadVariableOp ^conv2D_5/BiasAdd/ReadVariableOp^conv2D_5/Conv2D/ReadVariableOp8^dataAugmentation/normalization_4/Reshape/ReadVariableOp:^dataAugmentation/normalization_4/Reshape_1/ReadVariableOp^softmax/BiasAdd/ReadVariableOp^softmax/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::2Z
+BatchNorm_1/FusedBatchNormV3/ReadVariableOp+BatchNorm_1/FusedBatchNormV3/ReadVariableOp2^
-BatchNorm_1/FusedBatchNormV3/ReadVariableOp_1-BatchNorm_1/FusedBatchNormV3/ReadVariableOp_128
BatchNorm_1/ReadVariableOpBatchNorm_1/ReadVariableOp2<
BatchNorm_1/ReadVariableOp_1BatchNorm_1/ReadVariableOp_12Z
+BatchNorm_2/FusedBatchNormV3/ReadVariableOp+BatchNorm_2/FusedBatchNormV3/ReadVariableOp2^
-BatchNorm_2/FusedBatchNormV3/ReadVariableOp_1-BatchNorm_2/FusedBatchNormV3/ReadVariableOp_128
BatchNorm_2/ReadVariableOpBatchNorm_2/ReadVariableOp2<
BatchNorm_2/ReadVariableOp_1BatchNorm_2/ReadVariableOp_12@
Dense_6/BiasAdd/ReadVariableOpDense_6/BiasAdd/ReadVariableOp2>
Dense_6/MatMul/ReadVariableOpDense_6/MatMul/ReadVariableOp2@
Dense_7/BiasAdd/ReadVariableOpDense_7/BiasAdd/ReadVariableOp2>
Dense_7/MatMul/ReadVariableOpDense_7/MatMul/ReadVariableOp2@
Dense_8/BiasAdd/ReadVariableOpDense_8/BiasAdd/ReadVariableOp2>
Dense_8/MatMul/ReadVariableOpDense_8/MatMul/ReadVariableOp2B
conv2D_1/BiasAdd/ReadVariableOpconv2D_1/BiasAdd/ReadVariableOp2@
conv2D_1/Conv2D/ReadVariableOpconv2D_1/Conv2D/ReadVariableOp2B
conv2D_2/BiasAdd/ReadVariableOpconv2D_2/BiasAdd/ReadVariableOp2@
conv2D_2/Conv2D/ReadVariableOpconv2D_2/Conv2D/ReadVariableOp2B
conv2D_3/BiasAdd/ReadVariableOpconv2D_3/BiasAdd/ReadVariableOp2@
conv2D_3/Conv2D/ReadVariableOpconv2D_3/Conv2D/ReadVariableOp2B
conv2D_4/BiasAdd/ReadVariableOpconv2D_4/BiasAdd/ReadVariableOp2@
conv2D_4/Conv2D/ReadVariableOpconv2D_4/Conv2D/ReadVariableOp2B
conv2D_5/BiasAdd/ReadVariableOpconv2D_5/BiasAdd/ReadVariableOp2@
conv2D_5/Conv2D/ReadVariableOpconv2D_5/Conv2D/ReadVariableOp2r
7dataAugmentation/normalization_4/Reshape/ReadVariableOp7dataAugmentation/normalization_4/Reshape/ReadVariableOp2v
9dataAugmentation/normalization_4/Reshape_1/ReadVariableOp9dataAugmentation/normalization_4/Reshape_1/ReadVariableOp2@
softmax/BiasAdd/ReadVariableOpsoftmax/BiasAdd/ReadVariableOp2>
softmax/MatMul/ReadVariableOpsoftmax/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
J__inference_dataAugmentation_layer_call_and_return_conditional_losses_5453

inputs3
/normalization_4_reshape_readvariableop_resource5
1normalization_4_reshape_1_readvariableop_resource
identity??&normalization_4/Reshape/ReadVariableOp?(normalization_4/Reshape_1/ReadVariableOp?
&normalization_4/Reshape/ReadVariableOpReadVariableOp/normalization_4_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_4/Reshape/ReadVariableOp?
normalization_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
normalization_4/Reshape/shape?
normalization_4/ReshapeReshape.normalization_4/Reshape/ReadVariableOp:value:0&normalization_4/Reshape/shape:output:0*
T0*&
_output_shapes
:2
normalization_4/Reshape?
(normalization_4/Reshape_1/ReadVariableOpReadVariableOp1normalization_4_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_4/Reshape_1/ReadVariableOp?
normalization_4/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2!
normalization_4/Reshape_1/shape?
normalization_4/Reshape_1Reshape0normalization_4/Reshape_1/ReadVariableOp:value:0(normalization_4/Reshape_1/shape:output:0*
T0*&
_output_shapes
:2
normalization_4/Reshape_1?
normalization_4/subSubinputs normalization_4/Reshape:output:0*
T0*1
_output_shapes
:???????????2
normalization_4/sub?
normalization_4/SqrtSqrt"normalization_4/Reshape_1:output:0*
T0*&
_output_shapes
:2
normalization_4/Sqrt{
normalization_4/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
normalization_4/Maximum/y?
normalization_4/MaximumMaximumnormalization_4/Sqrt:y:0"normalization_4/Maximum/y:output:0*
T0*&
_output_shapes
:2
normalization_4/Maximum?
normalization_4/truedivRealDivnormalization_4/sub:z:0normalization_4/Maximum:z:0*
T0*1
_output_shapes
:???????????2
normalization_4/truediv?
IdentityIdentitynormalization_4/truediv:z:0'^normalization_4/Reshape/ReadVariableOp)^normalization_4/Reshape_1/ReadVariableOp*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:???????????::2P
&normalization_4/Reshape/ReadVariableOp&normalization_4/Reshape/ReadVariableOp2T
(normalization_4/Reshape_1/ReadVariableOp(normalization_4/Reshape_1/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
"__inference_signature_wrapper_4410	
input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*>
_read_only_resource_inputs 
	
*0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference__wrapped_model_23872
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
1
_output_shapes
:???????????

_user_specified_nameinput
?	
?
B__inference_conv2D_4_layer_call_and_return_conditional_losses_5830

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
A__inference_Dense_6_layer_call_and_return_conditional_losses_5900

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:???*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*0
_input_shapes
:???????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
E__inference_BatchNorm_2_layer_call_and_return_conditional_losses_5765

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????::?:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:?????????::?2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????::?::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????::?
 
_user_specified_nameinputs
?
?
E__inference_BatchNorm_2_layer_call_and_return_conditional_losses_5701

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
|
'__inference_conv2D_5_layer_call_fn_5868

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2D_5_layer_call_and_return_conditional_losses_37002
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
\
@__inference_ReLu_3_layer_call_and_return_conditional_losses_3643

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:??????????2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
A
%__inference_ReLu_3_layer_call_fn_5820

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_ReLu_3_layer_call_and_return_conditional_losses_36432
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
A
%__inference_ReLu_5_layer_call_fn_5878

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_ReLu_5_layer_call_and_return_conditional_losses_37212
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
*__inference_BatchNorm_1_layer_call_fn_5621

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????~~@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_BatchNorm_1_layer_call_and_return_conditional_losses_34442
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????~~@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????~~@::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????~~@
 
_user_specified_nameinputs
?
b
C__inference_Dropout_7_layer_call_and_return_conditional_losses_3840

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
a
C__inference_Dropout_6_layer_call_and_return_conditional_losses_5926

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
a
(__inference_Dropout_7_layer_call_fn_5978

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_Dropout_7_layer_call_and_return_conditional_losses_38402
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
E__inference_BatchNorm_2_layer_call_and_return_conditional_losses_3308

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?Q
?
__inference__traced_save_6213
file_prefix.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop0
,savev2_batchnorm_1_gamma_read_readvariableop/
+savev2_batchnorm_1_beta_read_readvariableop6
2savev2_batchnorm_1_moving_mean_read_readvariableop:
6savev2_batchnorm_1_moving_variance_read_readvariableop.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop0
,savev2_batchnorm_2_gamma_read_readvariableop/
+savev2_batchnorm_2_beta_read_readvariableop6
2savev2_batchnorm_2_moving_mean_read_readvariableop:
6savev2_batchnorm_2_moving_variance_read_readvariableop.
*savev2_conv2d_3_kernel_read_readvariableop,
(savev2_conv2d_3_bias_read_readvariableop.
*savev2_conv2d_4_kernel_read_readvariableop,
(savev2_conv2d_4_bias_read_readvariableop.
*savev2_conv2d_5_kernel_read_readvariableop,
(savev2_conv2d_5_bias_read_readvariableop-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop-
)savev2_dense_7_kernel_read_readvariableop+
'savev2_dense_7_bias_read_readvariableop-
)savev2_dense_8_kernel_read_readvariableop+
'savev2_dense_8_bias_read_readvariableop-
)savev2_softmax_kernel_read_readvariableop+
'savev2_softmax_bias_read_readvariableop#
savev2_iter_read_readvariableop	$
 savev2_decay_read_readvariableop,
(savev2_learning_rate_read_readvariableop'
#savev2_momentum_read_readvariableop3
/savev2_normalization_4_mean_read_readvariableop7
3savev2_normalization_4_variance_read_readvariableop4
0savev2_normalization_4_count_read_readvariableop	'
#savev2_variable_read_readvariableop	)
%savev2_variable_1_read_readvariableop	)
%savev2_variable_2_read_readvariableop	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*?
value?B?+B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-0/layer-1/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-0/layer-2/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-0/layer-3/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop,savev2_batchnorm_1_gamma_read_readvariableop+savev2_batchnorm_1_beta_read_readvariableop2savev2_batchnorm_1_moving_mean_read_readvariableop6savev2_batchnorm_1_moving_variance_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop,savev2_batchnorm_2_gamma_read_readvariableop+savev2_batchnorm_2_beta_read_readvariableop2savev2_batchnorm_2_moving_mean_read_readvariableop6savev2_batchnorm_2_moving_variance_read_readvariableop*savev2_conv2d_3_kernel_read_readvariableop(savev2_conv2d_3_bias_read_readvariableop*savev2_conv2d_4_kernel_read_readvariableop(savev2_conv2d_4_bias_read_readvariableop*savev2_conv2d_5_kernel_read_readvariableop(savev2_conv2d_5_bias_read_readvariableop)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop)savev2_dense_7_kernel_read_readvariableop'savev2_dense_7_bias_read_readvariableop)savev2_dense_8_kernel_read_readvariableop'savev2_dense_8_bias_read_readvariableop)savev2_softmax_kernel_read_readvariableop'savev2_softmax_bias_read_readvariableopsavev2_iter_read_readvariableop savev2_decay_read_readvariableop(savev2_learning_rate_read_readvariableop#savev2_momentum_read_readvariableop/savev2_normalization_4_mean_read_readvariableop3savev2_normalization_4_variance_read_readvariableop0savev2_normalization_4_count_read_readvariableop#savev2_variable_read_readvariableop%savev2_variable_1_read_readvariableop%savev2_variable_2_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *9
dtypes/
-2+					2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :@:@:@:@:@:@:@?:?:?:?:?:?:??:?:??:?:??:?:???:?:
??:?:	?@:@:@:: : : : ::: :::: : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:-)
'
_output_shapes
:@?:!

_output_shapes	
:?:!	

_output_shapes	
:?:!


_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:'#
!
_output_shapes
:???:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
::  

_output_shapes
::!

_output_shapes
: : "

_output_shapes
:: #

_output_shapes
:: $

_output_shapes
::%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :*

_output_shapes
: :+

_output_shapes
: 
?
?
*__inference_BatchNorm_2_layer_call_fn_5714

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_BatchNorm_2_layer_call_and_return_conditional_losses_32772
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
\
@__inference_ReLu_5_layer_call_and_return_conditional_losses_3721

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:??????????2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
E__inference_BatchNorm_2_layer_call_and_return_conditional_losses_5747

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????::?:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:?????????::?2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????::?::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????::?
 
_user_specified_nameinputs
?
b
C__inference_Dropout_7_layer_call_and_return_conditional_losses_5968

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
a
C__inference_Dropout_7_layer_call_and_return_conditional_losses_3845

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
\
@__inference_ReLu_2_layer_call_and_return_conditional_losses_3530

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:?????????::?2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:?????????::?2

Identity"
identityIdentity:output:0*/
_input_shapes
:?????????::?:X T
0
_output_shapes
:?????????::?
 
_user_specified_nameinputs
?
_
C__inference_flatten_4_layer_call_and_return_conditional_losses_5884

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? d  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:?????????

?:X T
0
_output_shapes
:?????????

?
 
_user_specified_nameinputs
?
?
*__inference_BatchNorm_2_layer_call_fn_5778

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????::?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_BatchNorm_2_layer_call_and_return_conditional_losses_35572
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????::?2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????::?::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????::?
 
_user_specified_nameinputs
?	
?
B__inference_conv2D_3_layer_call_and_return_conditional_losses_5801

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
{
&__inference_Dense_6_layer_call_fn_5909

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_Dense_6_layer_call_and_return_conditional_losses_37552
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*0
_input_shapes
:???????????::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
E__inference_BatchNorm_1_layer_call_and_return_conditional_losses_5544

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
/__inference_dataAugmentation_layer_call_fn_3099
normalization_4_input
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallnormalization_4_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_dataAugmentation_layer_call_and_return_conditional_losses_30922
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:???????????::22
StatefulPartitionedCallStatefulPartitionedCall:h d
1
_output_shapes
:???????????
/
_user_specified_namenormalization_4_input
?
a
(__inference_Dropout_8_layer_call_fn_6024

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_Dropout_8_layer_call_and_return_conditional_losses_38962
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
*__inference_BatchNorm_1_layer_call_fn_5557

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_BatchNorm_1_layer_call_and_return_conditional_losses_31612
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?	
?
B__inference_conv2D_4_layer_call_and_return_conditional_losses_3661

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
a
C__inference_Dropout_6_layer_call_and_return_conditional_losses_3788

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
*__inference_BatchNorm_1_layer_call_fn_5570

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_BatchNorm_1_layer_call_and_return_conditional_losses_31922
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
'__inference_model_14_layer_call_fn_4341	
input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*>
_read_only_resource_inputs 
	
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_14_layer_call_and_return_conditional_losses_42822
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
1
_output_shapes
:???????????

_user_specified_nameinput
?
a
C__inference_Dropout_7_layer_call_and_return_conditional_losses_5973

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
C__inference_Dropout_6_layer_call_and_return_conditional_losses_5921

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
A__inference_Dense_6_layer_call_and_return_conditional_losses_3755

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:???*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*0
_input_shapes
:???????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
D
(__inference_Dropout_8_layer_call_fn_6029

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_Dropout_8_layer_call_and_return_conditional_losses_39012
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
E__inference_BatchNorm_2_layer_call_and_return_conditional_losses_3277

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
D
(__inference_MaxPool_2_layer_call_fn_3331

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_MaxPool_2_layer_call_and_return_conditional_losses_33252
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
J__inference_dataAugmentation_layer_call_and_return_conditional_losses_2731
normalization_4_input3
/normalization_4_reshape_readvariableop_resource5
1normalization_4_reshape_1_readvariableop_resource
identity??&normalization_4/Reshape/ReadVariableOp?(normalization_4/Reshape_1/ReadVariableOp?
&normalization_4/Reshape/ReadVariableOpReadVariableOp/normalization_4_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_4/Reshape/ReadVariableOp?
normalization_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
normalization_4/Reshape/shape?
normalization_4/ReshapeReshape.normalization_4/Reshape/ReadVariableOp:value:0&normalization_4/Reshape/shape:output:0*
T0*&
_output_shapes
:2
normalization_4/Reshape?
(normalization_4/Reshape_1/ReadVariableOpReadVariableOp1normalization_4_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_4/Reshape_1/ReadVariableOp?
normalization_4/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2!
normalization_4/Reshape_1/shape?
normalization_4/Reshape_1Reshape0normalization_4/Reshape_1/ReadVariableOp:value:0(normalization_4/Reshape_1/shape:output:0*
T0*&
_output_shapes
:2
normalization_4/Reshape_1?
normalization_4/subSubnormalization_4_input normalization_4/Reshape:output:0*
T0*1
_output_shapes
:???????????2
normalization_4/sub?
normalization_4/SqrtSqrt"normalization_4/Reshape_1:output:0*
T0*&
_output_shapes
:2
normalization_4/Sqrt{
normalization_4/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
normalization_4/Maximum/y?
normalization_4/MaximumMaximumnormalization_4/Sqrt:y:0"normalization_4/Maximum/y:output:0*
T0*&
_output_shapes
:2
normalization_4/Maximum?
normalization_4/truedivRealDivnormalization_4/sub:z:0normalization_4/Maximum:z:0*
T0*1
_output_shapes
:???????????2
normalization_4/truediv?
IdentityIdentitynormalization_4/truediv:z:0'^normalization_4/Reshape/ReadVariableOp)^normalization_4/Reshape_1/ReadVariableOp*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:???????????::2P
&normalization_4/Reshape/ReadVariableOp&normalization_4/Reshape/ReadVariableOp2T
(normalization_4/Reshape_1/ReadVariableOp(normalization_4/Reshape_1/ReadVariableOp:h d
1
_output_shapes
:???????????
/
_user_specified_namenormalization_4_input
?	
?
B__inference_conv2D_1_layer_call_and_return_conditional_losses_5487

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????~~@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????~~@2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????~~@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:???????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
E__inference_BatchNorm_2_layer_call_and_return_conditional_losses_3557

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????::?:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:?????????::?2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????::?::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????::?
 
_user_specified_nameinputs
?g
?
B__inference_model_14_layer_call_and_return_conditional_losses_4282

inputs
dataaugmentation_4197
dataaugmentation_4199
conv2d_1_4206
conv2d_1_4208
batchnorm_1_4212
batchnorm_1_4214
batchnorm_1_4216
batchnorm_1_4218
conv2d_2_4222
conv2d_2_4224
batchnorm_2_4228
batchnorm_2_4230
batchnorm_2_4232
batchnorm_2_4234
conv2d_3_4238
conv2d_3_4240
conv2d_4_4244
conv2d_4_4246
conv2d_5_4250
conv2d_5_4252
dense_6_4258
dense_6_4260
dense_7_4264
dense_7_4266
dense_8_4270
dense_8_4272
softmax_4276
softmax_4278
identity??#BatchNorm_1/StatefulPartitionedCall?#BatchNorm_2/StatefulPartitionedCall?Dense_6/StatefulPartitionedCall?Dense_7/StatefulPartitionedCall?Dense_8/StatefulPartitionedCall? conv2D_1/StatefulPartitionedCall? conv2D_2/StatefulPartitionedCall? conv2D_3/StatefulPartitionedCall? conv2D_4/StatefulPartitionedCall? conv2D_5/StatefulPartitionedCall?(dataAugmentation/StatefulPartitionedCall?softmax/StatefulPartitionedCall?
(dataAugmentation/StatefulPartitionedCallStatefulPartitionedCallinputsdataaugmentation_4197dataaugmentation_4199*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_dataAugmentation_layer_call_and_return_conditional_losses_30922*
(dataAugmentation/StatefulPartitionedCalli
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
rescaling/Cast/xm
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling/Cast_1/x?
rescaling/mulMul1dataAugmentation/StatefulPartitionedCall:output:0rescaling/Cast/x:output:0*
T0*1
_output_shapes
:???????????2
rescaling/mul?
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:???????????2
rescaling/add?
 conv2D_1/StatefulPartitionedCallStatefulPartitionedCallrescaling/add:z:0conv2d_1_4206conv2d_1_4208*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????~~@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2D_1_layer_call_and_return_conditional_losses_33962"
 conv2D_1/StatefulPartitionedCall?
ReLu_1/PartitionedCallPartitionedCall)conv2D_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????~~@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_ReLu_1_layer_call_and_return_conditional_losses_34172
ReLu_1/PartitionedCall?
#BatchNorm_1/StatefulPartitionedCallStatefulPartitionedCallReLu_1/PartitionedCall:output:0batchnorm_1_4212batchnorm_1_4214batchnorm_1_4216batchnorm_1_4218*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????~~@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_BatchNorm_1_layer_call_and_return_conditional_losses_34622%
#BatchNorm_1/StatefulPartitionedCall?
MaxPool_1/PartitionedCallPartitionedCall,BatchNorm_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>>@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_MaxPool_1_layer_call_and_return_conditional_losses_32092
MaxPool_1/PartitionedCall?
 conv2D_2/StatefulPartitionedCallStatefulPartitionedCall"MaxPool_1/PartitionedCall:output:0conv2d_2_4222conv2d_2_4224*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????::?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2D_2_layer_call_and_return_conditional_losses_35092"
 conv2D_2/StatefulPartitionedCall?
ReLu_2/PartitionedCallPartitionedCall)conv2D_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????::?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_ReLu_2_layer_call_and_return_conditional_losses_35302
ReLu_2/PartitionedCall?
#BatchNorm_2/StatefulPartitionedCallStatefulPartitionedCallReLu_2/PartitionedCall:output:0batchnorm_2_4228batchnorm_2_4230batchnorm_2_4232batchnorm_2_4234*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????::?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_BatchNorm_2_layer_call_and_return_conditional_losses_35752%
#BatchNorm_2/StatefulPartitionedCall?
MaxPool_2/PartitionedCallPartitionedCall,BatchNorm_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_MaxPool_2_layer_call_and_return_conditional_losses_33252
MaxPool_2/PartitionedCall?
 conv2D_3/StatefulPartitionedCallStatefulPartitionedCall"MaxPool_2/PartitionedCall:output:0conv2d_3_4238conv2d_3_4240*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2D_3_layer_call_and_return_conditional_losses_36222"
 conv2D_3/StatefulPartitionedCall?
ReLu_3/PartitionedCallPartitionedCall)conv2D_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_ReLu_3_layer_call_and_return_conditional_losses_36432
ReLu_3/PartitionedCall?
 conv2D_4/StatefulPartitionedCallStatefulPartitionedCallReLu_3/PartitionedCall:output:0conv2d_4_4244conv2d_4_4246*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2D_4_layer_call_and_return_conditional_losses_36612"
 conv2D_4/StatefulPartitionedCall?
ReLu_4/PartitionedCallPartitionedCall)conv2D_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_ReLu_4_layer_call_and_return_conditional_losses_36822
ReLu_4/PartitionedCall?
 conv2D_5/StatefulPartitionedCallStatefulPartitionedCallReLu_4/PartitionedCall:output:0conv2d_5_4250conv2d_5_4252*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2D_5_layer_call_and_return_conditional_losses_37002"
 conv2D_5/StatefulPartitionedCall?
ReLu_5/PartitionedCallPartitionedCall)conv2D_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_ReLu_5_layer_call_and_return_conditional_losses_37212
ReLu_5/PartitionedCall?
MaxPool_5/PartitionedCallPartitionedCallReLu_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????

?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_MaxPool_5_layer_call_and_return_conditional_losses_33372
MaxPool_5/PartitionedCall?
flatten_4/PartitionedCallPartitionedCall"MaxPool_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_flatten_4_layer_call_and_return_conditional_losses_37362
flatten_4/PartitionedCall?
Dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_6_4258dense_6_4260*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_Dense_6_layer_call_and_return_conditional_losses_37552!
Dense_6/StatefulPartitionedCall?
Dropout_6/PartitionedCallPartitionedCall(Dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_Dropout_6_layer_call_and_return_conditional_losses_37882
Dropout_6/PartitionedCall?
Dense_7/StatefulPartitionedCallStatefulPartitionedCall"Dropout_6/PartitionedCall:output:0dense_7_4264dense_7_4266*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_Dense_7_layer_call_and_return_conditional_losses_38122!
Dense_7/StatefulPartitionedCall?
Dropout_7/PartitionedCallPartitionedCall(Dense_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_Dropout_7_layer_call_and_return_conditional_losses_38452
Dropout_7/PartitionedCall?
Dense_8/StatefulPartitionedCallStatefulPartitionedCall"Dropout_7/PartitionedCall:output:0dense_8_4270dense_8_4272*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_Dense_8_layer_call_and_return_conditional_losses_38682!
Dense_8/StatefulPartitionedCall?
Dropout_8/PartitionedCallPartitionedCall(Dense_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_Dropout_8_layer_call_and_return_conditional_losses_39012
Dropout_8/PartitionedCall?
softmax/StatefulPartitionedCallStatefulPartitionedCall"Dropout_8/PartitionedCall:output:0softmax_4276softmax_4278*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_softmax_layer_call_and_return_conditional_losses_39252!
softmax/StatefulPartitionedCall?
IdentityIdentity(softmax/StatefulPartitionedCall:output:0$^BatchNorm_1/StatefulPartitionedCall$^BatchNorm_2/StatefulPartitionedCall ^Dense_6/StatefulPartitionedCall ^Dense_7/StatefulPartitionedCall ^Dense_8/StatefulPartitionedCall!^conv2D_1/StatefulPartitionedCall!^conv2D_2/StatefulPartitionedCall!^conv2D_3/StatefulPartitionedCall!^conv2D_4/StatefulPartitionedCall!^conv2D_5/StatefulPartitionedCall)^dataAugmentation/StatefulPartitionedCall ^softmax/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::2J
#BatchNorm_1/StatefulPartitionedCall#BatchNorm_1/StatefulPartitionedCall2J
#BatchNorm_2/StatefulPartitionedCall#BatchNorm_2/StatefulPartitionedCall2B
Dense_6/StatefulPartitionedCallDense_6/StatefulPartitionedCall2B
Dense_7/StatefulPartitionedCallDense_7/StatefulPartitionedCall2B
Dense_8/StatefulPartitionedCallDense_8/StatefulPartitionedCall2D
 conv2D_1/StatefulPartitionedCall conv2D_1/StatefulPartitionedCall2D
 conv2D_2/StatefulPartitionedCall conv2D_2/StatefulPartitionedCall2D
 conv2D_3/StatefulPartitionedCall conv2D_3/StatefulPartitionedCall2D
 conv2D_4/StatefulPartitionedCall conv2D_4/StatefulPartitionedCall2D
 conv2D_5/StatefulPartitionedCall conv2D_5/StatefulPartitionedCall2T
(dataAugmentation/StatefulPartitionedCall(dataAugmentation/StatefulPartitionedCall2B
softmax/StatefulPartitionedCallsoftmax/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
D
(__inference_Dropout_7_layer_call_fn_5983

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_Dropout_7_layer_call_and_return_conditional_losses_38452
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
D
(__inference_flatten_4_layer_call_fn_5889

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_flatten_4_layer_call_and_return_conditional_losses_37362
PartitionedCalln
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:?????????

?:X T
0
_output_shapes
:?????????

?
 
_user_specified_nameinputs
?
{
&__inference_softmax_layer_call_fn_6049

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_softmax_layer_call_and_return_conditional_losses_39252
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
??
?
J__inference_dataAugmentation_layer_call_and_return_conditional_losses_3060

inputs3
/normalization_4_reshape_readvariableop_resource5
1normalization_4_reshape_1_readvariableop_resource;
7random_zoom_4_stateful_uniform_statefuluniform_resourceB
>random_translation_4_stateful_uniform_statefuluniform_resource?
;random_rotation_4_stateful_uniform_statefuluniform_resource
identity??&normalization_4/Reshape/ReadVariableOp?(normalization_4/Reshape_1/ReadVariableOp?2random_rotation_4/stateful_uniform/StatefulUniform?5random_translation_4/stateful_uniform/StatefulUniform?7random_translation_4/stateful_uniform_1/StatefulUniform?.random_zoom_4/stateful_uniform/StatefulUniform?0random_zoom_4/stateful_uniform_1/StatefulUniform?
&normalization_4/Reshape/ReadVariableOpReadVariableOp/normalization_4_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_4/Reshape/ReadVariableOp?
normalization_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
normalization_4/Reshape/shape?
normalization_4/ReshapeReshape.normalization_4/Reshape/ReadVariableOp:value:0&normalization_4/Reshape/shape:output:0*
T0*&
_output_shapes
:2
normalization_4/Reshape?
(normalization_4/Reshape_1/ReadVariableOpReadVariableOp1normalization_4_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_4/Reshape_1/ReadVariableOp?
normalization_4/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2!
normalization_4/Reshape_1/shape?
normalization_4/Reshape_1Reshape0normalization_4/Reshape_1/ReadVariableOp:value:0(normalization_4/Reshape_1/shape:output:0*
T0*&
_output_shapes
:2
normalization_4/Reshape_1?
normalization_4/subSubinputs normalization_4/Reshape:output:0*
T0*1
_output_shapes
:???????????2
normalization_4/sub?
normalization_4/SqrtSqrt"normalization_4/Reshape_1:output:0*
T0*&
_output_shapes
:2
normalization_4/Sqrt{
normalization_4/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
normalization_4/Maximum/y?
normalization_4/MaximumMaximumnormalization_4/Sqrt:y:0"normalization_4/Maximum/y:output:0*
T0*&
_output_shapes
:2
normalization_4/Maximum?
normalization_4/truedivRealDivnormalization_4/sub:z:0normalization_4/Maximum:z:0*
T0*1
_output_shapes
:???????????2
normalization_4/truedivu
random_zoom_4/ShapeShapenormalization_4/truediv:z:0*
T0*
_output_shapes
:2
random_zoom_4/Shape?
!random_zoom_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!random_zoom_4/strided_slice/stack?
#random_zoom_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_4/strided_slice/stack_1?
#random_zoom_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_4/strided_slice/stack_2?
random_zoom_4/strided_sliceStridedSlicerandom_zoom_4/Shape:output:0*random_zoom_4/strided_slice/stack:output:0,random_zoom_4/strided_slice/stack_1:output:0,random_zoom_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_4/strided_slice?
#random_zoom_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_4/strided_slice_1/stack?
%random_zoom_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_4/strided_slice_1/stack_1?
%random_zoom_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_4/strided_slice_1/stack_2?
random_zoom_4/strided_slice_1StridedSlicerandom_zoom_4/Shape:output:0,random_zoom_4/strided_slice_1/stack:output:0.random_zoom_4/strided_slice_1/stack_1:output:0.random_zoom_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_4/strided_slice_1?
random_zoom_4/CastCast&random_zoom_4/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_4/Cast?
#random_zoom_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_4/strided_slice_2/stack?
%random_zoom_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_4/strided_slice_2/stack_1?
%random_zoom_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_4/strided_slice_2/stack_2?
random_zoom_4/strided_slice_2StridedSlicerandom_zoom_4/Shape:output:0,random_zoom_4/strided_slice_2/stack:output:0.random_zoom_4/strided_slice_2/stack_1:output:0.random_zoom_4/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_4/strided_slice_2?
random_zoom_4/Cast_1Cast&random_zoom_4/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_4/Cast_1?
&random_zoom_4/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&random_zoom_4/stateful_uniform/shape/1?
$random_zoom_4/stateful_uniform/shapePack$random_zoom_4/strided_slice:output:0/random_zoom_4/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2&
$random_zoom_4/stateful_uniform/shape?
"random_zoom_4/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *??L?2$
"random_zoom_4/stateful_uniform/min?
"random_zoom_4/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *????2$
"random_zoom_4/stateful_uniform/max?
8random_zoom_4/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2:
8random_zoom_4/stateful_uniform/StatefulUniform/algorithm?
.random_zoom_4/stateful_uniform/StatefulUniformStatefulUniform7random_zoom_4_stateful_uniform_statefuluniform_resourceArandom_zoom_4/stateful_uniform/StatefulUniform/algorithm:output:0-random_zoom_4/stateful_uniform/shape:output:0*'
_output_shapes
:?????????*
shape_dtype020
.random_zoom_4/stateful_uniform/StatefulUniform?
"random_zoom_4/stateful_uniform/subSub+random_zoom_4/stateful_uniform/max:output:0+random_zoom_4/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2$
"random_zoom_4/stateful_uniform/sub?
"random_zoom_4/stateful_uniform/mulMul7random_zoom_4/stateful_uniform/StatefulUniform:output:0&random_zoom_4/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????2$
"random_zoom_4/stateful_uniform/mul?
random_zoom_4/stateful_uniformAdd&random_zoom_4/stateful_uniform/mul:z:0+random_zoom_4/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2 
random_zoom_4/stateful_uniform?
(random_zoom_4/stateful_uniform_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(random_zoom_4/stateful_uniform_1/shape/1?
&random_zoom_4/stateful_uniform_1/shapePack$random_zoom_4/strided_slice:output:01random_zoom_4/stateful_uniform_1/shape/1:output:0*
N*
T0*
_output_shapes
:2(
&random_zoom_4/stateful_uniform_1/shape?
$random_zoom_4/stateful_uniform_1/minConst*
_output_shapes
: *
dtype0*
valueB
 *??L?2&
$random_zoom_4/stateful_uniform_1/min?
$random_zoom_4/stateful_uniform_1/maxConst*
_output_shapes
: *
dtype0*
valueB
 *????2&
$random_zoom_4/stateful_uniform_1/max?
:random_zoom_4/stateful_uniform_1/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2<
:random_zoom_4/stateful_uniform_1/StatefulUniform/algorithm?
0random_zoom_4/stateful_uniform_1/StatefulUniformStatefulUniform7random_zoom_4_stateful_uniform_statefuluniform_resourceCrandom_zoom_4/stateful_uniform_1/StatefulUniform/algorithm:output:0/random_zoom_4/stateful_uniform_1/shape:output:0/^random_zoom_4/stateful_uniform/StatefulUniform*'
_output_shapes
:?????????*
shape_dtype022
0random_zoom_4/stateful_uniform_1/StatefulUniform?
$random_zoom_4/stateful_uniform_1/subSub-random_zoom_4/stateful_uniform_1/max:output:0-random_zoom_4/stateful_uniform_1/min:output:0*
T0*
_output_shapes
: 2&
$random_zoom_4/stateful_uniform_1/sub?
$random_zoom_4/stateful_uniform_1/mulMul9random_zoom_4/stateful_uniform_1/StatefulUniform:output:0(random_zoom_4/stateful_uniform_1/sub:z:0*
T0*'
_output_shapes
:?????????2&
$random_zoom_4/stateful_uniform_1/mul?
 random_zoom_4/stateful_uniform_1Add(random_zoom_4/stateful_uniform_1/mul:z:0-random_zoom_4/stateful_uniform_1/min:output:0*
T0*'
_output_shapes
:?????????2"
 random_zoom_4/stateful_uniform_1x
random_zoom_4/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
random_zoom_4/concat/axis?
random_zoom_4/concatConcatV2$random_zoom_4/stateful_uniform_1:z:0"random_zoom_4/stateful_uniform:z:0"random_zoom_4/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
random_zoom_4/concat?
random_zoom_4/zoom_matrix/ShapeShaperandom_zoom_4/concat:output:0*
T0*
_output_shapes
:2!
random_zoom_4/zoom_matrix/Shape?
-random_zoom_4/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-random_zoom_4/zoom_matrix/strided_slice/stack?
/random_zoom_4/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_4/zoom_matrix/strided_slice/stack_1?
/random_zoom_4/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_4/zoom_matrix/strided_slice/stack_2?
'random_zoom_4/zoom_matrix/strided_sliceStridedSlice(random_zoom_4/zoom_matrix/Shape:output:06random_zoom_4/zoom_matrix/strided_slice/stack:output:08random_zoom_4/zoom_matrix/strided_slice/stack_1:output:08random_zoom_4/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'random_zoom_4/zoom_matrix/strided_slice?
random_zoom_4/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
random_zoom_4/zoom_matrix/sub/y?
random_zoom_4/zoom_matrix/subSubrandom_zoom_4/Cast_1:y:0(random_zoom_4/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
random_zoom_4/zoom_matrix/sub?
#random_zoom_4/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2%
#random_zoom_4/zoom_matrix/truediv/y?
!random_zoom_4/zoom_matrix/truedivRealDiv!random_zoom_4/zoom_matrix/sub:z:0,random_zoom_4/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 2#
!random_zoom_4/zoom_matrix/truediv?
/random_zoom_4/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_4/zoom_matrix/strided_slice_1/stack?
1random_zoom_4/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_4/zoom_matrix/strided_slice_1/stack_1?
1random_zoom_4/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_4/zoom_matrix/strided_slice_1/stack_2?
)random_zoom_4/zoom_matrix/strided_slice_1StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_1/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_1/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_4/zoom_matrix/strided_slice_1?
!random_zoom_4/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_4/zoom_matrix/sub_1/x?
random_zoom_4/zoom_matrix/sub_1Sub*random_zoom_4/zoom_matrix/sub_1/x:output:02random_zoom_4/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_4/zoom_matrix/sub_1?
random_zoom_4/zoom_matrix/mulMul%random_zoom_4/zoom_matrix/truediv:z:0#random_zoom_4/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????2
random_zoom_4/zoom_matrix/mul?
!random_zoom_4/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_4/zoom_matrix/sub_2/y?
random_zoom_4/zoom_matrix/sub_2Subrandom_zoom_4/Cast:y:0*random_zoom_4/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2!
random_zoom_4/zoom_matrix/sub_2?
%random_zoom_4/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2'
%random_zoom_4/zoom_matrix/truediv_1/y?
#random_zoom_4/zoom_matrix/truediv_1RealDiv#random_zoom_4/zoom_matrix/sub_2:z:0.random_zoom_4/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_4/zoom_matrix/truediv_1?
/random_zoom_4/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_4/zoom_matrix/strided_slice_2/stack?
1random_zoom_4/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_4/zoom_matrix/strided_slice_2/stack_1?
1random_zoom_4/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_4/zoom_matrix/strided_slice_2/stack_2?
)random_zoom_4/zoom_matrix/strided_slice_2StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_2/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_2/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_4/zoom_matrix/strided_slice_2?
!random_zoom_4/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_4/zoom_matrix/sub_3/x?
random_zoom_4/zoom_matrix/sub_3Sub*random_zoom_4/zoom_matrix/sub_3/x:output:02random_zoom_4/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_4/zoom_matrix/sub_3?
random_zoom_4/zoom_matrix/mul_1Mul'random_zoom_4/zoom_matrix/truediv_1:z:0#random_zoom_4/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????2!
random_zoom_4/zoom_matrix/mul_1?
/random_zoom_4/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_4/zoom_matrix/strided_slice_3/stack?
1random_zoom_4/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_4/zoom_matrix/strided_slice_3/stack_1?
1random_zoom_4/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_4/zoom_matrix/strided_slice_3/stack_2?
)random_zoom_4/zoom_matrix/strided_slice_3StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_3/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_3/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_4/zoom_matrix/strided_slice_3?
%random_zoom_4/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_4/zoom_matrix/zeros/mul/y?
#random_zoom_4/zoom_matrix/zeros/mulMul0random_zoom_4/zoom_matrix/strided_slice:output:0.random_zoom_4/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_4/zoom_matrix/zeros/mul?
&random_zoom_4/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2(
&random_zoom_4/zoom_matrix/zeros/Less/y?
$random_zoom_4/zoom_matrix/zeros/LessLess'random_zoom_4/zoom_matrix/zeros/mul:z:0/random_zoom_4/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2&
$random_zoom_4/zoom_matrix/zeros/Less?
(random_zoom_4/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(random_zoom_4/zoom_matrix/zeros/packed/1?
&random_zoom_4/zoom_matrix/zeros/packedPack0random_zoom_4/zoom_matrix/strided_slice:output:01random_zoom_4/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&random_zoom_4/zoom_matrix/zeros/packed?
%random_zoom_4/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%random_zoom_4/zoom_matrix/zeros/Const?
random_zoom_4/zoom_matrix/zerosFill/random_zoom_4/zoom_matrix/zeros/packed:output:0.random_zoom_4/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_4/zoom_matrix/zeros?
'random_zoom_4/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_4/zoom_matrix/zeros_1/mul/y?
%random_zoom_4/zoom_matrix/zeros_1/mulMul0random_zoom_4/zoom_matrix/strided_slice:output:00random_zoom_4/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_4/zoom_matrix/zeros_1/mul?
(random_zoom_4/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_4/zoom_matrix/zeros_1/Less/y?
&random_zoom_4/zoom_matrix/zeros_1/LessLess)random_zoom_4/zoom_matrix/zeros_1/mul:z:01random_zoom_4/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_4/zoom_matrix/zeros_1/Less?
*random_zoom_4/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_4/zoom_matrix/zeros_1/packed/1?
(random_zoom_4/zoom_matrix/zeros_1/packedPack0random_zoom_4/zoom_matrix/strided_slice:output:03random_zoom_4/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_4/zoom_matrix/zeros_1/packed?
'random_zoom_4/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_4/zoom_matrix/zeros_1/Const?
!random_zoom_4/zoom_matrix/zeros_1Fill1random_zoom_4/zoom_matrix/zeros_1/packed:output:00random_zoom_4/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_4/zoom_matrix/zeros_1?
/random_zoom_4/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_4/zoom_matrix/strided_slice_4/stack?
1random_zoom_4/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_4/zoom_matrix/strided_slice_4/stack_1?
1random_zoom_4/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_4/zoom_matrix/strided_slice_4/stack_2?
)random_zoom_4/zoom_matrix/strided_slice_4StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_4/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_4/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_4/zoom_matrix/strided_slice_4?
'random_zoom_4/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_4/zoom_matrix/zeros_2/mul/y?
%random_zoom_4/zoom_matrix/zeros_2/mulMul0random_zoom_4/zoom_matrix/strided_slice:output:00random_zoom_4/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_4/zoom_matrix/zeros_2/mul?
(random_zoom_4/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_4/zoom_matrix/zeros_2/Less/y?
&random_zoom_4/zoom_matrix/zeros_2/LessLess)random_zoom_4/zoom_matrix/zeros_2/mul:z:01random_zoom_4/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_4/zoom_matrix/zeros_2/Less?
*random_zoom_4/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_4/zoom_matrix/zeros_2/packed/1?
(random_zoom_4/zoom_matrix/zeros_2/packedPack0random_zoom_4/zoom_matrix/strided_slice:output:03random_zoom_4/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_4/zoom_matrix/zeros_2/packed?
'random_zoom_4/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_4/zoom_matrix/zeros_2/Const?
!random_zoom_4/zoom_matrix/zeros_2Fill1random_zoom_4/zoom_matrix/zeros_2/packed:output:00random_zoom_4/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_4/zoom_matrix/zeros_2?
%random_zoom_4/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_4/zoom_matrix/concat/axis?
 random_zoom_4/zoom_matrix/concatConcatV22random_zoom_4/zoom_matrix/strided_slice_3:output:0(random_zoom_4/zoom_matrix/zeros:output:0!random_zoom_4/zoom_matrix/mul:z:0*random_zoom_4/zoom_matrix/zeros_1:output:02random_zoom_4/zoom_matrix/strided_slice_4:output:0#random_zoom_4/zoom_matrix/mul_1:z:0*random_zoom_4/zoom_matrix/zeros_2:output:0.random_zoom_4/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2"
 random_zoom_4/zoom_matrix/concat?
random_zoom_4/transform/ShapeShapenormalization_4/truediv:z:0*
T0*
_output_shapes
:2
random_zoom_4/transform/Shape?
+random_zoom_4/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+random_zoom_4/transform/strided_slice/stack?
-random_zoom_4/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_4/transform/strided_slice/stack_1?
-random_zoom_4/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_4/transform/strided_slice/stack_2?
%random_zoom_4/transform/strided_sliceStridedSlice&random_zoom_4/transform/Shape:output:04random_zoom_4/transform/strided_slice/stack:output:06random_zoom_4/transform/strided_slice/stack_1:output:06random_zoom_4/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2'
%random_zoom_4/transform/strided_slice?
"random_zoom_4/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"random_zoom_4/transform/fill_value?
2random_zoom_4/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3normalization_4/truediv:z:0)random_zoom_4/zoom_matrix/concat:output:0.random_zoom_4/transform/strided_slice:output:0+random_zoom_4/transform/fill_value:output:0*1
_output_shapes
:???????????*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR24
2random_zoom_4/transform/ImageProjectiveTransformV3?
random_translation_4/ShapeShapeGrandom_zoom_4/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
random_translation_4/Shape?
(random_translation_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(random_translation_4/strided_slice/stack?
*random_translation_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation_4/strided_slice/stack_1?
*random_translation_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation_4/strided_slice/stack_2?
"random_translation_4/strided_sliceStridedSlice#random_translation_4/Shape:output:01random_translation_4/strided_slice/stack:output:03random_translation_4/strided_slice/stack_1:output:03random_translation_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"random_translation_4/strided_slice?
*random_translation_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation_4/strided_slice_1/stack?
,random_translation_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,random_translation_4/strided_slice_1/stack_1?
,random_translation_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,random_translation_4/strided_slice_1/stack_2?
$random_translation_4/strided_slice_1StridedSlice#random_translation_4/Shape:output:03random_translation_4/strided_slice_1/stack:output:05random_translation_4/strided_slice_1/stack_1:output:05random_translation_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$random_translation_4/strided_slice_1?
random_translation_4/CastCast-random_translation_4/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_translation_4/Cast?
*random_translation_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation_4/strided_slice_2/stack?
,random_translation_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,random_translation_4/strided_slice_2/stack_1?
,random_translation_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,random_translation_4/strided_slice_2/stack_2?
$random_translation_4/strided_slice_2StridedSlice#random_translation_4/Shape:output:03random_translation_4/strided_slice_2/stack:output:05random_translation_4/strided_slice_2/stack_1:output:05random_translation_4/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$random_translation_4/strided_slice_2?
random_translation_4/Cast_1Cast-random_translation_4/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_translation_4/Cast_1?
-random_translation_4/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2/
-random_translation_4/stateful_uniform/shape/1?
+random_translation_4/stateful_uniform/shapePack+random_translation_4/strided_slice:output:06random_translation_4/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2-
+random_translation_4/stateful_uniform/shape?
)random_translation_4/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *??̽2+
)random_translation_4/stateful_uniform/min?
)random_translation_4/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *???=2+
)random_translation_4/stateful_uniform/max?
?random_translation_4/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2A
?random_translation_4/stateful_uniform/StatefulUniform/algorithm?
5random_translation_4/stateful_uniform/StatefulUniformStatefulUniform>random_translation_4_stateful_uniform_statefuluniform_resourceHrandom_translation_4/stateful_uniform/StatefulUniform/algorithm:output:04random_translation_4/stateful_uniform/shape:output:0*'
_output_shapes
:?????????*
shape_dtype027
5random_translation_4/stateful_uniform/StatefulUniform?
)random_translation_4/stateful_uniform/subSub2random_translation_4/stateful_uniform/max:output:02random_translation_4/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2+
)random_translation_4/stateful_uniform/sub?
)random_translation_4/stateful_uniform/mulMul>random_translation_4/stateful_uniform/StatefulUniform:output:0-random_translation_4/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????2+
)random_translation_4/stateful_uniform/mul?
%random_translation_4/stateful_uniformAdd-random_translation_4/stateful_uniform/mul:z:02random_translation_4/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2'
%random_translation_4/stateful_uniform?
random_translation_4/mulMul)random_translation_4/stateful_uniform:z:0random_translation_4/Cast:y:0*
T0*'
_output_shapes
:?????????2
random_translation_4/mul?
/random_translation_4/stateful_uniform_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :21
/random_translation_4/stateful_uniform_1/shape/1?
-random_translation_4/stateful_uniform_1/shapePack+random_translation_4/strided_slice:output:08random_translation_4/stateful_uniform_1/shape/1:output:0*
N*
T0*
_output_shapes
:2/
-random_translation_4/stateful_uniform_1/shape?
+random_translation_4/stateful_uniform_1/minConst*
_output_shapes
: *
dtype0*
valueB
 *??̽2-
+random_translation_4/stateful_uniform_1/min?
+random_translation_4/stateful_uniform_1/maxConst*
_output_shapes
: *
dtype0*
valueB
 *???=2-
+random_translation_4/stateful_uniform_1/max?
Arandom_translation_4/stateful_uniform_1/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2C
Arandom_translation_4/stateful_uniform_1/StatefulUniform/algorithm?
7random_translation_4/stateful_uniform_1/StatefulUniformStatefulUniform>random_translation_4_stateful_uniform_statefuluniform_resourceJrandom_translation_4/stateful_uniform_1/StatefulUniform/algorithm:output:06random_translation_4/stateful_uniform_1/shape:output:06^random_translation_4/stateful_uniform/StatefulUniform*'
_output_shapes
:?????????*
shape_dtype029
7random_translation_4/stateful_uniform_1/StatefulUniform?
+random_translation_4/stateful_uniform_1/subSub4random_translation_4/stateful_uniform_1/max:output:04random_translation_4/stateful_uniform_1/min:output:0*
T0*
_output_shapes
: 2-
+random_translation_4/stateful_uniform_1/sub?
+random_translation_4/stateful_uniform_1/mulMul@random_translation_4/stateful_uniform_1/StatefulUniform:output:0/random_translation_4/stateful_uniform_1/sub:z:0*
T0*'
_output_shapes
:?????????2-
+random_translation_4/stateful_uniform_1/mul?
'random_translation_4/stateful_uniform_1Add/random_translation_4/stateful_uniform_1/mul:z:04random_translation_4/stateful_uniform_1/min:output:0*
T0*'
_output_shapes
:?????????2)
'random_translation_4/stateful_uniform_1?
random_translation_4/mul_1Mul+random_translation_4/stateful_uniform_1:z:0random_translation_4/Cast_1:y:0*
T0*'
_output_shapes
:?????????2
random_translation_4/mul_1?
 random_translation_4/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2"
 random_translation_4/concat/axis?
random_translation_4/concatConcatV2random_translation_4/mul_1:z:0random_translation_4/mul:z:0)random_translation_4/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
random_translation_4/concat?
-random_translation_4/translation_matrix/ShapeShape$random_translation_4/concat:output:0*
T0*
_output_shapes
:2/
-random_translation_4/translation_matrix/Shape?
;random_translation_4/translation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2=
;random_translation_4/translation_matrix/strided_slice/stack?
=random_translation_4/translation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2?
=random_translation_4/translation_matrix/strided_slice/stack_1?
=random_translation_4/translation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=random_translation_4/translation_matrix/strided_slice/stack_2?
5random_translation_4/translation_matrix/strided_sliceStridedSlice6random_translation_4/translation_matrix/Shape:output:0Drandom_translation_4/translation_matrix/strided_slice/stack:output:0Frandom_translation_4/translation_matrix/strided_slice/stack_1:output:0Frandom_translation_4/translation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask27
5random_translation_4/translation_matrix/strided_slice?
2random_translation_4/translation_matrix/ones/mul/yConst*
_output_shapes
: *
dtype0*
value	B :24
2random_translation_4/translation_matrix/ones/mul/y?
0random_translation_4/translation_matrix/ones/mulMul>random_translation_4/translation_matrix/strided_slice:output:0;random_translation_4/translation_matrix/ones/mul/y:output:0*
T0*
_output_shapes
: 22
0random_translation_4/translation_matrix/ones/mul?
3random_translation_4/translation_matrix/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?25
3random_translation_4/translation_matrix/ones/Less/y?
1random_translation_4/translation_matrix/ones/LessLess4random_translation_4/translation_matrix/ones/mul:z:0<random_translation_4/translation_matrix/ones/Less/y:output:0*
T0*
_output_shapes
: 23
1random_translation_4/translation_matrix/ones/Less?
5random_translation_4/translation_matrix/ones/packed/1Const*
_output_shapes
: *
dtype0*
value	B :27
5random_translation_4/translation_matrix/ones/packed/1?
3random_translation_4/translation_matrix/ones/packedPack>random_translation_4/translation_matrix/strided_slice:output:0>random_translation_4/translation_matrix/ones/packed/1:output:0*
N*
T0*
_output_shapes
:25
3random_translation_4/translation_matrix/ones/packed?
2random_translation_4/translation_matrix/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??24
2random_translation_4/translation_matrix/ones/Const?
,random_translation_4/translation_matrix/onesFill<random_translation_4/translation_matrix/ones/packed:output:0;random_translation_4/translation_matrix/ones/Const:output:0*
T0*'
_output_shapes
:?????????2.
,random_translation_4/translation_matrix/ones?
3random_translation_4/translation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :25
3random_translation_4/translation_matrix/zeros/mul/y?
1random_translation_4/translation_matrix/zeros/mulMul>random_translation_4/translation_matrix/strided_slice:output:0<random_translation_4/translation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 23
1random_translation_4/translation_matrix/zeros/mul?
4random_translation_4/translation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?26
4random_translation_4/translation_matrix/zeros/Less/y?
2random_translation_4/translation_matrix/zeros/LessLess5random_translation_4/translation_matrix/zeros/mul:z:0=random_translation_4/translation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 24
2random_translation_4/translation_matrix/zeros/Less?
6random_translation_4/translation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :28
6random_translation_4/translation_matrix/zeros/packed/1?
4random_translation_4/translation_matrix/zeros/packedPack>random_translation_4/translation_matrix/strided_slice:output:0?random_translation_4/translation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:26
4random_translation_4/translation_matrix/zeros/packed?
3random_translation_4/translation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    25
3random_translation_4/translation_matrix/zeros/Const?
-random_translation_4/translation_matrix/zerosFill=random_translation_4/translation_matrix/zeros/packed:output:0<random_translation_4/translation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2/
-random_translation_4/translation_matrix/zeros?
=random_translation_4/translation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2?
=random_translation_4/translation_matrix/strided_slice_1/stack?
?random_translation_4/translation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2A
?random_translation_4/translation_matrix/strided_slice_1/stack_1?
?random_translation_4/translation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2A
?random_translation_4/translation_matrix/strided_slice_1/stack_2?
7random_translation_4/translation_matrix/strided_slice_1StridedSlice$random_translation_4/concat:output:0Frandom_translation_4/translation_matrix/strided_slice_1/stack:output:0Hrandom_translation_4/translation_matrix/strided_slice_1/stack_1:output:0Hrandom_translation_4/translation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask29
7random_translation_4/translation_matrix/strided_slice_1?
+random_translation_4/translation_matrix/NegNeg@random_translation_4/translation_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2-
+random_translation_4/translation_matrix/Neg?
5random_translation_4/translation_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :27
5random_translation_4/translation_matrix/zeros_1/mul/y?
3random_translation_4/translation_matrix/zeros_1/mulMul>random_translation_4/translation_matrix/strided_slice:output:0>random_translation_4/translation_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 25
3random_translation_4/translation_matrix/zeros_1/mul?
6random_translation_4/translation_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?28
6random_translation_4/translation_matrix/zeros_1/Less/y?
4random_translation_4/translation_matrix/zeros_1/LessLess7random_translation_4/translation_matrix/zeros_1/mul:z:0?random_translation_4/translation_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 26
4random_translation_4/translation_matrix/zeros_1/Less?
8random_translation_4/translation_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2:
8random_translation_4/translation_matrix/zeros_1/packed/1?
6random_translation_4/translation_matrix/zeros_1/packedPack>random_translation_4/translation_matrix/strided_slice:output:0Arandom_translation_4/translation_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:28
6random_translation_4/translation_matrix/zeros_1/packed?
5random_translation_4/translation_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5random_translation_4/translation_matrix/zeros_1/Const?
/random_translation_4/translation_matrix/zeros_1Fill?random_translation_4/translation_matrix/zeros_1/packed:output:0>random_translation_4/translation_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????21
/random_translation_4/translation_matrix/zeros_1?
4random_translation_4/translation_matrix/ones_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :26
4random_translation_4/translation_matrix/ones_1/mul/y?
2random_translation_4/translation_matrix/ones_1/mulMul>random_translation_4/translation_matrix/strided_slice:output:0=random_translation_4/translation_matrix/ones_1/mul/y:output:0*
T0*
_output_shapes
: 24
2random_translation_4/translation_matrix/ones_1/mul?
5random_translation_4/translation_matrix/ones_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?27
5random_translation_4/translation_matrix/ones_1/Less/y?
3random_translation_4/translation_matrix/ones_1/LessLess6random_translation_4/translation_matrix/ones_1/mul:z:0>random_translation_4/translation_matrix/ones_1/Less/y:output:0*
T0*
_output_shapes
: 25
3random_translation_4/translation_matrix/ones_1/Less?
7random_translation_4/translation_matrix/ones_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :29
7random_translation_4/translation_matrix/ones_1/packed/1?
5random_translation_4/translation_matrix/ones_1/packedPack>random_translation_4/translation_matrix/strided_slice:output:0@random_translation_4/translation_matrix/ones_1/packed/1:output:0*
N*
T0*
_output_shapes
:27
5random_translation_4/translation_matrix/ones_1/packed?
4random_translation_4/translation_matrix/ones_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??26
4random_translation_4/translation_matrix/ones_1/Const?
.random_translation_4/translation_matrix/ones_1Fill>random_translation_4/translation_matrix/ones_1/packed:output:0=random_translation_4/translation_matrix/ones_1/Const:output:0*
T0*'
_output_shapes
:?????????20
.random_translation_4/translation_matrix/ones_1?
=random_translation_4/translation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2?
=random_translation_4/translation_matrix/strided_slice_2/stack?
?random_translation_4/translation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2A
?random_translation_4/translation_matrix/strided_slice_2/stack_1?
?random_translation_4/translation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2A
?random_translation_4/translation_matrix/strided_slice_2/stack_2?
7random_translation_4/translation_matrix/strided_slice_2StridedSlice$random_translation_4/concat:output:0Frandom_translation_4/translation_matrix/strided_slice_2/stack:output:0Hrandom_translation_4/translation_matrix/strided_slice_2/stack_1:output:0Hrandom_translation_4/translation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask29
7random_translation_4/translation_matrix/strided_slice_2?
-random_translation_4/translation_matrix/Neg_1Neg@random_translation_4/translation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2/
-random_translation_4/translation_matrix/Neg_1?
5random_translation_4/translation_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :27
5random_translation_4/translation_matrix/zeros_2/mul/y?
3random_translation_4/translation_matrix/zeros_2/mulMul>random_translation_4/translation_matrix/strided_slice:output:0>random_translation_4/translation_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 25
3random_translation_4/translation_matrix/zeros_2/mul?
6random_translation_4/translation_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?28
6random_translation_4/translation_matrix/zeros_2/Less/y?
4random_translation_4/translation_matrix/zeros_2/LessLess7random_translation_4/translation_matrix/zeros_2/mul:z:0?random_translation_4/translation_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 26
4random_translation_4/translation_matrix/zeros_2/Less?
8random_translation_4/translation_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2:
8random_translation_4/translation_matrix/zeros_2/packed/1?
6random_translation_4/translation_matrix/zeros_2/packedPack>random_translation_4/translation_matrix/strided_slice:output:0Arandom_translation_4/translation_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:28
6random_translation_4/translation_matrix/zeros_2/packed?
5random_translation_4/translation_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5random_translation_4/translation_matrix/zeros_2/Const?
/random_translation_4/translation_matrix/zeros_2Fill?random_translation_4/translation_matrix/zeros_2/packed:output:0>random_translation_4/translation_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????21
/random_translation_4/translation_matrix/zeros_2?
3random_translation_4/translation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :25
3random_translation_4/translation_matrix/concat/axis?
.random_translation_4/translation_matrix/concatConcatV25random_translation_4/translation_matrix/ones:output:06random_translation_4/translation_matrix/zeros:output:0/random_translation_4/translation_matrix/Neg:y:08random_translation_4/translation_matrix/zeros_1:output:07random_translation_4/translation_matrix/ones_1:output:01random_translation_4/translation_matrix/Neg_1:y:08random_translation_4/translation_matrix/zeros_2:output:0<random_translation_4/translation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????20
.random_translation_4/translation_matrix/concat?
$random_translation_4/transform/ShapeShapeGrandom_zoom_4/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2&
$random_translation_4/transform/Shape?
2random_translation_4/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:24
2random_translation_4/transform/strided_slice/stack?
4random_translation_4/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4random_translation_4/transform/strided_slice/stack_1?
4random_translation_4/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4random_translation_4/transform/strided_slice/stack_2?
,random_translation_4/transform/strided_sliceStridedSlice-random_translation_4/transform/Shape:output:0;random_translation_4/transform/strided_slice/stack:output:0=random_translation_4/transform/strided_slice/stack_1:output:0=random_translation_4/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2.
,random_translation_4/transform/strided_slice?
)random_translation_4/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2+
)random_translation_4/transform/fill_value?
9random_translation_4/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Grandom_zoom_4/transform/ImageProjectiveTransformV3:transformed_images:07random_translation_4/translation_matrix/concat:output:05random_translation_4/transform/strided_slice:output:02random_translation_4/transform/fill_value:output:0*1
_output_shapes
:???????????*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2;
9random_translation_4/transform/ImageProjectiveTransformV3?
random_rotation_4/ShapeShapeNrandom_translation_4/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
random_rotation_4/Shape?
%random_rotation_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%random_rotation_4/strided_slice/stack?
'random_rotation_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_4/strided_slice/stack_1?
'random_rotation_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_4/strided_slice/stack_2?
random_rotation_4/strided_sliceStridedSlice random_rotation_4/Shape:output:0.random_rotation_4/strided_slice/stack:output:00random_rotation_4/strided_slice/stack_1:output:00random_rotation_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation_4/strided_slice?
'random_rotation_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_4/strided_slice_1/stack?
)random_rotation_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_4/strided_slice_1/stack_1?
)random_rotation_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_4/strided_slice_1/stack_2?
!random_rotation_4/strided_slice_1StridedSlice random_rotation_4/Shape:output:00random_rotation_4/strided_slice_1/stack:output:02random_rotation_4/strided_slice_1/stack_1:output:02random_rotation_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_4/strided_slice_1?
random_rotation_4/CastCast*random_rotation_4/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_4/Cast?
'random_rotation_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_4/strided_slice_2/stack?
)random_rotation_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_4/strided_slice_2/stack_1?
)random_rotation_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_4/strided_slice_2/stack_2?
!random_rotation_4/strided_slice_2StridedSlice random_rotation_4/Shape:output:00random_rotation_4/strided_slice_2/stack:output:02random_rotation_4/strided_slice_2/stack_1:output:02random_rotation_4/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_4/strided_slice_2?
random_rotation_4/Cast_1Cast*random_rotation_4/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_4/Cast_1?
(random_rotation_4/stateful_uniform/shapePack(random_rotation_4/strided_slice:output:0*
N*
T0*
_output_shapes
:2*
(random_rotation_4/stateful_uniform/shape?
&random_rotation_4/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|? ?2(
&random_rotation_4/stateful_uniform/min?
&random_rotation_4/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|? ?2(
&random_rotation_4/stateful_uniform/max?
<random_rotation_4/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2>
<random_rotation_4/stateful_uniform/StatefulUniform/algorithm?
2random_rotation_4/stateful_uniform/StatefulUniformStatefulUniform;random_rotation_4_stateful_uniform_statefuluniform_resourceErandom_rotation_4/stateful_uniform/StatefulUniform/algorithm:output:01random_rotation_4/stateful_uniform/shape:output:0*#
_output_shapes
:?????????*
shape_dtype024
2random_rotation_4/stateful_uniform/StatefulUniform?
&random_rotation_4/stateful_uniform/subSub/random_rotation_4/stateful_uniform/max:output:0/random_rotation_4/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2(
&random_rotation_4/stateful_uniform/sub?
&random_rotation_4/stateful_uniform/mulMul;random_rotation_4/stateful_uniform/StatefulUniform:output:0*random_rotation_4/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:?????????2(
&random_rotation_4/stateful_uniform/mul?
"random_rotation_4/stateful_uniformAdd*random_rotation_4/stateful_uniform/mul:z:0/random_rotation_4/stateful_uniform/min:output:0*
T0*#
_output_shapes
:?????????2$
"random_rotation_4/stateful_uniform?
'random_rotation_4/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_rotation_4/rotation_matrix/sub/y?
%random_rotation_4/rotation_matrix/subSubrandom_rotation_4/Cast_1:y:00random_rotation_4/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation_4/rotation_matrix/sub?
%random_rotation_4/rotation_matrix/CosCos&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_4/rotation_matrix/Cos?
)random_rotation_4/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_4/rotation_matrix/sub_1/y?
'random_rotation_4/rotation_matrix/sub_1Subrandom_rotation_4/Cast_1:y:02random_rotation_4/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_4/rotation_matrix/sub_1?
%random_rotation_4/rotation_matrix/mulMul)random_rotation_4/rotation_matrix/Cos:y:0+random_rotation_4/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_4/rotation_matrix/mul?
%random_rotation_4/rotation_matrix/SinSin&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_4/rotation_matrix/Sin?
)random_rotation_4/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_4/rotation_matrix/sub_2/y?
'random_rotation_4/rotation_matrix/sub_2Subrandom_rotation_4/Cast:y:02random_rotation_4/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_4/rotation_matrix/sub_2?
'random_rotation_4/rotation_matrix/mul_1Mul)random_rotation_4/rotation_matrix/Sin:y:0+random_rotation_4/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_4/rotation_matrix/mul_1?
'random_rotation_4/rotation_matrix/sub_3Sub)random_rotation_4/rotation_matrix/mul:z:0+random_rotation_4/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_4/rotation_matrix/sub_3?
'random_rotation_4/rotation_matrix/sub_4Sub)random_rotation_4/rotation_matrix/sub:z:0+random_rotation_4/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_4/rotation_matrix/sub_4?
+random_rotation_4/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2-
+random_rotation_4/rotation_matrix/truediv/y?
)random_rotation_4/rotation_matrix/truedivRealDiv+random_rotation_4/rotation_matrix/sub_4:z:04random_rotation_4/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:?????????2+
)random_rotation_4/rotation_matrix/truediv?
)random_rotation_4/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_4/rotation_matrix/sub_5/y?
'random_rotation_4/rotation_matrix/sub_5Subrandom_rotation_4/Cast:y:02random_rotation_4/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_4/rotation_matrix/sub_5?
'random_rotation_4/rotation_matrix/Sin_1Sin&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_4/rotation_matrix/Sin_1?
)random_rotation_4/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_4/rotation_matrix/sub_6/y?
'random_rotation_4/rotation_matrix/sub_6Subrandom_rotation_4/Cast_1:y:02random_rotation_4/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_4/rotation_matrix/sub_6?
'random_rotation_4/rotation_matrix/mul_2Mul+random_rotation_4/rotation_matrix/Sin_1:y:0+random_rotation_4/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_4/rotation_matrix/mul_2?
'random_rotation_4/rotation_matrix/Cos_1Cos&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_4/rotation_matrix/Cos_1?
)random_rotation_4/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_4/rotation_matrix/sub_7/y?
'random_rotation_4/rotation_matrix/sub_7Subrandom_rotation_4/Cast:y:02random_rotation_4/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_4/rotation_matrix/sub_7?
'random_rotation_4/rotation_matrix/mul_3Mul+random_rotation_4/rotation_matrix/Cos_1:y:0+random_rotation_4/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_4/rotation_matrix/mul_3?
%random_rotation_4/rotation_matrix/addAddV2+random_rotation_4/rotation_matrix/mul_2:z:0+random_rotation_4/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_4/rotation_matrix/add?
'random_rotation_4/rotation_matrix/sub_8Sub+random_rotation_4/rotation_matrix/sub_5:z:0)random_rotation_4/rotation_matrix/add:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_4/rotation_matrix/sub_8?
-random_rotation_4/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2/
-random_rotation_4/rotation_matrix/truediv_1/y?
+random_rotation_4/rotation_matrix/truediv_1RealDiv+random_rotation_4/rotation_matrix/sub_8:z:06random_rotation_4/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:?????????2-
+random_rotation_4/rotation_matrix/truediv_1?
'random_rotation_4/rotation_matrix/ShapeShape&random_rotation_4/stateful_uniform:z:0*
T0*
_output_shapes
:2)
'random_rotation_4/rotation_matrix/Shape?
5random_rotation_4/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5random_rotation_4/rotation_matrix/strided_slice/stack?
7random_rotation_4/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_4/rotation_matrix/strided_slice/stack_1?
7random_rotation_4/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_4/rotation_matrix/strided_slice/stack_2?
/random_rotation_4/rotation_matrix/strided_sliceStridedSlice0random_rotation_4/rotation_matrix/Shape:output:0>random_rotation_4/rotation_matrix/strided_slice/stack:output:0@random_rotation_4/rotation_matrix/strided_slice/stack_1:output:0@random_rotation_4/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/random_rotation_4/rotation_matrix/strided_slice?
'random_rotation_4/rotation_matrix/Cos_2Cos&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_4/rotation_matrix/Cos_2?
7random_rotation_4/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_4/rotation_matrix/strided_slice_1/stack?
9random_rotation_4/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_4/rotation_matrix/strided_slice_1/stack_1?
9random_rotation_4/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_4/rotation_matrix/strided_slice_1/stack_2?
1random_rotation_4/rotation_matrix/strided_slice_1StridedSlice+random_rotation_4/rotation_matrix/Cos_2:y:0@random_rotation_4/rotation_matrix/strided_slice_1/stack:output:0Brandom_rotation_4/rotation_matrix/strided_slice_1/stack_1:output:0Brandom_rotation_4/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_4/rotation_matrix/strided_slice_1?
'random_rotation_4/rotation_matrix/Sin_2Sin&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_4/rotation_matrix/Sin_2?
7random_rotation_4/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_4/rotation_matrix/strided_slice_2/stack?
9random_rotation_4/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_4/rotation_matrix/strided_slice_2/stack_1?
9random_rotation_4/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_4/rotation_matrix/strided_slice_2/stack_2?
1random_rotation_4/rotation_matrix/strided_slice_2StridedSlice+random_rotation_4/rotation_matrix/Sin_2:y:0@random_rotation_4/rotation_matrix/strided_slice_2/stack:output:0Brandom_rotation_4/rotation_matrix/strided_slice_2/stack_1:output:0Brandom_rotation_4/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_4/rotation_matrix/strided_slice_2?
%random_rotation_4/rotation_matrix/NegNeg:random_rotation_4/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2'
%random_rotation_4/rotation_matrix/Neg?
7random_rotation_4/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_4/rotation_matrix/strided_slice_3/stack?
9random_rotation_4/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_4/rotation_matrix/strided_slice_3/stack_1?
9random_rotation_4/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_4/rotation_matrix/strided_slice_3/stack_2?
1random_rotation_4/rotation_matrix/strided_slice_3StridedSlice-random_rotation_4/rotation_matrix/truediv:z:0@random_rotation_4/rotation_matrix/strided_slice_3/stack:output:0Brandom_rotation_4/rotation_matrix/strided_slice_3/stack_1:output:0Brandom_rotation_4/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_4/rotation_matrix/strided_slice_3?
'random_rotation_4/rotation_matrix/Sin_3Sin&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_4/rotation_matrix/Sin_3?
7random_rotation_4/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_4/rotation_matrix/strided_slice_4/stack?
9random_rotation_4/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_4/rotation_matrix/strided_slice_4/stack_1?
9random_rotation_4/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_4/rotation_matrix/strided_slice_4/stack_2?
1random_rotation_4/rotation_matrix/strided_slice_4StridedSlice+random_rotation_4/rotation_matrix/Sin_3:y:0@random_rotation_4/rotation_matrix/strided_slice_4/stack:output:0Brandom_rotation_4/rotation_matrix/strided_slice_4/stack_1:output:0Brandom_rotation_4/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_4/rotation_matrix/strided_slice_4?
'random_rotation_4/rotation_matrix/Cos_3Cos&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_4/rotation_matrix/Cos_3?
7random_rotation_4/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_4/rotation_matrix/strided_slice_5/stack?
9random_rotation_4/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_4/rotation_matrix/strided_slice_5/stack_1?
9random_rotation_4/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_4/rotation_matrix/strided_slice_5/stack_2?
1random_rotation_4/rotation_matrix/strided_slice_5StridedSlice+random_rotation_4/rotation_matrix/Cos_3:y:0@random_rotation_4/rotation_matrix/strided_slice_5/stack:output:0Brandom_rotation_4/rotation_matrix/strided_slice_5/stack_1:output:0Brandom_rotation_4/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_4/rotation_matrix/strided_slice_5?
7random_rotation_4/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_4/rotation_matrix/strided_slice_6/stack?
9random_rotation_4/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_4/rotation_matrix/strided_slice_6/stack_1?
9random_rotation_4/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_4/rotation_matrix/strided_slice_6/stack_2?
1random_rotation_4/rotation_matrix/strided_slice_6StridedSlice/random_rotation_4/rotation_matrix/truediv_1:z:0@random_rotation_4/rotation_matrix/strided_slice_6/stack:output:0Brandom_rotation_4/rotation_matrix/strided_slice_6/stack_1:output:0Brandom_rotation_4/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_4/rotation_matrix/strided_slice_6?
-random_rotation_4/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_4/rotation_matrix/zeros/mul/y?
+random_rotation_4/rotation_matrix/zeros/mulMul8random_rotation_4/rotation_matrix/strided_slice:output:06random_rotation_4/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2-
+random_rotation_4/rotation_matrix/zeros/mul?
.random_rotation_4/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?20
.random_rotation_4/rotation_matrix/zeros/Less/y?
,random_rotation_4/rotation_matrix/zeros/LessLess/random_rotation_4/rotation_matrix/zeros/mul:z:07random_rotation_4/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2.
,random_rotation_4/rotation_matrix/zeros/Less?
0random_rotation_4/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
0random_rotation_4/rotation_matrix/zeros/packed/1?
.random_rotation_4/rotation_matrix/zeros/packedPack8random_rotation_4/rotation_matrix/strided_slice:output:09random_rotation_4/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:20
.random_rotation_4/rotation_matrix/zeros/packed?
-random_rotation_4/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2/
-random_rotation_4/rotation_matrix/zeros/Const?
'random_rotation_4/rotation_matrix/zerosFill7random_rotation_4/rotation_matrix/zeros/packed:output:06random_rotation_4/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2)
'random_rotation_4/rotation_matrix/zeros?
-random_rotation_4/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_4/rotation_matrix/concat/axis?
(random_rotation_4/rotation_matrix/concatConcatV2:random_rotation_4/rotation_matrix/strided_slice_1:output:0)random_rotation_4/rotation_matrix/Neg:y:0:random_rotation_4/rotation_matrix/strided_slice_3:output:0:random_rotation_4/rotation_matrix/strided_slice_4:output:0:random_rotation_4/rotation_matrix/strided_slice_5:output:0:random_rotation_4/rotation_matrix/strided_slice_6:output:00random_rotation_4/rotation_matrix/zeros:output:06random_rotation_4/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2*
(random_rotation_4/rotation_matrix/concat?
!random_rotation_4/transform/ShapeShapeNrandom_translation_4/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2#
!random_rotation_4/transform/Shape?
/random_rotation_4/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation_4/transform/strided_slice/stack?
1random_rotation_4/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_4/transform/strided_slice/stack_1?
1random_rotation_4/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_4/transform/strided_slice/stack_2?
)random_rotation_4/transform/strided_sliceStridedSlice*random_rotation_4/transform/Shape:output:08random_rotation_4/transform/strided_slice/stack:output:0:random_rotation_4/transform/strided_slice/stack_1:output:0:random_rotation_4/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2+
)random_rotation_4/transform/strided_slice?
&random_rotation_4/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&random_rotation_4/transform/fill_value?
6random_rotation_4/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Nrandom_translation_4/transform/ImageProjectiveTransformV3:transformed_images:01random_rotation_4/rotation_matrix/concat:output:02random_rotation_4/transform/strided_slice:output:0/random_rotation_4/transform/fill_value:output:0*1
_output_shapes
:???????????*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR28
6random_rotation_4/transform/ImageProjectiveTransformV3?
IdentityIdentityKrandom_rotation_4/transform/ImageProjectiveTransformV3:transformed_images:0'^normalization_4/Reshape/ReadVariableOp)^normalization_4/Reshape_1/ReadVariableOp3^random_rotation_4/stateful_uniform/StatefulUniform6^random_translation_4/stateful_uniform/StatefulUniform8^random_translation_4/stateful_uniform_1/StatefulUniform/^random_zoom_4/stateful_uniform/StatefulUniform1^random_zoom_4/stateful_uniform_1/StatefulUniform*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*D
_input_shapes3
1:???????????:::::2P
&normalization_4/Reshape/ReadVariableOp&normalization_4/Reshape/ReadVariableOp2T
(normalization_4/Reshape_1/ReadVariableOp(normalization_4/Reshape_1/ReadVariableOp2h
2random_rotation_4/stateful_uniform/StatefulUniform2random_rotation_4/stateful_uniform/StatefulUniform2n
5random_translation_4/stateful_uniform/StatefulUniform5random_translation_4/stateful_uniform/StatefulUniform2r
7random_translation_4/stateful_uniform_1/StatefulUniform7random_translation_4/stateful_uniform_1/StatefulUniform2`
.random_zoom_4/stateful_uniform/StatefulUniform.random_zoom_4/stateful_uniform/StatefulUniform2d
0random_zoom_4/stateful_uniform_1/StatefulUniform0random_zoom_4/stateful_uniform_1/StatefulUniform:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
a
C__inference_Dropout_8_layer_call_and_return_conditional_losses_6019

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????@2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
A__inference_softmax_layer_call_and_return_conditional_losses_6040

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
|
'__inference_conv2D_3_layer_call_fn_5810

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2D_3_layer_call_and_return_conditional_losses_36222
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
J__inference_dataAugmentation_layer_call_and_return_conditional_losses_2714
normalization_4_input3
/normalization_4_reshape_readvariableop_resource5
1normalization_4_reshape_1_readvariableop_resource;
7random_zoom_4_stateful_uniform_statefuluniform_resourceB
>random_translation_4_stateful_uniform_statefuluniform_resource?
;random_rotation_4_stateful_uniform_statefuluniform_resource
identity??&normalization_4/Reshape/ReadVariableOp?(normalization_4/Reshape_1/ReadVariableOp?2random_rotation_4/stateful_uniform/StatefulUniform?5random_translation_4/stateful_uniform/StatefulUniform?7random_translation_4/stateful_uniform_1/StatefulUniform?.random_zoom_4/stateful_uniform/StatefulUniform?0random_zoom_4/stateful_uniform_1/StatefulUniform?
&normalization_4/Reshape/ReadVariableOpReadVariableOp/normalization_4_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_4/Reshape/ReadVariableOp?
normalization_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
normalization_4/Reshape/shape?
normalization_4/ReshapeReshape.normalization_4/Reshape/ReadVariableOp:value:0&normalization_4/Reshape/shape:output:0*
T0*&
_output_shapes
:2
normalization_4/Reshape?
(normalization_4/Reshape_1/ReadVariableOpReadVariableOp1normalization_4_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_4/Reshape_1/ReadVariableOp?
normalization_4/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2!
normalization_4/Reshape_1/shape?
normalization_4/Reshape_1Reshape0normalization_4/Reshape_1/ReadVariableOp:value:0(normalization_4/Reshape_1/shape:output:0*
T0*&
_output_shapes
:2
normalization_4/Reshape_1?
normalization_4/subSubnormalization_4_input normalization_4/Reshape:output:0*
T0*1
_output_shapes
:???????????2
normalization_4/sub?
normalization_4/SqrtSqrt"normalization_4/Reshape_1:output:0*
T0*&
_output_shapes
:2
normalization_4/Sqrt{
normalization_4/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
normalization_4/Maximum/y?
normalization_4/MaximumMaximumnormalization_4/Sqrt:y:0"normalization_4/Maximum/y:output:0*
T0*&
_output_shapes
:2
normalization_4/Maximum?
normalization_4/truedivRealDivnormalization_4/sub:z:0normalization_4/Maximum:z:0*
T0*1
_output_shapes
:???????????2
normalization_4/truedivu
random_zoom_4/ShapeShapenormalization_4/truediv:z:0*
T0*
_output_shapes
:2
random_zoom_4/Shape?
!random_zoom_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!random_zoom_4/strided_slice/stack?
#random_zoom_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_4/strided_slice/stack_1?
#random_zoom_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_4/strided_slice/stack_2?
random_zoom_4/strided_sliceStridedSlicerandom_zoom_4/Shape:output:0*random_zoom_4/strided_slice/stack:output:0,random_zoom_4/strided_slice/stack_1:output:0,random_zoom_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_4/strided_slice?
#random_zoom_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_4/strided_slice_1/stack?
%random_zoom_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_4/strided_slice_1/stack_1?
%random_zoom_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_4/strided_slice_1/stack_2?
random_zoom_4/strided_slice_1StridedSlicerandom_zoom_4/Shape:output:0,random_zoom_4/strided_slice_1/stack:output:0.random_zoom_4/strided_slice_1/stack_1:output:0.random_zoom_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_4/strided_slice_1?
random_zoom_4/CastCast&random_zoom_4/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_4/Cast?
#random_zoom_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_4/strided_slice_2/stack?
%random_zoom_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_4/strided_slice_2/stack_1?
%random_zoom_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_4/strided_slice_2/stack_2?
random_zoom_4/strided_slice_2StridedSlicerandom_zoom_4/Shape:output:0,random_zoom_4/strided_slice_2/stack:output:0.random_zoom_4/strided_slice_2/stack_1:output:0.random_zoom_4/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_4/strided_slice_2?
random_zoom_4/Cast_1Cast&random_zoom_4/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_4/Cast_1?
&random_zoom_4/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&random_zoom_4/stateful_uniform/shape/1?
$random_zoom_4/stateful_uniform/shapePack$random_zoom_4/strided_slice:output:0/random_zoom_4/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2&
$random_zoom_4/stateful_uniform/shape?
"random_zoom_4/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *??L?2$
"random_zoom_4/stateful_uniform/min?
"random_zoom_4/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *????2$
"random_zoom_4/stateful_uniform/max?
8random_zoom_4/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2:
8random_zoom_4/stateful_uniform/StatefulUniform/algorithm?
.random_zoom_4/stateful_uniform/StatefulUniformStatefulUniform7random_zoom_4_stateful_uniform_statefuluniform_resourceArandom_zoom_4/stateful_uniform/StatefulUniform/algorithm:output:0-random_zoom_4/stateful_uniform/shape:output:0*'
_output_shapes
:?????????*
shape_dtype020
.random_zoom_4/stateful_uniform/StatefulUniform?
"random_zoom_4/stateful_uniform/subSub+random_zoom_4/stateful_uniform/max:output:0+random_zoom_4/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2$
"random_zoom_4/stateful_uniform/sub?
"random_zoom_4/stateful_uniform/mulMul7random_zoom_4/stateful_uniform/StatefulUniform:output:0&random_zoom_4/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????2$
"random_zoom_4/stateful_uniform/mul?
random_zoom_4/stateful_uniformAdd&random_zoom_4/stateful_uniform/mul:z:0+random_zoom_4/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2 
random_zoom_4/stateful_uniform?
(random_zoom_4/stateful_uniform_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(random_zoom_4/stateful_uniform_1/shape/1?
&random_zoom_4/stateful_uniform_1/shapePack$random_zoom_4/strided_slice:output:01random_zoom_4/stateful_uniform_1/shape/1:output:0*
N*
T0*
_output_shapes
:2(
&random_zoom_4/stateful_uniform_1/shape?
$random_zoom_4/stateful_uniform_1/minConst*
_output_shapes
: *
dtype0*
valueB
 *??L?2&
$random_zoom_4/stateful_uniform_1/min?
$random_zoom_4/stateful_uniform_1/maxConst*
_output_shapes
: *
dtype0*
valueB
 *????2&
$random_zoom_4/stateful_uniform_1/max?
:random_zoom_4/stateful_uniform_1/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2<
:random_zoom_4/stateful_uniform_1/StatefulUniform/algorithm?
0random_zoom_4/stateful_uniform_1/StatefulUniformStatefulUniform7random_zoom_4_stateful_uniform_statefuluniform_resourceCrandom_zoom_4/stateful_uniform_1/StatefulUniform/algorithm:output:0/random_zoom_4/stateful_uniform_1/shape:output:0/^random_zoom_4/stateful_uniform/StatefulUniform*'
_output_shapes
:?????????*
shape_dtype022
0random_zoom_4/stateful_uniform_1/StatefulUniform?
$random_zoom_4/stateful_uniform_1/subSub-random_zoom_4/stateful_uniform_1/max:output:0-random_zoom_4/stateful_uniform_1/min:output:0*
T0*
_output_shapes
: 2&
$random_zoom_4/stateful_uniform_1/sub?
$random_zoom_4/stateful_uniform_1/mulMul9random_zoom_4/stateful_uniform_1/StatefulUniform:output:0(random_zoom_4/stateful_uniform_1/sub:z:0*
T0*'
_output_shapes
:?????????2&
$random_zoom_4/stateful_uniform_1/mul?
 random_zoom_4/stateful_uniform_1Add(random_zoom_4/stateful_uniform_1/mul:z:0-random_zoom_4/stateful_uniform_1/min:output:0*
T0*'
_output_shapes
:?????????2"
 random_zoom_4/stateful_uniform_1x
random_zoom_4/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
random_zoom_4/concat/axis?
random_zoom_4/concatConcatV2$random_zoom_4/stateful_uniform_1:z:0"random_zoom_4/stateful_uniform:z:0"random_zoom_4/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
random_zoom_4/concat?
random_zoom_4/zoom_matrix/ShapeShaperandom_zoom_4/concat:output:0*
T0*
_output_shapes
:2!
random_zoom_4/zoom_matrix/Shape?
-random_zoom_4/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-random_zoom_4/zoom_matrix/strided_slice/stack?
/random_zoom_4/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_4/zoom_matrix/strided_slice/stack_1?
/random_zoom_4/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_4/zoom_matrix/strided_slice/stack_2?
'random_zoom_4/zoom_matrix/strided_sliceStridedSlice(random_zoom_4/zoom_matrix/Shape:output:06random_zoom_4/zoom_matrix/strided_slice/stack:output:08random_zoom_4/zoom_matrix/strided_slice/stack_1:output:08random_zoom_4/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'random_zoom_4/zoom_matrix/strided_slice?
random_zoom_4/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
random_zoom_4/zoom_matrix/sub/y?
random_zoom_4/zoom_matrix/subSubrandom_zoom_4/Cast_1:y:0(random_zoom_4/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
random_zoom_4/zoom_matrix/sub?
#random_zoom_4/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2%
#random_zoom_4/zoom_matrix/truediv/y?
!random_zoom_4/zoom_matrix/truedivRealDiv!random_zoom_4/zoom_matrix/sub:z:0,random_zoom_4/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 2#
!random_zoom_4/zoom_matrix/truediv?
/random_zoom_4/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_4/zoom_matrix/strided_slice_1/stack?
1random_zoom_4/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_4/zoom_matrix/strided_slice_1/stack_1?
1random_zoom_4/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_4/zoom_matrix/strided_slice_1/stack_2?
)random_zoom_4/zoom_matrix/strided_slice_1StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_1/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_1/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_4/zoom_matrix/strided_slice_1?
!random_zoom_4/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_4/zoom_matrix/sub_1/x?
random_zoom_4/zoom_matrix/sub_1Sub*random_zoom_4/zoom_matrix/sub_1/x:output:02random_zoom_4/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_4/zoom_matrix/sub_1?
random_zoom_4/zoom_matrix/mulMul%random_zoom_4/zoom_matrix/truediv:z:0#random_zoom_4/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????2
random_zoom_4/zoom_matrix/mul?
!random_zoom_4/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_4/zoom_matrix/sub_2/y?
random_zoom_4/zoom_matrix/sub_2Subrandom_zoom_4/Cast:y:0*random_zoom_4/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2!
random_zoom_4/zoom_matrix/sub_2?
%random_zoom_4/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2'
%random_zoom_4/zoom_matrix/truediv_1/y?
#random_zoom_4/zoom_matrix/truediv_1RealDiv#random_zoom_4/zoom_matrix/sub_2:z:0.random_zoom_4/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_4/zoom_matrix/truediv_1?
/random_zoom_4/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_4/zoom_matrix/strided_slice_2/stack?
1random_zoom_4/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_4/zoom_matrix/strided_slice_2/stack_1?
1random_zoom_4/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_4/zoom_matrix/strided_slice_2/stack_2?
)random_zoom_4/zoom_matrix/strided_slice_2StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_2/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_2/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_4/zoom_matrix/strided_slice_2?
!random_zoom_4/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_4/zoom_matrix/sub_3/x?
random_zoom_4/zoom_matrix/sub_3Sub*random_zoom_4/zoom_matrix/sub_3/x:output:02random_zoom_4/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_4/zoom_matrix/sub_3?
random_zoom_4/zoom_matrix/mul_1Mul'random_zoom_4/zoom_matrix/truediv_1:z:0#random_zoom_4/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????2!
random_zoom_4/zoom_matrix/mul_1?
/random_zoom_4/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_4/zoom_matrix/strided_slice_3/stack?
1random_zoom_4/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_4/zoom_matrix/strided_slice_3/stack_1?
1random_zoom_4/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_4/zoom_matrix/strided_slice_3/stack_2?
)random_zoom_4/zoom_matrix/strided_slice_3StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_3/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_3/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_4/zoom_matrix/strided_slice_3?
%random_zoom_4/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_4/zoom_matrix/zeros/mul/y?
#random_zoom_4/zoom_matrix/zeros/mulMul0random_zoom_4/zoom_matrix/strided_slice:output:0.random_zoom_4/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_4/zoom_matrix/zeros/mul?
&random_zoom_4/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2(
&random_zoom_4/zoom_matrix/zeros/Less/y?
$random_zoom_4/zoom_matrix/zeros/LessLess'random_zoom_4/zoom_matrix/zeros/mul:z:0/random_zoom_4/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2&
$random_zoom_4/zoom_matrix/zeros/Less?
(random_zoom_4/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(random_zoom_4/zoom_matrix/zeros/packed/1?
&random_zoom_4/zoom_matrix/zeros/packedPack0random_zoom_4/zoom_matrix/strided_slice:output:01random_zoom_4/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&random_zoom_4/zoom_matrix/zeros/packed?
%random_zoom_4/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%random_zoom_4/zoom_matrix/zeros/Const?
random_zoom_4/zoom_matrix/zerosFill/random_zoom_4/zoom_matrix/zeros/packed:output:0.random_zoom_4/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_4/zoom_matrix/zeros?
'random_zoom_4/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_4/zoom_matrix/zeros_1/mul/y?
%random_zoom_4/zoom_matrix/zeros_1/mulMul0random_zoom_4/zoom_matrix/strided_slice:output:00random_zoom_4/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_4/zoom_matrix/zeros_1/mul?
(random_zoom_4/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_4/zoom_matrix/zeros_1/Less/y?
&random_zoom_4/zoom_matrix/zeros_1/LessLess)random_zoom_4/zoom_matrix/zeros_1/mul:z:01random_zoom_4/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_4/zoom_matrix/zeros_1/Less?
*random_zoom_4/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_4/zoom_matrix/zeros_1/packed/1?
(random_zoom_4/zoom_matrix/zeros_1/packedPack0random_zoom_4/zoom_matrix/strided_slice:output:03random_zoom_4/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_4/zoom_matrix/zeros_1/packed?
'random_zoom_4/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_4/zoom_matrix/zeros_1/Const?
!random_zoom_4/zoom_matrix/zeros_1Fill1random_zoom_4/zoom_matrix/zeros_1/packed:output:00random_zoom_4/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_4/zoom_matrix/zeros_1?
/random_zoom_4/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_4/zoom_matrix/strided_slice_4/stack?
1random_zoom_4/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_4/zoom_matrix/strided_slice_4/stack_1?
1random_zoom_4/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_4/zoom_matrix/strided_slice_4/stack_2?
)random_zoom_4/zoom_matrix/strided_slice_4StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_4/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_4/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_4/zoom_matrix/strided_slice_4?
'random_zoom_4/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_4/zoom_matrix/zeros_2/mul/y?
%random_zoom_4/zoom_matrix/zeros_2/mulMul0random_zoom_4/zoom_matrix/strided_slice:output:00random_zoom_4/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_4/zoom_matrix/zeros_2/mul?
(random_zoom_4/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_4/zoom_matrix/zeros_2/Less/y?
&random_zoom_4/zoom_matrix/zeros_2/LessLess)random_zoom_4/zoom_matrix/zeros_2/mul:z:01random_zoom_4/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_4/zoom_matrix/zeros_2/Less?
*random_zoom_4/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_4/zoom_matrix/zeros_2/packed/1?
(random_zoom_4/zoom_matrix/zeros_2/packedPack0random_zoom_4/zoom_matrix/strided_slice:output:03random_zoom_4/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_4/zoom_matrix/zeros_2/packed?
'random_zoom_4/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_4/zoom_matrix/zeros_2/Const?
!random_zoom_4/zoom_matrix/zeros_2Fill1random_zoom_4/zoom_matrix/zeros_2/packed:output:00random_zoom_4/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_4/zoom_matrix/zeros_2?
%random_zoom_4/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_4/zoom_matrix/concat/axis?
 random_zoom_4/zoom_matrix/concatConcatV22random_zoom_4/zoom_matrix/strided_slice_3:output:0(random_zoom_4/zoom_matrix/zeros:output:0!random_zoom_4/zoom_matrix/mul:z:0*random_zoom_4/zoom_matrix/zeros_1:output:02random_zoom_4/zoom_matrix/strided_slice_4:output:0#random_zoom_4/zoom_matrix/mul_1:z:0*random_zoom_4/zoom_matrix/zeros_2:output:0.random_zoom_4/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2"
 random_zoom_4/zoom_matrix/concat?
random_zoom_4/transform/ShapeShapenormalization_4/truediv:z:0*
T0*
_output_shapes
:2
random_zoom_4/transform/Shape?
+random_zoom_4/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+random_zoom_4/transform/strided_slice/stack?
-random_zoom_4/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_4/transform/strided_slice/stack_1?
-random_zoom_4/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_4/transform/strided_slice/stack_2?
%random_zoom_4/transform/strided_sliceStridedSlice&random_zoom_4/transform/Shape:output:04random_zoom_4/transform/strided_slice/stack:output:06random_zoom_4/transform/strided_slice/stack_1:output:06random_zoom_4/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2'
%random_zoom_4/transform/strided_slice?
"random_zoom_4/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"random_zoom_4/transform/fill_value?
2random_zoom_4/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3normalization_4/truediv:z:0)random_zoom_4/zoom_matrix/concat:output:0.random_zoom_4/transform/strided_slice:output:0+random_zoom_4/transform/fill_value:output:0*1
_output_shapes
:???????????*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR24
2random_zoom_4/transform/ImageProjectiveTransformV3?
random_translation_4/ShapeShapeGrandom_zoom_4/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
random_translation_4/Shape?
(random_translation_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(random_translation_4/strided_slice/stack?
*random_translation_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation_4/strided_slice/stack_1?
*random_translation_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation_4/strided_slice/stack_2?
"random_translation_4/strided_sliceStridedSlice#random_translation_4/Shape:output:01random_translation_4/strided_slice/stack:output:03random_translation_4/strided_slice/stack_1:output:03random_translation_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"random_translation_4/strided_slice?
*random_translation_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation_4/strided_slice_1/stack?
,random_translation_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,random_translation_4/strided_slice_1/stack_1?
,random_translation_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,random_translation_4/strided_slice_1/stack_2?
$random_translation_4/strided_slice_1StridedSlice#random_translation_4/Shape:output:03random_translation_4/strided_slice_1/stack:output:05random_translation_4/strided_slice_1/stack_1:output:05random_translation_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$random_translation_4/strided_slice_1?
random_translation_4/CastCast-random_translation_4/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_translation_4/Cast?
*random_translation_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation_4/strided_slice_2/stack?
,random_translation_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,random_translation_4/strided_slice_2/stack_1?
,random_translation_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,random_translation_4/strided_slice_2/stack_2?
$random_translation_4/strided_slice_2StridedSlice#random_translation_4/Shape:output:03random_translation_4/strided_slice_2/stack:output:05random_translation_4/strided_slice_2/stack_1:output:05random_translation_4/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$random_translation_4/strided_slice_2?
random_translation_4/Cast_1Cast-random_translation_4/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_translation_4/Cast_1?
-random_translation_4/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2/
-random_translation_4/stateful_uniform/shape/1?
+random_translation_4/stateful_uniform/shapePack+random_translation_4/strided_slice:output:06random_translation_4/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2-
+random_translation_4/stateful_uniform/shape?
)random_translation_4/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *??̽2+
)random_translation_4/stateful_uniform/min?
)random_translation_4/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *???=2+
)random_translation_4/stateful_uniform/max?
?random_translation_4/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2A
?random_translation_4/stateful_uniform/StatefulUniform/algorithm?
5random_translation_4/stateful_uniform/StatefulUniformStatefulUniform>random_translation_4_stateful_uniform_statefuluniform_resourceHrandom_translation_4/stateful_uniform/StatefulUniform/algorithm:output:04random_translation_4/stateful_uniform/shape:output:0*'
_output_shapes
:?????????*
shape_dtype027
5random_translation_4/stateful_uniform/StatefulUniform?
)random_translation_4/stateful_uniform/subSub2random_translation_4/stateful_uniform/max:output:02random_translation_4/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2+
)random_translation_4/stateful_uniform/sub?
)random_translation_4/stateful_uniform/mulMul>random_translation_4/stateful_uniform/StatefulUniform:output:0-random_translation_4/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????2+
)random_translation_4/stateful_uniform/mul?
%random_translation_4/stateful_uniformAdd-random_translation_4/stateful_uniform/mul:z:02random_translation_4/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2'
%random_translation_4/stateful_uniform?
random_translation_4/mulMul)random_translation_4/stateful_uniform:z:0random_translation_4/Cast:y:0*
T0*'
_output_shapes
:?????????2
random_translation_4/mul?
/random_translation_4/stateful_uniform_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :21
/random_translation_4/stateful_uniform_1/shape/1?
-random_translation_4/stateful_uniform_1/shapePack+random_translation_4/strided_slice:output:08random_translation_4/stateful_uniform_1/shape/1:output:0*
N*
T0*
_output_shapes
:2/
-random_translation_4/stateful_uniform_1/shape?
+random_translation_4/stateful_uniform_1/minConst*
_output_shapes
: *
dtype0*
valueB
 *??̽2-
+random_translation_4/stateful_uniform_1/min?
+random_translation_4/stateful_uniform_1/maxConst*
_output_shapes
: *
dtype0*
valueB
 *???=2-
+random_translation_4/stateful_uniform_1/max?
Arandom_translation_4/stateful_uniform_1/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2C
Arandom_translation_4/stateful_uniform_1/StatefulUniform/algorithm?
7random_translation_4/stateful_uniform_1/StatefulUniformStatefulUniform>random_translation_4_stateful_uniform_statefuluniform_resourceJrandom_translation_4/stateful_uniform_1/StatefulUniform/algorithm:output:06random_translation_4/stateful_uniform_1/shape:output:06^random_translation_4/stateful_uniform/StatefulUniform*'
_output_shapes
:?????????*
shape_dtype029
7random_translation_4/stateful_uniform_1/StatefulUniform?
+random_translation_4/stateful_uniform_1/subSub4random_translation_4/stateful_uniform_1/max:output:04random_translation_4/stateful_uniform_1/min:output:0*
T0*
_output_shapes
: 2-
+random_translation_4/stateful_uniform_1/sub?
+random_translation_4/stateful_uniform_1/mulMul@random_translation_4/stateful_uniform_1/StatefulUniform:output:0/random_translation_4/stateful_uniform_1/sub:z:0*
T0*'
_output_shapes
:?????????2-
+random_translation_4/stateful_uniform_1/mul?
'random_translation_4/stateful_uniform_1Add/random_translation_4/stateful_uniform_1/mul:z:04random_translation_4/stateful_uniform_1/min:output:0*
T0*'
_output_shapes
:?????????2)
'random_translation_4/stateful_uniform_1?
random_translation_4/mul_1Mul+random_translation_4/stateful_uniform_1:z:0random_translation_4/Cast_1:y:0*
T0*'
_output_shapes
:?????????2
random_translation_4/mul_1?
 random_translation_4/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2"
 random_translation_4/concat/axis?
random_translation_4/concatConcatV2random_translation_4/mul_1:z:0random_translation_4/mul:z:0)random_translation_4/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
random_translation_4/concat?
-random_translation_4/translation_matrix/ShapeShape$random_translation_4/concat:output:0*
T0*
_output_shapes
:2/
-random_translation_4/translation_matrix/Shape?
;random_translation_4/translation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2=
;random_translation_4/translation_matrix/strided_slice/stack?
=random_translation_4/translation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2?
=random_translation_4/translation_matrix/strided_slice/stack_1?
=random_translation_4/translation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=random_translation_4/translation_matrix/strided_slice/stack_2?
5random_translation_4/translation_matrix/strided_sliceStridedSlice6random_translation_4/translation_matrix/Shape:output:0Drandom_translation_4/translation_matrix/strided_slice/stack:output:0Frandom_translation_4/translation_matrix/strided_slice/stack_1:output:0Frandom_translation_4/translation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask27
5random_translation_4/translation_matrix/strided_slice?
2random_translation_4/translation_matrix/ones/mul/yConst*
_output_shapes
: *
dtype0*
value	B :24
2random_translation_4/translation_matrix/ones/mul/y?
0random_translation_4/translation_matrix/ones/mulMul>random_translation_4/translation_matrix/strided_slice:output:0;random_translation_4/translation_matrix/ones/mul/y:output:0*
T0*
_output_shapes
: 22
0random_translation_4/translation_matrix/ones/mul?
3random_translation_4/translation_matrix/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?25
3random_translation_4/translation_matrix/ones/Less/y?
1random_translation_4/translation_matrix/ones/LessLess4random_translation_4/translation_matrix/ones/mul:z:0<random_translation_4/translation_matrix/ones/Less/y:output:0*
T0*
_output_shapes
: 23
1random_translation_4/translation_matrix/ones/Less?
5random_translation_4/translation_matrix/ones/packed/1Const*
_output_shapes
: *
dtype0*
value	B :27
5random_translation_4/translation_matrix/ones/packed/1?
3random_translation_4/translation_matrix/ones/packedPack>random_translation_4/translation_matrix/strided_slice:output:0>random_translation_4/translation_matrix/ones/packed/1:output:0*
N*
T0*
_output_shapes
:25
3random_translation_4/translation_matrix/ones/packed?
2random_translation_4/translation_matrix/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??24
2random_translation_4/translation_matrix/ones/Const?
,random_translation_4/translation_matrix/onesFill<random_translation_4/translation_matrix/ones/packed:output:0;random_translation_4/translation_matrix/ones/Const:output:0*
T0*'
_output_shapes
:?????????2.
,random_translation_4/translation_matrix/ones?
3random_translation_4/translation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :25
3random_translation_4/translation_matrix/zeros/mul/y?
1random_translation_4/translation_matrix/zeros/mulMul>random_translation_4/translation_matrix/strided_slice:output:0<random_translation_4/translation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 23
1random_translation_4/translation_matrix/zeros/mul?
4random_translation_4/translation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?26
4random_translation_4/translation_matrix/zeros/Less/y?
2random_translation_4/translation_matrix/zeros/LessLess5random_translation_4/translation_matrix/zeros/mul:z:0=random_translation_4/translation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 24
2random_translation_4/translation_matrix/zeros/Less?
6random_translation_4/translation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :28
6random_translation_4/translation_matrix/zeros/packed/1?
4random_translation_4/translation_matrix/zeros/packedPack>random_translation_4/translation_matrix/strided_slice:output:0?random_translation_4/translation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:26
4random_translation_4/translation_matrix/zeros/packed?
3random_translation_4/translation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    25
3random_translation_4/translation_matrix/zeros/Const?
-random_translation_4/translation_matrix/zerosFill=random_translation_4/translation_matrix/zeros/packed:output:0<random_translation_4/translation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2/
-random_translation_4/translation_matrix/zeros?
=random_translation_4/translation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2?
=random_translation_4/translation_matrix/strided_slice_1/stack?
?random_translation_4/translation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2A
?random_translation_4/translation_matrix/strided_slice_1/stack_1?
?random_translation_4/translation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2A
?random_translation_4/translation_matrix/strided_slice_1/stack_2?
7random_translation_4/translation_matrix/strided_slice_1StridedSlice$random_translation_4/concat:output:0Frandom_translation_4/translation_matrix/strided_slice_1/stack:output:0Hrandom_translation_4/translation_matrix/strided_slice_1/stack_1:output:0Hrandom_translation_4/translation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask29
7random_translation_4/translation_matrix/strided_slice_1?
+random_translation_4/translation_matrix/NegNeg@random_translation_4/translation_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2-
+random_translation_4/translation_matrix/Neg?
5random_translation_4/translation_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :27
5random_translation_4/translation_matrix/zeros_1/mul/y?
3random_translation_4/translation_matrix/zeros_1/mulMul>random_translation_4/translation_matrix/strided_slice:output:0>random_translation_4/translation_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 25
3random_translation_4/translation_matrix/zeros_1/mul?
6random_translation_4/translation_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?28
6random_translation_4/translation_matrix/zeros_1/Less/y?
4random_translation_4/translation_matrix/zeros_1/LessLess7random_translation_4/translation_matrix/zeros_1/mul:z:0?random_translation_4/translation_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 26
4random_translation_4/translation_matrix/zeros_1/Less?
8random_translation_4/translation_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2:
8random_translation_4/translation_matrix/zeros_1/packed/1?
6random_translation_4/translation_matrix/zeros_1/packedPack>random_translation_4/translation_matrix/strided_slice:output:0Arandom_translation_4/translation_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:28
6random_translation_4/translation_matrix/zeros_1/packed?
5random_translation_4/translation_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5random_translation_4/translation_matrix/zeros_1/Const?
/random_translation_4/translation_matrix/zeros_1Fill?random_translation_4/translation_matrix/zeros_1/packed:output:0>random_translation_4/translation_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????21
/random_translation_4/translation_matrix/zeros_1?
4random_translation_4/translation_matrix/ones_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :26
4random_translation_4/translation_matrix/ones_1/mul/y?
2random_translation_4/translation_matrix/ones_1/mulMul>random_translation_4/translation_matrix/strided_slice:output:0=random_translation_4/translation_matrix/ones_1/mul/y:output:0*
T0*
_output_shapes
: 24
2random_translation_4/translation_matrix/ones_1/mul?
5random_translation_4/translation_matrix/ones_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?27
5random_translation_4/translation_matrix/ones_1/Less/y?
3random_translation_4/translation_matrix/ones_1/LessLess6random_translation_4/translation_matrix/ones_1/mul:z:0>random_translation_4/translation_matrix/ones_1/Less/y:output:0*
T0*
_output_shapes
: 25
3random_translation_4/translation_matrix/ones_1/Less?
7random_translation_4/translation_matrix/ones_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :29
7random_translation_4/translation_matrix/ones_1/packed/1?
5random_translation_4/translation_matrix/ones_1/packedPack>random_translation_4/translation_matrix/strided_slice:output:0@random_translation_4/translation_matrix/ones_1/packed/1:output:0*
N*
T0*
_output_shapes
:27
5random_translation_4/translation_matrix/ones_1/packed?
4random_translation_4/translation_matrix/ones_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??26
4random_translation_4/translation_matrix/ones_1/Const?
.random_translation_4/translation_matrix/ones_1Fill>random_translation_4/translation_matrix/ones_1/packed:output:0=random_translation_4/translation_matrix/ones_1/Const:output:0*
T0*'
_output_shapes
:?????????20
.random_translation_4/translation_matrix/ones_1?
=random_translation_4/translation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2?
=random_translation_4/translation_matrix/strided_slice_2/stack?
?random_translation_4/translation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2A
?random_translation_4/translation_matrix/strided_slice_2/stack_1?
?random_translation_4/translation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2A
?random_translation_4/translation_matrix/strided_slice_2/stack_2?
7random_translation_4/translation_matrix/strided_slice_2StridedSlice$random_translation_4/concat:output:0Frandom_translation_4/translation_matrix/strided_slice_2/stack:output:0Hrandom_translation_4/translation_matrix/strided_slice_2/stack_1:output:0Hrandom_translation_4/translation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask29
7random_translation_4/translation_matrix/strided_slice_2?
-random_translation_4/translation_matrix/Neg_1Neg@random_translation_4/translation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2/
-random_translation_4/translation_matrix/Neg_1?
5random_translation_4/translation_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :27
5random_translation_4/translation_matrix/zeros_2/mul/y?
3random_translation_4/translation_matrix/zeros_2/mulMul>random_translation_4/translation_matrix/strided_slice:output:0>random_translation_4/translation_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 25
3random_translation_4/translation_matrix/zeros_2/mul?
6random_translation_4/translation_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?28
6random_translation_4/translation_matrix/zeros_2/Less/y?
4random_translation_4/translation_matrix/zeros_2/LessLess7random_translation_4/translation_matrix/zeros_2/mul:z:0?random_translation_4/translation_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 26
4random_translation_4/translation_matrix/zeros_2/Less?
8random_translation_4/translation_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2:
8random_translation_4/translation_matrix/zeros_2/packed/1?
6random_translation_4/translation_matrix/zeros_2/packedPack>random_translation_4/translation_matrix/strided_slice:output:0Arandom_translation_4/translation_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:28
6random_translation_4/translation_matrix/zeros_2/packed?
5random_translation_4/translation_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5random_translation_4/translation_matrix/zeros_2/Const?
/random_translation_4/translation_matrix/zeros_2Fill?random_translation_4/translation_matrix/zeros_2/packed:output:0>random_translation_4/translation_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????21
/random_translation_4/translation_matrix/zeros_2?
3random_translation_4/translation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :25
3random_translation_4/translation_matrix/concat/axis?
.random_translation_4/translation_matrix/concatConcatV25random_translation_4/translation_matrix/ones:output:06random_translation_4/translation_matrix/zeros:output:0/random_translation_4/translation_matrix/Neg:y:08random_translation_4/translation_matrix/zeros_1:output:07random_translation_4/translation_matrix/ones_1:output:01random_translation_4/translation_matrix/Neg_1:y:08random_translation_4/translation_matrix/zeros_2:output:0<random_translation_4/translation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????20
.random_translation_4/translation_matrix/concat?
$random_translation_4/transform/ShapeShapeGrandom_zoom_4/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2&
$random_translation_4/transform/Shape?
2random_translation_4/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:24
2random_translation_4/transform/strided_slice/stack?
4random_translation_4/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4random_translation_4/transform/strided_slice/stack_1?
4random_translation_4/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4random_translation_4/transform/strided_slice/stack_2?
,random_translation_4/transform/strided_sliceStridedSlice-random_translation_4/transform/Shape:output:0;random_translation_4/transform/strided_slice/stack:output:0=random_translation_4/transform/strided_slice/stack_1:output:0=random_translation_4/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2.
,random_translation_4/transform/strided_slice?
)random_translation_4/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2+
)random_translation_4/transform/fill_value?
9random_translation_4/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Grandom_zoom_4/transform/ImageProjectiveTransformV3:transformed_images:07random_translation_4/translation_matrix/concat:output:05random_translation_4/transform/strided_slice:output:02random_translation_4/transform/fill_value:output:0*1
_output_shapes
:???????????*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2;
9random_translation_4/transform/ImageProjectiveTransformV3?
random_rotation_4/ShapeShapeNrandom_translation_4/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
random_rotation_4/Shape?
%random_rotation_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%random_rotation_4/strided_slice/stack?
'random_rotation_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_4/strided_slice/stack_1?
'random_rotation_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_4/strided_slice/stack_2?
random_rotation_4/strided_sliceStridedSlice random_rotation_4/Shape:output:0.random_rotation_4/strided_slice/stack:output:00random_rotation_4/strided_slice/stack_1:output:00random_rotation_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation_4/strided_slice?
'random_rotation_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_4/strided_slice_1/stack?
)random_rotation_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_4/strided_slice_1/stack_1?
)random_rotation_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_4/strided_slice_1/stack_2?
!random_rotation_4/strided_slice_1StridedSlice random_rotation_4/Shape:output:00random_rotation_4/strided_slice_1/stack:output:02random_rotation_4/strided_slice_1/stack_1:output:02random_rotation_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_4/strided_slice_1?
random_rotation_4/CastCast*random_rotation_4/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_4/Cast?
'random_rotation_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_4/strided_slice_2/stack?
)random_rotation_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_4/strided_slice_2/stack_1?
)random_rotation_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_4/strided_slice_2/stack_2?
!random_rotation_4/strided_slice_2StridedSlice random_rotation_4/Shape:output:00random_rotation_4/strided_slice_2/stack:output:02random_rotation_4/strided_slice_2/stack_1:output:02random_rotation_4/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_4/strided_slice_2?
random_rotation_4/Cast_1Cast*random_rotation_4/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_4/Cast_1?
(random_rotation_4/stateful_uniform/shapePack(random_rotation_4/strided_slice:output:0*
N*
T0*
_output_shapes
:2*
(random_rotation_4/stateful_uniform/shape?
&random_rotation_4/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|? ?2(
&random_rotation_4/stateful_uniform/min?
&random_rotation_4/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|? ?2(
&random_rotation_4/stateful_uniform/max?
<random_rotation_4/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2>
<random_rotation_4/stateful_uniform/StatefulUniform/algorithm?
2random_rotation_4/stateful_uniform/StatefulUniformStatefulUniform;random_rotation_4_stateful_uniform_statefuluniform_resourceErandom_rotation_4/stateful_uniform/StatefulUniform/algorithm:output:01random_rotation_4/stateful_uniform/shape:output:0*#
_output_shapes
:?????????*
shape_dtype024
2random_rotation_4/stateful_uniform/StatefulUniform?
&random_rotation_4/stateful_uniform/subSub/random_rotation_4/stateful_uniform/max:output:0/random_rotation_4/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2(
&random_rotation_4/stateful_uniform/sub?
&random_rotation_4/stateful_uniform/mulMul;random_rotation_4/stateful_uniform/StatefulUniform:output:0*random_rotation_4/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:?????????2(
&random_rotation_4/stateful_uniform/mul?
"random_rotation_4/stateful_uniformAdd*random_rotation_4/stateful_uniform/mul:z:0/random_rotation_4/stateful_uniform/min:output:0*
T0*#
_output_shapes
:?????????2$
"random_rotation_4/stateful_uniform?
'random_rotation_4/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_rotation_4/rotation_matrix/sub/y?
%random_rotation_4/rotation_matrix/subSubrandom_rotation_4/Cast_1:y:00random_rotation_4/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation_4/rotation_matrix/sub?
%random_rotation_4/rotation_matrix/CosCos&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_4/rotation_matrix/Cos?
)random_rotation_4/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_4/rotation_matrix/sub_1/y?
'random_rotation_4/rotation_matrix/sub_1Subrandom_rotation_4/Cast_1:y:02random_rotation_4/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_4/rotation_matrix/sub_1?
%random_rotation_4/rotation_matrix/mulMul)random_rotation_4/rotation_matrix/Cos:y:0+random_rotation_4/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_4/rotation_matrix/mul?
%random_rotation_4/rotation_matrix/SinSin&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_4/rotation_matrix/Sin?
)random_rotation_4/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_4/rotation_matrix/sub_2/y?
'random_rotation_4/rotation_matrix/sub_2Subrandom_rotation_4/Cast:y:02random_rotation_4/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_4/rotation_matrix/sub_2?
'random_rotation_4/rotation_matrix/mul_1Mul)random_rotation_4/rotation_matrix/Sin:y:0+random_rotation_4/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_4/rotation_matrix/mul_1?
'random_rotation_4/rotation_matrix/sub_3Sub)random_rotation_4/rotation_matrix/mul:z:0+random_rotation_4/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_4/rotation_matrix/sub_3?
'random_rotation_4/rotation_matrix/sub_4Sub)random_rotation_4/rotation_matrix/sub:z:0+random_rotation_4/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_4/rotation_matrix/sub_4?
+random_rotation_4/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2-
+random_rotation_4/rotation_matrix/truediv/y?
)random_rotation_4/rotation_matrix/truedivRealDiv+random_rotation_4/rotation_matrix/sub_4:z:04random_rotation_4/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:?????????2+
)random_rotation_4/rotation_matrix/truediv?
)random_rotation_4/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_4/rotation_matrix/sub_5/y?
'random_rotation_4/rotation_matrix/sub_5Subrandom_rotation_4/Cast:y:02random_rotation_4/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_4/rotation_matrix/sub_5?
'random_rotation_4/rotation_matrix/Sin_1Sin&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_4/rotation_matrix/Sin_1?
)random_rotation_4/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_4/rotation_matrix/sub_6/y?
'random_rotation_4/rotation_matrix/sub_6Subrandom_rotation_4/Cast_1:y:02random_rotation_4/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_4/rotation_matrix/sub_6?
'random_rotation_4/rotation_matrix/mul_2Mul+random_rotation_4/rotation_matrix/Sin_1:y:0+random_rotation_4/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_4/rotation_matrix/mul_2?
'random_rotation_4/rotation_matrix/Cos_1Cos&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_4/rotation_matrix/Cos_1?
)random_rotation_4/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_4/rotation_matrix/sub_7/y?
'random_rotation_4/rotation_matrix/sub_7Subrandom_rotation_4/Cast:y:02random_rotation_4/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_4/rotation_matrix/sub_7?
'random_rotation_4/rotation_matrix/mul_3Mul+random_rotation_4/rotation_matrix/Cos_1:y:0+random_rotation_4/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_4/rotation_matrix/mul_3?
%random_rotation_4/rotation_matrix/addAddV2+random_rotation_4/rotation_matrix/mul_2:z:0+random_rotation_4/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_4/rotation_matrix/add?
'random_rotation_4/rotation_matrix/sub_8Sub+random_rotation_4/rotation_matrix/sub_5:z:0)random_rotation_4/rotation_matrix/add:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_4/rotation_matrix/sub_8?
-random_rotation_4/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2/
-random_rotation_4/rotation_matrix/truediv_1/y?
+random_rotation_4/rotation_matrix/truediv_1RealDiv+random_rotation_4/rotation_matrix/sub_8:z:06random_rotation_4/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:?????????2-
+random_rotation_4/rotation_matrix/truediv_1?
'random_rotation_4/rotation_matrix/ShapeShape&random_rotation_4/stateful_uniform:z:0*
T0*
_output_shapes
:2)
'random_rotation_4/rotation_matrix/Shape?
5random_rotation_4/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5random_rotation_4/rotation_matrix/strided_slice/stack?
7random_rotation_4/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_4/rotation_matrix/strided_slice/stack_1?
7random_rotation_4/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_4/rotation_matrix/strided_slice/stack_2?
/random_rotation_4/rotation_matrix/strided_sliceStridedSlice0random_rotation_4/rotation_matrix/Shape:output:0>random_rotation_4/rotation_matrix/strided_slice/stack:output:0@random_rotation_4/rotation_matrix/strided_slice/stack_1:output:0@random_rotation_4/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/random_rotation_4/rotation_matrix/strided_slice?
'random_rotation_4/rotation_matrix/Cos_2Cos&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_4/rotation_matrix/Cos_2?
7random_rotation_4/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_4/rotation_matrix/strided_slice_1/stack?
9random_rotation_4/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_4/rotation_matrix/strided_slice_1/stack_1?
9random_rotation_4/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_4/rotation_matrix/strided_slice_1/stack_2?
1random_rotation_4/rotation_matrix/strided_slice_1StridedSlice+random_rotation_4/rotation_matrix/Cos_2:y:0@random_rotation_4/rotation_matrix/strided_slice_1/stack:output:0Brandom_rotation_4/rotation_matrix/strided_slice_1/stack_1:output:0Brandom_rotation_4/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_4/rotation_matrix/strided_slice_1?
'random_rotation_4/rotation_matrix/Sin_2Sin&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_4/rotation_matrix/Sin_2?
7random_rotation_4/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_4/rotation_matrix/strided_slice_2/stack?
9random_rotation_4/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_4/rotation_matrix/strided_slice_2/stack_1?
9random_rotation_4/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_4/rotation_matrix/strided_slice_2/stack_2?
1random_rotation_4/rotation_matrix/strided_slice_2StridedSlice+random_rotation_4/rotation_matrix/Sin_2:y:0@random_rotation_4/rotation_matrix/strided_slice_2/stack:output:0Brandom_rotation_4/rotation_matrix/strided_slice_2/stack_1:output:0Brandom_rotation_4/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_4/rotation_matrix/strided_slice_2?
%random_rotation_4/rotation_matrix/NegNeg:random_rotation_4/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2'
%random_rotation_4/rotation_matrix/Neg?
7random_rotation_4/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_4/rotation_matrix/strided_slice_3/stack?
9random_rotation_4/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_4/rotation_matrix/strided_slice_3/stack_1?
9random_rotation_4/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_4/rotation_matrix/strided_slice_3/stack_2?
1random_rotation_4/rotation_matrix/strided_slice_3StridedSlice-random_rotation_4/rotation_matrix/truediv:z:0@random_rotation_4/rotation_matrix/strided_slice_3/stack:output:0Brandom_rotation_4/rotation_matrix/strided_slice_3/stack_1:output:0Brandom_rotation_4/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_4/rotation_matrix/strided_slice_3?
'random_rotation_4/rotation_matrix/Sin_3Sin&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_4/rotation_matrix/Sin_3?
7random_rotation_4/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_4/rotation_matrix/strided_slice_4/stack?
9random_rotation_4/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_4/rotation_matrix/strided_slice_4/stack_1?
9random_rotation_4/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_4/rotation_matrix/strided_slice_4/stack_2?
1random_rotation_4/rotation_matrix/strided_slice_4StridedSlice+random_rotation_4/rotation_matrix/Sin_3:y:0@random_rotation_4/rotation_matrix/strided_slice_4/stack:output:0Brandom_rotation_4/rotation_matrix/strided_slice_4/stack_1:output:0Brandom_rotation_4/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_4/rotation_matrix/strided_slice_4?
'random_rotation_4/rotation_matrix/Cos_3Cos&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_4/rotation_matrix/Cos_3?
7random_rotation_4/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_4/rotation_matrix/strided_slice_5/stack?
9random_rotation_4/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_4/rotation_matrix/strided_slice_5/stack_1?
9random_rotation_4/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_4/rotation_matrix/strided_slice_5/stack_2?
1random_rotation_4/rotation_matrix/strided_slice_5StridedSlice+random_rotation_4/rotation_matrix/Cos_3:y:0@random_rotation_4/rotation_matrix/strided_slice_5/stack:output:0Brandom_rotation_4/rotation_matrix/strided_slice_5/stack_1:output:0Brandom_rotation_4/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_4/rotation_matrix/strided_slice_5?
7random_rotation_4/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_4/rotation_matrix/strided_slice_6/stack?
9random_rotation_4/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_4/rotation_matrix/strided_slice_6/stack_1?
9random_rotation_4/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_4/rotation_matrix/strided_slice_6/stack_2?
1random_rotation_4/rotation_matrix/strided_slice_6StridedSlice/random_rotation_4/rotation_matrix/truediv_1:z:0@random_rotation_4/rotation_matrix/strided_slice_6/stack:output:0Brandom_rotation_4/rotation_matrix/strided_slice_6/stack_1:output:0Brandom_rotation_4/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_4/rotation_matrix/strided_slice_6?
-random_rotation_4/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_4/rotation_matrix/zeros/mul/y?
+random_rotation_4/rotation_matrix/zeros/mulMul8random_rotation_4/rotation_matrix/strided_slice:output:06random_rotation_4/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2-
+random_rotation_4/rotation_matrix/zeros/mul?
.random_rotation_4/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?20
.random_rotation_4/rotation_matrix/zeros/Less/y?
,random_rotation_4/rotation_matrix/zeros/LessLess/random_rotation_4/rotation_matrix/zeros/mul:z:07random_rotation_4/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2.
,random_rotation_4/rotation_matrix/zeros/Less?
0random_rotation_4/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
0random_rotation_4/rotation_matrix/zeros/packed/1?
.random_rotation_4/rotation_matrix/zeros/packedPack8random_rotation_4/rotation_matrix/strided_slice:output:09random_rotation_4/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:20
.random_rotation_4/rotation_matrix/zeros/packed?
-random_rotation_4/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2/
-random_rotation_4/rotation_matrix/zeros/Const?
'random_rotation_4/rotation_matrix/zerosFill7random_rotation_4/rotation_matrix/zeros/packed:output:06random_rotation_4/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2)
'random_rotation_4/rotation_matrix/zeros?
-random_rotation_4/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_4/rotation_matrix/concat/axis?
(random_rotation_4/rotation_matrix/concatConcatV2:random_rotation_4/rotation_matrix/strided_slice_1:output:0)random_rotation_4/rotation_matrix/Neg:y:0:random_rotation_4/rotation_matrix/strided_slice_3:output:0:random_rotation_4/rotation_matrix/strided_slice_4:output:0:random_rotation_4/rotation_matrix/strided_slice_5:output:0:random_rotation_4/rotation_matrix/strided_slice_6:output:00random_rotation_4/rotation_matrix/zeros:output:06random_rotation_4/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2*
(random_rotation_4/rotation_matrix/concat?
!random_rotation_4/transform/ShapeShapeNrandom_translation_4/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2#
!random_rotation_4/transform/Shape?
/random_rotation_4/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation_4/transform/strided_slice/stack?
1random_rotation_4/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_4/transform/strided_slice/stack_1?
1random_rotation_4/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_4/transform/strided_slice/stack_2?
)random_rotation_4/transform/strided_sliceStridedSlice*random_rotation_4/transform/Shape:output:08random_rotation_4/transform/strided_slice/stack:output:0:random_rotation_4/transform/strided_slice/stack_1:output:0:random_rotation_4/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2+
)random_rotation_4/transform/strided_slice?
&random_rotation_4/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&random_rotation_4/transform/fill_value?
6random_rotation_4/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Nrandom_translation_4/transform/ImageProjectiveTransformV3:transformed_images:01random_rotation_4/rotation_matrix/concat:output:02random_rotation_4/transform/strided_slice:output:0/random_rotation_4/transform/fill_value:output:0*1
_output_shapes
:???????????*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR28
6random_rotation_4/transform/ImageProjectiveTransformV3?
IdentityIdentityKrandom_rotation_4/transform/ImageProjectiveTransformV3:transformed_images:0'^normalization_4/Reshape/ReadVariableOp)^normalization_4/Reshape_1/ReadVariableOp3^random_rotation_4/stateful_uniform/StatefulUniform6^random_translation_4/stateful_uniform/StatefulUniform8^random_translation_4/stateful_uniform_1/StatefulUniform/^random_zoom_4/stateful_uniform/StatefulUniform1^random_zoom_4/stateful_uniform_1/StatefulUniform*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*D
_input_shapes3
1:???????????:::::2P
&normalization_4/Reshape/ReadVariableOp&normalization_4/Reshape/ReadVariableOp2T
(normalization_4/Reshape_1/ReadVariableOp(normalization_4/Reshape_1/ReadVariableOp2h
2random_rotation_4/stateful_uniform/StatefulUniform2random_rotation_4/stateful_uniform/StatefulUniform2n
5random_translation_4/stateful_uniform/StatefulUniform5random_translation_4/stateful_uniform/StatefulUniform2r
7random_translation_4/stateful_uniform_1/StatefulUniform7random_translation_4/stateful_uniform_1/StatefulUniform2`
.random_zoom_4/stateful_uniform/StatefulUniform.random_zoom_4/stateful_uniform/StatefulUniform2d
0random_zoom_4/stateful_uniform_1/StatefulUniform0random_zoom_4/stateful_uniform_1/StatefulUniform:h d
1
_output_shapes
:???????????
/
_user_specified_namenormalization_4_input
?
\
@__inference_ReLu_2_layer_call_and_return_conditional_losses_5658

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:?????????::?2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:?????????::?2

Identity"
identityIdentity:output:0*/
_input_shapes
:?????????::?:X T
0
_output_shapes
:?????????::?
 
_user_specified_nameinputs
?
_
C__inference_MaxPool_2_layer_call_and_return_conditional_losses_3325

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
_
C__inference_MaxPool_1_layer_call_and_return_conditional_losses_3209

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?	
?
B__inference_conv2D_3_layer_call_and_return_conditional_losses_3622

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
D
(__inference_MaxPool_5_layer_call_fn_3343

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_MaxPool_5_layer_call_and_return_conditional_losses_33372
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
{
&__inference_Dense_8_layer_call_fn_6002

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_Dense_8_layer_call_and_return_conditional_losses_38682
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
A__inference_Dense_8_layer_call_and_return_conditional_losses_5993

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
'__inference_model_14_layer_call_fn_5110

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*>
_read_only_resource_inputs 
	
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_14_layer_call_and_return_conditional_losses_42822
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?	
?
B__inference_conv2D_5_layer_call_and_return_conditional_losses_5859

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
A__inference_softmax_layer_call_and_return_conditional_losses_3925

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
{
&__inference_Dense_7_layer_call_fn_5956

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_Dense_7_layer_call_and_return_conditional_losses_38122
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
|
'__inference_conv2D_2_layer_call_fn_5653

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????::?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2D_2_layer_call_and_return_conditional_losses_35092
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????::?2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????>>@::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????>>@
 
_user_specified_nameinputs
?
?
E__inference_BatchNorm_1_layer_call_and_return_conditional_losses_3192

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
/__inference_dataAugmentation_layer_call_fn_5468

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_dataAugmentation_layer_call_and_return_conditional_losses_30602
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*D
_input_shapes3
1:???????????:::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
\
@__inference_ReLu_3_layer_call_and_return_conditional_losses_5815

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:??????????2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
A__inference_Dense_7_layer_call_and_return_conditional_losses_5947

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
A__inference_Dense_7_layer_call_and_return_conditional_losses_3812

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
|
'__inference_conv2D_4_layer_call_fn_5839

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2D_4_layer_call_and_return_conditional_losses_36612
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
ª
?
 __inference__traced_restore_6349
file_prefix$
 assignvariableop_conv2d_1_kernel$
 assignvariableop_1_conv2d_1_bias(
$assignvariableop_2_batchnorm_1_gamma'
#assignvariableop_3_batchnorm_1_beta.
*assignvariableop_4_batchnorm_1_moving_mean2
.assignvariableop_5_batchnorm_1_moving_variance&
"assignvariableop_6_conv2d_2_kernel$
 assignvariableop_7_conv2d_2_bias(
$assignvariableop_8_batchnorm_2_gamma'
#assignvariableop_9_batchnorm_2_beta/
+assignvariableop_10_batchnorm_2_moving_mean3
/assignvariableop_11_batchnorm_2_moving_variance'
#assignvariableop_12_conv2d_3_kernel%
!assignvariableop_13_conv2d_3_bias'
#assignvariableop_14_conv2d_4_kernel%
!assignvariableop_15_conv2d_4_bias'
#assignvariableop_16_conv2d_5_kernel%
!assignvariableop_17_conv2d_5_bias&
"assignvariableop_18_dense_6_kernel$
 assignvariableop_19_dense_6_bias&
"assignvariableop_20_dense_7_kernel$
 assignvariableop_21_dense_7_bias&
"assignvariableop_22_dense_8_kernel$
 assignvariableop_23_dense_8_bias&
"assignvariableop_24_softmax_kernel$
 assignvariableop_25_softmax_bias
assignvariableop_26_iter
assignvariableop_27_decay%
!assignvariableop_28_learning_rate 
assignvariableop_29_momentum,
(assignvariableop_30_normalization_4_mean0
,assignvariableop_31_normalization_4_variance-
)assignvariableop_32_normalization_4_count 
assignvariableop_33_variable"
assignvariableop_34_variable_1"
assignvariableop_35_variable_2
assignvariableop_36_total
assignvariableop_37_count
assignvariableop_38_total_1
assignvariableop_39_count_1
assignvariableop_40_total_2
assignvariableop_41_count_2
identity_43??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*?
value?B?+B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-0/layer-1/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-0/layer-2/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-0/layer-3/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::::::*9
dtypes/
-2+					2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp assignvariableop_conv2d_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv2d_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp$assignvariableop_2_batchnorm_1_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp#assignvariableop_3_batchnorm_1_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp*assignvariableop_4_batchnorm_1_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp.assignvariableop_5_batchnorm_1_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_2_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_2_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp$assignvariableop_8_batchnorm_2_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp#assignvariableop_9_batchnorm_2_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp+assignvariableop_10_batchnorm_2_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp/assignvariableop_11_batchnorm_2_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp#assignvariableop_12_conv2d_3_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp!assignvariableop_13_conv2d_3_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp#assignvariableop_14_conv2d_4_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp!assignvariableop_15_conv2d_4_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp#assignvariableop_16_conv2d_5_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp!assignvariableop_17_conv2d_5_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp"assignvariableop_18_dense_6_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp assignvariableop_19_dense_6_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp"assignvariableop_20_dense_7_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp assignvariableop_21_dense_7_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp"assignvariableop_22_dense_8_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp assignvariableop_23_dense_8_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp"assignvariableop_24_softmax_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp assignvariableop_25_softmax_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOpassignvariableop_26_iterIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOpassignvariableop_27_decayIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp!assignvariableop_28_learning_rateIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOpassignvariableop_29_momentumIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_normalization_4_meanIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp,assignvariableop_31_normalization_4_varianceIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp)assignvariableop_32_normalization_4_countIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOpassignvariableop_33_variableIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOpassignvariableop_34_variable_1Identity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOpassignvariableop_35_variable_2Identity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOpassignvariableop_36_totalIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOpassignvariableop_37_countIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOpassignvariableop_38_total_1Identity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOpassignvariableop_39_count_1Identity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOpassignvariableop_40_total_2Identity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOpassignvariableop_41_count_2Identity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_419
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_42Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_42?
Identity_43IdentityIdentity_42:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_43"#
identity_43Identity_43:output:0*?
_input_shapes?
?: ::::::::::::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412(
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
?
|
'__inference_conv2D_1_layer_call_fn_5496

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????~~@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2D_1_layer_call_and_return_conditional_losses_33962
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????~~@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:???????????::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?

b
C__inference_Dropout_8_layer_call_and_return_conditional_losses_6014

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
E__inference_BatchNorm_1_layer_call_and_return_conditional_losses_3444

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????~~@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????~~@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????~~@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????~~@
 
_user_specified_nameinputs
?
?
E__inference_BatchNorm_1_layer_call_and_return_conditional_losses_5590

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????~~@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????~~@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????~~@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????~~@
 
_user_specified_nameinputs
?
?
*__inference_BatchNorm_2_layer_call_fn_5791

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????::?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_BatchNorm_2_layer_call_and_return_conditional_losses_35752
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????::?2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????::?::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????::?
 
_user_specified_nameinputs
??
?
__inference__wrapped_model_2387	
inputM
Imodel_14_dataaugmentation_normalization_4_reshape_readvariableop_resourceO
Kmodel_14_dataaugmentation_normalization_4_reshape_1_readvariableop_resource4
0model_14_conv2d_1_conv2d_readvariableop_resource5
1model_14_conv2d_1_biasadd_readvariableop_resource0
,model_14_batchnorm_1_readvariableop_resource2
.model_14_batchnorm_1_readvariableop_1_resourceA
=model_14_batchnorm_1_fusedbatchnormv3_readvariableop_resourceC
?model_14_batchnorm_1_fusedbatchnormv3_readvariableop_1_resource4
0model_14_conv2d_2_conv2d_readvariableop_resource5
1model_14_conv2d_2_biasadd_readvariableop_resource0
,model_14_batchnorm_2_readvariableop_resource2
.model_14_batchnorm_2_readvariableop_1_resourceA
=model_14_batchnorm_2_fusedbatchnormv3_readvariableop_resourceC
?model_14_batchnorm_2_fusedbatchnormv3_readvariableop_1_resource4
0model_14_conv2d_3_conv2d_readvariableop_resource5
1model_14_conv2d_3_biasadd_readvariableop_resource4
0model_14_conv2d_4_conv2d_readvariableop_resource5
1model_14_conv2d_4_biasadd_readvariableop_resource4
0model_14_conv2d_5_conv2d_readvariableop_resource5
1model_14_conv2d_5_biasadd_readvariableop_resource3
/model_14_dense_6_matmul_readvariableop_resource4
0model_14_dense_6_biasadd_readvariableop_resource3
/model_14_dense_7_matmul_readvariableop_resource4
0model_14_dense_7_biasadd_readvariableop_resource3
/model_14_dense_8_matmul_readvariableop_resource4
0model_14_dense_8_biasadd_readvariableop_resource3
/model_14_softmax_matmul_readvariableop_resource4
0model_14_softmax_biasadd_readvariableop_resource
identity??4model_14/BatchNorm_1/FusedBatchNormV3/ReadVariableOp?6model_14/BatchNorm_1/FusedBatchNormV3/ReadVariableOp_1?#model_14/BatchNorm_1/ReadVariableOp?%model_14/BatchNorm_1/ReadVariableOp_1?4model_14/BatchNorm_2/FusedBatchNormV3/ReadVariableOp?6model_14/BatchNorm_2/FusedBatchNormV3/ReadVariableOp_1?#model_14/BatchNorm_2/ReadVariableOp?%model_14/BatchNorm_2/ReadVariableOp_1?'model_14/Dense_6/BiasAdd/ReadVariableOp?&model_14/Dense_6/MatMul/ReadVariableOp?'model_14/Dense_7/BiasAdd/ReadVariableOp?&model_14/Dense_7/MatMul/ReadVariableOp?'model_14/Dense_8/BiasAdd/ReadVariableOp?&model_14/Dense_8/MatMul/ReadVariableOp?(model_14/conv2D_1/BiasAdd/ReadVariableOp?'model_14/conv2D_1/Conv2D/ReadVariableOp?(model_14/conv2D_2/BiasAdd/ReadVariableOp?'model_14/conv2D_2/Conv2D/ReadVariableOp?(model_14/conv2D_3/BiasAdd/ReadVariableOp?'model_14/conv2D_3/Conv2D/ReadVariableOp?(model_14/conv2D_4/BiasAdd/ReadVariableOp?'model_14/conv2D_4/Conv2D/ReadVariableOp?(model_14/conv2D_5/BiasAdd/ReadVariableOp?'model_14/conv2D_5/Conv2D/ReadVariableOp?@model_14/dataAugmentation/normalization_4/Reshape/ReadVariableOp?Bmodel_14/dataAugmentation/normalization_4/Reshape_1/ReadVariableOp?'model_14/softmax/BiasAdd/ReadVariableOp?&model_14/softmax/MatMul/ReadVariableOp?
@model_14/dataAugmentation/normalization_4/Reshape/ReadVariableOpReadVariableOpImodel_14_dataaugmentation_normalization_4_reshape_readvariableop_resource*
_output_shapes
:*
dtype02B
@model_14/dataAugmentation/normalization_4/Reshape/ReadVariableOp?
7model_14/dataAugmentation/normalization_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            29
7model_14/dataAugmentation/normalization_4/Reshape/shape?
1model_14/dataAugmentation/normalization_4/ReshapeReshapeHmodel_14/dataAugmentation/normalization_4/Reshape/ReadVariableOp:value:0@model_14/dataAugmentation/normalization_4/Reshape/shape:output:0*
T0*&
_output_shapes
:23
1model_14/dataAugmentation/normalization_4/Reshape?
Bmodel_14/dataAugmentation/normalization_4/Reshape_1/ReadVariableOpReadVariableOpKmodel_14_dataaugmentation_normalization_4_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02D
Bmodel_14/dataAugmentation/normalization_4/Reshape_1/ReadVariableOp?
9model_14/dataAugmentation/normalization_4/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2;
9model_14/dataAugmentation/normalization_4/Reshape_1/shape?
3model_14/dataAugmentation/normalization_4/Reshape_1ReshapeJmodel_14/dataAugmentation/normalization_4/Reshape_1/ReadVariableOp:value:0Bmodel_14/dataAugmentation/normalization_4/Reshape_1/shape:output:0*
T0*&
_output_shapes
:25
3model_14/dataAugmentation/normalization_4/Reshape_1?
-model_14/dataAugmentation/normalization_4/subSubinput:model_14/dataAugmentation/normalization_4/Reshape:output:0*
T0*1
_output_shapes
:???????????2/
-model_14/dataAugmentation/normalization_4/sub?
.model_14/dataAugmentation/normalization_4/SqrtSqrt<model_14/dataAugmentation/normalization_4/Reshape_1:output:0*
T0*&
_output_shapes
:20
.model_14/dataAugmentation/normalization_4/Sqrt?
3model_14/dataAugmentation/normalization_4/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???325
3model_14/dataAugmentation/normalization_4/Maximum/y?
1model_14/dataAugmentation/normalization_4/MaximumMaximum2model_14/dataAugmentation/normalization_4/Sqrt:y:0<model_14/dataAugmentation/normalization_4/Maximum/y:output:0*
T0*&
_output_shapes
:23
1model_14/dataAugmentation/normalization_4/Maximum?
1model_14/dataAugmentation/normalization_4/truedivRealDiv1model_14/dataAugmentation/normalization_4/sub:z:05model_14/dataAugmentation/normalization_4/Maximum:z:0*
T0*1
_output_shapes
:???????????23
1model_14/dataAugmentation/normalization_4/truediv{
model_14/rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
model_14/rescaling/Cast/x
model_14/rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
model_14/rescaling/Cast_1/x?
model_14/rescaling/mulMul5model_14/dataAugmentation/normalization_4/truediv:z:0"model_14/rescaling/Cast/x:output:0*
T0*1
_output_shapes
:???????????2
model_14/rescaling/mul?
model_14/rescaling/addAddV2model_14/rescaling/mul:z:0$model_14/rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:???????????2
model_14/rescaling/add?
'model_14/conv2D_1/Conv2D/ReadVariableOpReadVariableOp0model_14_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02)
'model_14/conv2D_1/Conv2D/ReadVariableOp?
model_14/conv2D_1/Conv2DConv2Dmodel_14/rescaling/add:z:0/model_14/conv2D_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????~~@*
paddingVALID*
strides
2
model_14/conv2D_1/Conv2D?
(model_14/conv2D_1/BiasAdd/ReadVariableOpReadVariableOp1model_14_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_14/conv2D_1/BiasAdd/ReadVariableOp?
model_14/conv2D_1/BiasAddBiasAdd!model_14/conv2D_1/Conv2D:output:00model_14/conv2D_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????~~@2
model_14/conv2D_1/BiasAdd?
model_14/ReLu_1/ReluRelu"model_14/conv2D_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????~~@2
model_14/ReLu_1/Relu?
#model_14/BatchNorm_1/ReadVariableOpReadVariableOp,model_14_batchnorm_1_readvariableop_resource*
_output_shapes
:@*
dtype02%
#model_14/BatchNorm_1/ReadVariableOp?
%model_14/BatchNorm_1/ReadVariableOp_1ReadVariableOp.model_14_batchnorm_1_readvariableop_1_resource*
_output_shapes
:@*
dtype02'
%model_14/BatchNorm_1/ReadVariableOp_1?
4model_14/BatchNorm_1/FusedBatchNormV3/ReadVariableOpReadVariableOp=model_14_batchnorm_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype026
4model_14/BatchNorm_1/FusedBatchNormV3/ReadVariableOp?
6model_14/BatchNorm_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp?model_14_batchnorm_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype028
6model_14/BatchNorm_1/FusedBatchNormV3/ReadVariableOp_1?
%model_14/BatchNorm_1/FusedBatchNormV3FusedBatchNormV3"model_14/ReLu_1/Relu:activations:0+model_14/BatchNorm_1/ReadVariableOp:value:0-model_14/BatchNorm_1/ReadVariableOp_1:value:0<model_14/BatchNorm_1/FusedBatchNormV3/ReadVariableOp:value:0>model_14/BatchNorm_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????~~@:@:@:@:@:*
epsilon%o?:*
is_training( 2'
%model_14/BatchNorm_1/FusedBatchNormV3?
model_14/MaxPool_1/MaxPoolMaxPool)model_14/BatchNorm_1/FusedBatchNormV3:y:0*/
_output_shapes
:?????????>>@*
ksize
*
paddingVALID*
strides
2
model_14/MaxPool_1/MaxPool?
'model_14/conv2D_2/Conv2D/ReadVariableOpReadVariableOp0model_14_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02)
'model_14/conv2D_2/Conv2D/ReadVariableOp?
model_14/conv2D_2/Conv2DConv2D#model_14/MaxPool_1/MaxPool:output:0/model_14/conv2D_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????::?*
paddingVALID*
strides
2
model_14/conv2D_2/Conv2D?
(model_14/conv2D_2/BiasAdd/ReadVariableOpReadVariableOp1model_14_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02*
(model_14/conv2D_2/BiasAdd/ReadVariableOp?
model_14/conv2D_2/BiasAddBiasAdd!model_14/conv2D_2/Conv2D:output:00model_14/conv2D_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????::?2
model_14/conv2D_2/BiasAdd?
model_14/ReLu_2/ReluRelu"model_14/conv2D_2/BiasAdd:output:0*
T0*0
_output_shapes
:?????????::?2
model_14/ReLu_2/Relu?
#model_14/BatchNorm_2/ReadVariableOpReadVariableOp,model_14_batchnorm_2_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#model_14/BatchNorm_2/ReadVariableOp?
%model_14/BatchNorm_2/ReadVariableOp_1ReadVariableOp.model_14_batchnorm_2_readvariableop_1_resource*
_output_shapes	
:?*
dtype02'
%model_14/BatchNorm_2/ReadVariableOp_1?
4model_14/BatchNorm_2/FusedBatchNormV3/ReadVariableOpReadVariableOp=model_14_batchnorm_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype026
4model_14/BatchNorm_2/FusedBatchNormV3/ReadVariableOp?
6model_14/BatchNorm_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp?model_14_batchnorm_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype028
6model_14/BatchNorm_2/FusedBatchNormV3/ReadVariableOp_1?
%model_14/BatchNorm_2/FusedBatchNormV3FusedBatchNormV3"model_14/ReLu_2/Relu:activations:0+model_14/BatchNorm_2/ReadVariableOp:value:0-model_14/BatchNorm_2/ReadVariableOp_1:value:0<model_14/BatchNorm_2/FusedBatchNormV3/ReadVariableOp:value:0>model_14/BatchNorm_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????::?:?:?:?:?:*
epsilon%o?:*
is_training( 2'
%model_14/BatchNorm_2/FusedBatchNormV3?
model_14/MaxPool_2/MaxPoolMaxPool)model_14/BatchNorm_2/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
model_14/MaxPool_2/MaxPool?
'model_14/conv2D_3/Conv2D/ReadVariableOpReadVariableOp0model_14_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02)
'model_14/conv2D_3/Conv2D/ReadVariableOp?
model_14/conv2D_3/Conv2DConv2D#model_14/MaxPool_2/MaxPool:output:0/model_14/conv2D_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
model_14/conv2D_3/Conv2D?
(model_14/conv2D_3/BiasAdd/ReadVariableOpReadVariableOp1model_14_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02*
(model_14/conv2D_3/BiasAdd/ReadVariableOp?
model_14/conv2D_3/BiasAddBiasAdd!model_14/conv2D_3/Conv2D:output:00model_14/conv2D_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
model_14/conv2D_3/BiasAdd?
model_14/ReLu_3/ReluRelu"model_14/conv2D_3/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
model_14/ReLu_3/Relu?
'model_14/conv2D_4/Conv2D/ReadVariableOpReadVariableOp0model_14_conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02)
'model_14/conv2D_4/Conv2D/ReadVariableOp?
model_14/conv2D_4/Conv2DConv2D"model_14/ReLu_3/Relu:activations:0/model_14/conv2D_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
model_14/conv2D_4/Conv2D?
(model_14/conv2D_4/BiasAdd/ReadVariableOpReadVariableOp1model_14_conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02*
(model_14/conv2D_4/BiasAdd/ReadVariableOp?
model_14/conv2D_4/BiasAddBiasAdd!model_14/conv2D_4/Conv2D:output:00model_14/conv2D_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
model_14/conv2D_4/BiasAdd?
model_14/ReLu_4/ReluRelu"model_14/conv2D_4/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
model_14/ReLu_4/Relu?
'model_14/conv2D_5/Conv2D/ReadVariableOpReadVariableOp0model_14_conv2d_5_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02)
'model_14/conv2D_5/Conv2D/ReadVariableOp?
model_14/conv2D_5/Conv2DConv2D"model_14/ReLu_4/Relu:activations:0/model_14/conv2D_5/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
model_14/conv2D_5/Conv2D?
(model_14/conv2D_5/BiasAdd/ReadVariableOpReadVariableOp1model_14_conv2d_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02*
(model_14/conv2D_5/BiasAdd/ReadVariableOp?
model_14/conv2D_5/BiasAddBiasAdd!model_14/conv2D_5/Conv2D:output:00model_14/conv2D_5/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
model_14/conv2D_5/BiasAdd?
model_14/ReLu_5/ReluRelu"model_14/conv2D_5/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
model_14/ReLu_5/Relu?
model_14/MaxPool_5/MaxPoolMaxPool"model_14/ReLu_5/Relu:activations:0*0
_output_shapes
:?????????

?*
ksize
*
paddingVALID*
strides
2
model_14/MaxPool_5/MaxPool?
model_14/flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? d  2
model_14/flatten_4/Const?
model_14/flatten_4/ReshapeReshape#model_14/MaxPool_5/MaxPool:output:0!model_14/flatten_4/Const:output:0*
T0*)
_output_shapes
:???????????2
model_14/flatten_4/Reshape?
&model_14/Dense_6/MatMul/ReadVariableOpReadVariableOp/model_14_dense_6_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype02(
&model_14/Dense_6/MatMul/ReadVariableOp?
model_14/Dense_6/MatMulMatMul#model_14/flatten_4/Reshape:output:0.model_14/Dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model_14/Dense_6/MatMul?
'model_14/Dense_6/BiasAdd/ReadVariableOpReadVariableOp0model_14_dense_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02)
'model_14/Dense_6/BiasAdd/ReadVariableOp?
model_14/Dense_6/BiasAddBiasAdd!model_14/Dense_6/MatMul:product:0/model_14/Dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model_14/Dense_6/BiasAdd?
model_14/Dense_6/ReluRelu!model_14/Dense_6/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
model_14/Dense_6/Relu?
model_14/Dropout_6/IdentityIdentity#model_14/Dense_6/Relu:activations:0*
T0*(
_output_shapes
:??????????2
model_14/Dropout_6/Identity?
&model_14/Dense_7/MatMul/ReadVariableOpReadVariableOp/model_14_dense_7_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02(
&model_14/Dense_7/MatMul/ReadVariableOp?
model_14/Dense_7/MatMulMatMul$model_14/Dropout_6/Identity:output:0.model_14/Dense_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model_14/Dense_7/MatMul?
'model_14/Dense_7/BiasAdd/ReadVariableOpReadVariableOp0model_14_dense_7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02)
'model_14/Dense_7/BiasAdd/ReadVariableOp?
model_14/Dense_7/BiasAddBiasAdd!model_14/Dense_7/MatMul:product:0/model_14/Dense_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model_14/Dense_7/BiasAdd?
model_14/Dense_7/ReluRelu!model_14/Dense_7/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
model_14/Dense_7/Relu?
model_14/Dropout_7/IdentityIdentity#model_14/Dense_7/Relu:activations:0*
T0*(
_output_shapes
:??????????2
model_14/Dropout_7/Identity?
&model_14/Dense_8/MatMul/ReadVariableOpReadVariableOp/model_14_dense_8_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02(
&model_14/Dense_8/MatMul/ReadVariableOp?
model_14/Dense_8/MatMulMatMul$model_14/Dropout_7/Identity:output:0.model_14/Dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
model_14/Dense_8/MatMul?
'model_14/Dense_8/BiasAdd/ReadVariableOpReadVariableOp0model_14_dense_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02)
'model_14/Dense_8/BiasAdd/ReadVariableOp?
model_14/Dense_8/BiasAddBiasAdd!model_14/Dense_8/MatMul:product:0/model_14/Dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
model_14/Dense_8/BiasAdd?
model_14/Dropout_8/IdentityIdentity!model_14/Dense_8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
model_14/Dropout_8/Identity?
&model_14/softmax/MatMul/ReadVariableOpReadVariableOp/model_14_softmax_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02(
&model_14/softmax/MatMul/ReadVariableOp?
model_14/softmax/MatMulMatMul$model_14/Dropout_8/Identity:output:0.model_14/softmax/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_14/softmax/MatMul?
'model_14/softmax/BiasAdd/ReadVariableOpReadVariableOp0model_14_softmax_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'model_14/softmax/BiasAdd/ReadVariableOp?
model_14/softmax/BiasAddBiasAdd!model_14/softmax/MatMul:product:0/model_14/softmax/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_14/softmax/BiasAdd?
model_14/softmax/SoftmaxSoftmax!model_14/softmax/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
model_14/softmax/Softmax?

IdentityIdentity"model_14/softmax/Softmax:softmax:05^model_14/BatchNorm_1/FusedBatchNormV3/ReadVariableOp7^model_14/BatchNorm_1/FusedBatchNormV3/ReadVariableOp_1$^model_14/BatchNorm_1/ReadVariableOp&^model_14/BatchNorm_1/ReadVariableOp_15^model_14/BatchNorm_2/FusedBatchNormV3/ReadVariableOp7^model_14/BatchNorm_2/FusedBatchNormV3/ReadVariableOp_1$^model_14/BatchNorm_2/ReadVariableOp&^model_14/BatchNorm_2/ReadVariableOp_1(^model_14/Dense_6/BiasAdd/ReadVariableOp'^model_14/Dense_6/MatMul/ReadVariableOp(^model_14/Dense_7/BiasAdd/ReadVariableOp'^model_14/Dense_7/MatMul/ReadVariableOp(^model_14/Dense_8/BiasAdd/ReadVariableOp'^model_14/Dense_8/MatMul/ReadVariableOp)^model_14/conv2D_1/BiasAdd/ReadVariableOp(^model_14/conv2D_1/Conv2D/ReadVariableOp)^model_14/conv2D_2/BiasAdd/ReadVariableOp(^model_14/conv2D_2/Conv2D/ReadVariableOp)^model_14/conv2D_3/BiasAdd/ReadVariableOp(^model_14/conv2D_3/Conv2D/ReadVariableOp)^model_14/conv2D_4/BiasAdd/ReadVariableOp(^model_14/conv2D_4/Conv2D/ReadVariableOp)^model_14/conv2D_5/BiasAdd/ReadVariableOp(^model_14/conv2D_5/Conv2D/ReadVariableOpA^model_14/dataAugmentation/normalization_4/Reshape/ReadVariableOpC^model_14/dataAugmentation/normalization_4/Reshape_1/ReadVariableOp(^model_14/softmax/BiasAdd/ReadVariableOp'^model_14/softmax/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::2l
4model_14/BatchNorm_1/FusedBatchNormV3/ReadVariableOp4model_14/BatchNorm_1/FusedBatchNormV3/ReadVariableOp2p
6model_14/BatchNorm_1/FusedBatchNormV3/ReadVariableOp_16model_14/BatchNorm_1/FusedBatchNormV3/ReadVariableOp_12J
#model_14/BatchNorm_1/ReadVariableOp#model_14/BatchNorm_1/ReadVariableOp2N
%model_14/BatchNorm_1/ReadVariableOp_1%model_14/BatchNorm_1/ReadVariableOp_12l
4model_14/BatchNorm_2/FusedBatchNormV3/ReadVariableOp4model_14/BatchNorm_2/FusedBatchNormV3/ReadVariableOp2p
6model_14/BatchNorm_2/FusedBatchNormV3/ReadVariableOp_16model_14/BatchNorm_2/FusedBatchNormV3/ReadVariableOp_12J
#model_14/BatchNorm_2/ReadVariableOp#model_14/BatchNorm_2/ReadVariableOp2N
%model_14/BatchNorm_2/ReadVariableOp_1%model_14/BatchNorm_2/ReadVariableOp_12R
'model_14/Dense_6/BiasAdd/ReadVariableOp'model_14/Dense_6/BiasAdd/ReadVariableOp2P
&model_14/Dense_6/MatMul/ReadVariableOp&model_14/Dense_6/MatMul/ReadVariableOp2R
'model_14/Dense_7/BiasAdd/ReadVariableOp'model_14/Dense_7/BiasAdd/ReadVariableOp2P
&model_14/Dense_7/MatMul/ReadVariableOp&model_14/Dense_7/MatMul/ReadVariableOp2R
'model_14/Dense_8/BiasAdd/ReadVariableOp'model_14/Dense_8/BiasAdd/ReadVariableOp2P
&model_14/Dense_8/MatMul/ReadVariableOp&model_14/Dense_8/MatMul/ReadVariableOp2T
(model_14/conv2D_1/BiasAdd/ReadVariableOp(model_14/conv2D_1/BiasAdd/ReadVariableOp2R
'model_14/conv2D_1/Conv2D/ReadVariableOp'model_14/conv2D_1/Conv2D/ReadVariableOp2T
(model_14/conv2D_2/BiasAdd/ReadVariableOp(model_14/conv2D_2/BiasAdd/ReadVariableOp2R
'model_14/conv2D_2/Conv2D/ReadVariableOp'model_14/conv2D_2/Conv2D/ReadVariableOp2T
(model_14/conv2D_3/BiasAdd/ReadVariableOp(model_14/conv2D_3/BiasAdd/ReadVariableOp2R
'model_14/conv2D_3/Conv2D/ReadVariableOp'model_14/conv2D_3/Conv2D/ReadVariableOp2T
(model_14/conv2D_4/BiasAdd/ReadVariableOp(model_14/conv2D_4/BiasAdd/ReadVariableOp2R
'model_14/conv2D_4/Conv2D/ReadVariableOp'model_14/conv2D_4/Conv2D/ReadVariableOp2T
(model_14/conv2D_5/BiasAdd/ReadVariableOp(model_14/conv2D_5/BiasAdd/ReadVariableOp2R
'model_14/conv2D_5/Conv2D/ReadVariableOp'model_14/conv2D_5/Conv2D/ReadVariableOp2?
@model_14/dataAugmentation/normalization_4/Reshape/ReadVariableOp@model_14/dataAugmentation/normalization_4/Reshape/ReadVariableOp2?
Bmodel_14/dataAugmentation/normalization_4/Reshape_1/ReadVariableOpBmodel_14/dataAugmentation/normalization_4/Reshape_1/ReadVariableOp2R
'model_14/softmax/BiasAdd/ReadVariableOp'model_14/softmax/BiasAdd/ReadVariableOp2P
&model_14/softmax/MatMul/ReadVariableOp&model_14/softmax/MatMul/ReadVariableOp:X T
1
_output_shapes
:???????????

_user_specified_nameinput
?m
?	
B__inference_model_14_layer_call_and_return_conditional_losses_3942	
input
dataaugmentation_3371
dataaugmentation_3373
dataaugmentation_3375
dataaugmentation_3377
dataaugmentation_3379
conv2d_1_3407
conv2d_1_3409
batchnorm_1_3489
batchnorm_1_3491
batchnorm_1_3493
batchnorm_1_3495
conv2d_2_3520
conv2d_2_3522
batchnorm_2_3602
batchnorm_2_3604
batchnorm_2_3606
batchnorm_2_3608
conv2d_3_3633
conv2d_3_3635
conv2d_4_3672
conv2d_4_3674
conv2d_5_3711
conv2d_5_3713
dense_6_3766
dense_6_3768
dense_7_3823
dense_7_3825
dense_8_3879
dense_8_3881
softmax_3936
softmax_3938
identity??#BatchNorm_1/StatefulPartitionedCall?#BatchNorm_2/StatefulPartitionedCall?Dense_6/StatefulPartitionedCall?Dense_7/StatefulPartitionedCall?Dense_8/StatefulPartitionedCall?!Dropout_6/StatefulPartitionedCall?!Dropout_7/StatefulPartitionedCall?!Dropout_8/StatefulPartitionedCall? conv2D_1/StatefulPartitionedCall? conv2D_2/StatefulPartitionedCall? conv2D_3/StatefulPartitionedCall? conv2D_4/StatefulPartitionedCall? conv2D_5/StatefulPartitionedCall?(dataAugmentation/StatefulPartitionedCall?softmax/StatefulPartitionedCall?
(dataAugmentation/StatefulPartitionedCallStatefulPartitionedCallinputdataaugmentation_3371dataaugmentation_3373dataaugmentation_3375dataaugmentation_3377dataaugmentation_3379*
Tin

2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_dataAugmentation_layer_call_and_return_conditional_losses_30602*
(dataAugmentation/StatefulPartitionedCalli
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
rescaling/Cast/xm
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling/Cast_1/x?
rescaling/mulMul1dataAugmentation/StatefulPartitionedCall:output:0rescaling/Cast/x:output:0*
T0*1
_output_shapes
:???????????2
rescaling/mul?
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:???????????2
rescaling/add?
 conv2D_1/StatefulPartitionedCallStatefulPartitionedCallrescaling/add:z:0conv2d_1_3407conv2d_1_3409*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????~~@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2D_1_layer_call_and_return_conditional_losses_33962"
 conv2D_1/StatefulPartitionedCall?
ReLu_1/PartitionedCallPartitionedCall)conv2D_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????~~@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_ReLu_1_layer_call_and_return_conditional_losses_34172
ReLu_1/PartitionedCall?
#BatchNorm_1/StatefulPartitionedCallStatefulPartitionedCallReLu_1/PartitionedCall:output:0batchnorm_1_3489batchnorm_1_3491batchnorm_1_3493batchnorm_1_3495*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????~~@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_BatchNorm_1_layer_call_and_return_conditional_losses_34442%
#BatchNorm_1/StatefulPartitionedCall?
MaxPool_1/PartitionedCallPartitionedCall,BatchNorm_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>>@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_MaxPool_1_layer_call_and_return_conditional_losses_32092
MaxPool_1/PartitionedCall?
 conv2D_2/StatefulPartitionedCallStatefulPartitionedCall"MaxPool_1/PartitionedCall:output:0conv2d_2_3520conv2d_2_3522*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????::?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2D_2_layer_call_and_return_conditional_losses_35092"
 conv2D_2/StatefulPartitionedCall?
ReLu_2/PartitionedCallPartitionedCall)conv2D_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????::?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_ReLu_2_layer_call_and_return_conditional_losses_35302
ReLu_2/PartitionedCall?
#BatchNorm_2/StatefulPartitionedCallStatefulPartitionedCallReLu_2/PartitionedCall:output:0batchnorm_2_3602batchnorm_2_3604batchnorm_2_3606batchnorm_2_3608*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????::?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_BatchNorm_2_layer_call_and_return_conditional_losses_35572%
#BatchNorm_2/StatefulPartitionedCall?
MaxPool_2/PartitionedCallPartitionedCall,BatchNorm_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_MaxPool_2_layer_call_and_return_conditional_losses_33252
MaxPool_2/PartitionedCall?
 conv2D_3/StatefulPartitionedCallStatefulPartitionedCall"MaxPool_2/PartitionedCall:output:0conv2d_3_3633conv2d_3_3635*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2D_3_layer_call_and_return_conditional_losses_36222"
 conv2D_3/StatefulPartitionedCall?
ReLu_3/PartitionedCallPartitionedCall)conv2D_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_ReLu_3_layer_call_and_return_conditional_losses_36432
ReLu_3/PartitionedCall?
 conv2D_4/StatefulPartitionedCallStatefulPartitionedCallReLu_3/PartitionedCall:output:0conv2d_4_3672conv2d_4_3674*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2D_4_layer_call_and_return_conditional_losses_36612"
 conv2D_4/StatefulPartitionedCall?
ReLu_4/PartitionedCallPartitionedCall)conv2D_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_ReLu_4_layer_call_and_return_conditional_losses_36822
ReLu_4/PartitionedCall?
 conv2D_5/StatefulPartitionedCallStatefulPartitionedCallReLu_4/PartitionedCall:output:0conv2d_5_3711conv2d_5_3713*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2D_5_layer_call_and_return_conditional_losses_37002"
 conv2D_5/StatefulPartitionedCall?
ReLu_5/PartitionedCallPartitionedCall)conv2D_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_ReLu_5_layer_call_and_return_conditional_losses_37212
ReLu_5/PartitionedCall?
MaxPool_5/PartitionedCallPartitionedCallReLu_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????

?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_MaxPool_5_layer_call_and_return_conditional_losses_33372
MaxPool_5/PartitionedCall?
flatten_4/PartitionedCallPartitionedCall"MaxPool_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_flatten_4_layer_call_and_return_conditional_losses_37362
flatten_4/PartitionedCall?
Dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_6_3766dense_6_3768*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_Dense_6_layer_call_and_return_conditional_losses_37552!
Dense_6/StatefulPartitionedCall?
!Dropout_6/StatefulPartitionedCallStatefulPartitionedCall(Dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_Dropout_6_layer_call_and_return_conditional_losses_37832#
!Dropout_6/StatefulPartitionedCall?
Dense_7/StatefulPartitionedCallStatefulPartitionedCall*Dropout_6/StatefulPartitionedCall:output:0dense_7_3823dense_7_3825*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_Dense_7_layer_call_and_return_conditional_losses_38122!
Dense_7/StatefulPartitionedCall?
!Dropout_7/StatefulPartitionedCallStatefulPartitionedCall(Dense_7/StatefulPartitionedCall:output:0"^Dropout_6/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_Dropout_7_layer_call_and_return_conditional_losses_38402#
!Dropout_7/StatefulPartitionedCall?
Dense_8/StatefulPartitionedCallStatefulPartitionedCall*Dropout_7/StatefulPartitionedCall:output:0dense_8_3879dense_8_3881*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_Dense_8_layer_call_and_return_conditional_losses_38682!
Dense_8/StatefulPartitionedCall?
!Dropout_8/StatefulPartitionedCallStatefulPartitionedCall(Dense_8/StatefulPartitionedCall:output:0"^Dropout_7/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_Dropout_8_layer_call_and_return_conditional_losses_38962#
!Dropout_8/StatefulPartitionedCall?
softmax/StatefulPartitionedCallStatefulPartitionedCall*Dropout_8/StatefulPartitionedCall:output:0softmax_3936softmax_3938*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_softmax_layer_call_and_return_conditional_losses_39252!
softmax/StatefulPartitionedCall?
IdentityIdentity(softmax/StatefulPartitionedCall:output:0$^BatchNorm_1/StatefulPartitionedCall$^BatchNorm_2/StatefulPartitionedCall ^Dense_6/StatefulPartitionedCall ^Dense_7/StatefulPartitionedCall ^Dense_8/StatefulPartitionedCall"^Dropout_6/StatefulPartitionedCall"^Dropout_7/StatefulPartitionedCall"^Dropout_8/StatefulPartitionedCall!^conv2D_1/StatefulPartitionedCall!^conv2D_2/StatefulPartitionedCall!^conv2D_3/StatefulPartitionedCall!^conv2D_4/StatefulPartitionedCall!^conv2D_5/StatefulPartitionedCall)^dataAugmentation/StatefulPartitionedCall ^softmax/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????:::::::::::::::::::::::::::::::2J
#BatchNorm_1/StatefulPartitionedCall#BatchNorm_1/StatefulPartitionedCall2J
#BatchNorm_2/StatefulPartitionedCall#BatchNorm_2/StatefulPartitionedCall2B
Dense_6/StatefulPartitionedCallDense_6/StatefulPartitionedCall2B
Dense_7/StatefulPartitionedCallDense_7/StatefulPartitionedCall2B
Dense_8/StatefulPartitionedCallDense_8/StatefulPartitionedCall2F
!Dropout_6/StatefulPartitionedCall!Dropout_6/StatefulPartitionedCall2F
!Dropout_7/StatefulPartitionedCall!Dropout_7/StatefulPartitionedCall2F
!Dropout_8/StatefulPartitionedCall!Dropout_8/StatefulPartitionedCall2D
 conv2D_1/StatefulPartitionedCall conv2D_1/StatefulPartitionedCall2D
 conv2D_2/StatefulPartitionedCall conv2D_2/StatefulPartitionedCall2D
 conv2D_3/StatefulPartitionedCall conv2D_3/StatefulPartitionedCall2D
 conv2D_4/StatefulPartitionedCall conv2D_4/StatefulPartitionedCall2D
 conv2D_5/StatefulPartitionedCall conv2D_5/StatefulPartitionedCall2T
(dataAugmentation/StatefulPartitionedCall(dataAugmentation/StatefulPartitionedCall2B
softmax/StatefulPartitionedCallsoftmax/StatefulPartitionedCall:X T
1
_output_shapes
:???????????

_user_specified_nameinput
?
\
@__inference_ReLu_5_layer_call_and_return_conditional_losses_5873

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:??????????2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
*__inference_BatchNorm_1_layer_call_fn_5634

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????~~@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_BatchNorm_1_layer_call_and_return_conditional_losses_34622
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????~~@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????~~@::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????~~@
 
_user_specified_nameinputs
?
A
%__inference_ReLu_4_layer_call_fn_5849

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_ReLu_4_layer_call_and_return_conditional_losses_36822
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
D
(__inference_MaxPool_1_layer_call_fn_3215

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_MaxPool_1_layer_call_and_return_conditional_losses_32092
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
\
@__inference_ReLu_4_layer_call_and_return_conditional_losses_3682

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:??????????2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
E__inference_BatchNorm_1_layer_call_and_return_conditional_losses_3462

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????~~@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????~~@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????~~@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????~~@
 
_user_specified_nameinputs
?g
?
B__inference_model_14_layer_call_and_return_conditional_losses_4030	
input
dataaugmentation_3945
dataaugmentation_3947
conv2d_1_3954
conv2d_1_3956
batchnorm_1_3960
batchnorm_1_3962
batchnorm_1_3964
batchnorm_1_3966
conv2d_2_3970
conv2d_2_3972
batchnorm_2_3976
batchnorm_2_3978
batchnorm_2_3980
batchnorm_2_3982
conv2d_3_3986
conv2d_3_3988
conv2d_4_3992
conv2d_4_3994
conv2d_5_3998
conv2d_5_4000
dense_6_4006
dense_6_4008
dense_7_4012
dense_7_4014
dense_8_4018
dense_8_4020
softmax_4024
softmax_4026
identity??#BatchNorm_1/StatefulPartitionedCall?#BatchNorm_2/StatefulPartitionedCall?Dense_6/StatefulPartitionedCall?Dense_7/StatefulPartitionedCall?Dense_8/StatefulPartitionedCall? conv2D_1/StatefulPartitionedCall? conv2D_2/StatefulPartitionedCall? conv2D_3/StatefulPartitionedCall? conv2D_4/StatefulPartitionedCall? conv2D_5/StatefulPartitionedCall?(dataAugmentation/StatefulPartitionedCall?softmax/StatefulPartitionedCall?
(dataAugmentation/StatefulPartitionedCallStatefulPartitionedCallinputdataaugmentation_3945dataaugmentation_3947*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_dataAugmentation_layer_call_and_return_conditional_losses_30922*
(dataAugmentation/StatefulPartitionedCalli
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
rescaling/Cast/xm
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling/Cast_1/x?
rescaling/mulMul1dataAugmentation/StatefulPartitionedCall:output:0rescaling/Cast/x:output:0*
T0*1
_output_shapes
:???????????2
rescaling/mul?
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:???????????2
rescaling/add?
 conv2D_1/StatefulPartitionedCallStatefulPartitionedCallrescaling/add:z:0conv2d_1_3954conv2d_1_3956*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????~~@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2D_1_layer_call_and_return_conditional_losses_33962"
 conv2D_1/StatefulPartitionedCall?
ReLu_1/PartitionedCallPartitionedCall)conv2D_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????~~@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_ReLu_1_layer_call_and_return_conditional_losses_34172
ReLu_1/PartitionedCall?
#BatchNorm_1/StatefulPartitionedCallStatefulPartitionedCallReLu_1/PartitionedCall:output:0batchnorm_1_3960batchnorm_1_3962batchnorm_1_3964batchnorm_1_3966*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????~~@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_BatchNorm_1_layer_call_and_return_conditional_losses_34622%
#BatchNorm_1/StatefulPartitionedCall?
MaxPool_1/PartitionedCallPartitionedCall,BatchNorm_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>>@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_MaxPool_1_layer_call_and_return_conditional_losses_32092
MaxPool_1/PartitionedCall?
 conv2D_2/StatefulPartitionedCallStatefulPartitionedCall"MaxPool_1/PartitionedCall:output:0conv2d_2_3970conv2d_2_3972*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????::?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2D_2_layer_call_and_return_conditional_losses_35092"
 conv2D_2/StatefulPartitionedCall?
ReLu_2/PartitionedCallPartitionedCall)conv2D_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????::?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_ReLu_2_layer_call_and_return_conditional_losses_35302
ReLu_2/PartitionedCall?
#BatchNorm_2/StatefulPartitionedCallStatefulPartitionedCallReLu_2/PartitionedCall:output:0batchnorm_2_3976batchnorm_2_3978batchnorm_2_3980batchnorm_2_3982*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????::?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_BatchNorm_2_layer_call_and_return_conditional_losses_35752%
#BatchNorm_2/StatefulPartitionedCall?
MaxPool_2/PartitionedCallPartitionedCall,BatchNorm_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_MaxPool_2_layer_call_and_return_conditional_losses_33252
MaxPool_2/PartitionedCall?
 conv2D_3/StatefulPartitionedCallStatefulPartitionedCall"MaxPool_2/PartitionedCall:output:0conv2d_3_3986conv2d_3_3988*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2D_3_layer_call_and_return_conditional_losses_36222"
 conv2D_3/StatefulPartitionedCall?
ReLu_3/PartitionedCallPartitionedCall)conv2D_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_ReLu_3_layer_call_and_return_conditional_losses_36432
ReLu_3/PartitionedCall?
 conv2D_4/StatefulPartitionedCallStatefulPartitionedCallReLu_3/PartitionedCall:output:0conv2d_4_3992conv2d_4_3994*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2D_4_layer_call_and_return_conditional_losses_36612"
 conv2D_4/StatefulPartitionedCall?
ReLu_4/PartitionedCallPartitionedCall)conv2D_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_ReLu_4_layer_call_and_return_conditional_losses_36822
ReLu_4/PartitionedCall?
 conv2D_5/StatefulPartitionedCallStatefulPartitionedCallReLu_4/PartitionedCall:output:0conv2d_5_3998conv2d_5_4000*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2D_5_layer_call_and_return_conditional_losses_37002"
 conv2D_5/StatefulPartitionedCall?
ReLu_5/PartitionedCallPartitionedCall)conv2D_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_ReLu_5_layer_call_and_return_conditional_losses_37212
ReLu_5/PartitionedCall?
MaxPool_5/PartitionedCallPartitionedCallReLu_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????

?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_MaxPool_5_layer_call_and_return_conditional_losses_33372
MaxPool_5/PartitionedCall?
flatten_4/PartitionedCallPartitionedCall"MaxPool_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_flatten_4_layer_call_and_return_conditional_losses_37362
flatten_4/PartitionedCall?
Dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_6_4006dense_6_4008*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_Dense_6_layer_call_and_return_conditional_losses_37552!
Dense_6/StatefulPartitionedCall?
Dropout_6/PartitionedCallPartitionedCall(Dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_Dropout_6_layer_call_and_return_conditional_losses_37882
Dropout_6/PartitionedCall?
Dense_7/StatefulPartitionedCallStatefulPartitionedCall"Dropout_6/PartitionedCall:output:0dense_7_4012dense_7_4014*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_Dense_7_layer_call_and_return_conditional_losses_38122!
Dense_7/StatefulPartitionedCall?
Dropout_7/PartitionedCallPartitionedCall(Dense_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_Dropout_7_layer_call_and_return_conditional_losses_38452
Dropout_7/PartitionedCall?
Dense_8/StatefulPartitionedCallStatefulPartitionedCall"Dropout_7/PartitionedCall:output:0dense_8_4018dense_8_4020*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_Dense_8_layer_call_and_return_conditional_losses_38682!
Dense_8/StatefulPartitionedCall?
Dropout_8/PartitionedCallPartitionedCall(Dense_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_Dropout_8_layer_call_and_return_conditional_losses_39012
Dropout_8/PartitionedCall?
softmax/StatefulPartitionedCallStatefulPartitionedCall"Dropout_8/PartitionedCall:output:0softmax_4024softmax_4026*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_softmax_layer_call_and_return_conditional_losses_39252!
softmax/StatefulPartitionedCall?
IdentityIdentity(softmax/StatefulPartitionedCall:output:0$^BatchNorm_1/StatefulPartitionedCall$^BatchNorm_2/StatefulPartitionedCall ^Dense_6/StatefulPartitionedCall ^Dense_7/StatefulPartitionedCall ^Dense_8/StatefulPartitionedCall!^conv2D_1/StatefulPartitionedCall!^conv2D_2/StatefulPartitionedCall!^conv2D_3/StatefulPartitionedCall!^conv2D_4/StatefulPartitionedCall!^conv2D_5/StatefulPartitionedCall)^dataAugmentation/StatefulPartitionedCall ^softmax/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::2J
#BatchNorm_1/StatefulPartitionedCall#BatchNorm_1/StatefulPartitionedCall2J
#BatchNorm_2/StatefulPartitionedCall#BatchNorm_2/StatefulPartitionedCall2B
Dense_6/StatefulPartitionedCallDense_6/StatefulPartitionedCall2B
Dense_7/StatefulPartitionedCallDense_7/StatefulPartitionedCall2B
Dense_8/StatefulPartitionedCallDense_8/StatefulPartitionedCall2D
 conv2D_1/StatefulPartitionedCall conv2D_1/StatefulPartitionedCall2D
 conv2D_2/StatefulPartitionedCall conv2D_2/StatefulPartitionedCall2D
 conv2D_3/StatefulPartitionedCall conv2D_3/StatefulPartitionedCall2D
 conv2D_4/StatefulPartitionedCall conv2D_4/StatefulPartitionedCall2D
 conv2D_5/StatefulPartitionedCall conv2D_5/StatefulPartitionedCall2T
(dataAugmentation/StatefulPartitionedCall(dataAugmentation/StatefulPartitionedCall2B
softmax/StatefulPartitionedCallsoftmax/StatefulPartitionedCall:X T
1
_output_shapes
:???????????

_user_specified_nameinput
?
\
@__inference_ReLu_1_layer_call_and_return_conditional_losses_3417

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????~~@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????~~@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????~~@:W S
/
_output_shapes
:?????????~~@
 
_user_specified_nameinputs
?
?
J__inference_dataAugmentation_layer_call_and_return_conditional_losses_3092

inputs3
/normalization_4_reshape_readvariableop_resource5
1normalization_4_reshape_1_readvariableop_resource
identity??&normalization_4/Reshape/ReadVariableOp?(normalization_4/Reshape_1/ReadVariableOp?
&normalization_4/Reshape/ReadVariableOpReadVariableOp/normalization_4_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_4/Reshape/ReadVariableOp?
normalization_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
normalization_4/Reshape/shape?
normalization_4/ReshapeReshape.normalization_4/Reshape/ReadVariableOp:value:0&normalization_4/Reshape/shape:output:0*
T0*&
_output_shapes
:2
normalization_4/Reshape?
(normalization_4/Reshape_1/ReadVariableOpReadVariableOp1normalization_4_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_4/Reshape_1/ReadVariableOp?
normalization_4/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2!
normalization_4/Reshape_1/shape?
normalization_4/Reshape_1Reshape0normalization_4/Reshape_1/ReadVariableOp:value:0(normalization_4/Reshape_1/shape:output:0*
T0*&
_output_shapes
:2
normalization_4/Reshape_1?
normalization_4/subSubinputs normalization_4/Reshape:output:0*
T0*1
_output_shapes
:???????????2
normalization_4/sub?
normalization_4/SqrtSqrt"normalization_4/Reshape_1:output:0*
T0*&
_output_shapes
:2
normalization_4/Sqrt{
normalization_4/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
normalization_4/Maximum/y?
normalization_4/MaximumMaximumnormalization_4/Sqrt:y:0"normalization_4/Maximum/y:output:0*
T0*&
_output_shapes
:2
normalization_4/Maximum?
normalization_4/truedivRealDivnormalization_4/sub:z:0normalization_4/Maximum:z:0*
T0*1
_output_shapes
:???????????2
normalization_4/truediv?
IdentityIdentitynormalization_4/truediv:z:0'^normalization_4/Reshape/ReadVariableOp)^normalization_4/Reshape_1/ReadVariableOp*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:???????????::2P
&normalization_4/Reshape/ReadVariableOp&normalization_4/Reshape/ReadVariableOp2T
(normalization_4/Reshape_1/ReadVariableOp(normalization_4/Reshape_1/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
??
?
B__inference_model_14_layer_call_and_return_conditional_losses_4863

inputsD
@dataaugmentation_normalization_4_reshape_readvariableop_resourceF
Bdataaugmentation_normalization_4_reshape_1_readvariableop_resourceL
Hdataaugmentation_random_zoom_4_stateful_uniform_statefuluniform_resourceS
Odataaugmentation_random_translation_4_stateful_uniform_statefuluniform_resourceP
Ldataaugmentation_random_rotation_4_stateful_uniform_statefuluniform_resource+
'conv2d_1_conv2d_readvariableop_resource,
(conv2d_1_biasadd_readvariableop_resource'
#batchnorm_1_readvariableop_resource)
%batchnorm_1_readvariableop_1_resource8
4batchnorm_1_fusedbatchnormv3_readvariableop_resource:
6batchnorm_1_fusedbatchnormv3_readvariableop_1_resource+
'conv2d_2_conv2d_readvariableop_resource,
(conv2d_2_biasadd_readvariableop_resource'
#batchnorm_2_readvariableop_resource)
%batchnorm_2_readvariableop_1_resource8
4batchnorm_2_fusedbatchnormv3_readvariableop_resource:
6batchnorm_2_fusedbatchnormv3_readvariableop_1_resource+
'conv2d_3_conv2d_readvariableop_resource,
(conv2d_3_biasadd_readvariableop_resource+
'conv2d_4_conv2d_readvariableop_resource,
(conv2d_4_biasadd_readvariableop_resource+
'conv2d_5_conv2d_readvariableop_resource,
(conv2d_5_biasadd_readvariableop_resource*
&dense_6_matmul_readvariableop_resource+
'dense_6_biasadd_readvariableop_resource*
&dense_7_matmul_readvariableop_resource+
'dense_7_biasadd_readvariableop_resource*
&dense_8_matmul_readvariableop_resource+
'dense_8_biasadd_readvariableop_resource*
&softmax_matmul_readvariableop_resource+
'softmax_biasadd_readvariableop_resource
identity??BatchNorm_1/AssignNewValue?BatchNorm_1/AssignNewValue_1?+BatchNorm_1/FusedBatchNormV3/ReadVariableOp?-BatchNorm_1/FusedBatchNormV3/ReadVariableOp_1?BatchNorm_1/ReadVariableOp?BatchNorm_1/ReadVariableOp_1?BatchNorm_2/AssignNewValue?BatchNorm_2/AssignNewValue_1?+BatchNorm_2/FusedBatchNormV3/ReadVariableOp?-BatchNorm_2/FusedBatchNormV3/ReadVariableOp_1?BatchNorm_2/ReadVariableOp?BatchNorm_2/ReadVariableOp_1?Dense_6/BiasAdd/ReadVariableOp?Dense_6/MatMul/ReadVariableOp?Dense_7/BiasAdd/ReadVariableOp?Dense_7/MatMul/ReadVariableOp?Dense_8/BiasAdd/ReadVariableOp?Dense_8/MatMul/ReadVariableOp?conv2D_1/BiasAdd/ReadVariableOp?conv2D_1/Conv2D/ReadVariableOp?conv2D_2/BiasAdd/ReadVariableOp?conv2D_2/Conv2D/ReadVariableOp?conv2D_3/BiasAdd/ReadVariableOp?conv2D_3/Conv2D/ReadVariableOp?conv2D_4/BiasAdd/ReadVariableOp?conv2D_4/Conv2D/ReadVariableOp?conv2D_5/BiasAdd/ReadVariableOp?conv2D_5/Conv2D/ReadVariableOp?7dataAugmentation/normalization_4/Reshape/ReadVariableOp?9dataAugmentation/normalization_4/Reshape_1/ReadVariableOp?CdataAugmentation/random_rotation_4/stateful_uniform/StatefulUniform?FdataAugmentation/random_translation_4/stateful_uniform/StatefulUniform?HdataAugmentation/random_translation_4/stateful_uniform_1/StatefulUniform??dataAugmentation/random_zoom_4/stateful_uniform/StatefulUniform?AdataAugmentation/random_zoom_4/stateful_uniform_1/StatefulUniform?softmax/BiasAdd/ReadVariableOp?softmax/MatMul/ReadVariableOp?
7dataAugmentation/normalization_4/Reshape/ReadVariableOpReadVariableOp@dataaugmentation_normalization_4_reshape_readvariableop_resource*
_output_shapes
:*
dtype029
7dataAugmentation/normalization_4/Reshape/ReadVariableOp?
.dataAugmentation/normalization_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            20
.dataAugmentation/normalization_4/Reshape/shape?
(dataAugmentation/normalization_4/ReshapeReshape?dataAugmentation/normalization_4/Reshape/ReadVariableOp:value:07dataAugmentation/normalization_4/Reshape/shape:output:0*
T0*&
_output_shapes
:2*
(dataAugmentation/normalization_4/Reshape?
9dataAugmentation/normalization_4/Reshape_1/ReadVariableOpReadVariableOpBdataaugmentation_normalization_4_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02;
9dataAugmentation/normalization_4/Reshape_1/ReadVariableOp?
0dataAugmentation/normalization_4/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            22
0dataAugmentation/normalization_4/Reshape_1/shape?
*dataAugmentation/normalization_4/Reshape_1ReshapeAdataAugmentation/normalization_4/Reshape_1/ReadVariableOp:value:09dataAugmentation/normalization_4/Reshape_1/shape:output:0*
T0*&
_output_shapes
:2,
*dataAugmentation/normalization_4/Reshape_1?
$dataAugmentation/normalization_4/subSubinputs1dataAugmentation/normalization_4/Reshape:output:0*
T0*1
_output_shapes
:???????????2&
$dataAugmentation/normalization_4/sub?
%dataAugmentation/normalization_4/SqrtSqrt3dataAugmentation/normalization_4/Reshape_1:output:0*
T0*&
_output_shapes
:2'
%dataAugmentation/normalization_4/Sqrt?
*dataAugmentation/normalization_4/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32,
*dataAugmentation/normalization_4/Maximum/y?
(dataAugmentation/normalization_4/MaximumMaximum)dataAugmentation/normalization_4/Sqrt:y:03dataAugmentation/normalization_4/Maximum/y:output:0*
T0*&
_output_shapes
:2*
(dataAugmentation/normalization_4/Maximum?
(dataAugmentation/normalization_4/truedivRealDiv(dataAugmentation/normalization_4/sub:z:0,dataAugmentation/normalization_4/Maximum:z:0*
T0*1
_output_shapes
:???????????2*
(dataAugmentation/normalization_4/truediv?
$dataAugmentation/random_zoom_4/ShapeShape,dataAugmentation/normalization_4/truediv:z:0*
T0*
_output_shapes
:2&
$dataAugmentation/random_zoom_4/Shape?
2dataAugmentation/random_zoom_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 24
2dataAugmentation/random_zoom_4/strided_slice/stack?
4dataAugmentation/random_zoom_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4dataAugmentation/random_zoom_4/strided_slice/stack_1?
4dataAugmentation/random_zoom_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4dataAugmentation/random_zoom_4/strided_slice/stack_2?
,dataAugmentation/random_zoom_4/strided_sliceStridedSlice-dataAugmentation/random_zoom_4/Shape:output:0;dataAugmentation/random_zoom_4/strided_slice/stack:output:0=dataAugmentation/random_zoom_4/strided_slice/stack_1:output:0=dataAugmentation/random_zoom_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2.
,dataAugmentation/random_zoom_4/strided_slice?
4dataAugmentation/random_zoom_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:26
4dataAugmentation/random_zoom_4/strided_slice_1/stack?
6dataAugmentation/random_zoom_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6dataAugmentation/random_zoom_4/strided_slice_1/stack_1?
6dataAugmentation/random_zoom_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6dataAugmentation/random_zoom_4/strided_slice_1/stack_2?
.dataAugmentation/random_zoom_4/strided_slice_1StridedSlice-dataAugmentation/random_zoom_4/Shape:output:0=dataAugmentation/random_zoom_4/strided_slice_1/stack:output:0?dataAugmentation/random_zoom_4/strided_slice_1/stack_1:output:0?dataAugmentation/random_zoom_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.dataAugmentation/random_zoom_4/strided_slice_1?
#dataAugmentation/random_zoom_4/CastCast7dataAugmentation/random_zoom_4/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2%
#dataAugmentation/random_zoom_4/Cast?
4dataAugmentation/random_zoom_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:26
4dataAugmentation/random_zoom_4/strided_slice_2/stack?
6dataAugmentation/random_zoom_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6dataAugmentation/random_zoom_4/strided_slice_2/stack_1?
6dataAugmentation/random_zoom_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6dataAugmentation/random_zoom_4/strided_slice_2/stack_2?
.dataAugmentation/random_zoom_4/strided_slice_2StridedSlice-dataAugmentation/random_zoom_4/Shape:output:0=dataAugmentation/random_zoom_4/strided_slice_2/stack:output:0?dataAugmentation/random_zoom_4/strided_slice_2/stack_1:output:0?dataAugmentation/random_zoom_4/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.dataAugmentation/random_zoom_4/strided_slice_2?
%dataAugmentation/random_zoom_4/Cast_1Cast7dataAugmentation/random_zoom_4/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2'
%dataAugmentation/random_zoom_4/Cast_1?
7dataAugmentation/random_zoom_4/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :29
7dataAugmentation/random_zoom_4/stateful_uniform/shape/1?
5dataAugmentation/random_zoom_4/stateful_uniform/shapePack5dataAugmentation/random_zoom_4/strided_slice:output:0@dataAugmentation/random_zoom_4/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:27
5dataAugmentation/random_zoom_4/stateful_uniform/shape?
3dataAugmentation/random_zoom_4/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *??L?25
3dataAugmentation/random_zoom_4/stateful_uniform/min?
3dataAugmentation/random_zoom_4/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *????25
3dataAugmentation/random_zoom_4/stateful_uniform/max?
IdataAugmentation/random_zoom_4/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2K
IdataAugmentation/random_zoom_4/stateful_uniform/StatefulUniform/algorithm?
?dataAugmentation/random_zoom_4/stateful_uniform/StatefulUniformStatefulUniformHdataaugmentation_random_zoom_4_stateful_uniform_statefuluniform_resourceRdataAugmentation/random_zoom_4/stateful_uniform/StatefulUniform/algorithm:output:0>dataAugmentation/random_zoom_4/stateful_uniform/shape:output:0*'
_output_shapes
:?????????*
shape_dtype02A
?dataAugmentation/random_zoom_4/stateful_uniform/StatefulUniform?
3dataAugmentation/random_zoom_4/stateful_uniform/subSub<dataAugmentation/random_zoom_4/stateful_uniform/max:output:0<dataAugmentation/random_zoom_4/stateful_uniform/min:output:0*
T0*
_output_shapes
: 25
3dataAugmentation/random_zoom_4/stateful_uniform/sub?
3dataAugmentation/random_zoom_4/stateful_uniform/mulMulHdataAugmentation/random_zoom_4/stateful_uniform/StatefulUniform:output:07dataAugmentation/random_zoom_4/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????25
3dataAugmentation/random_zoom_4/stateful_uniform/mul?
/dataAugmentation/random_zoom_4/stateful_uniformAdd7dataAugmentation/random_zoom_4/stateful_uniform/mul:z:0<dataAugmentation/random_zoom_4/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????21
/dataAugmentation/random_zoom_4/stateful_uniform?
9dataAugmentation/random_zoom_4/stateful_uniform_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2;
9dataAugmentation/random_zoom_4/stateful_uniform_1/shape/1?
7dataAugmentation/random_zoom_4/stateful_uniform_1/shapePack5dataAugmentation/random_zoom_4/strided_slice:output:0BdataAugmentation/random_zoom_4/stateful_uniform_1/shape/1:output:0*
N*
T0*
_output_shapes
:29
7dataAugmentation/random_zoom_4/stateful_uniform_1/shape?
5dataAugmentation/random_zoom_4/stateful_uniform_1/minConst*
_output_shapes
: *
dtype0*
valueB
 *??L?27
5dataAugmentation/random_zoom_4/stateful_uniform_1/min?
5dataAugmentation/random_zoom_4/stateful_uniform_1/maxConst*
_output_shapes
: *
dtype0*
valueB
 *????27
5dataAugmentation/random_zoom_4/stateful_uniform_1/max?
KdataAugmentation/random_zoom_4/stateful_uniform_1/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2M
KdataAugmentation/random_zoom_4/stateful_uniform_1/StatefulUniform/algorithm?
AdataAugmentation/random_zoom_4/stateful_uniform_1/StatefulUniformStatefulUniformHdataaugmentation_random_zoom_4_stateful_uniform_statefuluniform_resourceTdataAugmentation/random_zoom_4/stateful_uniform_1/StatefulUniform/algorithm:output:0@dataAugmentation/random_zoom_4/stateful_uniform_1/shape:output:0@^dataAugmentation/random_zoom_4/stateful_uniform/StatefulUniform*'
_output_shapes
:?????????*
shape_dtype02C
AdataAugmentation/random_zoom_4/stateful_uniform_1/StatefulUniform?
5dataAugmentation/random_zoom_4/stateful_uniform_1/subSub>dataAugmentation/random_zoom_4/stateful_uniform_1/max:output:0>dataAugmentation/random_zoom_4/stateful_uniform_1/min:output:0*
T0*
_output_shapes
: 27
5dataAugmentation/random_zoom_4/stateful_uniform_1/sub?
5dataAugmentation/random_zoom_4/stateful_uniform_1/mulMulJdataAugmentation/random_zoom_4/stateful_uniform_1/StatefulUniform:output:09dataAugmentation/random_zoom_4/stateful_uniform_1/sub:z:0*
T0*'
_output_shapes
:?????????27
5dataAugmentation/random_zoom_4/stateful_uniform_1/mul?
1dataAugmentation/random_zoom_4/stateful_uniform_1Add9dataAugmentation/random_zoom_4/stateful_uniform_1/mul:z:0>dataAugmentation/random_zoom_4/stateful_uniform_1/min:output:0*
T0*'
_output_shapes
:?????????23
1dataAugmentation/random_zoom_4/stateful_uniform_1?
*dataAugmentation/random_zoom_4/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2,
*dataAugmentation/random_zoom_4/concat/axis?
%dataAugmentation/random_zoom_4/concatConcatV25dataAugmentation/random_zoom_4/stateful_uniform_1:z:03dataAugmentation/random_zoom_4/stateful_uniform:z:03dataAugmentation/random_zoom_4/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2'
%dataAugmentation/random_zoom_4/concat?
0dataAugmentation/random_zoom_4/zoom_matrix/ShapeShape.dataAugmentation/random_zoom_4/concat:output:0*
T0*
_output_shapes
:22
0dataAugmentation/random_zoom_4/zoom_matrix/Shape?
>dataAugmentation/random_zoom_4/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2@
>dataAugmentation/random_zoom_4/zoom_matrix/strided_slice/stack?
@dataAugmentation/random_zoom_4/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2B
@dataAugmentation/random_zoom_4/zoom_matrix/strided_slice/stack_1?
@dataAugmentation/random_zoom_4/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2B
@dataAugmentation/random_zoom_4/zoom_matrix/strided_slice/stack_2?
8dataAugmentation/random_zoom_4/zoom_matrix/strided_sliceStridedSlice9dataAugmentation/random_zoom_4/zoom_matrix/Shape:output:0GdataAugmentation/random_zoom_4/zoom_matrix/strided_slice/stack:output:0IdataAugmentation/random_zoom_4/zoom_matrix/strided_slice/stack_1:output:0IdataAugmentation/random_zoom_4/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2:
8dataAugmentation/random_zoom_4/zoom_matrix/strided_slice?
0dataAugmentation/random_zoom_4/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??22
0dataAugmentation/random_zoom_4/zoom_matrix/sub/y?
.dataAugmentation/random_zoom_4/zoom_matrix/subSub)dataAugmentation/random_zoom_4/Cast_1:y:09dataAugmentation/random_zoom_4/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 20
.dataAugmentation/random_zoom_4/zoom_matrix/sub?
4dataAugmentation/random_zoom_4/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @26
4dataAugmentation/random_zoom_4/zoom_matrix/truediv/y?
2dataAugmentation/random_zoom_4/zoom_matrix/truedivRealDiv2dataAugmentation/random_zoom_4/zoom_matrix/sub:z:0=dataAugmentation/random_zoom_4/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 24
2dataAugmentation/random_zoom_4/zoom_matrix/truediv?
@dataAugmentation/random_zoom_4/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2B
@dataAugmentation/random_zoom_4/zoom_matrix/strided_slice_1/stack?
BdataAugmentation/random_zoom_4/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2D
BdataAugmentation/random_zoom_4/zoom_matrix/strided_slice_1/stack_1?
BdataAugmentation/random_zoom_4/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2D
BdataAugmentation/random_zoom_4/zoom_matrix/strided_slice_1/stack_2?
:dataAugmentation/random_zoom_4/zoom_matrix/strided_slice_1StridedSlice.dataAugmentation/random_zoom_4/concat:output:0IdataAugmentation/random_zoom_4/zoom_matrix/strided_slice_1/stack:output:0KdataAugmentation/random_zoom_4/zoom_matrix/strided_slice_1/stack_1:output:0KdataAugmentation/random_zoom_4/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2<
:dataAugmentation/random_zoom_4/zoom_matrix/strided_slice_1?
2dataAugmentation/random_zoom_4/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??24
2dataAugmentation/random_zoom_4/zoom_matrix/sub_1/x?
0dataAugmentation/random_zoom_4/zoom_matrix/sub_1Sub;dataAugmentation/random_zoom_4/zoom_matrix/sub_1/x:output:0CdataAugmentation/random_zoom_4/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????22
0dataAugmentation/random_zoom_4/zoom_matrix/sub_1?
.dataAugmentation/random_zoom_4/zoom_matrix/mulMul6dataAugmentation/random_zoom_4/zoom_matrix/truediv:z:04dataAugmentation/random_zoom_4/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????20
.dataAugmentation/random_zoom_4/zoom_matrix/mul?
2dataAugmentation/random_zoom_4/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??24
2dataAugmentation/random_zoom_4/zoom_matrix/sub_2/y?
0dataAugmentation/random_zoom_4/zoom_matrix/sub_2Sub'dataAugmentation/random_zoom_4/Cast:y:0;dataAugmentation/random_zoom_4/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 22
0dataAugmentation/random_zoom_4/zoom_matrix/sub_2?
6dataAugmentation/random_zoom_4/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @28
6dataAugmentation/random_zoom_4/zoom_matrix/truediv_1/y?
4dataAugmentation/random_zoom_4/zoom_matrix/truediv_1RealDiv4dataAugmentation/random_zoom_4/zoom_matrix/sub_2:z:0?dataAugmentation/random_zoom_4/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 26
4dataAugmentation/random_zoom_4/zoom_matrix/truediv_1?
@dataAugmentation/random_zoom_4/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2B
@dataAugmentation/random_zoom_4/zoom_matrix/strided_slice_2/stack?
BdataAugmentation/random_zoom_4/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2D
BdataAugmentation/random_zoom_4/zoom_matrix/strided_slice_2/stack_1?
BdataAugmentation/random_zoom_4/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2D
BdataAugmentation/random_zoom_4/zoom_matrix/strided_slice_2/stack_2?
:dataAugmentation/random_zoom_4/zoom_matrix/strided_slice_2StridedSlice.dataAugmentation/random_zoom_4/concat:output:0IdataAugmentation/random_zoom_4/zoom_matrix/strided_slice_2/stack:output:0KdataAugmentation/random_zoom_4/zoom_matrix/strided_slice_2/stack_1:output:0KdataAugmentation/random_zoom_4/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2<
:dataAugmentation/random_zoom_4/zoom_matrix/strided_slice_2?
2dataAugmentation/random_zoom_4/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??24
2dataAugmentation/random_zoom_4/zoom_matrix/sub_3/x?
0dataAugmentation/random_zoom_4/zoom_matrix/sub_3Sub;dataAugmentation/random_zoom_4/zoom_matrix/sub_3/x:output:0CdataAugmentation/random_zoom_4/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????22
0dataAugmentation/random_zoom_4/zoom_matrix/sub_3?
0dataAugmentation/random_zoom_4/zoom_matrix/mul_1Mul8dataAugmentation/random_zoom_4/zoom_matrix/truediv_1:z:04dataAugmentation/random_zoom_4/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????22
0dataAugmentation/random_zoom_4/zoom_matrix/mul_1?
@dataAugmentation/random_zoom_4/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2B
@dataAugmentation/random_zoom_4/zoom_matrix/strided_slice_3/stack?
BdataAugmentation/random_zoom_4/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2D
BdataAugmentation/random_zoom_4/zoom_matrix/strided_slice_3/stack_1?
BdataAugmentation/random_zoom_4/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2D
BdataAugmentation/random_zoom_4/zoom_matrix/strided_slice_3/stack_2?
:dataAugmentation/random_zoom_4/zoom_matrix/strided_slice_3StridedSlice.dataAugmentation/random_zoom_4/concat:output:0IdataAugmentation/random_zoom_4/zoom_matrix/strided_slice_3/stack:output:0KdataAugmentation/random_zoom_4/zoom_matrix/strided_slice_3/stack_1:output:0KdataAugmentation/random_zoom_4/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2<
:dataAugmentation/random_zoom_4/zoom_matrix/strided_slice_3?
6dataAugmentation/random_zoom_4/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :28
6dataAugmentation/random_zoom_4/zoom_matrix/zeros/mul/y?
4dataAugmentation/random_zoom_4/zoom_matrix/zeros/mulMulAdataAugmentation/random_zoom_4/zoom_matrix/strided_slice:output:0?dataAugmentation/random_zoom_4/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 26
4dataAugmentation/random_zoom_4/zoom_matrix/zeros/mul?
7dataAugmentation/random_zoom_4/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?29
7dataAugmentation/random_zoom_4/zoom_matrix/zeros/Less/y?
5dataAugmentation/random_zoom_4/zoom_matrix/zeros/LessLess8dataAugmentation/random_zoom_4/zoom_matrix/zeros/mul:z:0@dataAugmentation/random_zoom_4/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 27
5dataAugmentation/random_zoom_4/zoom_matrix/zeros/Less?
9dataAugmentation/random_zoom_4/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2;
9dataAugmentation/random_zoom_4/zoom_matrix/zeros/packed/1?
7dataAugmentation/random_zoom_4/zoom_matrix/zeros/packedPackAdataAugmentation/random_zoom_4/zoom_matrix/strided_slice:output:0BdataAugmentation/random_zoom_4/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:29
7dataAugmentation/random_zoom_4/zoom_matrix/zeros/packed?
6dataAugmentation/random_zoom_4/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    28
6dataAugmentation/random_zoom_4/zoom_matrix/zeros/Const?
0dataAugmentation/random_zoom_4/zoom_matrix/zerosFill@dataAugmentation/random_zoom_4/zoom_matrix/zeros/packed:output:0?dataAugmentation/random_zoom_4/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????22
0dataAugmentation/random_zoom_4/zoom_matrix/zeros?
8dataAugmentation/random_zoom_4/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2:
8dataAugmentation/random_zoom_4/zoom_matrix/zeros_1/mul/y?
6dataAugmentation/random_zoom_4/zoom_matrix/zeros_1/mulMulAdataAugmentation/random_zoom_4/zoom_matrix/strided_slice:output:0AdataAugmentation/random_zoom_4/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 28
6dataAugmentation/random_zoom_4/zoom_matrix/zeros_1/mul?
9dataAugmentation/random_zoom_4/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2;
9dataAugmentation/random_zoom_4/zoom_matrix/zeros_1/Less/y?
7dataAugmentation/random_zoom_4/zoom_matrix/zeros_1/LessLess:dataAugmentation/random_zoom_4/zoom_matrix/zeros_1/mul:z:0BdataAugmentation/random_zoom_4/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 29
7dataAugmentation/random_zoom_4/zoom_matrix/zeros_1/Less?
;dataAugmentation/random_zoom_4/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2=
;dataAugmentation/random_zoom_4/zoom_matrix/zeros_1/packed/1?
9dataAugmentation/random_zoom_4/zoom_matrix/zeros_1/packedPackAdataAugmentation/random_zoom_4/zoom_matrix/strided_slice:output:0DdataAugmentation/random_zoom_4/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2;
9dataAugmentation/random_zoom_4/zoom_matrix/zeros_1/packed?
8dataAugmentation/random_zoom_4/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2:
8dataAugmentation/random_zoom_4/zoom_matrix/zeros_1/Const?
2dataAugmentation/random_zoom_4/zoom_matrix/zeros_1FillBdataAugmentation/random_zoom_4/zoom_matrix/zeros_1/packed:output:0AdataAugmentation/random_zoom_4/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????24
2dataAugmentation/random_zoom_4/zoom_matrix/zeros_1?
@dataAugmentation/random_zoom_4/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2B
@dataAugmentation/random_zoom_4/zoom_matrix/strided_slice_4/stack?
BdataAugmentation/random_zoom_4/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2D
BdataAugmentation/random_zoom_4/zoom_matrix/strided_slice_4/stack_1?
BdataAugmentation/random_zoom_4/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2D
BdataAugmentation/random_zoom_4/zoom_matrix/strided_slice_4/stack_2?
:dataAugmentation/random_zoom_4/zoom_matrix/strided_slice_4StridedSlice.dataAugmentation/random_zoom_4/concat:output:0IdataAugmentation/random_zoom_4/zoom_matrix/strided_slice_4/stack:output:0KdataAugmentation/random_zoom_4/zoom_matrix/strided_slice_4/stack_1:output:0KdataAugmentation/random_zoom_4/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2<
:dataAugmentation/random_zoom_4/zoom_matrix/strided_slice_4?
8dataAugmentation/random_zoom_4/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2:
8dataAugmentation/random_zoom_4/zoom_matrix/zeros_2/mul/y?
6dataAugmentation/random_zoom_4/zoom_matrix/zeros_2/mulMulAdataAugmentation/random_zoom_4/zoom_matrix/strided_slice:output:0AdataAugmentation/random_zoom_4/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 28
6dataAugmentation/random_zoom_4/zoom_matrix/zeros_2/mul?
9dataAugmentation/random_zoom_4/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2;
9dataAugmentation/random_zoom_4/zoom_matrix/zeros_2/Less/y?
7dataAugmentation/random_zoom_4/zoom_matrix/zeros_2/LessLess:dataAugmentation/random_zoom_4/zoom_matrix/zeros_2/mul:z:0BdataAugmentation/random_zoom_4/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 29
7dataAugmentation/random_zoom_4/zoom_matrix/zeros_2/Less?
;dataAugmentation/random_zoom_4/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2=
;dataAugmentation/random_zoom_4/zoom_matrix/zeros_2/packed/1?
9dataAugmentation/random_zoom_4/zoom_matrix/zeros_2/packedPackAdataAugmentation/random_zoom_4/zoom_matrix/strided_slice:output:0DdataAugmentation/random_zoom_4/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2;
9dataAugmentation/random_zoom_4/zoom_matrix/zeros_2/packed?
8dataAugmentation/random_zoom_4/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2:
8dataAugmentation/random_zoom_4/zoom_matrix/zeros_2/Const?
2dataAugmentation/random_zoom_4/zoom_matrix/zeros_2FillBdataAugmentation/random_zoom_4/zoom_matrix/zeros_2/packed:output:0AdataAugmentation/random_zoom_4/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????24
2dataAugmentation/random_zoom_4/zoom_matrix/zeros_2?
6dataAugmentation/random_zoom_4/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :28
6dataAugmentation/random_zoom_4/zoom_matrix/concat/axis?
1dataAugmentation/random_zoom_4/zoom_matrix/concatConcatV2CdataAugmentation/random_zoom_4/zoom_matrix/strided_slice_3:output:09dataAugmentation/random_zoom_4/zoom_matrix/zeros:output:02dataAugmentation/random_zoom_4/zoom_matrix/mul:z:0;dataAugmentation/random_zoom_4/zoom_matrix/zeros_1:output:0CdataAugmentation/random_zoom_4/zoom_matrix/strided_slice_4:output:04dataAugmentation/random_zoom_4/zoom_matrix/mul_1:z:0;dataAugmentation/random_zoom_4/zoom_matrix/zeros_2:output:0?dataAugmentation/random_zoom_4/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????23
1dataAugmentation/random_zoom_4/zoom_matrix/concat?
.dataAugmentation/random_zoom_4/transform/ShapeShape,dataAugmentation/normalization_4/truediv:z:0*
T0*
_output_shapes
:20
.dataAugmentation/random_zoom_4/transform/Shape?
<dataAugmentation/random_zoom_4/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2>
<dataAugmentation/random_zoom_4/transform/strided_slice/stack?
>dataAugmentation/random_zoom_4/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2@
>dataAugmentation/random_zoom_4/transform/strided_slice/stack_1?
>dataAugmentation/random_zoom_4/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2@
>dataAugmentation/random_zoom_4/transform/strided_slice/stack_2?
6dataAugmentation/random_zoom_4/transform/strided_sliceStridedSlice7dataAugmentation/random_zoom_4/transform/Shape:output:0EdataAugmentation/random_zoom_4/transform/strided_slice/stack:output:0GdataAugmentation/random_zoom_4/transform/strided_slice/stack_1:output:0GdataAugmentation/random_zoom_4/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:28
6dataAugmentation/random_zoom_4/transform/strided_slice?
3dataAugmentation/random_zoom_4/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    25
3dataAugmentation/random_zoom_4/transform/fill_value?
CdataAugmentation/random_zoom_4/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3,dataAugmentation/normalization_4/truediv:z:0:dataAugmentation/random_zoom_4/zoom_matrix/concat:output:0?dataAugmentation/random_zoom_4/transform/strided_slice:output:0<dataAugmentation/random_zoom_4/transform/fill_value:output:0*1
_output_shapes
:???????????*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2E
CdataAugmentation/random_zoom_4/transform/ImageProjectiveTransformV3?
+dataAugmentation/random_translation_4/ShapeShapeXdataAugmentation/random_zoom_4/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2-
+dataAugmentation/random_translation_4/Shape?
9dataAugmentation/random_translation_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9dataAugmentation/random_translation_4/strided_slice/stack?
;dataAugmentation/random_translation_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;dataAugmentation/random_translation_4/strided_slice/stack_1?
;dataAugmentation/random_translation_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;dataAugmentation/random_translation_4/strided_slice/stack_2?
3dataAugmentation/random_translation_4/strided_sliceStridedSlice4dataAugmentation/random_translation_4/Shape:output:0BdataAugmentation/random_translation_4/strided_slice/stack:output:0DdataAugmentation/random_translation_4/strided_slice/stack_1:output:0DdataAugmentation/random_translation_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask25
3dataAugmentation/random_translation_4/strided_slice?
;dataAugmentation/random_translation_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2=
;dataAugmentation/random_translation_4/strided_slice_1/stack?
=dataAugmentation/random_translation_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2?
=dataAugmentation/random_translation_4/strided_slice_1/stack_1?
=dataAugmentation/random_translation_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=dataAugmentation/random_translation_4/strided_slice_1/stack_2?
5dataAugmentation/random_translation_4/strided_slice_1StridedSlice4dataAugmentation/random_translation_4/Shape:output:0DdataAugmentation/random_translation_4/strided_slice_1/stack:output:0FdataAugmentation/random_translation_4/strided_slice_1/stack_1:output:0FdataAugmentation/random_translation_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask27
5dataAugmentation/random_translation_4/strided_slice_1?
*dataAugmentation/random_translation_4/CastCast>dataAugmentation/random_translation_4/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2,
*dataAugmentation/random_translation_4/Cast?
;dataAugmentation/random_translation_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2=
;dataAugmentation/random_translation_4/strided_slice_2/stack?
=dataAugmentation/random_translation_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2?
=dataAugmentation/random_translation_4/strided_slice_2/stack_1?
=dataAugmentation/random_translation_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=dataAugmentation/random_translation_4/strided_slice_2/stack_2?
5dataAugmentation/random_translation_4/strided_slice_2StridedSlice4dataAugmentation/random_translation_4/Shape:output:0DdataAugmentation/random_translation_4/strided_slice_2/stack:output:0FdataAugmentation/random_translation_4/strided_slice_2/stack_1:output:0FdataAugmentation/random_translation_4/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask27
5dataAugmentation/random_translation_4/strided_slice_2?
,dataAugmentation/random_translation_4/Cast_1Cast>dataAugmentation/random_translation_4/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2.
,dataAugmentation/random_translation_4/Cast_1?
>dataAugmentation/random_translation_4/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2@
>dataAugmentation/random_translation_4/stateful_uniform/shape/1?
<dataAugmentation/random_translation_4/stateful_uniform/shapePack<dataAugmentation/random_translation_4/strided_slice:output:0GdataAugmentation/random_translation_4/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2>
<dataAugmentation/random_translation_4/stateful_uniform/shape?
:dataAugmentation/random_translation_4/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *??̽2<
:dataAugmentation/random_translation_4/stateful_uniform/min?
:dataAugmentation/random_translation_4/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *???=2<
:dataAugmentation/random_translation_4/stateful_uniform/max?
PdataAugmentation/random_translation_4/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2R
PdataAugmentation/random_translation_4/stateful_uniform/StatefulUniform/algorithm?
FdataAugmentation/random_translation_4/stateful_uniform/StatefulUniformStatefulUniformOdataaugmentation_random_translation_4_stateful_uniform_statefuluniform_resourceYdataAugmentation/random_translation_4/stateful_uniform/StatefulUniform/algorithm:output:0EdataAugmentation/random_translation_4/stateful_uniform/shape:output:0*'
_output_shapes
:?????????*
shape_dtype02H
FdataAugmentation/random_translation_4/stateful_uniform/StatefulUniform?
:dataAugmentation/random_translation_4/stateful_uniform/subSubCdataAugmentation/random_translation_4/stateful_uniform/max:output:0CdataAugmentation/random_translation_4/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2<
:dataAugmentation/random_translation_4/stateful_uniform/sub?
:dataAugmentation/random_translation_4/stateful_uniform/mulMulOdataAugmentation/random_translation_4/stateful_uniform/StatefulUniform:output:0>dataAugmentation/random_translation_4/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????2<
:dataAugmentation/random_translation_4/stateful_uniform/mul?
6dataAugmentation/random_translation_4/stateful_uniformAdd>dataAugmentation/random_translation_4/stateful_uniform/mul:z:0CdataAugmentation/random_translation_4/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????28
6dataAugmentation/random_translation_4/stateful_uniform?
)dataAugmentation/random_translation_4/mulMul:dataAugmentation/random_translation_4/stateful_uniform:z:0.dataAugmentation/random_translation_4/Cast:y:0*
T0*'
_output_shapes
:?????????2+
)dataAugmentation/random_translation_4/mul?
@dataAugmentation/random_translation_4/stateful_uniform_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2B
@dataAugmentation/random_translation_4/stateful_uniform_1/shape/1?
>dataAugmentation/random_translation_4/stateful_uniform_1/shapePack<dataAugmentation/random_translation_4/strided_slice:output:0IdataAugmentation/random_translation_4/stateful_uniform_1/shape/1:output:0*
N*
T0*
_output_shapes
:2@
>dataAugmentation/random_translation_4/stateful_uniform_1/shape?
<dataAugmentation/random_translation_4/stateful_uniform_1/minConst*
_output_shapes
: *
dtype0*
valueB
 *??̽2>
<dataAugmentation/random_translation_4/stateful_uniform_1/min?
<dataAugmentation/random_translation_4/stateful_uniform_1/maxConst*
_output_shapes
: *
dtype0*
valueB
 *???=2>
<dataAugmentation/random_translation_4/stateful_uniform_1/max?
RdataAugmentation/random_translation_4/stateful_uniform_1/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2T
RdataAugmentation/random_translation_4/stateful_uniform_1/StatefulUniform/algorithm?
HdataAugmentation/random_translation_4/stateful_uniform_1/StatefulUniformStatefulUniformOdataaugmentation_random_translation_4_stateful_uniform_statefuluniform_resource[dataAugmentation/random_translation_4/stateful_uniform_1/StatefulUniform/algorithm:output:0GdataAugmentation/random_translation_4/stateful_uniform_1/shape:output:0G^dataAugmentation/random_translation_4/stateful_uniform/StatefulUniform*'
_output_shapes
:?????????*
shape_dtype02J
HdataAugmentation/random_translation_4/stateful_uniform_1/StatefulUniform?
<dataAugmentation/random_translation_4/stateful_uniform_1/subSubEdataAugmentation/random_translation_4/stateful_uniform_1/max:output:0EdataAugmentation/random_translation_4/stateful_uniform_1/min:output:0*
T0*
_output_shapes
: 2>
<dataAugmentation/random_translation_4/stateful_uniform_1/sub?
<dataAugmentation/random_translation_4/stateful_uniform_1/mulMulQdataAugmentation/random_translation_4/stateful_uniform_1/StatefulUniform:output:0@dataAugmentation/random_translation_4/stateful_uniform_1/sub:z:0*
T0*'
_output_shapes
:?????????2>
<dataAugmentation/random_translation_4/stateful_uniform_1/mul?
8dataAugmentation/random_translation_4/stateful_uniform_1Add@dataAugmentation/random_translation_4/stateful_uniform_1/mul:z:0EdataAugmentation/random_translation_4/stateful_uniform_1/min:output:0*
T0*'
_output_shapes
:?????????2:
8dataAugmentation/random_translation_4/stateful_uniform_1?
+dataAugmentation/random_translation_4/mul_1Mul<dataAugmentation/random_translation_4/stateful_uniform_1:z:00dataAugmentation/random_translation_4/Cast_1:y:0*
T0*'
_output_shapes
:?????????2-
+dataAugmentation/random_translation_4/mul_1?
1dataAugmentation/random_translation_4/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :23
1dataAugmentation/random_translation_4/concat/axis?
,dataAugmentation/random_translation_4/concatConcatV2/dataAugmentation/random_translation_4/mul_1:z:0-dataAugmentation/random_translation_4/mul:z:0:dataAugmentation/random_translation_4/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2.
,dataAugmentation/random_translation_4/concat?
>dataAugmentation/random_translation_4/translation_matrix/ShapeShape5dataAugmentation/random_translation_4/concat:output:0*
T0*
_output_shapes
:2@
>dataAugmentation/random_translation_4/translation_matrix/Shape?
LdataAugmentation/random_translation_4/translation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2N
LdataAugmentation/random_translation_4/translation_matrix/strided_slice/stack?
NdataAugmentation/random_translation_4/translation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2P
NdataAugmentation/random_translation_4/translation_matrix/strided_slice/stack_1?
NdataAugmentation/random_translation_4/translation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2P
NdataAugmentation/random_translation_4/translation_matrix/strided_slice/stack_2?
FdataAugmentation/random_translation_4/translation_matrix/strided_sliceStridedSliceGdataAugmentation/random_translation_4/translation_matrix/Shape:output:0UdataAugmentation/random_translation_4/translation_matrix/strided_slice/stack:output:0WdataAugmentation/random_translation_4/translation_matrix/strided_slice/stack_1:output:0WdataAugmentation/random_translation_4/translation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2H
FdataAugmentation/random_translation_4/translation_matrix/strided_slice?
CdataAugmentation/random_translation_4/translation_matrix/ones/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2E
CdataAugmentation/random_translation_4/translation_matrix/ones/mul/y?
AdataAugmentation/random_translation_4/translation_matrix/ones/mulMulOdataAugmentation/random_translation_4/translation_matrix/strided_slice:output:0LdataAugmentation/random_translation_4/translation_matrix/ones/mul/y:output:0*
T0*
_output_shapes
: 2C
AdataAugmentation/random_translation_4/translation_matrix/ones/mul?
DdataAugmentation/random_translation_4/translation_matrix/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2F
DdataAugmentation/random_translation_4/translation_matrix/ones/Less/y?
BdataAugmentation/random_translation_4/translation_matrix/ones/LessLessEdataAugmentation/random_translation_4/translation_matrix/ones/mul:z:0MdataAugmentation/random_translation_4/translation_matrix/ones/Less/y:output:0*
T0*
_output_shapes
: 2D
BdataAugmentation/random_translation_4/translation_matrix/ones/Less?
FdataAugmentation/random_translation_4/translation_matrix/ones/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2H
FdataAugmentation/random_translation_4/translation_matrix/ones/packed/1?
DdataAugmentation/random_translation_4/translation_matrix/ones/packedPackOdataAugmentation/random_translation_4/translation_matrix/strided_slice:output:0OdataAugmentation/random_translation_4/translation_matrix/ones/packed/1:output:0*
N*
T0*
_output_shapes
:2F
DdataAugmentation/random_translation_4/translation_matrix/ones/packed?
CdataAugmentation/random_translation_4/translation_matrix/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2E
CdataAugmentation/random_translation_4/translation_matrix/ones/Const?
=dataAugmentation/random_translation_4/translation_matrix/onesFillMdataAugmentation/random_translation_4/translation_matrix/ones/packed:output:0LdataAugmentation/random_translation_4/translation_matrix/ones/Const:output:0*
T0*'
_output_shapes
:?????????2?
=dataAugmentation/random_translation_4/translation_matrix/ones?
DdataAugmentation/random_translation_4/translation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2F
DdataAugmentation/random_translation_4/translation_matrix/zeros/mul/y?
BdataAugmentation/random_translation_4/translation_matrix/zeros/mulMulOdataAugmentation/random_translation_4/translation_matrix/strided_slice:output:0MdataAugmentation/random_translation_4/translation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2D
BdataAugmentation/random_translation_4/translation_matrix/zeros/mul?
EdataAugmentation/random_translation_4/translation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2G
EdataAugmentation/random_translation_4/translation_matrix/zeros/Less/y?
CdataAugmentation/random_translation_4/translation_matrix/zeros/LessLessFdataAugmentation/random_translation_4/translation_matrix/zeros/mul:z:0NdataAugmentation/random_translation_4/translation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2E
CdataAugmentation/random_translation_4/translation_matrix/zeros/Less?
GdataAugmentation/random_translation_4/translation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2I
GdataAugmentation/random_translation_4/translation_matrix/zeros/packed/1?
EdataAugmentation/random_translation_4/translation_matrix/zeros/packedPackOdataAugmentation/random_translation_4/translation_matrix/strided_slice:output:0PdataAugmentation/random_translation_4/translation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2G
EdataAugmentation/random_translation_4/translation_matrix/zeros/packed?
DdataAugmentation/random_translation_4/translation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2F
DdataAugmentation/random_translation_4/translation_matrix/zeros/Const?
>dataAugmentation/random_translation_4/translation_matrix/zerosFillNdataAugmentation/random_translation_4/translation_matrix/zeros/packed:output:0MdataAugmentation/random_translation_4/translation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2@
>dataAugmentation/random_translation_4/translation_matrix/zeros?
NdataAugmentation/random_translation_4/translation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2P
NdataAugmentation/random_translation_4/translation_matrix/strided_slice_1/stack?
PdataAugmentation/random_translation_4/translation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2R
PdataAugmentation/random_translation_4/translation_matrix/strided_slice_1/stack_1?
PdataAugmentation/random_translation_4/translation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2R
PdataAugmentation/random_translation_4/translation_matrix/strided_slice_1/stack_2?
HdataAugmentation/random_translation_4/translation_matrix/strided_slice_1StridedSlice5dataAugmentation/random_translation_4/concat:output:0WdataAugmentation/random_translation_4/translation_matrix/strided_slice_1/stack:output:0YdataAugmentation/random_translation_4/translation_matrix/strided_slice_1/stack_1:output:0YdataAugmentation/random_translation_4/translation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2J
HdataAugmentation/random_translation_4/translation_matrix/strided_slice_1?
<dataAugmentation/random_translation_4/translation_matrix/NegNegQdataAugmentation/random_translation_4/translation_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2>
<dataAugmentation/random_translation_4/translation_matrix/Neg?
FdataAugmentation/random_translation_4/translation_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2H
FdataAugmentation/random_translation_4/translation_matrix/zeros_1/mul/y?
DdataAugmentation/random_translation_4/translation_matrix/zeros_1/mulMulOdataAugmentation/random_translation_4/translation_matrix/strided_slice:output:0OdataAugmentation/random_translation_4/translation_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2F
DdataAugmentation/random_translation_4/translation_matrix/zeros_1/mul?
GdataAugmentation/random_translation_4/translation_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2I
GdataAugmentation/random_translation_4/translation_matrix/zeros_1/Less/y?
EdataAugmentation/random_translation_4/translation_matrix/zeros_1/LessLessHdataAugmentation/random_translation_4/translation_matrix/zeros_1/mul:z:0PdataAugmentation/random_translation_4/translation_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2G
EdataAugmentation/random_translation_4/translation_matrix/zeros_1/Less?
IdataAugmentation/random_translation_4/translation_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2K
IdataAugmentation/random_translation_4/translation_matrix/zeros_1/packed/1?
GdataAugmentation/random_translation_4/translation_matrix/zeros_1/packedPackOdataAugmentation/random_translation_4/translation_matrix/strided_slice:output:0RdataAugmentation/random_translation_4/translation_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2I
GdataAugmentation/random_translation_4/translation_matrix/zeros_1/packed?
FdataAugmentation/random_translation_4/translation_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2H
FdataAugmentation/random_translation_4/translation_matrix/zeros_1/Const?
@dataAugmentation/random_translation_4/translation_matrix/zeros_1FillPdataAugmentation/random_translation_4/translation_matrix/zeros_1/packed:output:0OdataAugmentation/random_translation_4/translation_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2B
@dataAugmentation/random_translation_4/translation_matrix/zeros_1?
EdataAugmentation/random_translation_4/translation_matrix/ones_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2G
EdataAugmentation/random_translation_4/translation_matrix/ones_1/mul/y?
CdataAugmentation/random_translation_4/translation_matrix/ones_1/mulMulOdataAugmentation/random_translation_4/translation_matrix/strided_slice:output:0NdataAugmentation/random_translation_4/translation_matrix/ones_1/mul/y:output:0*
T0*
_output_shapes
: 2E
CdataAugmentation/random_translation_4/translation_matrix/ones_1/mul?
FdataAugmentation/random_translation_4/translation_matrix/ones_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2H
FdataAugmentation/random_translation_4/translation_matrix/ones_1/Less/y?
DdataAugmentation/random_translation_4/translation_matrix/ones_1/LessLessGdataAugmentation/random_translation_4/translation_matrix/ones_1/mul:z:0OdataAugmentation/random_translation_4/translation_matrix/ones_1/Less/y:output:0*
T0*
_output_shapes
: 2F
DdataAugmentation/random_translation_4/translation_matrix/ones_1/Less?
HdataAugmentation/random_translation_4/translation_matrix/ones_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2J
HdataAugmentation/random_translation_4/translation_matrix/ones_1/packed/1?
FdataAugmentation/random_translation_4/translation_matrix/ones_1/packedPackOdataAugmentation/random_translation_4/translation_matrix/strided_slice:output:0QdataAugmentation/random_translation_4/translation_matrix/ones_1/packed/1:output:0*
N*
T0*
_output_shapes
:2H
FdataAugmentation/random_translation_4/translation_matrix/ones_1/packed?
EdataAugmentation/random_translation_4/translation_matrix/ones_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2G
EdataAugmentation/random_translation_4/translation_matrix/ones_1/Const?
?dataAugmentation/random_translation_4/translation_matrix/ones_1FillOdataAugmentation/random_translation_4/translation_matrix/ones_1/packed:output:0NdataAugmentation/random_translation_4/translation_matrix/ones_1/Const:output:0*
T0*'
_output_shapes
:?????????2A
?dataAugmentation/random_translation_4/translation_matrix/ones_1?
NdataAugmentation/random_translation_4/translation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2P
NdataAugmentation/random_translation_4/translation_matrix/strided_slice_2/stack?
PdataAugmentation/random_translation_4/translation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2R
PdataAugmentation/random_translation_4/translation_matrix/strided_slice_2/stack_1?
PdataAugmentation/random_translation_4/translation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2R
PdataAugmentation/random_translation_4/translation_matrix/strided_slice_2/stack_2?
HdataAugmentation/random_translation_4/translation_matrix/strided_slice_2StridedSlice5dataAugmentation/random_translation_4/concat:output:0WdataAugmentation/random_translation_4/translation_matrix/strided_slice_2/stack:output:0YdataAugmentation/random_translation_4/translation_matrix/strided_slice_2/stack_1:output:0YdataAugmentation/random_translation_4/translation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2J
HdataAugmentation/random_translation_4/translation_matrix/strided_slice_2?
>dataAugmentation/random_translation_4/translation_matrix/Neg_1NegQdataAugmentation/random_translation_4/translation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2@
>dataAugmentation/random_translation_4/translation_matrix/Neg_1?
FdataAugmentation/random_translation_4/translation_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2H
FdataAugmentation/random_translation_4/translation_matrix/zeros_2/mul/y?
DdataAugmentation/random_translation_4/translation_matrix/zeros_2/mulMulOdataAugmentation/random_translation_4/translation_matrix/strided_slice:output:0OdataAugmentation/random_translation_4/translation_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2F
DdataAugmentation/random_translation_4/translation_matrix/zeros_2/mul?
GdataAugmentation/random_translation_4/translation_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2I
GdataAugmentation/random_translation_4/translation_matrix/zeros_2/Less/y?
EdataAugmentation/random_translation_4/translation_matrix/zeros_2/LessLessHdataAugmentation/random_translation_4/translation_matrix/zeros_2/mul:z:0PdataAugmentation/random_translation_4/translation_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2G
EdataAugmentation/random_translation_4/translation_matrix/zeros_2/Less?
IdataAugmentation/random_translation_4/translation_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2K
IdataAugmentation/random_translation_4/translation_matrix/zeros_2/packed/1?
GdataAugmentation/random_translation_4/translation_matrix/zeros_2/packedPackOdataAugmentation/random_translation_4/translation_matrix/strided_slice:output:0RdataAugmentation/random_translation_4/translation_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2I
GdataAugmentation/random_translation_4/translation_matrix/zeros_2/packed?
FdataAugmentation/random_translation_4/translation_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2H
FdataAugmentation/random_translation_4/translation_matrix/zeros_2/Const?
@dataAugmentation/random_translation_4/translation_matrix/zeros_2FillPdataAugmentation/random_translation_4/translation_matrix/zeros_2/packed:output:0OdataAugmentation/random_translation_4/translation_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????2B
@dataAugmentation/random_translation_4/translation_matrix/zeros_2?
DdataAugmentation/random_translation_4/translation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2F
DdataAugmentation/random_translation_4/translation_matrix/concat/axis?
?dataAugmentation/random_translation_4/translation_matrix/concatConcatV2FdataAugmentation/random_translation_4/translation_matrix/ones:output:0GdataAugmentation/random_translation_4/translation_matrix/zeros:output:0@dataAugmentation/random_translation_4/translation_matrix/Neg:y:0IdataAugmentation/random_translation_4/translation_matrix/zeros_1:output:0HdataAugmentation/random_translation_4/translation_matrix/ones_1:output:0BdataAugmentation/random_translation_4/translation_matrix/Neg_1:y:0IdataAugmentation/random_translation_4/translation_matrix/zeros_2:output:0MdataAugmentation/random_translation_4/translation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2A
?dataAugmentation/random_translation_4/translation_matrix/concat?
5dataAugmentation/random_translation_4/transform/ShapeShapeXdataAugmentation/random_zoom_4/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:27
5dataAugmentation/random_translation_4/transform/Shape?
CdataAugmentation/random_translation_4/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2E
CdataAugmentation/random_translation_4/transform/strided_slice/stack?
EdataAugmentation/random_translation_4/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2G
EdataAugmentation/random_translation_4/transform/strided_slice/stack_1?
EdataAugmentation/random_translation_4/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2G
EdataAugmentation/random_translation_4/transform/strided_slice/stack_2?
=dataAugmentation/random_translation_4/transform/strided_sliceStridedSlice>dataAugmentation/random_translation_4/transform/Shape:output:0LdataAugmentation/random_translation_4/transform/strided_slice/stack:output:0NdataAugmentation/random_translation_4/transform/strided_slice/stack_1:output:0NdataAugmentation/random_translation_4/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2?
=dataAugmentation/random_translation_4/transform/strided_slice?
:dataAugmentation/random_translation_4/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2<
:dataAugmentation/random_translation_4/transform/fill_value?
JdataAugmentation/random_translation_4/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3XdataAugmentation/random_zoom_4/transform/ImageProjectiveTransformV3:transformed_images:0HdataAugmentation/random_translation_4/translation_matrix/concat:output:0FdataAugmentation/random_translation_4/transform/strided_slice:output:0CdataAugmentation/random_translation_4/transform/fill_value:output:0*1
_output_shapes
:???????????*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2L
JdataAugmentation/random_translation_4/transform/ImageProjectiveTransformV3?
(dataAugmentation/random_rotation_4/ShapeShape_dataAugmentation/random_translation_4/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2*
(dataAugmentation/random_rotation_4/Shape?
6dataAugmentation/random_rotation_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6dataAugmentation/random_rotation_4/strided_slice/stack?
8dataAugmentation/random_rotation_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8dataAugmentation/random_rotation_4/strided_slice/stack_1?
8dataAugmentation/random_rotation_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8dataAugmentation/random_rotation_4/strided_slice/stack_2?
0dataAugmentation/random_rotation_4/strided_sliceStridedSlice1dataAugmentation/random_rotation_4/Shape:output:0?dataAugmentation/random_rotation_4/strided_slice/stack:output:0AdataAugmentation/random_rotation_4/strided_slice/stack_1:output:0AdataAugmentation/random_rotation_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0dataAugmentation/random_rotation_4/strided_slice?
8dataAugmentation/random_rotation_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2:
8dataAugmentation/random_rotation_4/strided_slice_1/stack?
:dataAugmentation/random_rotation_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:dataAugmentation/random_rotation_4/strided_slice_1/stack_1?
:dataAugmentation/random_rotation_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:dataAugmentation/random_rotation_4/strided_slice_1/stack_2?
2dataAugmentation/random_rotation_4/strided_slice_1StridedSlice1dataAugmentation/random_rotation_4/Shape:output:0AdataAugmentation/random_rotation_4/strided_slice_1/stack:output:0CdataAugmentation/random_rotation_4/strided_slice_1/stack_1:output:0CdataAugmentation/random_rotation_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2dataAugmentation/random_rotation_4/strided_slice_1?
'dataAugmentation/random_rotation_4/CastCast;dataAugmentation/random_rotation_4/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2)
'dataAugmentation/random_rotation_4/Cast?
8dataAugmentation/random_rotation_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2:
8dataAugmentation/random_rotation_4/strided_slice_2/stack?
:dataAugmentation/random_rotation_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:dataAugmentation/random_rotation_4/strided_slice_2/stack_1?
:dataAugmentation/random_rotation_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:dataAugmentation/random_rotation_4/strided_slice_2/stack_2?
2dataAugmentation/random_rotation_4/strided_slice_2StridedSlice1dataAugmentation/random_rotation_4/Shape:output:0AdataAugmentation/random_rotation_4/strided_slice_2/stack:output:0CdataAugmentation/random_rotation_4/strided_slice_2/stack_1:output:0CdataAugmentation/random_rotation_4/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2dataAugmentation/random_rotation_4/strided_slice_2?
)dataAugmentation/random_rotation_4/Cast_1Cast;dataAugmentation/random_rotation_4/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2+
)dataAugmentation/random_rotation_4/Cast_1?
9dataAugmentation/random_rotation_4/stateful_uniform/shapePack9dataAugmentation/random_rotation_4/strided_slice:output:0*
N*
T0*
_output_shapes
:2;
9dataAugmentation/random_rotation_4/stateful_uniform/shape?
7dataAugmentation/random_rotation_4/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|? ?29
7dataAugmentation/random_rotation_4/stateful_uniform/min?
7dataAugmentation/random_rotation_4/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|? ?29
7dataAugmentation/random_rotation_4/stateful_uniform/max?
MdataAugmentation/random_rotation_4/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2O
MdataAugmentation/random_rotation_4/stateful_uniform/StatefulUniform/algorithm?
CdataAugmentation/random_rotation_4/stateful_uniform/StatefulUniformStatefulUniformLdataaugmentation_random_rotation_4_stateful_uniform_statefuluniform_resourceVdataAugmentation/random_rotation_4/stateful_uniform/StatefulUniform/algorithm:output:0BdataAugmentation/random_rotation_4/stateful_uniform/shape:output:0*#
_output_shapes
:?????????*
shape_dtype02E
CdataAugmentation/random_rotation_4/stateful_uniform/StatefulUniform?
7dataAugmentation/random_rotation_4/stateful_uniform/subSub@dataAugmentation/random_rotation_4/stateful_uniform/max:output:0@dataAugmentation/random_rotation_4/stateful_uniform/min:output:0*
T0*
_output_shapes
: 29
7dataAugmentation/random_rotation_4/stateful_uniform/sub?
7dataAugmentation/random_rotation_4/stateful_uniform/mulMulLdataAugmentation/random_rotation_4/stateful_uniform/StatefulUniform:output:0;dataAugmentation/random_rotation_4/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:?????????29
7dataAugmentation/random_rotation_4/stateful_uniform/mul?
3dataAugmentation/random_rotation_4/stateful_uniformAdd;dataAugmentation/random_rotation_4/stateful_uniform/mul:z:0@dataAugmentation/random_rotation_4/stateful_uniform/min:output:0*
T0*#
_output_shapes
:?????????25
3dataAugmentation/random_rotation_4/stateful_uniform?
8dataAugmentation/random_rotation_4/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2:
8dataAugmentation/random_rotation_4/rotation_matrix/sub/y?
6dataAugmentation/random_rotation_4/rotation_matrix/subSub-dataAugmentation/random_rotation_4/Cast_1:y:0AdataAugmentation/random_rotation_4/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 28
6dataAugmentation/random_rotation_4/rotation_matrix/sub?
6dataAugmentation/random_rotation_4/rotation_matrix/CosCos7dataAugmentation/random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????28
6dataAugmentation/random_rotation_4/rotation_matrix/Cos?
:dataAugmentation/random_rotation_4/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2<
:dataAugmentation/random_rotation_4/rotation_matrix/sub_1/y?
8dataAugmentation/random_rotation_4/rotation_matrix/sub_1Sub-dataAugmentation/random_rotation_4/Cast_1:y:0CdataAugmentation/random_rotation_4/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2:
8dataAugmentation/random_rotation_4/rotation_matrix/sub_1?
6dataAugmentation/random_rotation_4/rotation_matrix/mulMul:dataAugmentation/random_rotation_4/rotation_matrix/Cos:y:0<dataAugmentation/random_rotation_4/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:?????????28
6dataAugmentation/random_rotation_4/rotation_matrix/mul?
6dataAugmentation/random_rotation_4/rotation_matrix/SinSin7dataAugmentation/random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????28
6dataAugmentation/random_rotation_4/rotation_matrix/Sin?
:dataAugmentation/random_rotation_4/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2<
:dataAugmentation/random_rotation_4/rotation_matrix/sub_2/y?
8dataAugmentation/random_rotation_4/rotation_matrix/sub_2Sub+dataAugmentation/random_rotation_4/Cast:y:0CdataAugmentation/random_rotation_4/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2:
8dataAugmentation/random_rotation_4/rotation_matrix/sub_2?
8dataAugmentation/random_rotation_4/rotation_matrix/mul_1Mul:dataAugmentation/random_rotation_4/rotation_matrix/Sin:y:0<dataAugmentation/random_rotation_4/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:?????????2:
8dataAugmentation/random_rotation_4/rotation_matrix/mul_1?
8dataAugmentation/random_rotation_4/rotation_matrix/sub_3Sub:dataAugmentation/random_rotation_4/rotation_matrix/mul:z:0<dataAugmentation/random_rotation_4/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:?????????2:
8dataAugmentation/random_rotation_4/rotation_matrix/sub_3?
8dataAugmentation/random_rotation_4/rotation_matrix/sub_4Sub:dataAugmentation/random_rotation_4/rotation_matrix/sub:z:0<dataAugmentation/random_rotation_4/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:?????????2:
8dataAugmentation/random_rotation_4/rotation_matrix/sub_4?
<dataAugmentation/random_rotation_4/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2>
<dataAugmentation/random_rotation_4/rotation_matrix/truediv/y?
:dataAugmentation/random_rotation_4/rotation_matrix/truedivRealDiv<dataAugmentation/random_rotation_4/rotation_matrix/sub_4:z:0EdataAugmentation/random_rotation_4/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:?????????2<
:dataAugmentation/random_rotation_4/rotation_matrix/truediv?
:dataAugmentation/random_rotation_4/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2<
:dataAugmentation/random_rotation_4/rotation_matrix/sub_5/y?
8dataAugmentation/random_rotation_4/rotation_matrix/sub_5Sub+dataAugmentation/random_rotation_4/Cast:y:0CdataAugmentation/random_rotation_4/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2:
8dataAugmentation/random_rotation_4/rotation_matrix/sub_5?
8dataAugmentation/random_rotation_4/rotation_matrix/Sin_1Sin7dataAugmentation/random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2:
8dataAugmentation/random_rotation_4/rotation_matrix/Sin_1?
:dataAugmentation/random_rotation_4/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2<
:dataAugmentation/random_rotation_4/rotation_matrix/sub_6/y?
8dataAugmentation/random_rotation_4/rotation_matrix/sub_6Sub-dataAugmentation/random_rotation_4/Cast_1:y:0CdataAugmentation/random_rotation_4/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2:
8dataAugmentation/random_rotation_4/rotation_matrix/sub_6?
8dataAugmentation/random_rotation_4/rotation_matrix/mul_2Mul<dataAugmentation/random_rotation_4/rotation_matrix/Sin_1:y:0<dataAugmentation/random_rotation_4/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:?????????2:
8dataAugmentation/random_rotation_4/rotation_matrix/mul_2?
8dataAugmentation/random_rotation_4/rotation_matrix/Cos_1Cos7dataAugmentation/random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2:
8dataAugmentation/random_rotation_4/rotation_matrix/Cos_1?
:dataAugmentation/random_rotation_4/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2<
:dataAugmentation/random_rotation_4/rotation_matrix/sub_7/y?
8dataAugmentation/random_rotation_4/rotation_matrix/sub_7Sub+dataAugmentation/random_rotation_4/Cast:y:0CdataAugmentation/random_rotation_4/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2:
8dataAugmentation/random_rotation_4/rotation_matrix/sub_7?
8dataAugmentation/random_rotation_4/rotation_matrix/mul_3Mul<dataAugmentation/random_rotation_4/rotation_matrix/Cos_1:y:0<dataAugmentation/random_rotation_4/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:?????????2:
8dataAugmentation/random_rotation_4/rotation_matrix/mul_3?
6dataAugmentation/random_rotation_4/rotation_matrix/addAddV2<dataAugmentation/random_rotation_4/rotation_matrix/mul_2:z:0<dataAugmentation/random_rotation_4/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:?????????28
6dataAugmentation/random_rotation_4/rotation_matrix/add?
8dataAugmentation/random_rotation_4/rotation_matrix/sub_8Sub<dataAugmentation/random_rotation_4/rotation_matrix/sub_5:z:0:dataAugmentation/random_rotation_4/rotation_matrix/add:z:0*
T0*#
_output_shapes
:?????????2:
8dataAugmentation/random_rotation_4/rotation_matrix/sub_8?
>dataAugmentation/random_rotation_4/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2@
>dataAugmentation/random_rotation_4/rotation_matrix/truediv_1/y?
<dataAugmentation/random_rotation_4/rotation_matrix/truediv_1RealDiv<dataAugmentation/random_rotation_4/rotation_matrix/sub_8:z:0GdataAugmentation/random_rotation_4/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:?????????2>
<dataAugmentation/random_rotation_4/rotation_matrix/truediv_1?
8dataAugmentation/random_rotation_4/rotation_matrix/ShapeShape7dataAugmentation/random_rotation_4/stateful_uniform:z:0*
T0*
_output_shapes
:2:
8dataAugmentation/random_rotation_4/rotation_matrix/Shape?
FdataAugmentation/random_rotation_4/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2H
FdataAugmentation/random_rotation_4/rotation_matrix/strided_slice/stack?
HdataAugmentation/random_rotation_4/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2J
HdataAugmentation/random_rotation_4/rotation_matrix/strided_slice/stack_1?
HdataAugmentation/random_rotation_4/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2J
HdataAugmentation/random_rotation_4/rotation_matrix/strided_slice/stack_2?
@dataAugmentation/random_rotation_4/rotation_matrix/strided_sliceStridedSliceAdataAugmentation/random_rotation_4/rotation_matrix/Shape:output:0OdataAugmentation/random_rotation_4/rotation_matrix/strided_slice/stack:output:0QdataAugmentation/random_rotation_4/rotation_matrix/strided_slice/stack_1:output:0QdataAugmentation/random_rotation_4/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2B
@dataAugmentation/random_rotation_4/rotation_matrix/strided_slice?
8dataAugmentation/random_rotation_4/rotation_matrix/Cos_2Cos7dataAugmentation/random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2:
8dataAugmentation/random_rotation_4/rotation_matrix/Cos_2?
HdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2J
HdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_1/stack?
JdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2L
JdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_1/stack_1?
JdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2L
JdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_1/stack_2?
BdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_1StridedSlice<dataAugmentation/random_rotation_4/rotation_matrix/Cos_2:y:0QdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_1/stack:output:0SdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_1/stack_1:output:0SdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2D
BdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_1?
8dataAugmentation/random_rotation_4/rotation_matrix/Sin_2Sin7dataAugmentation/random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2:
8dataAugmentation/random_rotation_4/rotation_matrix/Sin_2?
HdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2J
HdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_2/stack?
JdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2L
JdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_2/stack_1?
JdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2L
JdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_2/stack_2?
BdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_2StridedSlice<dataAugmentation/random_rotation_4/rotation_matrix/Sin_2:y:0QdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_2/stack:output:0SdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_2/stack_1:output:0SdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2D
BdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_2?
6dataAugmentation/random_rotation_4/rotation_matrix/NegNegKdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????28
6dataAugmentation/random_rotation_4/rotation_matrix/Neg?
HdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2J
HdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_3/stack?
JdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2L
JdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_3/stack_1?
JdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2L
JdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_3/stack_2?
BdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_3StridedSlice>dataAugmentation/random_rotation_4/rotation_matrix/truediv:z:0QdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_3/stack:output:0SdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_3/stack_1:output:0SdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2D
BdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_3?
8dataAugmentation/random_rotation_4/rotation_matrix/Sin_3Sin7dataAugmentation/random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2:
8dataAugmentation/random_rotation_4/rotation_matrix/Sin_3?
HdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2J
HdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_4/stack?
JdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2L
JdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_4/stack_1?
JdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2L
JdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_4/stack_2?
BdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_4StridedSlice<dataAugmentation/random_rotation_4/rotation_matrix/Sin_3:y:0QdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_4/stack:output:0SdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_4/stack_1:output:0SdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2D
BdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_4?
8dataAugmentation/random_rotation_4/rotation_matrix/Cos_3Cos7dataAugmentation/random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2:
8dataAugmentation/random_rotation_4/rotation_matrix/Cos_3?
HdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        2J
HdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_5/stack?
JdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2L
JdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_5/stack_1?
JdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2L
JdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_5/stack_2?
BdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_5StridedSlice<dataAugmentation/random_rotation_4/rotation_matrix/Cos_3:y:0QdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_5/stack:output:0SdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_5/stack_1:output:0SdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2D
BdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_5?
HdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2J
HdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_6/stack?
JdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2L
JdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_6/stack_1?
JdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2L
JdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_6/stack_2?
BdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_6StridedSlice@dataAugmentation/random_rotation_4/rotation_matrix/truediv_1:z:0QdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_6/stack:output:0SdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_6/stack_1:output:0SdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2D
BdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_6?
>dataAugmentation/random_rotation_4/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2@
>dataAugmentation/random_rotation_4/rotation_matrix/zeros/mul/y?
<dataAugmentation/random_rotation_4/rotation_matrix/zeros/mulMulIdataAugmentation/random_rotation_4/rotation_matrix/strided_slice:output:0GdataAugmentation/random_rotation_4/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2>
<dataAugmentation/random_rotation_4/rotation_matrix/zeros/mul?
?dataAugmentation/random_rotation_4/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2A
?dataAugmentation/random_rotation_4/rotation_matrix/zeros/Less/y?
=dataAugmentation/random_rotation_4/rotation_matrix/zeros/LessLess@dataAugmentation/random_rotation_4/rotation_matrix/zeros/mul:z:0HdataAugmentation/random_rotation_4/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2?
=dataAugmentation/random_rotation_4/rotation_matrix/zeros/Less?
AdataAugmentation/random_rotation_4/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2C
AdataAugmentation/random_rotation_4/rotation_matrix/zeros/packed/1?
?dataAugmentation/random_rotation_4/rotation_matrix/zeros/packedPackIdataAugmentation/random_rotation_4/rotation_matrix/strided_slice:output:0JdataAugmentation/random_rotation_4/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2A
?dataAugmentation/random_rotation_4/rotation_matrix/zeros/packed?
>dataAugmentation/random_rotation_4/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2@
>dataAugmentation/random_rotation_4/rotation_matrix/zeros/Const?
8dataAugmentation/random_rotation_4/rotation_matrix/zerosFillHdataAugmentation/random_rotation_4/rotation_matrix/zeros/packed:output:0GdataAugmentation/random_rotation_4/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2:
8dataAugmentation/random_rotation_4/rotation_matrix/zeros?
>dataAugmentation/random_rotation_4/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2@
>dataAugmentation/random_rotation_4/rotation_matrix/concat/axis?
9dataAugmentation/random_rotation_4/rotation_matrix/concatConcatV2KdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_1:output:0:dataAugmentation/random_rotation_4/rotation_matrix/Neg:y:0KdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_3:output:0KdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_4:output:0KdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_5:output:0KdataAugmentation/random_rotation_4/rotation_matrix/strided_slice_6:output:0AdataAugmentation/random_rotation_4/rotation_matrix/zeros:output:0GdataAugmentation/random_rotation_4/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2;
9dataAugmentation/random_rotation_4/rotation_matrix/concat?
2dataAugmentation/random_rotation_4/transform/ShapeShape_dataAugmentation/random_translation_4/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:24
2dataAugmentation/random_rotation_4/transform/Shape?
@dataAugmentation/random_rotation_4/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2B
@dataAugmentation/random_rotation_4/transform/strided_slice/stack?
BdataAugmentation/random_rotation_4/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2D
BdataAugmentation/random_rotation_4/transform/strided_slice/stack_1?
BdataAugmentation/random_rotation_4/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2D
BdataAugmentation/random_rotation_4/transform/strided_slice/stack_2?
:dataAugmentation/random_rotation_4/transform/strided_sliceStridedSlice;dataAugmentation/random_rotation_4/transform/Shape:output:0IdataAugmentation/random_rotation_4/transform/strided_slice/stack:output:0KdataAugmentation/random_rotation_4/transform/strided_slice/stack_1:output:0KdataAugmentation/random_rotation_4/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2<
:dataAugmentation/random_rotation_4/transform/strided_slice?
7dataAugmentation/random_rotation_4/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    29
7dataAugmentation/random_rotation_4/transform/fill_value?
GdataAugmentation/random_rotation_4/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3_dataAugmentation/random_translation_4/transform/ImageProjectiveTransformV3:transformed_images:0BdataAugmentation/random_rotation_4/rotation_matrix/concat:output:0CdataAugmentation/random_rotation_4/transform/strided_slice:output:0@dataAugmentation/random_rotation_4/transform/fill_value:output:0*1
_output_shapes
:???????????*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2I
GdataAugmentation/random_rotation_4/transform/ImageProjectiveTransformV3i
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
rescaling/Cast/xm
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling/Cast_1/x?
rescaling/mulMul\dataAugmentation/random_rotation_4/transform/ImageProjectiveTransformV3:transformed_images:0rescaling/Cast/x:output:0*
T0*1
_output_shapes
:???????????2
rescaling/mul?
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:???????????2
rescaling/add?
conv2D_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02 
conv2D_1/Conv2D/ReadVariableOp?
conv2D_1/Conv2DConv2Drescaling/add:z:0&conv2D_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????~~@*
paddingVALID*
strides
2
conv2D_1/Conv2D?
conv2D_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2D_1/BiasAdd/ReadVariableOp?
conv2D_1/BiasAddBiasAddconv2D_1/Conv2D:output:0'conv2D_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????~~@2
conv2D_1/BiasAddw
ReLu_1/ReluReluconv2D_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????~~@2
ReLu_1/Relu?
BatchNorm_1/ReadVariableOpReadVariableOp#batchnorm_1_readvariableop_resource*
_output_shapes
:@*
dtype02
BatchNorm_1/ReadVariableOp?
BatchNorm_1/ReadVariableOp_1ReadVariableOp%batchnorm_1_readvariableop_1_resource*
_output_shapes
:@*
dtype02
BatchNorm_1/ReadVariableOp_1?
+BatchNorm_1/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02-
+BatchNorm_1/FusedBatchNormV3/ReadVariableOp?
-BatchNorm_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02/
-BatchNorm_1/FusedBatchNormV3/ReadVariableOp_1?
BatchNorm_1/FusedBatchNormV3FusedBatchNormV3ReLu_1/Relu:activations:0"BatchNorm_1/ReadVariableOp:value:0$BatchNorm_1/ReadVariableOp_1:value:03BatchNorm_1/FusedBatchNormV3/ReadVariableOp:value:05BatchNorm_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????~~@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
BatchNorm_1/FusedBatchNormV3?
BatchNorm_1/AssignNewValueAssignVariableOp4batchnorm_1_fusedbatchnormv3_readvariableop_resource)BatchNorm_1/FusedBatchNormV3:batch_mean:0,^BatchNorm_1/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*G
_class=
;9loc:@BatchNorm_1/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
BatchNorm_1/AssignNewValue?
BatchNorm_1/AssignNewValue_1AssignVariableOp6batchnorm_1_fusedbatchnormv3_readvariableop_1_resource-BatchNorm_1/FusedBatchNormV3:batch_variance:0.^BatchNorm_1/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*I
_class?
=;loc:@BatchNorm_1/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
BatchNorm_1/AssignNewValue_1?
MaxPool_1/MaxPoolMaxPool BatchNorm_1/FusedBatchNormV3:y:0*/
_output_shapes
:?????????>>@*
ksize
*
paddingVALID*
strides
2
MaxPool_1/MaxPool?
conv2D_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02 
conv2D_2/Conv2D/ReadVariableOp?
conv2D_2/Conv2DConv2DMaxPool_1/MaxPool:output:0&conv2D_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????::?*
paddingVALID*
strides
2
conv2D_2/Conv2D?
conv2D_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv2D_2/BiasAdd/ReadVariableOp?
conv2D_2/BiasAddBiasAddconv2D_2/Conv2D:output:0'conv2D_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????::?2
conv2D_2/BiasAddx
ReLu_2/ReluReluconv2D_2/BiasAdd:output:0*
T0*0
_output_shapes
:?????????::?2
ReLu_2/Relu?
BatchNorm_2/ReadVariableOpReadVariableOp#batchnorm_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
BatchNorm_2/ReadVariableOp?
BatchNorm_2/ReadVariableOp_1ReadVariableOp%batchnorm_2_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
BatchNorm_2/ReadVariableOp_1?
+BatchNorm_2/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+BatchNorm_2/FusedBatchNormV3/ReadVariableOp?
-BatchNorm_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02/
-BatchNorm_2/FusedBatchNormV3/ReadVariableOp_1?
BatchNorm_2/FusedBatchNormV3FusedBatchNormV3ReLu_2/Relu:activations:0"BatchNorm_2/ReadVariableOp:value:0$BatchNorm_2/ReadVariableOp_1:value:03BatchNorm_2/FusedBatchNormV3/ReadVariableOp:value:05BatchNorm_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????::?:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
BatchNorm_2/FusedBatchNormV3?
BatchNorm_2/AssignNewValueAssignVariableOp4batchnorm_2_fusedbatchnormv3_readvariableop_resource)BatchNorm_2/FusedBatchNormV3:batch_mean:0,^BatchNorm_2/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*G
_class=
;9loc:@BatchNorm_2/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
BatchNorm_2/AssignNewValue?
BatchNorm_2/AssignNewValue_1AssignVariableOp6batchnorm_2_fusedbatchnormv3_readvariableop_1_resource-BatchNorm_2/FusedBatchNormV3:batch_variance:0.^BatchNorm_2/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*I
_class?
=;loc:@BatchNorm_2/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
BatchNorm_2/AssignNewValue_1?
MaxPool_2/MaxPoolMaxPool BatchNorm_2/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
MaxPool_2/MaxPool?
conv2D_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02 
conv2D_3/Conv2D/ReadVariableOp?
conv2D_3/Conv2DConv2DMaxPool_2/MaxPool:output:0&conv2D_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
conv2D_3/Conv2D?
conv2D_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv2D_3/BiasAdd/ReadVariableOp?
conv2D_3/BiasAddBiasAddconv2D_3/Conv2D:output:0'conv2D_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2D_3/BiasAddx
ReLu_3/ReluReluconv2D_3/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
ReLu_3/Relu?
conv2D_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02 
conv2D_4/Conv2D/ReadVariableOp?
conv2D_4/Conv2DConv2DReLu_3/Relu:activations:0&conv2D_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
conv2D_4/Conv2D?
conv2D_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv2D_4/BiasAdd/ReadVariableOp?
conv2D_4/BiasAddBiasAddconv2D_4/Conv2D:output:0'conv2D_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2D_4/BiasAddx
ReLu_4/ReluReluconv2D_4/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
ReLu_4/Relu?
conv2D_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02 
conv2D_5/Conv2D/ReadVariableOp?
conv2D_5/Conv2DConv2DReLu_4/Relu:activations:0&conv2D_5/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
conv2D_5/Conv2D?
conv2D_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv2D_5/BiasAdd/ReadVariableOp?
conv2D_5/BiasAddBiasAddconv2D_5/Conv2D:output:0'conv2D_5/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2D_5/BiasAddx
ReLu_5/ReluReluconv2D_5/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
ReLu_5/Relu?
MaxPool_5/MaxPoolMaxPoolReLu_5/Relu:activations:0*0
_output_shapes
:?????????

?*
ksize
*
paddingVALID*
strides
2
MaxPool_5/MaxPools
flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? d  2
flatten_4/Const?
flatten_4/ReshapeReshapeMaxPool_5/MaxPool:output:0flatten_4/Const:output:0*
T0*)
_output_shapes
:???????????2
flatten_4/Reshape?
Dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype02
Dense_6/MatMul/ReadVariableOp?
Dense_6/MatMulMatMulflatten_4/Reshape:output:0%Dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Dense_6/MatMul?
Dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
Dense_6/BiasAdd/ReadVariableOp?
Dense_6/BiasAddBiasAddDense_6/MatMul:product:0&Dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Dense_6/BiasAddq
Dense_6/ReluReluDense_6/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Dense_6/Reluw
Dropout_6/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
Dropout_6/dropout/Const?
Dropout_6/dropout/MulMulDense_6/Relu:activations:0 Dropout_6/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
Dropout_6/dropout/Mul|
Dropout_6/dropout/ShapeShapeDense_6/Relu:activations:0*
T0*
_output_shapes
:2
Dropout_6/dropout/Shape?
.Dropout_6/dropout/random_uniform/RandomUniformRandomUniform Dropout_6/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype020
.Dropout_6/dropout/random_uniform/RandomUniform?
 Dropout_6/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 Dropout_6/dropout/GreaterEqual/y?
Dropout_6/dropout/GreaterEqualGreaterEqual7Dropout_6/dropout/random_uniform/RandomUniform:output:0)Dropout_6/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2 
Dropout_6/dropout/GreaterEqual?
Dropout_6/dropout/CastCast"Dropout_6/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
Dropout_6/dropout/Cast?
Dropout_6/dropout/Mul_1MulDropout_6/dropout/Mul:z:0Dropout_6/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
Dropout_6/dropout/Mul_1?
Dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
Dense_7/MatMul/ReadVariableOp?
Dense_7/MatMulMatMulDropout_6/dropout/Mul_1:z:0%Dense_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Dense_7/MatMul?
Dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
Dense_7/BiasAdd/ReadVariableOp?
Dense_7/BiasAddBiasAddDense_7/MatMul:product:0&Dense_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Dense_7/BiasAddq
Dense_7/ReluReluDense_7/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Dense_7/Reluw
Dropout_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
Dropout_7/dropout/Const?
Dropout_7/dropout/MulMulDense_7/Relu:activations:0 Dropout_7/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
Dropout_7/dropout/Mul|
Dropout_7/dropout/ShapeShapeDense_7/Relu:activations:0*
T0*
_output_shapes
:2
Dropout_7/dropout/Shape?
.Dropout_7/dropout/random_uniform/RandomUniformRandomUniform Dropout_7/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype020
.Dropout_7/dropout/random_uniform/RandomUniform?
 Dropout_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 Dropout_7/dropout/GreaterEqual/y?
Dropout_7/dropout/GreaterEqualGreaterEqual7Dropout_7/dropout/random_uniform/RandomUniform:output:0)Dropout_7/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2 
Dropout_7/dropout/GreaterEqual?
Dropout_7/dropout/CastCast"Dropout_7/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
Dropout_7/dropout/Cast?
Dropout_7/dropout/Mul_1MulDropout_7/dropout/Mul:z:0Dropout_7/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
Dropout_7/dropout/Mul_1?
Dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
Dense_8/MatMul/ReadVariableOp?
Dense_8/MatMulMatMulDropout_7/dropout/Mul_1:z:0%Dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
Dense_8/MatMul?
Dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
Dense_8/BiasAdd/ReadVariableOp?
Dense_8/BiasAddBiasAddDense_8/MatMul:product:0&Dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
Dense_8/BiasAddw
Dropout_8/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
Dropout_8/dropout/Const?
Dropout_8/dropout/MulMulDense_8/BiasAdd:output:0 Dropout_8/dropout/Const:output:0*
T0*'
_output_shapes
:?????????@2
Dropout_8/dropout/Mulz
Dropout_8/dropout/ShapeShapeDense_8/BiasAdd:output:0*
T0*
_output_shapes
:2
Dropout_8/dropout/Shape?
.Dropout_8/dropout/random_uniform/RandomUniformRandomUniform Dropout_8/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype020
.Dropout_8/dropout/random_uniform/RandomUniform?
 Dropout_8/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 Dropout_8/dropout/GreaterEqual/y?
Dropout_8/dropout/GreaterEqualGreaterEqual7Dropout_8/dropout/random_uniform/RandomUniform:output:0)Dropout_8/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2 
Dropout_8/dropout/GreaterEqual?
Dropout_8/dropout/CastCast"Dropout_8/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
Dropout_8/dropout/Cast?
Dropout_8/dropout/Mul_1MulDropout_8/dropout/Mul:z:0Dropout_8/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2
Dropout_8/dropout/Mul_1?
softmax/MatMul/ReadVariableOpReadVariableOp&softmax_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
softmax/MatMul/ReadVariableOp?
softmax/MatMulMatMulDropout_8/dropout/Mul_1:z:0%softmax/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
softmax/MatMul?
softmax/BiasAdd/ReadVariableOpReadVariableOp'softmax_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
softmax/BiasAdd/ReadVariableOp?
softmax/BiasAddBiasAddsoftmax/MatMul:product:0&softmax/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
softmax/BiasAddy
softmax/SoftmaxSoftmaxsoftmax/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
softmax/Softmax?
IdentityIdentitysoftmax/Softmax:softmax:0^BatchNorm_1/AssignNewValue^BatchNorm_1/AssignNewValue_1,^BatchNorm_1/FusedBatchNormV3/ReadVariableOp.^BatchNorm_1/FusedBatchNormV3/ReadVariableOp_1^BatchNorm_1/ReadVariableOp^BatchNorm_1/ReadVariableOp_1^BatchNorm_2/AssignNewValue^BatchNorm_2/AssignNewValue_1,^BatchNorm_2/FusedBatchNormV3/ReadVariableOp.^BatchNorm_2/FusedBatchNormV3/ReadVariableOp_1^BatchNorm_2/ReadVariableOp^BatchNorm_2/ReadVariableOp_1^Dense_6/BiasAdd/ReadVariableOp^Dense_6/MatMul/ReadVariableOp^Dense_7/BiasAdd/ReadVariableOp^Dense_7/MatMul/ReadVariableOp^Dense_8/BiasAdd/ReadVariableOp^Dense_8/MatMul/ReadVariableOp ^conv2D_1/BiasAdd/ReadVariableOp^conv2D_1/Conv2D/ReadVariableOp ^conv2D_2/BiasAdd/ReadVariableOp^conv2D_2/Conv2D/ReadVariableOp ^conv2D_3/BiasAdd/ReadVariableOp^conv2D_3/Conv2D/ReadVariableOp ^conv2D_4/BiasAdd/ReadVariableOp^conv2D_4/Conv2D/ReadVariableOp ^conv2D_5/BiasAdd/ReadVariableOp^conv2D_5/Conv2D/ReadVariableOp8^dataAugmentation/normalization_4/Reshape/ReadVariableOp:^dataAugmentation/normalization_4/Reshape_1/ReadVariableOpD^dataAugmentation/random_rotation_4/stateful_uniform/StatefulUniformG^dataAugmentation/random_translation_4/stateful_uniform/StatefulUniformI^dataAugmentation/random_translation_4/stateful_uniform_1/StatefulUniform@^dataAugmentation/random_zoom_4/stateful_uniform/StatefulUniformB^dataAugmentation/random_zoom_4/stateful_uniform_1/StatefulUniform^softmax/BiasAdd/ReadVariableOp^softmax/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????:::::::::::::::::::::::::::::::28
BatchNorm_1/AssignNewValueBatchNorm_1/AssignNewValue2<
BatchNorm_1/AssignNewValue_1BatchNorm_1/AssignNewValue_12Z
+BatchNorm_1/FusedBatchNormV3/ReadVariableOp+BatchNorm_1/FusedBatchNormV3/ReadVariableOp2^
-BatchNorm_1/FusedBatchNormV3/ReadVariableOp_1-BatchNorm_1/FusedBatchNormV3/ReadVariableOp_128
BatchNorm_1/ReadVariableOpBatchNorm_1/ReadVariableOp2<
BatchNorm_1/ReadVariableOp_1BatchNorm_1/ReadVariableOp_128
BatchNorm_2/AssignNewValueBatchNorm_2/AssignNewValue2<
BatchNorm_2/AssignNewValue_1BatchNorm_2/AssignNewValue_12Z
+BatchNorm_2/FusedBatchNormV3/ReadVariableOp+BatchNorm_2/FusedBatchNormV3/ReadVariableOp2^
-BatchNorm_2/FusedBatchNormV3/ReadVariableOp_1-BatchNorm_2/FusedBatchNormV3/ReadVariableOp_128
BatchNorm_2/ReadVariableOpBatchNorm_2/ReadVariableOp2<
BatchNorm_2/ReadVariableOp_1BatchNorm_2/ReadVariableOp_12@
Dense_6/BiasAdd/ReadVariableOpDense_6/BiasAdd/ReadVariableOp2>
Dense_6/MatMul/ReadVariableOpDense_6/MatMul/ReadVariableOp2@
Dense_7/BiasAdd/ReadVariableOpDense_7/BiasAdd/ReadVariableOp2>
Dense_7/MatMul/ReadVariableOpDense_7/MatMul/ReadVariableOp2@
Dense_8/BiasAdd/ReadVariableOpDense_8/BiasAdd/ReadVariableOp2>
Dense_8/MatMul/ReadVariableOpDense_8/MatMul/ReadVariableOp2B
conv2D_1/BiasAdd/ReadVariableOpconv2D_1/BiasAdd/ReadVariableOp2@
conv2D_1/Conv2D/ReadVariableOpconv2D_1/Conv2D/ReadVariableOp2B
conv2D_2/BiasAdd/ReadVariableOpconv2D_2/BiasAdd/ReadVariableOp2@
conv2D_2/Conv2D/ReadVariableOpconv2D_2/Conv2D/ReadVariableOp2B
conv2D_3/BiasAdd/ReadVariableOpconv2D_3/BiasAdd/ReadVariableOp2@
conv2D_3/Conv2D/ReadVariableOpconv2D_3/Conv2D/ReadVariableOp2B
conv2D_4/BiasAdd/ReadVariableOpconv2D_4/BiasAdd/ReadVariableOp2@
conv2D_4/Conv2D/ReadVariableOpconv2D_4/Conv2D/ReadVariableOp2B
conv2D_5/BiasAdd/ReadVariableOpconv2D_5/BiasAdd/ReadVariableOp2@
conv2D_5/Conv2D/ReadVariableOpconv2D_5/Conv2D/ReadVariableOp2r
7dataAugmentation/normalization_4/Reshape/ReadVariableOp7dataAugmentation/normalization_4/Reshape/ReadVariableOp2v
9dataAugmentation/normalization_4/Reshape_1/ReadVariableOp9dataAugmentation/normalization_4/Reshape_1/ReadVariableOp2?
CdataAugmentation/random_rotation_4/stateful_uniform/StatefulUniformCdataAugmentation/random_rotation_4/stateful_uniform/StatefulUniform2?
FdataAugmentation/random_translation_4/stateful_uniform/StatefulUniformFdataAugmentation/random_translation_4/stateful_uniform/StatefulUniform2?
HdataAugmentation/random_translation_4/stateful_uniform_1/StatefulUniformHdataAugmentation/random_translation_4/stateful_uniform_1/StatefulUniform2?
?dataAugmentation/random_zoom_4/stateful_uniform/StatefulUniform?dataAugmentation/random_zoom_4/stateful_uniform/StatefulUniform2?
AdataAugmentation/random_zoom_4/stateful_uniform_1/StatefulUniformAdataAugmentation/random_zoom_4/stateful_uniform_1/StatefulUniform2@
softmax/BiasAdd/ReadVariableOpsoftmax/BiasAdd/ReadVariableOp2>
softmax/MatMul/ReadVariableOpsoftmax/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
\
@__inference_ReLu_1_layer_call_and_return_conditional_losses_5501

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????~~@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????~~@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????~~@:W S
/
_output_shapes
:?????????~~@
 
_user_specified_nameinputs
?
?
/__inference_dataAugmentation_layer_call_fn_5477

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_dataAugmentation_layer_call_and_return_conditional_losses_30922
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:???????????::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
A
%__inference_ReLu_2_layer_call_fn_5663

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????::?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_ReLu_2_layer_call_and_return_conditional_losses_35302
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:?????????::?2

Identity"
identityIdentity:output:0*/
_input_shapes
:?????????::?:X T
0
_output_shapes
:?????????::?
 
_user_specified_nameinputs
?
?
E__inference_BatchNorm_1_layer_call_and_return_conditional_losses_5608

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????~~@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????~~@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????~~@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????~~@
 
_user_specified_nameinputs
?m
?

B__inference_model_14_layer_call_and_return_conditional_losses_4127

inputs
dataaugmentation_4036
dataaugmentation_4038
dataaugmentation_4040
dataaugmentation_4042
dataaugmentation_4044
conv2d_1_4051
conv2d_1_4053
batchnorm_1_4057
batchnorm_1_4059
batchnorm_1_4061
batchnorm_1_4063
conv2d_2_4067
conv2d_2_4069
batchnorm_2_4073
batchnorm_2_4075
batchnorm_2_4077
batchnorm_2_4079
conv2d_3_4083
conv2d_3_4085
conv2d_4_4089
conv2d_4_4091
conv2d_5_4095
conv2d_5_4097
dense_6_4103
dense_6_4105
dense_7_4109
dense_7_4111
dense_8_4115
dense_8_4117
softmax_4121
softmax_4123
identity??#BatchNorm_1/StatefulPartitionedCall?#BatchNorm_2/StatefulPartitionedCall?Dense_6/StatefulPartitionedCall?Dense_7/StatefulPartitionedCall?Dense_8/StatefulPartitionedCall?!Dropout_6/StatefulPartitionedCall?!Dropout_7/StatefulPartitionedCall?!Dropout_8/StatefulPartitionedCall? conv2D_1/StatefulPartitionedCall? conv2D_2/StatefulPartitionedCall? conv2D_3/StatefulPartitionedCall? conv2D_4/StatefulPartitionedCall? conv2D_5/StatefulPartitionedCall?(dataAugmentation/StatefulPartitionedCall?softmax/StatefulPartitionedCall?
(dataAugmentation/StatefulPartitionedCallStatefulPartitionedCallinputsdataaugmentation_4036dataaugmentation_4038dataaugmentation_4040dataaugmentation_4042dataaugmentation_4044*
Tin

2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_dataAugmentation_layer_call_and_return_conditional_losses_30602*
(dataAugmentation/StatefulPartitionedCalli
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
rescaling/Cast/xm
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling/Cast_1/x?
rescaling/mulMul1dataAugmentation/StatefulPartitionedCall:output:0rescaling/Cast/x:output:0*
T0*1
_output_shapes
:???????????2
rescaling/mul?
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:???????????2
rescaling/add?
 conv2D_1/StatefulPartitionedCallStatefulPartitionedCallrescaling/add:z:0conv2d_1_4051conv2d_1_4053*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????~~@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2D_1_layer_call_and_return_conditional_losses_33962"
 conv2D_1/StatefulPartitionedCall?
ReLu_1/PartitionedCallPartitionedCall)conv2D_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????~~@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_ReLu_1_layer_call_and_return_conditional_losses_34172
ReLu_1/PartitionedCall?
#BatchNorm_1/StatefulPartitionedCallStatefulPartitionedCallReLu_1/PartitionedCall:output:0batchnorm_1_4057batchnorm_1_4059batchnorm_1_4061batchnorm_1_4063*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????~~@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_BatchNorm_1_layer_call_and_return_conditional_losses_34442%
#BatchNorm_1/StatefulPartitionedCall?
MaxPool_1/PartitionedCallPartitionedCall,BatchNorm_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>>@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_MaxPool_1_layer_call_and_return_conditional_losses_32092
MaxPool_1/PartitionedCall?
 conv2D_2/StatefulPartitionedCallStatefulPartitionedCall"MaxPool_1/PartitionedCall:output:0conv2d_2_4067conv2d_2_4069*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????::?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2D_2_layer_call_and_return_conditional_losses_35092"
 conv2D_2/StatefulPartitionedCall?
ReLu_2/PartitionedCallPartitionedCall)conv2D_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????::?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_ReLu_2_layer_call_and_return_conditional_losses_35302
ReLu_2/PartitionedCall?
#BatchNorm_2/StatefulPartitionedCallStatefulPartitionedCallReLu_2/PartitionedCall:output:0batchnorm_2_4073batchnorm_2_4075batchnorm_2_4077batchnorm_2_4079*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????::?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_BatchNorm_2_layer_call_and_return_conditional_losses_35572%
#BatchNorm_2/StatefulPartitionedCall?
MaxPool_2/PartitionedCallPartitionedCall,BatchNorm_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_MaxPool_2_layer_call_and_return_conditional_losses_33252
MaxPool_2/PartitionedCall?
 conv2D_3/StatefulPartitionedCallStatefulPartitionedCall"MaxPool_2/PartitionedCall:output:0conv2d_3_4083conv2d_3_4085*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2D_3_layer_call_and_return_conditional_losses_36222"
 conv2D_3/StatefulPartitionedCall?
ReLu_3/PartitionedCallPartitionedCall)conv2D_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_ReLu_3_layer_call_and_return_conditional_losses_36432
ReLu_3/PartitionedCall?
 conv2D_4/StatefulPartitionedCallStatefulPartitionedCallReLu_3/PartitionedCall:output:0conv2d_4_4089conv2d_4_4091*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2D_4_layer_call_and_return_conditional_losses_36612"
 conv2D_4/StatefulPartitionedCall?
ReLu_4/PartitionedCallPartitionedCall)conv2D_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_ReLu_4_layer_call_and_return_conditional_losses_36822
ReLu_4/PartitionedCall?
 conv2D_5/StatefulPartitionedCallStatefulPartitionedCallReLu_4/PartitionedCall:output:0conv2d_5_4095conv2d_5_4097*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2D_5_layer_call_and_return_conditional_losses_37002"
 conv2D_5/StatefulPartitionedCall?
ReLu_5/PartitionedCallPartitionedCall)conv2D_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_ReLu_5_layer_call_and_return_conditional_losses_37212
ReLu_5/PartitionedCall?
MaxPool_5/PartitionedCallPartitionedCallReLu_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????

?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_MaxPool_5_layer_call_and_return_conditional_losses_33372
MaxPool_5/PartitionedCall?
flatten_4/PartitionedCallPartitionedCall"MaxPool_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_flatten_4_layer_call_and_return_conditional_losses_37362
flatten_4/PartitionedCall?
Dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_6_4103dense_6_4105*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_Dense_6_layer_call_and_return_conditional_losses_37552!
Dense_6/StatefulPartitionedCall?
!Dropout_6/StatefulPartitionedCallStatefulPartitionedCall(Dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_Dropout_6_layer_call_and_return_conditional_losses_37832#
!Dropout_6/StatefulPartitionedCall?
Dense_7/StatefulPartitionedCallStatefulPartitionedCall*Dropout_6/StatefulPartitionedCall:output:0dense_7_4109dense_7_4111*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_Dense_7_layer_call_and_return_conditional_losses_38122!
Dense_7/StatefulPartitionedCall?
!Dropout_7/StatefulPartitionedCallStatefulPartitionedCall(Dense_7/StatefulPartitionedCall:output:0"^Dropout_6/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_Dropout_7_layer_call_and_return_conditional_losses_38402#
!Dropout_7/StatefulPartitionedCall?
Dense_8/StatefulPartitionedCallStatefulPartitionedCall*Dropout_7/StatefulPartitionedCall:output:0dense_8_4115dense_8_4117*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_Dense_8_layer_call_and_return_conditional_losses_38682!
Dense_8/StatefulPartitionedCall?
!Dropout_8/StatefulPartitionedCallStatefulPartitionedCall(Dense_8/StatefulPartitionedCall:output:0"^Dropout_7/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_Dropout_8_layer_call_and_return_conditional_losses_38962#
!Dropout_8/StatefulPartitionedCall?
softmax/StatefulPartitionedCallStatefulPartitionedCall*Dropout_8/StatefulPartitionedCall:output:0softmax_4121softmax_4123*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_softmax_layer_call_and_return_conditional_losses_39252!
softmax/StatefulPartitionedCall?
IdentityIdentity(softmax/StatefulPartitionedCall:output:0$^BatchNorm_1/StatefulPartitionedCall$^BatchNorm_2/StatefulPartitionedCall ^Dense_6/StatefulPartitionedCall ^Dense_7/StatefulPartitionedCall ^Dense_8/StatefulPartitionedCall"^Dropout_6/StatefulPartitionedCall"^Dropout_7/StatefulPartitionedCall"^Dropout_8/StatefulPartitionedCall!^conv2D_1/StatefulPartitionedCall!^conv2D_2/StatefulPartitionedCall!^conv2D_3/StatefulPartitionedCall!^conv2D_4/StatefulPartitionedCall!^conv2D_5/StatefulPartitionedCall)^dataAugmentation/StatefulPartitionedCall ^softmax/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????:::::::::::::::::::::::::::::::2J
#BatchNorm_1/StatefulPartitionedCall#BatchNorm_1/StatefulPartitionedCall2J
#BatchNorm_2/StatefulPartitionedCall#BatchNorm_2/StatefulPartitionedCall2B
Dense_6/StatefulPartitionedCallDense_6/StatefulPartitionedCall2B
Dense_7/StatefulPartitionedCallDense_7/StatefulPartitionedCall2B
Dense_8/StatefulPartitionedCallDense_8/StatefulPartitionedCall2F
!Dropout_6/StatefulPartitionedCall!Dropout_6/StatefulPartitionedCall2F
!Dropout_7/StatefulPartitionedCall!Dropout_7/StatefulPartitionedCall2F
!Dropout_8/StatefulPartitionedCall!Dropout_8/StatefulPartitionedCall2D
 conv2D_1/StatefulPartitionedCall conv2D_1/StatefulPartitionedCall2D
 conv2D_2/StatefulPartitionedCall conv2D_2/StatefulPartitionedCall2D
 conv2D_3/StatefulPartitionedCall conv2D_3/StatefulPartitionedCall2D
 conv2D_4/StatefulPartitionedCall conv2D_4/StatefulPartitionedCall2D
 conv2D_5/StatefulPartitionedCall conv2D_5/StatefulPartitionedCall2T
(dataAugmentation/StatefulPartitionedCall(dataAugmentation/StatefulPartitionedCall2B
softmax/StatefulPartitionedCallsoftmax/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?	
?
B__inference_conv2D_2_layer_call_and_return_conditional_losses_3509

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????::?*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????::?2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????::?2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????>>@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????>>@
 
_user_specified_nameinputs
?
a
C__inference_Dropout_8_layer_call_and_return_conditional_losses_3901

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????@2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
E__inference_BatchNorm_2_layer_call_and_return_conditional_losses_5683

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
*__inference_BatchNorm_2_layer_call_fn_5727

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_BatchNorm_2_layer_call_and_return_conditional_losses_33082
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
??
?
J__inference_dataAugmentation_layer_call_and_return_conditional_losses_5436

inputs3
/normalization_4_reshape_readvariableop_resource5
1normalization_4_reshape_1_readvariableop_resource;
7random_zoom_4_stateful_uniform_statefuluniform_resourceB
>random_translation_4_stateful_uniform_statefuluniform_resource?
;random_rotation_4_stateful_uniform_statefuluniform_resource
identity??&normalization_4/Reshape/ReadVariableOp?(normalization_4/Reshape_1/ReadVariableOp?2random_rotation_4/stateful_uniform/StatefulUniform?5random_translation_4/stateful_uniform/StatefulUniform?7random_translation_4/stateful_uniform_1/StatefulUniform?.random_zoom_4/stateful_uniform/StatefulUniform?0random_zoom_4/stateful_uniform_1/StatefulUniform?
&normalization_4/Reshape/ReadVariableOpReadVariableOp/normalization_4_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_4/Reshape/ReadVariableOp?
normalization_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
normalization_4/Reshape/shape?
normalization_4/ReshapeReshape.normalization_4/Reshape/ReadVariableOp:value:0&normalization_4/Reshape/shape:output:0*
T0*&
_output_shapes
:2
normalization_4/Reshape?
(normalization_4/Reshape_1/ReadVariableOpReadVariableOp1normalization_4_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_4/Reshape_1/ReadVariableOp?
normalization_4/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2!
normalization_4/Reshape_1/shape?
normalization_4/Reshape_1Reshape0normalization_4/Reshape_1/ReadVariableOp:value:0(normalization_4/Reshape_1/shape:output:0*
T0*&
_output_shapes
:2
normalization_4/Reshape_1?
normalization_4/subSubinputs normalization_4/Reshape:output:0*
T0*1
_output_shapes
:???????????2
normalization_4/sub?
normalization_4/SqrtSqrt"normalization_4/Reshape_1:output:0*
T0*&
_output_shapes
:2
normalization_4/Sqrt{
normalization_4/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
normalization_4/Maximum/y?
normalization_4/MaximumMaximumnormalization_4/Sqrt:y:0"normalization_4/Maximum/y:output:0*
T0*&
_output_shapes
:2
normalization_4/Maximum?
normalization_4/truedivRealDivnormalization_4/sub:z:0normalization_4/Maximum:z:0*
T0*1
_output_shapes
:???????????2
normalization_4/truedivu
random_zoom_4/ShapeShapenormalization_4/truediv:z:0*
T0*
_output_shapes
:2
random_zoom_4/Shape?
!random_zoom_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!random_zoom_4/strided_slice/stack?
#random_zoom_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_4/strided_slice/stack_1?
#random_zoom_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_4/strided_slice/stack_2?
random_zoom_4/strided_sliceStridedSlicerandom_zoom_4/Shape:output:0*random_zoom_4/strided_slice/stack:output:0,random_zoom_4/strided_slice/stack_1:output:0,random_zoom_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_4/strided_slice?
#random_zoom_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_4/strided_slice_1/stack?
%random_zoom_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_4/strided_slice_1/stack_1?
%random_zoom_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_4/strided_slice_1/stack_2?
random_zoom_4/strided_slice_1StridedSlicerandom_zoom_4/Shape:output:0,random_zoom_4/strided_slice_1/stack:output:0.random_zoom_4/strided_slice_1/stack_1:output:0.random_zoom_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_4/strided_slice_1?
random_zoom_4/CastCast&random_zoom_4/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_4/Cast?
#random_zoom_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_4/strided_slice_2/stack?
%random_zoom_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_4/strided_slice_2/stack_1?
%random_zoom_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_4/strided_slice_2/stack_2?
random_zoom_4/strided_slice_2StridedSlicerandom_zoom_4/Shape:output:0,random_zoom_4/strided_slice_2/stack:output:0.random_zoom_4/strided_slice_2/stack_1:output:0.random_zoom_4/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_4/strided_slice_2?
random_zoom_4/Cast_1Cast&random_zoom_4/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_4/Cast_1?
&random_zoom_4/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&random_zoom_4/stateful_uniform/shape/1?
$random_zoom_4/stateful_uniform/shapePack$random_zoom_4/strided_slice:output:0/random_zoom_4/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2&
$random_zoom_4/stateful_uniform/shape?
"random_zoom_4/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *??L?2$
"random_zoom_4/stateful_uniform/min?
"random_zoom_4/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *????2$
"random_zoom_4/stateful_uniform/max?
8random_zoom_4/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2:
8random_zoom_4/stateful_uniform/StatefulUniform/algorithm?
.random_zoom_4/stateful_uniform/StatefulUniformStatefulUniform7random_zoom_4_stateful_uniform_statefuluniform_resourceArandom_zoom_4/stateful_uniform/StatefulUniform/algorithm:output:0-random_zoom_4/stateful_uniform/shape:output:0*'
_output_shapes
:?????????*
shape_dtype020
.random_zoom_4/stateful_uniform/StatefulUniform?
"random_zoom_4/stateful_uniform/subSub+random_zoom_4/stateful_uniform/max:output:0+random_zoom_4/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2$
"random_zoom_4/stateful_uniform/sub?
"random_zoom_4/stateful_uniform/mulMul7random_zoom_4/stateful_uniform/StatefulUniform:output:0&random_zoom_4/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????2$
"random_zoom_4/stateful_uniform/mul?
random_zoom_4/stateful_uniformAdd&random_zoom_4/stateful_uniform/mul:z:0+random_zoom_4/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2 
random_zoom_4/stateful_uniform?
(random_zoom_4/stateful_uniform_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(random_zoom_4/stateful_uniform_1/shape/1?
&random_zoom_4/stateful_uniform_1/shapePack$random_zoom_4/strided_slice:output:01random_zoom_4/stateful_uniform_1/shape/1:output:0*
N*
T0*
_output_shapes
:2(
&random_zoom_4/stateful_uniform_1/shape?
$random_zoom_4/stateful_uniform_1/minConst*
_output_shapes
: *
dtype0*
valueB
 *??L?2&
$random_zoom_4/stateful_uniform_1/min?
$random_zoom_4/stateful_uniform_1/maxConst*
_output_shapes
: *
dtype0*
valueB
 *????2&
$random_zoom_4/stateful_uniform_1/max?
:random_zoom_4/stateful_uniform_1/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2<
:random_zoom_4/stateful_uniform_1/StatefulUniform/algorithm?
0random_zoom_4/stateful_uniform_1/StatefulUniformStatefulUniform7random_zoom_4_stateful_uniform_statefuluniform_resourceCrandom_zoom_4/stateful_uniform_1/StatefulUniform/algorithm:output:0/random_zoom_4/stateful_uniform_1/shape:output:0/^random_zoom_4/stateful_uniform/StatefulUniform*'
_output_shapes
:?????????*
shape_dtype022
0random_zoom_4/stateful_uniform_1/StatefulUniform?
$random_zoom_4/stateful_uniform_1/subSub-random_zoom_4/stateful_uniform_1/max:output:0-random_zoom_4/stateful_uniform_1/min:output:0*
T0*
_output_shapes
: 2&
$random_zoom_4/stateful_uniform_1/sub?
$random_zoom_4/stateful_uniform_1/mulMul9random_zoom_4/stateful_uniform_1/StatefulUniform:output:0(random_zoom_4/stateful_uniform_1/sub:z:0*
T0*'
_output_shapes
:?????????2&
$random_zoom_4/stateful_uniform_1/mul?
 random_zoom_4/stateful_uniform_1Add(random_zoom_4/stateful_uniform_1/mul:z:0-random_zoom_4/stateful_uniform_1/min:output:0*
T0*'
_output_shapes
:?????????2"
 random_zoom_4/stateful_uniform_1x
random_zoom_4/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
random_zoom_4/concat/axis?
random_zoom_4/concatConcatV2$random_zoom_4/stateful_uniform_1:z:0"random_zoom_4/stateful_uniform:z:0"random_zoom_4/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
random_zoom_4/concat?
random_zoom_4/zoom_matrix/ShapeShaperandom_zoom_4/concat:output:0*
T0*
_output_shapes
:2!
random_zoom_4/zoom_matrix/Shape?
-random_zoom_4/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-random_zoom_4/zoom_matrix/strided_slice/stack?
/random_zoom_4/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_4/zoom_matrix/strided_slice/stack_1?
/random_zoom_4/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_4/zoom_matrix/strided_slice/stack_2?
'random_zoom_4/zoom_matrix/strided_sliceStridedSlice(random_zoom_4/zoom_matrix/Shape:output:06random_zoom_4/zoom_matrix/strided_slice/stack:output:08random_zoom_4/zoom_matrix/strided_slice/stack_1:output:08random_zoom_4/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'random_zoom_4/zoom_matrix/strided_slice?
random_zoom_4/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
random_zoom_4/zoom_matrix/sub/y?
random_zoom_4/zoom_matrix/subSubrandom_zoom_4/Cast_1:y:0(random_zoom_4/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
random_zoom_4/zoom_matrix/sub?
#random_zoom_4/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2%
#random_zoom_4/zoom_matrix/truediv/y?
!random_zoom_4/zoom_matrix/truedivRealDiv!random_zoom_4/zoom_matrix/sub:z:0,random_zoom_4/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 2#
!random_zoom_4/zoom_matrix/truediv?
/random_zoom_4/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_4/zoom_matrix/strided_slice_1/stack?
1random_zoom_4/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_4/zoom_matrix/strided_slice_1/stack_1?
1random_zoom_4/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_4/zoom_matrix/strided_slice_1/stack_2?
)random_zoom_4/zoom_matrix/strided_slice_1StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_1/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_1/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_4/zoom_matrix/strided_slice_1?
!random_zoom_4/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_4/zoom_matrix/sub_1/x?
random_zoom_4/zoom_matrix/sub_1Sub*random_zoom_4/zoom_matrix/sub_1/x:output:02random_zoom_4/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_4/zoom_matrix/sub_1?
random_zoom_4/zoom_matrix/mulMul%random_zoom_4/zoom_matrix/truediv:z:0#random_zoom_4/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????2
random_zoom_4/zoom_matrix/mul?
!random_zoom_4/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_4/zoom_matrix/sub_2/y?
random_zoom_4/zoom_matrix/sub_2Subrandom_zoom_4/Cast:y:0*random_zoom_4/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2!
random_zoom_4/zoom_matrix/sub_2?
%random_zoom_4/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2'
%random_zoom_4/zoom_matrix/truediv_1/y?
#random_zoom_4/zoom_matrix/truediv_1RealDiv#random_zoom_4/zoom_matrix/sub_2:z:0.random_zoom_4/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_4/zoom_matrix/truediv_1?
/random_zoom_4/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_4/zoom_matrix/strided_slice_2/stack?
1random_zoom_4/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_4/zoom_matrix/strided_slice_2/stack_1?
1random_zoom_4/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_4/zoom_matrix/strided_slice_2/stack_2?
)random_zoom_4/zoom_matrix/strided_slice_2StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_2/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_2/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_4/zoom_matrix/strided_slice_2?
!random_zoom_4/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_4/zoom_matrix/sub_3/x?
random_zoom_4/zoom_matrix/sub_3Sub*random_zoom_4/zoom_matrix/sub_3/x:output:02random_zoom_4/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_4/zoom_matrix/sub_3?
random_zoom_4/zoom_matrix/mul_1Mul'random_zoom_4/zoom_matrix/truediv_1:z:0#random_zoom_4/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????2!
random_zoom_4/zoom_matrix/mul_1?
/random_zoom_4/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_4/zoom_matrix/strided_slice_3/stack?
1random_zoom_4/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_4/zoom_matrix/strided_slice_3/stack_1?
1random_zoom_4/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_4/zoom_matrix/strided_slice_3/stack_2?
)random_zoom_4/zoom_matrix/strided_slice_3StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_3/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_3/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_4/zoom_matrix/strided_slice_3?
%random_zoom_4/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_4/zoom_matrix/zeros/mul/y?
#random_zoom_4/zoom_matrix/zeros/mulMul0random_zoom_4/zoom_matrix/strided_slice:output:0.random_zoom_4/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_4/zoom_matrix/zeros/mul?
&random_zoom_4/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2(
&random_zoom_4/zoom_matrix/zeros/Less/y?
$random_zoom_4/zoom_matrix/zeros/LessLess'random_zoom_4/zoom_matrix/zeros/mul:z:0/random_zoom_4/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2&
$random_zoom_4/zoom_matrix/zeros/Less?
(random_zoom_4/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(random_zoom_4/zoom_matrix/zeros/packed/1?
&random_zoom_4/zoom_matrix/zeros/packedPack0random_zoom_4/zoom_matrix/strided_slice:output:01random_zoom_4/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&random_zoom_4/zoom_matrix/zeros/packed?
%random_zoom_4/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%random_zoom_4/zoom_matrix/zeros/Const?
random_zoom_4/zoom_matrix/zerosFill/random_zoom_4/zoom_matrix/zeros/packed:output:0.random_zoom_4/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_4/zoom_matrix/zeros?
'random_zoom_4/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_4/zoom_matrix/zeros_1/mul/y?
%random_zoom_4/zoom_matrix/zeros_1/mulMul0random_zoom_4/zoom_matrix/strided_slice:output:00random_zoom_4/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_4/zoom_matrix/zeros_1/mul?
(random_zoom_4/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_4/zoom_matrix/zeros_1/Less/y?
&random_zoom_4/zoom_matrix/zeros_1/LessLess)random_zoom_4/zoom_matrix/zeros_1/mul:z:01random_zoom_4/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_4/zoom_matrix/zeros_1/Less?
*random_zoom_4/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_4/zoom_matrix/zeros_1/packed/1?
(random_zoom_4/zoom_matrix/zeros_1/packedPack0random_zoom_4/zoom_matrix/strided_slice:output:03random_zoom_4/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_4/zoom_matrix/zeros_1/packed?
'random_zoom_4/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_4/zoom_matrix/zeros_1/Const?
!random_zoom_4/zoom_matrix/zeros_1Fill1random_zoom_4/zoom_matrix/zeros_1/packed:output:00random_zoom_4/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_4/zoom_matrix/zeros_1?
/random_zoom_4/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_4/zoom_matrix/strided_slice_4/stack?
1random_zoom_4/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_4/zoom_matrix/strided_slice_4/stack_1?
1random_zoom_4/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_4/zoom_matrix/strided_slice_4/stack_2?
)random_zoom_4/zoom_matrix/strided_slice_4StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_4/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_4/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_4/zoom_matrix/strided_slice_4?
'random_zoom_4/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_4/zoom_matrix/zeros_2/mul/y?
%random_zoom_4/zoom_matrix/zeros_2/mulMul0random_zoom_4/zoom_matrix/strided_slice:output:00random_zoom_4/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_4/zoom_matrix/zeros_2/mul?
(random_zoom_4/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_4/zoom_matrix/zeros_2/Less/y?
&random_zoom_4/zoom_matrix/zeros_2/LessLess)random_zoom_4/zoom_matrix/zeros_2/mul:z:01random_zoom_4/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_4/zoom_matrix/zeros_2/Less?
*random_zoom_4/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_4/zoom_matrix/zeros_2/packed/1?
(random_zoom_4/zoom_matrix/zeros_2/packedPack0random_zoom_4/zoom_matrix/strided_slice:output:03random_zoom_4/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_4/zoom_matrix/zeros_2/packed?
'random_zoom_4/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_4/zoom_matrix/zeros_2/Const?
!random_zoom_4/zoom_matrix/zeros_2Fill1random_zoom_4/zoom_matrix/zeros_2/packed:output:00random_zoom_4/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_4/zoom_matrix/zeros_2?
%random_zoom_4/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_4/zoom_matrix/concat/axis?
 random_zoom_4/zoom_matrix/concatConcatV22random_zoom_4/zoom_matrix/strided_slice_3:output:0(random_zoom_4/zoom_matrix/zeros:output:0!random_zoom_4/zoom_matrix/mul:z:0*random_zoom_4/zoom_matrix/zeros_1:output:02random_zoom_4/zoom_matrix/strided_slice_4:output:0#random_zoom_4/zoom_matrix/mul_1:z:0*random_zoom_4/zoom_matrix/zeros_2:output:0.random_zoom_4/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2"
 random_zoom_4/zoom_matrix/concat?
random_zoom_4/transform/ShapeShapenormalization_4/truediv:z:0*
T0*
_output_shapes
:2
random_zoom_4/transform/Shape?
+random_zoom_4/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+random_zoom_4/transform/strided_slice/stack?
-random_zoom_4/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_4/transform/strided_slice/stack_1?
-random_zoom_4/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_4/transform/strided_slice/stack_2?
%random_zoom_4/transform/strided_sliceStridedSlice&random_zoom_4/transform/Shape:output:04random_zoom_4/transform/strided_slice/stack:output:06random_zoom_4/transform/strided_slice/stack_1:output:06random_zoom_4/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2'
%random_zoom_4/transform/strided_slice?
"random_zoom_4/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"random_zoom_4/transform/fill_value?
2random_zoom_4/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3normalization_4/truediv:z:0)random_zoom_4/zoom_matrix/concat:output:0.random_zoom_4/transform/strided_slice:output:0+random_zoom_4/transform/fill_value:output:0*1
_output_shapes
:???????????*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR24
2random_zoom_4/transform/ImageProjectiveTransformV3?
random_translation_4/ShapeShapeGrandom_zoom_4/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
random_translation_4/Shape?
(random_translation_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(random_translation_4/strided_slice/stack?
*random_translation_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation_4/strided_slice/stack_1?
*random_translation_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation_4/strided_slice/stack_2?
"random_translation_4/strided_sliceStridedSlice#random_translation_4/Shape:output:01random_translation_4/strided_slice/stack:output:03random_translation_4/strided_slice/stack_1:output:03random_translation_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"random_translation_4/strided_slice?
*random_translation_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation_4/strided_slice_1/stack?
,random_translation_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,random_translation_4/strided_slice_1/stack_1?
,random_translation_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,random_translation_4/strided_slice_1/stack_2?
$random_translation_4/strided_slice_1StridedSlice#random_translation_4/Shape:output:03random_translation_4/strided_slice_1/stack:output:05random_translation_4/strided_slice_1/stack_1:output:05random_translation_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$random_translation_4/strided_slice_1?
random_translation_4/CastCast-random_translation_4/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_translation_4/Cast?
*random_translation_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*random_translation_4/strided_slice_2/stack?
,random_translation_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,random_translation_4/strided_slice_2/stack_1?
,random_translation_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,random_translation_4/strided_slice_2/stack_2?
$random_translation_4/strided_slice_2StridedSlice#random_translation_4/Shape:output:03random_translation_4/strided_slice_2/stack:output:05random_translation_4/strided_slice_2/stack_1:output:05random_translation_4/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$random_translation_4/strided_slice_2?
random_translation_4/Cast_1Cast-random_translation_4/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_translation_4/Cast_1?
-random_translation_4/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2/
-random_translation_4/stateful_uniform/shape/1?
+random_translation_4/stateful_uniform/shapePack+random_translation_4/strided_slice:output:06random_translation_4/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2-
+random_translation_4/stateful_uniform/shape?
)random_translation_4/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *??̽2+
)random_translation_4/stateful_uniform/min?
)random_translation_4/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *???=2+
)random_translation_4/stateful_uniform/max?
?random_translation_4/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2A
?random_translation_4/stateful_uniform/StatefulUniform/algorithm?
5random_translation_4/stateful_uniform/StatefulUniformStatefulUniform>random_translation_4_stateful_uniform_statefuluniform_resourceHrandom_translation_4/stateful_uniform/StatefulUniform/algorithm:output:04random_translation_4/stateful_uniform/shape:output:0*'
_output_shapes
:?????????*
shape_dtype027
5random_translation_4/stateful_uniform/StatefulUniform?
)random_translation_4/stateful_uniform/subSub2random_translation_4/stateful_uniform/max:output:02random_translation_4/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2+
)random_translation_4/stateful_uniform/sub?
)random_translation_4/stateful_uniform/mulMul>random_translation_4/stateful_uniform/StatefulUniform:output:0-random_translation_4/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????2+
)random_translation_4/stateful_uniform/mul?
%random_translation_4/stateful_uniformAdd-random_translation_4/stateful_uniform/mul:z:02random_translation_4/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2'
%random_translation_4/stateful_uniform?
random_translation_4/mulMul)random_translation_4/stateful_uniform:z:0random_translation_4/Cast:y:0*
T0*'
_output_shapes
:?????????2
random_translation_4/mul?
/random_translation_4/stateful_uniform_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :21
/random_translation_4/stateful_uniform_1/shape/1?
-random_translation_4/stateful_uniform_1/shapePack+random_translation_4/strided_slice:output:08random_translation_4/stateful_uniform_1/shape/1:output:0*
N*
T0*
_output_shapes
:2/
-random_translation_4/stateful_uniform_1/shape?
+random_translation_4/stateful_uniform_1/minConst*
_output_shapes
: *
dtype0*
valueB
 *??̽2-
+random_translation_4/stateful_uniform_1/min?
+random_translation_4/stateful_uniform_1/maxConst*
_output_shapes
: *
dtype0*
valueB
 *???=2-
+random_translation_4/stateful_uniform_1/max?
Arandom_translation_4/stateful_uniform_1/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2C
Arandom_translation_4/stateful_uniform_1/StatefulUniform/algorithm?
7random_translation_4/stateful_uniform_1/StatefulUniformStatefulUniform>random_translation_4_stateful_uniform_statefuluniform_resourceJrandom_translation_4/stateful_uniform_1/StatefulUniform/algorithm:output:06random_translation_4/stateful_uniform_1/shape:output:06^random_translation_4/stateful_uniform/StatefulUniform*'
_output_shapes
:?????????*
shape_dtype029
7random_translation_4/stateful_uniform_1/StatefulUniform?
+random_translation_4/stateful_uniform_1/subSub4random_translation_4/stateful_uniform_1/max:output:04random_translation_4/stateful_uniform_1/min:output:0*
T0*
_output_shapes
: 2-
+random_translation_4/stateful_uniform_1/sub?
+random_translation_4/stateful_uniform_1/mulMul@random_translation_4/stateful_uniform_1/StatefulUniform:output:0/random_translation_4/stateful_uniform_1/sub:z:0*
T0*'
_output_shapes
:?????????2-
+random_translation_4/stateful_uniform_1/mul?
'random_translation_4/stateful_uniform_1Add/random_translation_4/stateful_uniform_1/mul:z:04random_translation_4/stateful_uniform_1/min:output:0*
T0*'
_output_shapes
:?????????2)
'random_translation_4/stateful_uniform_1?
random_translation_4/mul_1Mul+random_translation_4/stateful_uniform_1:z:0random_translation_4/Cast_1:y:0*
T0*'
_output_shapes
:?????????2
random_translation_4/mul_1?
 random_translation_4/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2"
 random_translation_4/concat/axis?
random_translation_4/concatConcatV2random_translation_4/mul_1:z:0random_translation_4/mul:z:0)random_translation_4/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
random_translation_4/concat?
-random_translation_4/translation_matrix/ShapeShape$random_translation_4/concat:output:0*
T0*
_output_shapes
:2/
-random_translation_4/translation_matrix/Shape?
;random_translation_4/translation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2=
;random_translation_4/translation_matrix/strided_slice/stack?
=random_translation_4/translation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2?
=random_translation_4/translation_matrix/strided_slice/stack_1?
=random_translation_4/translation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=random_translation_4/translation_matrix/strided_slice/stack_2?
5random_translation_4/translation_matrix/strided_sliceStridedSlice6random_translation_4/translation_matrix/Shape:output:0Drandom_translation_4/translation_matrix/strided_slice/stack:output:0Frandom_translation_4/translation_matrix/strided_slice/stack_1:output:0Frandom_translation_4/translation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask27
5random_translation_4/translation_matrix/strided_slice?
2random_translation_4/translation_matrix/ones/mul/yConst*
_output_shapes
: *
dtype0*
value	B :24
2random_translation_4/translation_matrix/ones/mul/y?
0random_translation_4/translation_matrix/ones/mulMul>random_translation_4/translation_matrix/strided_slice:output:0;random_translation_4/translation_matrix/ones/mul/y:output:0*
T0*
_output_shapes
: 22
0random_translation_4/translation_matrix/ones/mul?
3random_translation_4/translation_matrix/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?25
3random_translation_4/translation_matrix/ones/Less/y?
1random_translation_4/translation_matrix/ones/LessLess4random_translation_4/translation_matrix/ones/mul:z:0<random_translation_4/translation_matrix/ones/Less/y:output:0*
T0*
_output_shapes
: 23
1random_translation_4/translation_matrix/ones/Less?
5random_translation_4/translation_matrix/ones/packed/1Const*
_output_shapes
: *
dtype0*
value	B :27
5random_translation_4/translation_matrix/ones/packed/1?
3random_translation_4/translation_matrix/ones/packedPack>random_translation_4/translation_matrix/strided_slice:output:0>random_translation_4/translation_matrix/ones/packed/1:output:0*
N*
T0*
_output_shapes
:25
3random_translation_4/translation_matrix/ones/packed?
2random_translation_4/translation_matrix/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??24
2random_translation_4/translation_matrix/ones/Const?
,random_translation_4/translation_matrix/onesFill<random_translation_4/translation_matrix/ones/packed:output:0;random_translation_4/translation_matrix/ones/Const:output:0*
T0*'
_output_shapes
:?????????2.
,random_translation_4/translation_matrix/ones?
3random_translation_4/translation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :25
3random_translation_4/translation_matrix/zeros/mul/y?
1random_translation_4/translation_matrix/zeros/mulMul>random_translation_4/translation_matrix/strided_slice:output:0<random_translation_4/translation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 23
1random_translation_4/translation_matrix/zeros/mul?
4random_translation_4/translation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?26
4random_translation_4/translation_matrix/zeros/Less/y?
2random_translation_4/translation_matrix/zeros/LessLess5random_translation_4/translation_matrix/zeros/mul:z:0=random_translation_4/translation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 24
2random_translation_4/translation_matrix/zeros/Less?
6random_translation_4/translation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :28
6random_translation_4/translation_matrix/zeros/packed/1?
4random_translation_4/translation_matrix/zeros/packedPack>random_translation_4/translation_matrix/strided_slice:output:0?random_translation_4/translation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:26
4random_translation_4/translation_matrix/zeros/packed?
3random_translation_4/translation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    25
3random_translation_4/translation_matrix/zeros/Const?
-random_translation_4/translation_matrix/zerosFill=random_translation_4/translation_matrix/zeros/packed:output:0<random_translation_4/translation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2/
-random_translation_4/translation_matrix/zeros?
=random_translation_4/translation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2?
=random_translation_4/translation_matrix/strided_slice_1/stack?
?random_translation_4/translation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2A
?random_translation_4/translation_matrix/strided_slice_1/stack_1?
?random_translation_4/translation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2A
?random_translation_4/translation_matrix/strided_slice_1/stack_2?
7random_translation_4/translation_matrix/strided_slice_1StridedSlice$random_translation_4/concat:output:0Frandom_translation_4/translation_matrix/strided_slice_1/stack:output:0Hrandom_translation_4/translation_matrix/strided_slice_1/stack_1:output:0Hrandom_translation_4/translation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask29
7random_translation_4/translation_matrix/strided_slice_1?
+random_translation_4/translation_matrix/NegNeg@random_translation_4/translation_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2-
+random_translation_4/translation_matrix/Neg?
5random_translation_4/translation_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :27
5random_translation_4/translation_matrix/zeros_1/mul/y?
3random_translation_4/translation_matrix/zeros_1/mulMul>random_translation_4/translation_matrix/strided_slice:output:0>random_translation_4/translation_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 25
3random_translation_4/translation_matrix/zeros_1/mul?
6random_translation_4/translation_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?28
6random_translation_4/translation_matrix/zeros_1/Less/y?
4random_translation_4/translation_matrix/zeros_1/LessLess7random_translation_4/translation_matrix/zeros_1/mul:z:0?random_translation_4/translation_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 26
4random_translation_4/translation_matrix/zeros_1/Less?
8random_translation_4/translation_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2:
8random_translation_4/translation_matrix/zeros_1/packed/1?
6random_translation_4/translation_matrix/zeros_1/packedPack>random_translation_4/translation_matrix/strided_slice:output:0Arandom_translation_4/translation_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:28
6random_translation_4/translation_matrix/zeros_1/packed?
5random_translation_4/translation_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5random_translation_4/translation_matrix/zeros_1/Const?
/random_translation_4/translation_matrix/zeros_1Fill?random_translation_4/translation_matrix/zeros_1/packed:output:0>random_translation_4/translation_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????21
/random_translation_4/translation_matrix/zeros_1?
4random_translation_4/translation_matrix/ones_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :26
4random_translation_4/translation_matrix/ones_1/mul/y?
2random_translation_4/translation_matrix/ones_1/mulMul>random_translation_4/translation_matrix/strided_slice:output:0=random_translation_4/translation_matrix/ones_1/mul/y:output:0*
T0*
_output_shapes
: 24
2random_translation_4/translation_matrix/ones_1/mul?
5random_translation_4/translation_matrix/ones_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?27
5random_translation_4/translation_matrix/ones_1/Less/y?
3random_translation_4/translation_matrix/ones_1/LessLess6random_translation_4/translation_matrix/ones_1/mul:z:0>random_translation_4/translation_matrix/ones_1/Less/y:output:0*
T0*
_output_shapes
: 25
3random_translation_4/translation_matrix/ones_1/Less?
7random_translation_4/translation_matrix/ones_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :29
7random_translation_4/translation_matrix/ones_1/packed/1?
5random_translation_4/translation_matrix/ones_1/packedPack>random_translation_4/translation_matrix/strided_slice:output:0@random_translation_4/translation_matrix/ones_1/packed/1:output:0*
N*
T0*
_output_shapes
:27
5random_translation_4/translation_matrix/ones_1/packed?
4random_translation_4/translation_matrix/ones_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??26
4random_translation_4/translation_matrix/ones_1/Const?
.random_translation_4/translation_matrix/ones_1Fill>random_translation_4/translation_matrix/ones_1/packed:output:0=random_translation_4/translation_matrix/ones_1/Const:output:0*
T0*'
_output_shapes
:?????????20
.random_translation_4/translation_matrix/ones_1?
=random_translation_4/translation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2?
=random_translation_4/translation_matrix/strided_slice_2/stack?
?random_translation_4/translation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2A
?random_translation_4/translation_matrix/strided_slice_2/stack_1?
?random_translation_4/translation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2A
?random_translation_4/translation_matrix/strided_slice_2/stack_2?
7random_translation_4/translation_matrix/strided_slice_2StridedSlice$random_translation_4/concat:output:0Frandom_translation_4/translation_matrix/strided_slice_2/stack:output:0Hrandom_translation_4/translation_matrix/strided_slice_2/stack_1:output:0Hrandom_translation_4/translation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask29
7random_translation_4/translation_matrix/strided_slice_2?
-random_translation_4/translation_matrix/Neg_1Neg@random_translation_4/translation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2/
-random_translation_4/translation_matrix/Neg_1?
5random_translation_4/translation_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :27
5random_translation_4/translation_matrix/zeros_2/mul/y?
3random_translation_4/translation_matrix/zeros_2/mulMul>random_translation_4/translation_matrix/strided_slice:output:0>random_translation_4/translation_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 25
3random_translation_4/translation_matrix/zeros_2/mul?
6random_translation_4/translation_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?28
6random_translation_4/translation_matrix/zeros_2/Less/y?
4random_translation_4/translation_matrix/zeros_2/LessLess7random_translation_4/translation_matrix/zeros_2/mul:z:0?random_translation_4/translation_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 26
4random_translation_4/translation_matrix/zeros_2/Less?
8random_translation_4/translation_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2:
8random_translation_4/translation_matrix/zeros_2/packed/1?
6random_translation_4/translation_matrix/zeros_2/packedPack>random_translation_4/translation_matrix/strided_slice:output:0Arandom_translation_4/translation_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:28
6random_translation_4/translation_matrix/zeros_2/packed?
5random_translation_4/translation_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5random_translation_4/translation_matrix/zeros_2/Const?
/random_translation_4/translation_matrix/zeros_2Fill?random_translation_4/translation_matrix/zeros_2/packed:output:0>random_translation_4/translation_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????21
/random_translation_4/translation_matrix/zeros_2?
3random_translation_4/translation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :25
3random_translation_4/translation_matrix/concat/axis?
.random_translation_4/translation_matrix/concatConcatV25random_translation_4/translation_matrix/ones:output:06random_translation_4/translation_matrix/zeros:output:0/random_translation_4/translation_matrix/Neg:y:08random_translation_4/translation_matrix/zeros_1:output:07random_translation_4/translation_matrix/ones_1:output:01random_translation_4/translation_matrix/Neg_1:y:08random_translation_4/translation_matrix/zeros_2:output:0<random_translation_4/translation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????20
.random_translation_4/translation_matrix/concat?
$random_translation_4/transform/ShapeShapeGrandom_zoom_4/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2&
$random_translation_4/transform/Shape?
2random_translation_4/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:24
2random_translation_4/transform/strided_slice/stack?
4random_translation_4/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4random_translation_4/transform/strided_slice/stack_1?
4random_translation_4/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4random_translation_4/transform/strided_slice/stack_2?
,random_translation_4/transform/strided_sliceStridedSlice-random_translation_4/transform/Shape:output:0;random_translation_4/transform/strided_slice/stack:output:0=random_translation_4/transform/strided_slice/stack_1:output:0=random_translation_4/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2.
,random_translation_4/transform/strided_slice?
)random_translation_4/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2+
)random_translation_4/transform/fill_value?
9random_translation_4/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Grandom_zoom_4/transform/ImageProjectiveTransformV3:transformed_images:07random_translation_4/translation_matrix/concat:output:05random_translation_4/transform/strided_slice:output:02random_translation_4/transform/fill_value:output:0*1
_output_shapes
:???????????*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2;
9random_translation_4/transform/ImageProjectiveTransformV3?
random_rotation_4/ShapeShapeNrandom_translation_4/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
random_rotation_4/Shape?
%random_rotation_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%random_rotation_4/strided_slice/stack?
'random_rotation_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_4/strided_slice/stack_1?
'random_rotation_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_4/strided_slice/stack_2?
random_rotation_4/strided_sliceStridedSlice random_rotation_4/Shape:output:0.random_rotation_4/strided_slice/stack:output:00random_rotation_4/strided_slice/stack_1:output:00random_rotation_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation_4/strided_slice?
'random_rotation_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_4/strided_slice_1/stack?
)random_rotation_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_4/strided_slice_1/stack_1?
)random_rotation_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_4/strided_slice_1/stack_2?
!random_rotation_4/strided_slice_1StridedSlice random_rotation_4/Shape:output:00random_rotation_4/strided_slice_1/stack:output:02random_rotation_4/strided_slice_1/stack_1:output:02random_rotation_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_4/strided_slice_1?
random_rotation_4/CastCast*random_rotation_4/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_4/Cast?
'random_rotation_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_4/strided_slice_2/stack?
)random_rotation_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_4/strided_slice_2/stack_1?
)random_rotation_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_4/strided_slice_2/stack_2?
!random_rotation_4/strided_slice_2StridedSlice random_rotation_4/Shape:output:00random_rotation_4/strided_slice_2/stack:output:02random_rotation_4/strided_slice_2/stack_1:output:02random_rotation_4/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_4/strided_slice_2?
random_rotation_4/Cast_1Cast*random_rotation_4/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_4/Cast_1?
(random_rotation_4/stateful_uniform/shapePack(random_rotation_4/strided_slice:output:0*
N*
T0*
_output_shapes
:2*
(random_rotation_4/stateful_uniform/shape?
&random_rotation_4/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|? ?2(
&random_rotation_4/stateful_uniform/min?
&random_rotation_4/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|? ?2(
&random_rotation_4/stateful_uniform/max?
<random_rotation_4/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2>
<random_rotation_4/stateful_uniform/StatefulUniform/algorithm?
2random_rotation_4/stateful_uniform/StatefulUniformStatefulUniform;random_rotation_4_stateful_uniform_statefuluniform_resourceErandom_rotation_4/stateful_uniform/StatefulUniform/algorithm:output:01random_rotation_4/stateful_uniform/shape:output:0*#
_output_shapes
:?????????*
shape_dtype024
2random_rotation_4/stateful_uniform/StatefulUniform?
&random_rotation_4/stateful_uniform/subSub/random_rotation_4/stateful_uniform/max:output:0/random_rotation_4/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2(
&random_rotation_4/stateful_uniform/sub?
&random_rotation_4/stateful_uniform/mulMul;random_rotation_4/stateful_uniform/StatefulUniform:output:0*random_rotation_4/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:?????????2(
&random_rotation_4/stateful_uniform/mul?
"random_rotation_4/stateful_uniformAdd*random_rotation_4/stateful_uniform/mul:z:0/random_rotation_4/stateful_uniform/min:output:0*
T0*#
_output_shapes
:?????????2$
"random_rotation_4/stateful_uniform?
'random_rotation_4/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_rotation_4/rotation_matrix/sub/y?
%random_rotation_4/rotation_matrix/subSubrandom_rotation_4/Cast_1:y:00random_rotation_4/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation_4/rotation_matrix/sub?
%random_rotation_4/rotation_matrix/CosCos&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_4/rotation_matrix/Cos?
)random_rotation_4/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_4/rotation_matrix/sub_1/y?
'random_rotation_4/rotation_matrix/sub_1Subrandom_rotation_4/Cast_1:y:02random_rotation_4/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_4/rotation_matrix/sub_1?
%random_rotation_4/rotation_matrix/mulMul)random_rotation_4/rotation_matrix/Cos:y:0+random_rotation_4/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_4/rotation_matrix/mul?
%random_rotation_4/rotation_matrix/SinSin&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_4/rotation_matrix/Sin?
)random_rotation_4/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_4/rotation_matrix/sub_2/y?
'random_rotation_4/rotation_matrix/sub_2Subrandom_rotation_4/Cast:y:02random_rotation_4/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_4/rotation_matrix/sub_2?
'random_rotation_4/rotation_matrix/mul_1Mul)random_rotation_4/rotation_matrix/Sin:y:0+random_rotation_4/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_4/rotation_matrix/mul_1?
'random_rotation_4/rotation_matrix/sub_3Sub)random_rotation_4/rotation_matrix/mul:z:0+random_rotation_4/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_4/rotation_matrix/sub_3?
'random_rotation_4/rotation_matrix/sub_4Sub)random_rotation_4/rotation_matrix/sub:z:0+random_rotation_4/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_4/rotation_matrix/sub_4?
+random_rotation_4/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2-
+random_rotation_4/rotation_matrix/truediv/y?
)random_rotation_4/rotation_matrix/truedivRealDiv+random_rotation_4/rotation_matrix/sub_4:z:04random_rotation_4/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:?????????2+
)random_rotation_4/rotation_matrix/truediv?
)random_rotation_4/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_4/rotation_matrix/sub_5/y?
'random_rotation_4/rotation_matrix/sub_5Subrandom_rotation_4/Cast:y:02random_rotation_4/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_4/rotation_matrix/sub_5?
'random_rotation_4/rotation_matrix/Sin_1Sin&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_4/rotation_matrix/Sin_1?
)random_rotation_4/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_4/rotation_matrix/sub_6/y?
'random_rotation_4/rotation_matrix/sub_6Subrandom_rotation_4/Cast_1:y:02random_rotation_4/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_4/rotation_matrix/sub_6?
'random_rotation_4/rotation_matrix/mul_2Mul+random_rotation_4/rotation_matrix/Sin_1:y:0+random_rotation_4/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_4/rotation_matrix/mul_2?
'random_rotation_4/rotation_matrix/Cos_1Cos&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_4/rotation_matrix/Cos_1?
)random_rotation_4/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_4/rotation_matrix/sub_7/y?
'random_rotation_4/rotation_matrix/sub_7Subrandom_rotation_4/Cast:y:02random_rotation_4/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_4/rotation_matrix/sub_7?
'random_rotation_4/rotation_matrix/mul_3Mul+random_rotation_4/rotation_matrix/Cos_1:y:0+random_rotation_4/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_4/rotation_matrix/mul_3?
%random_rotation_4/rotation_matrix/addAddV2+random_rotation_4/rotation_matrix/mul_2:z:0+random_rotation_4/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_4/rotation_matrix/add?
'random_rotation_4/rotation_matrix/sub_8Sub+random_rotation_4/rotation_matrix/sub_5:z:0)random_rotation_4/rotation_matrix/add:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_4/rotation_matrix/sub_8?
-random_rotation_4/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2/
-random_rotation_4/rotation_matrix/truediv_1/y?
+random_rotation_4/rotation_matrix/truediv_1RealDiv+random_rotation_4/rotation_matrix/sub_8:z:06random_rotation_4/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:?????????2-
+random_rotation_4/rotation_matrix/truediv_1?
'random_rotation_4/rotation_matrix/ShapeShape&random_rotation_4/stateful_uniform:z:0*
T0*
_output_shapes
:2)
'random_rotation_4/rotation_matrix/Shape?
5random_rotation_4/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5random_rotation_4/rotation_matrix/strided_slice/stack?
7random_rotation_4/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_4/rotation_matrix/strided_slice/stack_1?
7random_rotation_4/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_4/rotation_matrix/strided_slice/stack_2?
/random_rotation_4/rotation_matrix/strided_sliceStridedSlice0random_rotation_4/rotation_matrix/Shape:output:0>random_rotation_4/rotation_matrix/strided_slice/stack:output:0@random_rotation_4/rotation_matrix/strided_slice/stack_1:output:0@random_rotation_4/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/random_rotation_4/rotation_matrix/strided_slice?
'random_rotation_4/rotation_matrix/Cos_2Cos&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_4/rotation_matrix/Cos_2?
7random_rotation_4/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_4/rotation_matrix/strided_slice_1/stack?
9random_rotation_4/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_4/rotation_matrix/strided_slice_1/stack_1?
9random_rotation_4/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_4/rotation_matrix/strided_slice_1/stack_2?
1random_rotation_4/rotation_matrix/strided_slice_1StridedSlice+random_rotation_4/rotation_matrix/Cos_2:y:0@random_rotation_4/rotation_matrix/strided_slice_1/stack:output:0Brandom_rotation_4/rotation_matrix/strided_slice_1/stack_1:output:0Brandom_rotation_4/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_4/rotation_matrix/strided_slice_1?
'random_rotation_4/rotation_matrix/Sin_2Sin&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_4/rotation_matrix/Sin_2?
7random_rotation_4/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_4/rotation_matrix/strided_slice_2/stack?
9random_rotation_4/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_4/rotation_matrix/strided_slice_2/stack_1?
9random_rotation_4/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_4/rotation_matrix/strided_slice_2/stack_2?
1random_rotation_4/rotation_matrix/strided_slice_2StridedSlice+random_rotation_4/rotation_matrix/Sin_2:y:0@random_rotation_4/rotation_matrix/strided_slice_2/stack:output:0Brandom_rotation_4/rotation_matrix/strided_slice_2/stack_1:output:0Brandom_rotation_4/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_4/rotation_matrix/strided_slice_2?
%random_rotation_4/rotation_matrix/NegNeg:random_rotation_4/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2'
%random_rotation_4/rotation_matrix/Neg?
7random_rotation_4/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_4/rotation_matrix/strided_slice_3/stack?
9random_rotation_4/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_4/rotation_matrix/strided_slice_3/stack_1?
9random_rotation_4/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_4/rotation_matrix/strided_slice_3/stack_2?
1random_rotation_4/rotation_matrix/strided_slice_3StridedSlice-random_rotation_4/rotation_matrix/truediv:z:0@random_rotation_4/rotation_matrix/strided_slice_3/stack:output:0Brandom_rotation_4/rotation_matrix/strided_slice_3/stack_1:output:0Brandom_rotation_4/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_4/rotation_matrix/strided_slice_3?
'random_rotation_4/rotation_matrix/Sin_3Sin&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_4/rotation_matrix/Sin_3?
7random_rotation_4/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_4/rotation_matrix/strided_slice_4/stack?
9random_rotation_4/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_4/rotation_matrix/strided_slice_4/stack_1?
9random_rotation_4/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_4/rotation_matrix/strided_slice_4/stack_2?
1random_rotation_4/rotation_matrix/strided_slice_4StridedSlice+random_rotation_4/rotation_matrix/Sin_3:y:0@random_rotation_4/rotation_matrix/strided_slice_4/stack:output:0Brandom_rotation_4/rotation_matrix/strided_slice_4/stack_1:output:0Brandom_rotation_4/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_4/rotation_matrix/strided_slice_4?
'random_rotation_4/rotation_matrix/Cos_3Cos&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_4/rotation_matrix/Cos_3?
7random_rotation_4/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_4/rotation_matrix/strided_slice_5/stack?
9random_rotation_4/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_4/rotation_matrix/strided_slice_5/stack_1?
9random_rotation_4/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_4/rotation_matrix/strided_slice_5/stack_2?
1random_rotation_4/rotation_matrix/strided_slice_5StridedSlice+random_rotation_4/rotation_matrix/Cos_3:y:0@random_rotation_4/rotation_matrix/strided_slice_5/stack:output:0Brandom_rotation_4/rotation_matrix/strided_slice_5/stack_1:output:0Brandom_rotation_4/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_4/rotation_matrix/strided_slice_5?
7random_rotation_4/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_4/rotation_matrix/strided_slice_6/stack?
9random_rotation_4/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_4/rotation_matrix/strided_slice_6/stack_1?
9random_rotation_4/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_4/rotation_matrix/strided_slice_6/stack_2?
1random_rotation_4/rotation_matrix/strided_slice_6StridedSlice/random_rotation_4/rotation_matrix/truediv_1:z:0@random_rotation_4/rotation_matrix/strided_slice_6/stack:output:0Brandom_rotation_4/rotation_matrix/strided_slice_6/stack_1:output:0Brandom_rotation_4/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_4/rotation_matrix/strided_slice_6?
-random_rotation_4/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_4/rotation_matrix/zeros/mul/y?
+random_rotation_4/rotation_matrix/zeros/mulMul8random_rotation_4/rotation_matrix/strided_slice:output:06random_rotation_4/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2-
+random_rotation_4/rotation_matrix/zeros/mul?
.random_rotation_4/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?20
.random_rotation_4/rotation_matrix/zeros/Less/y?
,random_rotation_4/rotation_matrix/zeros/LessLess/random_rotation_4/rotation_matrix/zeros/mul:z:07random_rotation_4/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2.
,random_rotation_4/rotation_matrix/zeros/Less?
0random_rotation_4/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
0random_rotation_4/rotation_matrix/zeros/packed/1?
.random_rotation_4/rotation_matrix/zeros/packedPack8random_rotation_4/rotation_matrix/strided_slice:output:09random_rotation_4/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:20
.random_rotation_4/rotation_matrix/zeros/packed?
-random_rotation_4/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2/
-random_rotation_4/rotation_matrix/zeros/Const?
'random_rotation_4/rotation_matrix/zerosFill7random_rotation_4/rotation_matrix/zeros/packed:output:06random_rotation_4/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2)
'random_rotation_4/rotation_matrix/zeros?
-random_rotation_4/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_4/rotation_matrix/concat/axis?
(random_rotation_4/rotation_matrix/concatConcatV2:random_rotation_4/rotation_matrix/strided_slice_1:output:0)random_rotation_4/rotation_matrix/Neg:y:0:random_rotation_4/rotation_matrix/strided_slice_3:output:0:random_rotation_4/rotation_matrix/strided_slice_4:output:0:random_rotation_4/rotation_matrix/strided_slice_5:output:0:random_rotation_4/rotation_matrix/strided_slice_6:output:00random_rotation_4/rotation_matrix/zeros:output:06random_rotation_4/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2*
(random_rotation_4/rotation_matrix/concat?
!random_rotation_4/transform/ShapeShapeNrandom_translation_4/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2#
!random_rotation_4/transform/Shape?
/random_rotation_4/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation_4/transform/strided_slice/stack?
1random_rotation_4/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_4/transform/strided_slice/stack_1?
1random_rotation_4/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_4/transform/strided_slice/stack_2?
)random_rotation_4/transform/strided_sliceStridedSlice*random_rotation_4/transform/Shape:output:08random_rotation_4/transform/strided_slice/stack:output:0:random_rotation_4/transform/strided_slice/stack_1:output:0:random_rotation_4/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2+
)random_rotation_4/transform/strided_slice?
&random_rotation_4/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&random_rotation_4/transform/fill_value?
6random_rotation_4/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Nrandom_translation_4/transform/ImageProjectiveTransformV3:transformed_images:01random_rotation_4/rotation_matrix/concat:output:02random_rotation_4/transform/strided_slice:output:0/random_rotation_4/transform/fill_value:output:0*1
_output_shapes
:???????????*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR28
6random_rotation_4/transform/ImageProjectiveTransformV3?
IdentityIdentityKrandom_rotation_4/transform/ImageProjectiveTransformV3:transformed_images:0'^normalization_4/Reshape/ReadVariableOp)^normalization_4/Reshape_1/ReadVariableOp3^random_rotation_4/stateful_uniform/StatefulUniform6^random_translation_4/stateful_uniform/StatefulUniform8^random_translation_4/stateful_uniform_1/StatefulUniform/^random_zoom_4/stateful_uniform/StatefulUniform1^random_zoom_4/stateful_uniform_1/StatefulUniform*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*D
_input_shapes3
1:???????????:::::2P
&normalization_4/Reshape/ReadVariableOp&normalization_4/Reshape/ReadVariableOp2T
(normalization_4/Reshape_1/ReadVariableOp(normalization_4/Reshape_1/ReadVariableOp2h
2random_rotation_4/stateful_uniform/StatefulUniform2random_rotation_4/stateful_uniform/StatefulUniform2n
5random_translation_4/stateful_uniform/StatefulUniform5random_translation_4/stateful_uniform/StatefulUniform2r
7random_translation_4/stateful_uniform_1/StatefulUniform7random_translation_4/stateful_uniform_1/StatefulUniform2`
.random_zoom_4/stateful_uniform/StatefulUniform.random_zoom_4/stateful_uniform/StatefulUniform2d
0random_zoom_4/stateful_uniform_1/StatefulUniform0random_zoom_4/stateful_uniform_1/StatefulUniform:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?	
?
A__inference_Dense_8_layer_call_and_return_conditional_losses_3868

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
'__inference_model_14_layer_call_fn_4192	
input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29*+
Tin$
"2 *
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*:
_read_only_resource_inputs
	*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_14_layer_call_and_return_conditional_losses_41272
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????:::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
1
_output_shapes
:???????????

_user_specified_nameinput
?
_
C__inference_flatten_4_layer_call_and_return_conditional_losses_3736

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? d  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:?????????

?:X T
0
_output_shapes
:?????????

?
 
_user_specified_nameinputs
?
?
/__inference_dataAugmentation_layer_call_fn_3073
normalization_4_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallnormalization_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_dataAugmentation_layer_call_and_return_conditional_losses_30602
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*D
_input_shapes3
1:???????????:::::22
StatefulPartitionedCallStatefulPartitionedCall:h d
1
_output_shapes
:???????????
/
_user_specified_namenormalization_4_input"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
A
input8
serving_default_input:0???????????;
softmax0
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
??
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

layer_with_weights-4

layer-9
layer-10
layer_with_weights-5
layer-11
layer-12
layer_with_weights-6
layer-13
layer-14
layer_with_weights-7
layer-15
layer-16
layer-17
layer-18
layer_with_weights-8
layer-19
layer-20
layer_with_weights-9
layer-21
layer-22
layer_with_weights-10
layer-23
layer-24
layer_with_weights-11
layer-25
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api
 
signatures
?_default_save_signature
?__call__
+?&call_and_return_all_conditional_losses"??
_tf_keras_networkл{"class_name": "Functional", "name": "model_14", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model_14", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 512, 512, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input"}, "name": "input", "inbound_nodes": []}, {"class_name": "Sequential", "config": {"name": "dataAugmentation", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 512, 512, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "normalization_4_input"}}, {"class_name": "Normalization", "config": {"name": "normalization_4", "trainable": true, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_4", "trainable": true, "dtype": "float32", "height_factor": 0.2, "width_factor": 0.2, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "RandomTranslation", "config": {"name": "random_translation_4", "trainable": true, "dtype": "float32", "height_factor": 0.1, "width_factor": 0.1, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation_4", "trainable": true, "dtype": "float32", "factor": 0.1, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}, "name": "dataAugmentation", "inbound_nodes": [[["input", 0, 0, {}]]]}, {"class_name": "Rescaling", "config": {"name": "rescaling", "trainable": true, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}, "name": "rescaling", "inbound_nodes": [[["dataAugmentation", 1, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2D_1", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [11, 11]}, "strides": {"class_name": "__tuple__", "items": [4, 4]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2D_1", "inbound_nodes": [[["rescaling", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "ReLu_1", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "ReLu_1", "inbound_nodes": [[["conv2D_1", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "BatchNorm_1", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": null, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "BatchNorm_1", "inbound_nodes": [[["ReLu_1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "MaxPool_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "MaxPool_1", "inbound_nodes": [[["BatchNorm_1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2D_2", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2D_2", "inbound_nodes": [[["MaxPool_1", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "ReLu_2", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "ReLu_2", "inbound_nodes": [[["conv2D_2", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "BatchNorm_2", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": null, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "BatchNorm_2", "inbound_nodes": [[["ReLu_2", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "MaxPool_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "MaxPool_2", "inbound_nodes": [[["BatchNorm_2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2D_3", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2D_3", "inbound_nodes": [[["MaxPool_2", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "ReLu_3", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "ReLu_3", "inbound_nodes": [[["conv2D_3", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2D_4", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2D_4", "inbound_nodes": [[["ReLu_3", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "ReLu_4", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "ReLu_4", "inbound_nodes": [[["conv2D_4", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2D_5", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2D_5", "inbound_nodes": [[["ReLu_4", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "ReLu_5", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "ReLu_5", "inbound_nodes": [[["conv2D_5", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "MaxPool_5", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "MaxPool_5", "inbound_nodes": [[["ReLu_5", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_4", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_4", "inbound_nodes": [[["MaxPool_5", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "Dense_6", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Dense_6", "inbound_nodes": [[["flatten_4", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "Dropout_6", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "Dropout_6", "inbound_nodes": [[["Dense_6", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "Dense_7", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Dense_7", "inbound_nodes": [[["Dropout_6", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "Dropout_7", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "Dropout_7", "inbound_nodes": [[["Dense_7", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "Dense_8", "trainable": true, "dtype": "float32", "units": 64, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Dense_8", "inbound_nodes": [[["Dropout_7", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "Dropout_8", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "Dropout_8", "inbound_nodes": [[["Dense_8", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "softmax", "trainable": true, "dtype": "float32", "units": 5, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "softmax", "inbound_nodes": [[["Dropout_8", 0, 0, {}]]]}], "input_layers": [["input", 0, 0]], "output_layers": [["softmax", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 512, 512, 3]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 512, 512, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_14", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 512, 512, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input"}, "name": "input", "inbound_nodes": []}, {"class_name": "Sequential", "config": {"name": "dataAugmentation", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 512, 512, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "normalization_4_input"}}, {"class_name": "Normalization", "config": {"name": "normalization_4", "trainable": true, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_4", "trainable": true, "dtype": "float32", "height_factor": 0.2, "width_factor": 0.2, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "RandomTranslation", "config": {"name": "random_translation_4", "trainable": true, "dtype": "float32", "height_factor": 0.1, "width_factor": 0.1, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation_4", "trainable": true, "dtype": "float32", "factor": 0.1, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}, "name": "dataAugmentation", "inbound_nodes": [[["input", 0, 0, {}]]]}, {"class_name": "Rescaling", "config": {"name": "rescaling", "trainable": true, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}, "name": "rescaling", "inbound_nodes": [[["dataAugmentation", 1, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2D_1", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [11, 11]}, "strides": {"class_name": "__tuple__", "items": [4, 4]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2D_1", "inbound_nodes": [[["rescaling", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "ReLu_1", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "ReLu_1", "inbound_nodes": [[["conv2D_1", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "BatchNorm_1", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": null, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "BatchNorm_1", "inbound_nodes": [[["ReLu_1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "MaxPool_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "MaxPool_1", "inbound_nodes": [[["BatchNorm_1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2D_2", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2D_2", "inbound_nodes": [[["MaxPool_1", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "ReLu_2", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "ReLu_2", "inbound_nodes": [[["conv2D_2", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "BatchNorm_2", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": null, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "BatchNorm_2", "inbound_nodes": [[["ReLu_2", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "MaxPool_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "MaxPool_2", "inbound_nodes": [[["BatchNorm_2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2D_3", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2D_3", "inbound_nodes": [[["MaxPool_2", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "ReLu_3", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "ReLu_3", "inbound_nodes": [[["conv2D_3", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2D_4", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2D_4", "inbound_nodes": [[["ReLu_3", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "ReLu_4", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "ReLu_4", "inbound_nodes": [[["conv2D_4", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2D_5", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2D_5", "inbound_nodes": [[["ReLu_4", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "ReLu_5", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "ReLu_5", "inbound_nodes": [[["conv2D_5", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "MaxPool_5", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "MaxPool_5", "inbound_nodes": [[["ReLu_5", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_4", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_4", "inbound_nodes": [[["MaxPool_5", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "Dense_6", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Dense_6", "inbound_nodes": [[["flatten_4", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "Dropout_6", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "Dropout_6", "inbound_nodes": [[["Dense_6", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "Dense_7", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Dense_7", "inbound_nodes": [[["Dropout_6", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "Dropout_7", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "Dropout_7", "inbound_nodes": [[["Dense_7", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "Dense_8", "trainable": true, "dtype": "float32", "units": 64, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Dense_8", "inbound_nodes": [[["Dropout_7", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "Dropout_8", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "Dropout_8", "inbound_nodes": [[["Dense_8", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "softmax", "trainable": true, "dtype": "float32", "units": 5, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "softmax", "inbound_nodes": [[["Dropout_8", 0, 0, {}]]]}], "input_layers": [["input", 0, 0]], "output_layers": [["softmax", 0, 0]]}}, "training_config": {"loss": {"class_name": "CategoricalCrossentropy", "config": {"reduction": "auto", "name": "categorical_crossentropy", "from_logits": false, "label_smoothing": 0}}, "metrics": [[{"class_name": "CategoricalAccuracy", "config": {"name": "categorical_accuracy", "dtype": "float32"}}, {"class_name": "TopKCategoricalAccuracy", "config": {"name": "top_2_categorical_accuracy", "dtype": "float32", "k": 2}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "SGD", "config": {"name": "SGD", "learning_rate": 0.009999999776482582, "decay": 0.0, "momentum": 0.0, "nesterov": false}}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 512, 512, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 512, 512, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input"}}
?
!layer_with_weights-0
!layer-0
"layer-1
#layer-2
$layer-3
%	variables
&regularization_losses
'trainable_variables
(	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_sequential?{"class_name": "Sequential", "name": "dataAugmentation", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "dataAugmentation", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 512, 512, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "normalization_4_input"}}, {"class_name": "Normalization", "config": {"name": "normalization_4", "trainable": true, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_4", "trainable": true, "dtype": "float32", "height_factor": 0.2, "width_factor": 0.2, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "RandomTranslation", "config": {"name": "random_translation_4", "trainable": true, "dtype": "float32", "height_factor": 0.1, "width_factor": 0.1, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation_4", "trainable": true, "dtype": "float32", "factor": 0.1, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512, 512, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "dataAugmentation", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 512, 512, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "normalization_4_input"}}, {"class_name": "Normalization", "config": {"name": "normalization_4", "trainable": true, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_4", "trainable": true, "dtype": "float32", "height_factor": 0.2, "width_factor": 0.2, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "RandomTranslation", "config": {"name": "random_translation_4", "trainable": true, "dtype": "float32", "height_factor": 0.1, "width_factor": 0.1, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation_4", "trainable": true, "dtype": "float32", "factor": 0.1, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}}}
?
)	keras_api"?
_tf_keras_layer?{"class_name": "Rescaling", "name": "rescaling", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "rescaling", "trainable": true, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}}
?	

*kernel
+bias
,	variables
-regularization_losses
.trainable_variables
/	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2D_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2D_1", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [11, 11]}, "strides": {"class_name": "__tuple__", "items": [4, 4]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512, 512, 3]}}
?
0	variables
1regularization_losses
2trainable_variables
3	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "ReLu_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "ReLu_1", "trainable": true, "dtype": "float32", "activation": "relu"}}
?	
4axis
	5gamma
6beta
7moving_mean
8moving_variance
9	variables
:regularization_losses
;trainable_variables
<	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "BatchNorm_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "BatchNorm_1", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": null, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 126, 126, 64]}}
?
=	variables
>regularization_losses
?trainable_variables
@	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "MaxPool_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "MaxPool_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

Akernel
Bbias
C	variables
Dregularization_losses
Etrainable_variables
F	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2D_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2D_2", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 62, 62, 64]}}
?
G	variables
Hregularization_losses
Itrainable_variables
J	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "ReLu_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "ReLu_2", "trainable": true, "dtype": "float32", "activation": "relu"}}
?	
Kaxis
	Lgamma
Mbeta
Nmoving_mean
Omoving_variance
P	variables
Qregularization_losses
Rtrainable_variables
S	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "BatchNorm_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "BatchNorm_2", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": null, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 58, 58, 256]}}
?
T	variables
Uregularization_losses
Vtrainable_variables
W	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "MaxPool_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "MaxPool_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

Xkernel
Ybias
Z	variables
[regularization_losses
\trainable_variables
]	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2D_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2D_3", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 256]}}
?
^	variables
_regularization_losses
`trainable_variables
a	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "ReLu_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "ReLu_3", "trainable": true, "dtype": "float32", "activation": "relu"}}
?	

bkernel
cbias
d	variables
eregularization_losses
ftrainable_variables
g	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2D_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2D_4", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 26, 26, 256]}}
?
h	variables
iregularization_losses
jtrainable_variables
k	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "ReLu_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "ReLu_4", "trainable": true, "dtype": "float32", "activation": "relu"}}
?	

lkernel
mbias
n	variables
oregularization_losses
ptrainable_variables
q	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2D_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2D_5", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 24, 256]}}
?
r	variables
sregularization_losses
ttrainable_variables
u	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "ReLu_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "ReLu_5", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
v	variables
wregularization_losses
xtrainable_variables
y	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "MaxPool_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "MaxPool_5", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
z	variables
{regularization_losses
|trainable_variables
}	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_4", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?

~kernel
bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "Dense_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "Dense_6", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 25600}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 25600]}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "Dropout_6", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "Dropout_6", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
?
?kernel
	?bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "Dense_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "Dense_7", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "Dropout_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "Dropout_7", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
?
?kernel
	?bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "Dense_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "Dense_8", "trainable": true, "dtype": "float32", "units": 64, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "Dropout_8", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "Dropout_8", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
?
?kernel
	?bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "softmax", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "softmax", "trainable": true, "dtype": "float32", "units": 5, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
M
	?iter

?decay
?learning_rate
?momentum"
	optimizer
?
?0
?1
?2
*3
+4
55
66
77
88
A9
B10
L11
M12
N13
O14
X15
Y16
b17
c18
l19
m20
~21
22
?23
?24
?25
?26
?27
?28"
trackable_list_wrapper
 "
trackable_list_wrapper
?
*0
+1
52
63
A4
B5
L6
M7
X8
Y9
b10
c11
l12
m13
~14
15
?16
?17
?18
?19
?20
?21"
trackable_list_wrapper
?
?layers
?metrics
?layer_metrics
	variables
 ?layer_regularization_losses
?non_trainable_variables
regularization_losses
trainable_variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?
?state_variables
?_broadcast_shape
	?mean
?variance

?count
?	keras_api"?
_tf_keras_layer?{"class_name": "Normalization", "name": "normalization_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "normalization_4", "trainable": true, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512, 512, 3]}}
?
	?_rng
?	keras_api"?
_tf_keras_layer?{"class_name": "RandomZoom", "name": "random_zoom_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "random_zoom_4", "trainable": true, "dtype": "float32", "height_factor": 0.2, "width_factor": 0.2, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}
?
	?_rng
?	keras_api"?
_tf_keras_layer?{"class_name": "RandomTranslation", "name": "random_translation_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "random_translation_4", "trainable": true, "dtype": "float32", "height_factor": 0.1, "width_factor": 0.1, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}
?
	?_rng
?	keras_api"?
_tf_keras_layer?{"class_name": "RandomRotation", "name": "random_rotation_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "random_rotation_4", "trainable": true, "dtype": "float32", "factor": 0.1, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}
8
?0
?1
?2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?metrics
?layer_metrics
%	variables
 ?layer_regularization_losses
?non_trainable_variables
&regularization_losses
'trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
):'@2conv2D_1/kernel
:@2conv2D_1/bias
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
?
?layers
?metrics
?layer_metrics
,	variables
 ?layer_regularization_losses
?non_trainable_variables
-regularization_losses
.trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?metrics
?layer_metrics
0	variables
 ?layer_regularization_losses
?non_trainable_variables
1regularization_losses
2trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
:@2BatchNorm_1/gamma
:@2BatchNorm_1/beta
':%@ (2BatchNorm_1/moving_mean
+:)@ (2BatchNorm_1/moving_variance
<
50
61
72
83"
trackable_list_wrapper
 "
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
?
?layers
?metrics
?layer_metrics
9	variables
 ?layer_regularization_losses
?non_trainable_variables
:regularization_losses
;trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?metrics
?layer_metrics
=	variables
 ?layer_regularization_losses
?non_trainable_variables
>regularization_losses
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:(@?2conv2D_2/kernel
:?2conv2D_2/bias
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
?
?layers
?metrics
?layer_metrics
C	variables
 ?layer_regularization_losses
?non_trainable_variables
Dregularization_losses
Etrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?metrics
?layer_metrics
G	variables
 ?layer_regularization_losses
?non_trainable_variables
Hregularization_losses
Itrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 :?2BatchNorm_2/gamma
:?2BatchNorm_2/beta
(:&? (2BatchNorm_2/moving_mean
,:*? (2BatchNorm_2/moving_variance
<
L0
M1
N2
O3"
trackable_list_wrapper
 "
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
?
?layers
?metrics
?layer_metrics
P	variables
 ?layer_regularization_losses
?non_trainable_variables
Qregularization_losses
Rtrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?metrics
?layer_metrics
T	variables
 ?layer_regularization_losses
?non_trainable_variables
Uregularization_losses
Vtrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:)??2conv2D_3/kernel
:?2conv2D_3/bias
.
X0
Y1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
X0
Y1"
trackable_list_wrapper
?
?layers
?metrics
?layer_metrics
Z	variables
 ?layer_regularization_losses
?non_trainable_variables
[regularization_losses
\trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?metrics
?layer_metrics
^	variables
 ?layer_regularization_losses
?non_trainable_variables
_regularization_losses
`trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:)??2conv2D_4/kernel
:?2conv2D_4/bias
.
b0
c1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
b0
c1"
trackable_list_wrapper
?
?layers
?metrics
?layer_metrics
d	variables
 ?layer_regularization_losses
?non_trainable_variables
eregularization_losses
ftrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?metrics
?layer_metrics
h	variables
 ?layer_regularization_losses
?non_trainable_variables
iregularization_losses
jtrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:)??2conv2D_5/kernel
:?2conv2D_5/bias
.
l0
m1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
l0
m1"
trackable_list_wrapper
?
?layers
?metrics
?layer_metrics
n	variables
 ?layer_regularization_losses
?non_trainable_variables
oregularization_losses
ptrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?metrics
?layer_metrics
r	variables
 ?layer_regularization_losses
?non_trainable_variables
sregularization_losses
ttrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?metrics
?layer_metrics
v	variables
 ?layer_regularization_losses
?non_trainable_variables
wregularization_losses
xtrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?metrics
?layer_metrics
z	variables
 ?layer_regularization_losses
?non_trainable_variables
{regularization_losses
|trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!???2Dense_6/kernel
:?2Dense_6/bias
.
~0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
~0
1"
trackable_list_wrapper
?
?layers
?metrics
?layer_metrics
?	variables
 ?layer_regularization_losses
?non_trainable_variables
?regularization_losses
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?metrics
?layer_metrics
?	variables
 ?layer_regularization_losses
?non_trainable_variables
?regularization_losses
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 
??2Dense_7/kernel
:?2Dense_7/bias
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?layers
?metrics
?layer_metrics
?	variables
 ?layer_regularization_losses
?non_trainable_variables
?regularization_losses
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?metrics
?layer_metrics
?	variables
 ?layer_regularization_losses
?non_trainable_variables
?regularization_losses
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:	?@2Dense_8/kernel
:@2Dense_8/bias
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?layers
?metrics
?layer_metrics
?	variables
 ?layer_regularization_losses
?non_trainable_variables
?regularization_losses
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?metrics
?layer_metrics
?	variables
 ?layer_regularization_losses
?non_trainable_variables
?regularization_losses
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :@2softmax/kernel
:2softmax/bias
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?layers
?metrics
?layer_metrics
?	variables
 ?layer_regularization_losses
?non_trainable_variables
?regularization_losses
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2iter
: (2decay
: (2learning_rate
: (2momentum
 :2normalization_4/mean
$:"2normalization_4/variance
:	 2normalization_4/count
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25"
trackable_list_wrapper
8
?0
?1
?2"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
T
?0
?1
?2
73
84
N5
O6"
trackable_list_wrapper
F
	?mean
?variance

?count"
trackable_dict_wrapper
 "
trackable_list_wrapper
"
_generic_user_object
/
?
_state_var"
_generic_user_object
"
_generic_user_object
/
?
_state_var"
_generic_user_object
"
_generic_user_object
/
?
_state_var"
_generic_user_object
"
_generic_user_object
<
!0
"1
#2
$3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
8
?0
?1
?2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
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
 "
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
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
 "
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "CategoricalAccuracy", "name": "categorical_accuracy", "dtype": "float32", "config": {"name": "categorical_accuracy", "dtype": "float32"}}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "TopKCategoricalAccuracy", "name": "top_2_categorical_accuracy", "dtype": "float32", "config": {"name": "top_2_categorical_accuracy", "dtype": "float32", "k": 2}}
:	2Variable
:	2Variable
:	2Variable
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
?2?
__inference__wrapped_model_2387?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *.?+
)?&
input???????????
?2?
'__inference_model_14_layer_call_fn_4192
'__inference_model_14_layer_call_fn_5049
'__inference_model_14_layer_call_fn_4341
'__inference_model_14_layer_call_fn_5110?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_model_14_layer_call_and_return_conditional_losses_4982
B__inference_model_14_layer_call_and_return_conditional_losses_4863
B__inference_model_14_layer_call_and_return_conditional_losses_3942
B__inference_model_14_layer_call_and_return_conditional_losses_4030?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
/__inference_dataAugmentation_layer_call_fn_3073
/__inference_dataAugmentation_layer_call_fn_5468
/__inference_dataAugmentation_layer_call_fn_5477
/__inference_dataAugmentation_layer_call_fn_3099?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
J__inference_dataAugmentation_layer_call_and_return_conditional_losses_5436
J__inference_dataAugmentation_layer_call_and_return_conditional_losses_5453
J__inference_dataAugmentation_layer_call_and_return_conditional_losses_2714
J__inference_dataAugmentation_layer_call_and_return_conditional_losses_2731?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
'__inference_conv2D_1_layer_call_fn_5496?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_conv2D_1_layer_call_and_return_conditional_losses_5487?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
%__inference_ReLu_1_layer_call_fn_5506?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_ReLu_1_layer_call_and_return_conditional_losses_5501?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_BatchNorm_1_layer_call_fn_5570
*__inference_BatchNorm_1_layer_call_fn_5621
*__inference_BatchNorm_1_layer_call_fn_5634
*__inference_BatchNorm_1_layer_call_fn_5557?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_BatchNorm_1_layer_call_and_return_conditional_losses_5590
E__inference_BatchNorm_1_layer_call_and_return_conditional_losses_5544
E__inference_BatchNorm_1_layer_call_and_return_conditional_losses_5526
E__inference_BatchNorm_1_layer_call_and_return_conditional_losses_5608?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_MaxPool_1_layer_call_fn_3215?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
C__inference_MaxPool_1_layer_call_and_return_conditional_losses_3209?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
'__inference_conv2D_2_layer_call_fn_5653?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_conv2D_2_layer_call_and_return_conditional_losses_5644?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
%__inference_ReLu_2_layer_call_fn_5663?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_ReLu_2_layer_call_and_return_conditional_losses_5658?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_BatchNorm_2_layer_call_fn_5727
*__inference_BatchNorm_2_layer_call_fn_5791
*__inference_BatchNorm_2_layer_call_fn_5778
*__inference_BatchNorm_2_layer_call_fn_5714?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_BatchNorm_2_layer_call_and_return_conditional_losses_5683
E__inference_BatchNorm_2_layer_call_and_return_conditional_losses_5701
E__inference_BatchNorm_2_layer_call_and_return_conditional_losses_5747
E__inference_BatchNorm_2_layer_call_and_return_conditional_losses_5765?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_MaxPool_2_layer_call_fn_3331?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
C__inference_MaxPool_2_layer_call_and_return_conditional_losses_3325?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
'__inference_conv2D_3_layer_call_fn_5810?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_conv2D_3_layer_call_and_return_conditional_losses_5801?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
%__inference_ReLu_3_layer_call_fn_5820?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_ReLu_3_layer_call_and_return_conditional_losses_5815?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_conv2D_4_layer_call_fn_5839?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_conv2D_4_layer_call_and_return_conditional_losses_5830?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
%__inference_ReLu_4_layer_call_fn_5849?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_ReLu_4_layer_call_and_return_conditional_losses_5844?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_conv2D_5_layer_call_fn_5868?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_conv2D_5_layer_call_and_return_conditional_losses_5859?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
%__inference_ReLu_5_layer_call_fn_5878?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_ReLu_5_layer_call_and_return_conditional_losses_5873?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_MaxPool_5_layer_call_fn_3343?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
C__inference_MaxPool_5_layer_call_and_return_conditional_losses_3337?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
(__inference_flatten_4_layer_call_fn_5889?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_flatten_4_layer_call_and_return_conditional_losses_5884?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_Dense_6_layer_call_fn_5909?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_Dense_6_layer_call_and_return_conditional_losses_5900?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_Dropout_6_layer_call_fn_5936
(__inference_Dropout_6_layer_call_fn_5931?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
C__inference_Dropout_6_layer_call_and_return_conditional_losses_5921
C__inference_Dropout_6_layer_call_and_return_conditional_losses_5926?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
&__inference_Dense_7_layer_call_fn_5956?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_Dense_7_layer_call_and_return_conditional_losses_5947?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_Dropout_7_layer_call_fn_5978
(__inference_Dropout_7_layer_call_fn_5983?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
C__inference_Dropout_7_layer_call_and_return_conditional_losses_5973
C__inference_Dropout_7_layer_call_and_return_conditional_losses_5968?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
&__inference_Dense_8_layer_call_fn_6002?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_Dense_8_layer_call_and_return_conditional_losses_5993?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_Dropout_8_layer_call_fn_6029
(__inference_Dropout_8_layer_call_fn_6024?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
C__inference_Dropout_8_layer_call_and_return_conditional_losses_6014
C__inference_Dropout_8_layer_call_and_return_conditional_losses_6019?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
&__inference_softmax_layer_call_fn_6049?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_softmax_layer_call_and_return_conditional_losses_6040?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
"__inference_signature_wrapper_4410input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
E__inference_BatchNorm_1_layer_call_and_return_conditional_losses_5526?5678M?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
E__inference_BatchNorm_1_layer_call_and_return_conditional_losses_5544?5678M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
E__inference_BatchNorm_1_layer_call_and_return_conditional_losses_5590r5678;?8
1?.
(?%
inputs?????????~~@
p
? "-?*
#? 
0?????????~~@
? ?
E__inference_BatchNorm_1_layer_call_and_return_conditional_losses_5608r5678;?8
1?.
(?%
inputs?????????~~@
p 
? "-?*
#? 
0?????????~~@
? ?
*__inference_BatchNorm_1_layer_call_fn_5557?5678M?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
*__inference_BatchNorm_1_layer_call_fn_5570?5678M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
*__inference_BatchNorm_1_layer_call_fn_5621e5678;?8
1?.
(?%
inputs?????????~~@
p
? " ??????????~~@?
*__inference_BatchNorm_1_layer_call_fn_5634e5678;?8
1?.
(?%
inputs?????????~~@
p 
? " ??????????~~@?
E__inference_BatchNorm_2_layer_call_and_return_conditional_losses_5683?LMNON?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
E__inference_BatchNorm_2_layer_call_and_return_conditional_losses_5701?LMNON?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
E__inference_BatchNorm_2_layer_call_and_return_conditional_losses_5747tLMNO<?9
2?/
)?&
inputs?????????::?
p
? ".?+
$?!
0?????????::?
? ?
E__inference_BatchNorm_2_layer_call_and_return_conditional_losses_5765tLMNO<?9
2?/
)?&
inputs?????????::?
p 
? ".?+
$?!
0?????????::?
? ?
*__inference_BatchNorm_2_layer_call_fn_5714?LMNON?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
*__inference_BatchNorm_2_layer_call_fn_5727?LMNON?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
*__inference_BatchNorm_2_layer_call_fn_5778gLMNO<?9
2?/
)?&
inputs?????????::?
p
? "!??????????::??
*__inference_BatchNorm_2_layer_call_fn_5791gLMNO<?9
2?/
)?&
inputs?????????::?
p 
? "!??????????::??
A__inference_Dense_6_layer_call_and_return_conditional_losses_5900_~1?.
'?$
"?
inputs???????????
? "&?#
?
0??????????
? |
&__inference_Dense_6_layer_call_fn_5909R~1?.
'?$
"?
inputs???????????
? "????????????
A__inference_Dense_7_layer_call_and_return_conditional_losses_5947`??0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? }
&__inference_Dense_7_layer_call_fn_5956S??0?-
&?#
!?
inputs??????????
? "????????????
A__inference_Dense_8_layer_call_and_return_conditional_losses_5993_??0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????@
? |
&__inference_Dense_8_layer_call_fn_6002R??0?-
&?#
!?
inputs??????????
? "??????????@?
C__inference_Dropout_6_layer_call_and_return_conditional_losses_5921^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
C__inference_Dropout_6_layer_call_and_return_conditional_losses_5926^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? }
(__inference_Dropout_6_layer_call_fn_5931Q4?1
*?'
!?
inputs??????????
p
? "???????????}
(__inference_Dropout_6_layer_call_fn_5936Q4?1
*?'
!?
inputs??????????
p 
? "????????????
C__inference_Dropout_7_layer_call_and_return_conditional_losses_5968^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
C__inference_Dropout_7_layer_call_and_return_conditional_losses_5973^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? }
(__inference_Dropout_7_layer_call_fn_5978Q4?1
*?'
!?
inputs??????????
p
? "???????????}
(__inference_Dropout_7_layer_call_fn_5983Q4?1
*?'
!?
inputs??????????
p 
? "????????????
C__inference_Dropout_8_layer_call_and_return_conditional_losses_6014\3?0
)?&
 ?
inputs?????????@
p
? "%?"
?
0?????????@
? ?
C__inference_Dropout_8_layer_call_and_return_conditional_losses_6019\3?0
)?&
 ?
inputs?????????@
p 
? "%?"
?
0?????????@
? {
(__inference_Dropout_8_layer_call_fn_6024O3?0
)?&
 ?
inputs?????????@
p
? "??????????@{
(__inference_Dropout_8_layer_call_fn_6029O3?0
)?&
 ?
inputs?????????@
p 
? "??????????@?
C__inference_MaxPool_1_layer_call_and_return_conditional_losses_3209?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
(__inference_MaxPool_1_layer_call_fn_3215?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
C__inference_MaxPool_2_layer_call_and_return_conditional_losses_3325?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
(__inference_MaxPool_2_layer_call_fn_3331?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
C__inference_MaxPool_5_layer_call_and_return_conditional_losses_3337?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
(__inference_MaxPool_5_layer_call_fn_3343?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
@__inference_ReLu_1_layer_call_and_return_conditional_losses_5501h7?4
-?*
(?%
inputs?????????~~@
? "-?*
#? 
0?????????~~@
? ?
%__inference_ReLu_1_layer_call_fn_5506[7?4
-?*
(?%
inputs?????????~~@
? " ??????????~~@?
@__inference_ReLu_2_layer_call_and_return_conditional_losses_5658j8?5
.?+
)?&
inputs?????????::?
? ".?+
$?!
0?????????::?
? ?
%__inference_ReLu_2_layer_call_fn_5663]8?5
.?+
)?&
inputs?????????::?
? "!??????????::??
@__inference_ReLu_3_layer_call_and_return_conditional_losses_5815j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
%__inference_ReLu_3_layer_call_fn_5820]8?5
.?+
)?&
inputs??????????
? "!????????????
@__inference_ReLu_4_layer_call_and_return_conditional_losses_5844j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
%__inference_ReLu_4_layer_call_fn_5849]8?5
.?+
)?&
inputs??????????
? "!????????????
@__inference_ReLu_5_layer_call_and_return_conditional_losses_5873j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
%__inference_ReLu_5_layer_call_fn_5878]8?5
.?+
)?&
inputs??????????
? "!????????????
__inference__wrapped_model_2387?$??*+5678ABLMNOXYbclm~??????8?5
.?+
)?&
input???????????
? "1?.
,
softmax!?
softmax??????????
B__inference_conv2D_1_layer_call_and_return_conditional_losses_5487n*+9?6
/?,
*?'
inputs???????????
? "-?*
#? 
0?????????~~@
? ?
'__inference_conv2D_1_layer_call_fn_5496a*+9?6
/?,
*?'
inputs???????????
? " ??????????~~@?
B__inference_conv2D_2_layer_call_and_return_conditional_losses_5644mAB7?4
-?*
(?%
inputs?????????>>@
? ".?+
$?!
0?????????::?
? ?
'__inference_conv2D_2_layer_call_fn_5653`AB7?4
-?*
(?%
inputs?????????>>@
? "!??????????::??
B__inference_conv2D_3_layer_call_and_return_conditional_losses_5801nXY8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
'__inference_conv2D_3_layer_call_fn_5810aXY8?5
.?+
)?&
inputs??????????
? "!????????????
B__inference_conv2D_4_layer_call_and_return_conditional_losses_5830nbc8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
'__inference_conv2D_4_layer_call_fn_5839abc8?5
.?+
)?&
inputs??????????
? "!????????????
B__inference_conv2D_5_layer_call_and_return_conditional_losses_5859nlm8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
'__inference_conv2D_5_layer_call_fn_5868alm8?5
.?+
)?&
inputs??????????
? "!????????????
J__inference_dataAugmentation_layer_call_and_return_conditional_losses_2714?
?????P?M
F?C
9?6
normalization_4_input???????????
p

 
? "/?,
%?"
0???????????
? ?
J__inference_dataAugmentation_layer_call_and_return_conditional_losses_2731???P?M
F?C
9?6
normalization_4_input???????????
p 

 
? "/?,
%?"
0???????????
? ?
J__inference_dataAugmentation_layer_call_and_return_conditional_losses_5436?
?????A?>
7?4
*?'
inputs???????????
p

 
? "/?,
%?"
0???????????
? ?
J__inference_dataAugmentation_layer_call_and_return_conditional_losses_5453z??A?>
7?4
*?'
inputs???????????
p 

 
? "/?,
%?"
0???????????
? ?
/__inference_dataAugmentation_layer_call_fn_3073?
?????P?M
F?C
9?6
normalization_4_input???????????
p

 
? ""?????????????
/__inference_dataAugmentation_layer_call_fn_3099|??P?M
F?C
9?6
normalization_4_input???????????
p 

 
? ""?????????????
/__inference_dataAugmentation_layer_call_fn_5468s
?????A?>
7?4
*?'
inputs???????????
p

 
? ""?????????????
/__inference_dataAugmentation_layer_call_fn_5477m??A?>
7?4
*?'
inputs???????????
p 

 
? ""?????????????
C__inference_flatten_4_layer_call_and_return_conditional_losses_5884c8?5
.?+
)?&
inputs?????????

?
? "'?$
?
0???????????
? ?
(__inference_flatten_4_layer_call_fn_5889V8?5
.?+
)?&
inputs?????????

?
? "?????????????
B__inference_model_14_layer_call_and_return_conditional_losses_3942?*?????*+5678ABLMNOXYbclm~??????@?=
6?3
)?&
input???????????
p

 
? "%?"
?
0?????????
? ?
B__inference_model_14_layer_call_and_return_conditional_losses_4030?$??*+5678ABLMNOXYbclm~??????@?=
6?3
)?&
input???????????
p 

 
? "%?"
?
0?????????
? ?
B__inference_model_14_layer_call_and_return_conditional_losses_4863?*?????*+5678ABLMNOXYbclm~??????A?>
7?4
*?'
inputs???????????
p

 
? "%?"
?
0?????????
? ?
B__inference_model_14_layer_call_and_return_conditional_losses_4982?$??*+5678ABLMNOXYbclm~??????A?>
7?4
*?'
inputs???????????
p 

 
? "%?"
?
0?????????
? ?
'__inference_model_14_layer_call_fn_4192?*?????*+5678ABLMNOXYbclm~??????@?=
6?3
)?&
input???????????
p

 
? "???????????
'__inference_model_14_layer_call_fn_4341?$??*+5678ABLMNOXYbclm~??????@?=
6?3
)?&
input???????????
p 

 
? "???????????
'__inference_model_14_layer_call_fn_5049?*?????*+5678ABLMNOXYbclm~??????A?>
7?4
*?'
inputs???????????
p

 
? "???????????
'__inference_model_14_layer_call_fn_5110?$??*+5678ABLMNOXYbclm~??????A?>
7?4
*?'
inputs???????????
p 

 
? "???????????
"__inference_signature_wrapper_4410?$??*+5678ABLMNOXYbclm~??????A?>
? 
7?4
2
input)?&
input???????????"1?.
,
softmax!?
softmax??????????
A__inference_softmax_layer_call_and_return_conditional_losses_6040^??/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????
? {
&__inference_softmax_layer_call_fn_6049Q??/?,
%?"
 ?
inputs?????????@
? "??????????