Ï·%
7Ø6
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	
D
AddV2
x"T
y"T
z"T"
Ttype:
2	

ArgMax

input"T
	dimension"Tidx
output"output_type"!
Ttype:
2	
"
Tidxtype0:
2	"!
output_typetype0	:
2	
E
AssignAddVariableOp
resource
value"dtype"
dtypetype
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
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
Z
BroadcastTo

input"T
shape"Tidx
output"T"	
Ttype"
Tidxtype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
>
DiagPart

input"T
diagonal"T"
Ttype:

2	
9
DivNoNan
x"T
y"T
z"T"
Ttype:

2
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(
,
Exp
x"T
y"T"
Ttype:

2
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
A
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
?
FloorMod
x"T
y"T
z"T"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
º
If
cond"Tcond
input2Tin
output2Tout"
Tcondtype"
Tin
list(type)("
Tout
list(type)("
then_branchfunc"
else_branchfunc" 
output_shapeslist(shape)
 
:
Less
x"T
y"T
z
"
Ttype:
2	
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
,
Log
x"T
y"T"
Ttype:

2
$

LogicalAnd
x

y

z

q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	
¨
Multinomial
logits"T
num_samples
output"output_dtype"
seedint "
seed2int "
Ttype:
2	" 
output_dtypetype0	:
2	
0
Neg
x"T
y"T"
Ttype:
2
	
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
Q
Qr

input"T
q"T
r"T"
full_matricesbool( "
Ttype:	
2

RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
f
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx" 
Tidxtype0:
2
	
@
ReadVariableOp
resource
value"dtype"
dtypetype
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
7

Reciprocal
x"T
y"T"
Ttype:
2
	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
à
ResourceApplyAdam
var
m
v
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
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
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
1
Sign
x"T
y"T"
Ttype:
2
	
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2

#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
7
Square
x"T
y"T"
Ttype:
2	
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
À
StatelessIf
cond"Tcond
input2Tin
output2Tout"
Tcondtype"
Tin
list(type)("
Tout
list(type)("
then_branchfunc"
else_branchfunc" 
output_shapeslist(shape)
 
@
StaticRegexFullMatch	
input

output
"
patternstring
2
StopGradient

input"T
output"T"	
Ttype
÷
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
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

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 
9
VarIsInitializedOp
resource
is_initialized

&
	ZerosLike
x"T
y"T"	
Ttype"serve*2.9.12v2.9.0-18-gd8ce9f9c301½Ô#

default_policy/observationsPlaceholder*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿÓ
À
=default_policy/layer_1/kernel/Initializer/random_normal/shapeConst*0
_class&
$"loc:@default_policy/layer_1/kernel*
_output_shapes
:*
dtype0*
valueB"è  Ó  
³
<default_policy/layer_1/kernel/Initializer/random_normal/meanConst*0
_class&
$"loc:@default_policy/layer_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
µ
>default_policy/layer_1/kernel/Initializer/random_normal/stddevConst*0
_class&
$"loc:@default_policy/layer_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *  ?
¦
Ldefault_policy/layer_1/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal=default_policy/layer_1/kernel/Initializer/random_normal/shape*
T0*0
_class&
$"loc:@default_policy/layer_1/kernel* 
_output_shapes
:
èÓ*
dtype0*

seed *
seed2 
­
;default_policy/layer_1/kernel/Initializer/random_normal/mulMulLdefault_policy/layer_1/kernel/Initializer/random_normal/RandomStandardNormal>default_policy/layer_1/kernel/Initializer/random_normal/stddev*
T0*0
_class&
$"loc:@default_policy/layer_1/kernel* 
_output_shapes
:
èÓ

7default_policy/layer_1/kernel/Initializer/random_normalAddV2;default_policy/layer_1/kernel/Initializer/random_normal/mul<default_policy/layer_1/kernel/Initializer/random_normal/mean*
T0*0
_class&
$"loc:@default_policy/layer_1/kernel* 
_output_shapes
:
èÓ
é
,default_policy/layer_1/kernel/Initializer/QrQr7default_policy/layer_1/kernel/Initializer/random_normal*
T0*0
_class&
$"loc:@default_policy/layer_1/kernel*,
_output_shapes
:
èÓ:
ÓÓ*
full_matrices( 
Æ
2default_policy/layer_1/kernel/Initializer/DiagPartDiagPart.default_policy/layer_1/kernel/Initializer/Qr:1*
T0*0
_class&
$"loc:@default_policy/layer_1/kernel*
_output_shapes	
:Ó
Â
.default_policy/layer_1/kernel/Initializer/SignSign2default_policy/layer_1/kernel/Initializer/DiagPart*
T0*0
_class&
$"loc:@default_policy/layer_1/kernel*
_output_shapes	
:Ó
ï
-default_policy/layer_1/kernel/Initializer/mulMul,default_policy/layer_1/kernel/Initializer/Qr.default_policy/layer_1/kernel/Initializer/Sign*
T0*0
_class&
$"loc:@default_policy/layer_1/kernel* 
_output_shapes
:
èÓ
Ì
Idefault_policy/layer_1/kernel/Initializer/matrix_transpose/transpose/permConst*0
_class&
$"loc:@default_policy/layer_1/kernel*
_output_shapes
:*
dtype0*
valueB"       
µ
Ddefault_policy/layer_1/kernel/Initializer/matrix_transpose/transpose	Transpose-default_policy/layer_1/kernel/Initializer/mulIdefault_policy/layer_1/kernel/Initializer/matrix_transpose/transpose/perm*
T0*
Tperm0*0
_class&
$"loc:@default_policy/layer_1/kernel* 
_output_shapes
:
Óè
º
7default_policy/layer_1/kernel/Initializer/Reshape/shapeConst*0
_class&
$"loc:@default_policy/layer_1/kernel*
_output_shapes
:*
dtype0*
valueB"Ó  è  
¦
1default_policy/layer_1/kernel/Initializer/ReshapeReshapeDdefault_policy/layer_1/kernel/Initializer/matrix_transpose/transpose7default_policy/layer_1/kernel/Initializer/Reshape/shape*
T0*
Tshape0*0
_class&
$"loc:@default_policy/layer_1/kernel* 
_output_shapes
:
Óè
¨
1default_policy/layer_1/kernel/Initializer/mul_1/xConst*0
_class&
$"loc:@default_policy/layer_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *  ?
ù
/default_policy/layer_1/kernel/Initializer/mul_1Mul1default_policy/layer_1/kernel/Initializer/mul_1/x1default_policy/layer_1/kernel/Initializer/Reshape*
T0*0
_class&
$"loc:@default_policy/layer_1/kernel* 
_output_shapes
:
Óè
ò
default_policy/layer_1/kernelVarHandleOp*0
_class&
$"loc:@default_policy/layer_1/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
Óè*.
shared_namedefault_policy/layer_1/kernel

>default_policy/layer_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/layer_1/kernel*
_output_shapes
: 
«
$default_policy/layer_1/kernel/AssignAssignVariableOpdefault_policy/layer_1/kernel/default_policy/layer_1/kernel/Initializer/mul_1*
dtype0*
validate_shape( 

1default_policy/layer_1/kernel/Read/ReadVariableOpReadVariableOpdefault_policy/layer_1/kernel* 
_output_shapes
:
Óè*
dtype0
¸
=default_policy/layer_1/bias/Initializer/zeros/shape_as_tensorConst*.
_class$
" loc:@default_policy/layer_1/bias*
_output_shapes
:*
dtype0*
valueB:è
¨
3default_policy/layer_1/bias/Initializer/zeros/ConstConst*.
_class$
" loc:@default_policy/layer_1/bias*
_output_shapes
: *
dtype0*
valueB
 *    

-default_policy/layer_1/bias/Initializer/zerosFill=default_policy/layer_1/bias/Initializer/zeros/shape_as_tensor3default_policy/layer_1/bias/Initializer/zeros/Const*
T0*.
_class$
" loc:@default_policy/layer_1/bias*
_output_shapes	
:è*

index_type0
ç
default_policy/layer_1/biasVarHandleOp*.
_class$
" loc:@default_policy/layer_1/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:è*,
shared_namedefault_policy/layer_1/bias

<default_policy/layer_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/layer_1/bias*
_output_shapes
: 
¥
"default_policy/layer_1/bias/AssignAssignVariableOpdefault_policy/layer_1/bias-default_policy/layer_1/bias/Initializer/zeros*
dtype0*
validate_shape( 

/default_policy/layer_1/bias/Read/ReadVariableOpReadVariableOpdefault_policy/layer_1/bias*
_output_shapes	
:è*
dtype0

,default_policy/layer_1/MatMul/ReadVariableOpReadVariableOpdefault_policy/layer_1/kernel* 
_output_shapes
:
Óè*
dtype0
Ë
default_policy/layer_1/MatMulMatMuldefault_policy/observations,default_policy/layer_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
transpose_a( *
transpose_b( 

-default_policy/layer_1/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/layer_1/bias*
_output_shapes	
:è*
dtype0
Á
default_policy/layer_1/BiasAddBiasAdddefault_policy/layer_1/MatMul-default_policy/layer_1/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
data_formatNHWC
v
default_policy/layer_1/ReluReludefault_policy/layer_1/BiasAdd*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
À
=default_policy/layer_2/kernel/Initializer/random_normal/shapeConst*0
_class&
$"loc:@default_policy/layer_2/kernel*
_output_shapes
:*
dtype0*
valueB"è  è  
³
<default_policy/layer_2/kernel/Initializer/random_normal/meanConst*0
_class&
$"loc:@default_policy/layer_2/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
µ
>default_policy/layer_2/kernel/Initializer/random_normal/stddevConst*0
_class&
$"loc:@default_policy/layer_2/kernel*
_output_shapes
: *
dtype0*
valueB
 *  ?
¦
Ldefault_policy/layer_2/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal=default_policy/layer_2/kernel/Initializer/random_normal/shape*
T0*0
_class&
$"loc:@default_policy/layer_2/kernel* 
_output_shapes
:
èè*
dtype0*

seed *
seed2 
­
;default_policy/layer_2/kernel/Initializer/random_normal/mulMulLdefault_policy/layer_2/kernel/Initializer/random_normal/RandomStandardNormal>default_policy/layer_2/kernel/Initializer/random_normal/stddev*
T0*0
_class&
$"loc:@default_policy/layer_2/kernel* 
_output_shapes
:
èè

7default_policy/layer_2/kernel/Initializer/random_normalAddV2;default_policy/layer_2/kernel/Initializer/random_normal/mul<default_policy/layer_2/kernel/Initializer/random_normal/mean*
T0*0
_class&
$"loc:@default_policy/layer_2/kernel* 
_output_shapes
:
èè
é
,default_policy/layer_2/kernel/Initializer/QrQr7default_policy/layer_2/kernel/Initializer/random_normal*
T0*0
_class&
$"loc:@default_policy/layer_2/kernel*,
_output_shapes
:
èè:
èè*
full_matrices( 
Æ
2default_policy/layer_2/kernel/Initializer/DiagPartDiagPart.default_policy/layer_2/kernel/Initializer/Qr:1*
T0*0
_class&
$"loc:@default_policy/layer_2/kernel*
_output_shapes	
:è
Â
.default_policy/layer_2/kernel/Initializer/SignSign2default_policy/layer_2/kernel/Initializer/DiagPart*
T0*0
_class&
$"loc:@default_policy/layer_2/kernel*
_output_shapes	
:è
ï
-default_policy/layer_2/kernel/Initializer/mulMul,default_policy/layer_2/kernel/Initializer/Qr.default_policy/layer_2/kernel/Initializer/Sign*
T0*0
_class&
$"loc:@default_policy/layer_2/kernel* 
_output_shapes
:
èè
º
7default_policy/layer_2/kernel/Initializer/Reshape/shapeConst*0
_class&
$"loc:@default_policy/layer_2/kernel*
_output_shapes
:*
dtype0*
valueB"è  è  

1default_policy/layer_2/kernel/Initializer/ReshapeReshape-default_policy/layer_2/kernel/Initializer/mul7default_policy/layer_2/kernel/Initializer/Reshape/shape*
T0*
Tshape0*0
_class&
$"loc:@default_policy/layer_2/kernel* 
_output_shapes
:
èè
¨
1default_policy/layer_2/kernel/Initializer/mul_1/xConst*0
_class&
$"loc:@default_policy/layer_2/kernel*
_output_shapes
: *
dtype0*
valueB
 *  ?
ù
/default_policy/layer_2/kernel/Initializer/mul_1Mul1default_policy/layer_2/kernel/Initializer/mul_1/x1default_policy/layer_2/kernel/Initializer/Reshape*
T0*0
_class&
$"loc:@default_policy/layer_2/kernel* 
_output_shapes
:
èè
ò
default_policy/layer_2/kernelVarHandleOp*0
_class&
$"loc:@default_policy/layer_2/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
èè*.
shared_namedefault_policy/layer_2/kernel

>default_policy/layer_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/layer_2/kernel*
_output_shapes
: 
«
$default_policy/layer_2/kernel/AssignAssignVariableOpdefault_policy/layer_2/kernel/default_policy/layer_2/kernel/Initializer/mul_1*
dtype0*
validate_shape( 

1default_policy/layer_2/kernel/Read/ReadVariableOpReadVariableOpdefault_policy/layer_2/kernel* 
_output_shapes
:
èè*
dtype0
¸
=default_policy/layer_2/bias/Initializer/zeros/shape_as_tensorConst*.
_class$
" loc:@default_policy/layer_2/bias*
_output_shapes
:*
dtype0*
valueB:è
¨
3default_policy/layer_2/bias/Initializer/zeros/ConstConst*.
_class$
" loc:@default_policy/layer_2/bias*
_output_shapes
: *
dtype0*
valueB
 *    

-default_policy/layer_2/bias/Initializer/zerosFill=default_policy/layer_2/bias/Initializer/zeros/shape_as_tensor3default_policy/layer_2/bias/Initializer/zeros/Const*
T0*.
_class$
" loc:@default_policy/layer_2/bias*
_output_shapes	
:è*

index_type0
ç
default_policy/layer_2/biasVarHandleOp*.
_class$
" loc:@default_policy/layer_2/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:è*,
shared_namedefault_policy/layer_2/bias

<default_policy/layer_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/layer_2/bias*
_output_shapes
: 
¥
"default_policy/layer_2/bias/AssignAssignVariableOpdefault_policy/layer_2/bias-default_policy/layer_2/bias/Initializer/zeros*
dtype0*
validate_shape( 

/default_policy/layer_2/bias/Read/ReadVariableOpReadVariableOpdefault_policy/layer_2/bias*
_output_shapes	
:è*
dtype0

,default_policy/layer_2/MatMul/ReadVariableOpReadVariableOpdefault_policy/layer_2/kernel* 
_output_shapes
:
èè*
dtype0
Ë
default_policy/layer_2/MatMulMatMuldefault_policy/layer_1/Relu,default_policy/layer_2/MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
transpose_a( *
transpose_b( 

-default_policy/layer_2/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/layer_2/bias*
_output_shapes	
:è*
dtype0
Á
default_policy/layer_2/BiasAddBiasAdddefault_policy/layer_2/MatMul-default_policy/layer_2/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
data_formatNHWC
v
default_policy/layer_2/ReluReludefault_policy/layer_2/BiasAdd*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
À
=default_policy/layer_3/kernel/Initializer/random_normal/shapeConst*0
_class&
$"loc:@default_policy/layer_3/kernel*
_output_shapes
:*
dtype0*
valueB"è  è  
³
<default_policy/layer_3/kernel/Initializer/random_normal/meanConst*0
_class&
$"loc:@default_policy/layer_3/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
µ
>default_policy/layer_3/kernel/Initializer/random_normal/stddevConst*0
_class&
$"loc:@default_policy/layer_3/kernel*
_output_shapes
: *
dtype0*
valueB
 *  ?
¦
Ldefault_policy/layer_3/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal=default_policy/layer_3/kernel/Initializer/random_normal/shape*
T0*0
_class&
$"loc:@default_policy/layer_3/kernel* 
_output_shapes
:
èè*
dtype0*

seed *
seed2 
­
;default_policy/layer_3/kernel/Initializer/random_normal/mulMulLdefault_policy/layer_3/kernel/Initializer/random_normal/RandomStandardNormal>default_policy/layer_3/kernel/Initializer/random_normal/stddev*
T0*0
_class&
$"loc:@default_policy/layer_3/kernel* 
_output_shapes
:
èè

7default_policy/layer_3/kernel/Initializer/random_normalAddV2;default_policy/layer_3/kernel/Initializer/random_normal/mul<default_policy/layer_3/kernel/Initializer/random_normal/mean*
T0*0
_class&
$"loc:@default_policy/layer_3/kernel* 
_output_shapes
:
èè
é
,default_policy/layer_3/kernel/Initializer/QrQr7default_policy/layer_3/kernel/Initializer/random_normal*
T0*0
_class&
$"loc:@default_policy/layer_3/kernel*,
_output_shapes
:
èè:
èè*
full_matrices( 
Æ
2default_policy/layer_3/kernel/Initializer/DiagPartDiagPart.default_policy/layer_3/kernel/Initializer/Qr:1*
T0*0
_class&
$"loc:@default_policy/layer_3/kernel*
_output_shapes	
:è
Â
.default_policy/layer_3/kernel/Initializer/SignSign2default_policy/layer_3/kernel/Initializer/DiagPart*
T0*0
_class&
$"loc:@default_policy/layer_3/kernel*
_output_shapes	
:è
ï
-default_policy/layer_3/kernel/Initializer/mulMul,default_policy/layer_3/kernel/Initializer/Qr.default_policy/layer_3/kernel/Initializer/Sign*
T0*0
_class&
$"loc:@default_policy/layer_3/kernel* 
_output_shapes
:
èè
º
7default_policy/layer_3/kernel/Initializer/Reshape/shapeConst*0
_class&
$"loc:@default_policy/layer_3/kernel*
_output_shapes
:*
dtype0*
valueB"è  è  

1default_policy/layer_3/kernel/Initializer/ReshapeReshape-default_policy/layer_3/kernel/Initializer/mul7default_policy/layer_3/kernel/Initializer/Reshape/shape*
T0*
Tshape0*0
_class&
$"loc:@default_policy/layer_3/kernel* 
_output_shapes
:
èè
¨
1default_policy/layer_3/kernel/Initializer/mul_1/xConst*0
_class&
$"loc:@default_policy/layer_3/kernel*
_output_shapes
: *
dtype0*
valueB
 *  ?
ù
/default_policy/layer_3/kernel/Initializer/mul_1Mul1default_policy/layer_3/kernel/Initializer/mul_1/x1default_policy/layer_3/kernel/Initializer/Reshape*
T0*0
_class&
$"loc:@default_policy/layer_3/kernel* 
_output_shapes
:
èè
ò
default_policy/layer_3/kernelVarHandleOp*0
_class&
$"loc:@default_policy/layer_3/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
èè*.
shared_namedefault_policy/layer_3/kernel

>default_policy/layer_3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/layer_3/kernel*
_output_shapes
: 
«
$default_policy/layer_3/kernel/AssignAssignVariableOpdefault_policy/layer_3/kernel/default_policy/layer_3/kernel/Initializer/mul_1*
dtype0*
validate_shape( 

1default_policy/layer_3/kernel/Read/ReadVariableOpReadVariableOpdefault_policy/layer_3/kernel* 
_output_shapes
:
èè*
dtype0
¸
=default_policy/layer_3/bias/Initializer/zeros/shape_as_tensorConst*.
_class$
" loc:@default_policy/layer_3/bias*
_output_shapes
:*
dtype0*
valueB:è
¨
3default_policy/layer_3/bias/Initializer/zeros/ConstConst*.
_class$
" loc:@default_policy/layer_3/bias*
_output_shapes
: *
dtype0*
valueB
 *    

-default_policy/layer_3/bias/Initializer/zerosFill=default_policy/layer_3/bias/Initializer/zeros/shape_as_tensor3default_policy/layer_3/bias/Initializer/zeros/Const*
T0*.
_class$
" loc:@default_policy/layer_3/bias*
_output_shapes	
:è*

index_type0
ç
default_policy/layer_3/biasVarHandleOp*.
_class$
" loc:@default_policy/layer_3/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:è*,
shared_namedefault_policy/layer_3/bias

<default_policy/layer_3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/layer_3/bias*
_output_shapes
: 
¥
"default_policy/layer_3/bias/AssignAssignVariableOpdefault_policy/layer_3/bias-default_policy/layer_3/bias/Initializer/zeros*
dtype0*
validate_shape( 

/default_policy/layer_3/bias/Read/ReadVariableOpReadVariableOpdefault_policy/layer_3/bias*
_output_shapes	
:è*
dtype0

,default_policy/layer_3/MatMul/ReadVariableOpReadVariableOpdefault_policy/layer_3/kernel* 
_output_shapes
:
èè*
dtype0
Ë
default_policy/layer_3/MatMulMatMuldefault_policy/layer_2/Relu,default_policy/layer_3/MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
transpose_a( *
transpose_b( 

-default_policy/layer_3/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/layer_3/bias*
_output_shapes	
:è*
dtype0
Á
default_policy/layer_3/BiasAddBiasAdddefault_policy/layer_3/MatMul-default_policy/layer_3/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
data_formatNHWC
v
default_policy/layer_3/ReluReludefault_policy/layer_3/BiasAdd*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
À
=default_policy/layer_4/kernel/Initializer/random_normal/shapeConst*0
_class&
$"loc:@default_policy/layer_4/kernel*
_output_shapes
:*
dtype0*
valueB"è  è  
³
<default_policy/layer_4/kernel/Initializer/random_normal/meanConst*0
_class&
$"loc:@default_policy/layer_4/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
µ
>default_policy/layer_4/kernel/Initializer/random_normal/stddevConst*0
_class&
$"loc:@default_policy/layer_4/kernel*
_output_shapes
: *
dtype0*
valueB
 *  ?
¦
Ldefault_policy/layer_4/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal=default_policy/layer_4/kernel/Initializer/random_normal/shape*
T0*0
_class&
$"loc:@default_policy/layer_4/kernel* 
_output_shapes
:
èè*
dtype0*

seed *
seed2 
­
;default_policy/layer_4/kernel/Initializer/random_normal/mulMulLdefault_policy/layer_4/kernel/Initializer/random_normal/RandomStandardNormal>default_policy/layer_4/kernel/Initializer/random_normal/stddev*
T0*0
_class&
$"loc:@default_policy/layer_4/kernel* 
_output_shapes
:
èè

7default_policy/layer_4/kernel/Initializer/random_normalAddV2;default_policy/layer_4/kernel/Initializer/random_normal/mul<default_policy/layer_4/kernel/Initializer/random_normal/mean*
T0*0
_class&
$"loc:@default_policy/layer_4/kernel* 
_output_shapes
:
èè
é
,default_policy/layer_4/kernel/Initializer/QrQr7default_policy/layer_4/kernel/Initializer/random_normal*
T0*0
_class&
$"loc:@default_policy/layer_4/kernel*,
_output_shapes
:
èè:
èè*
full_matrices( 
Æ
2default_policy/layer_4/kernel/Initializer/DiagPartDiagPart.default_policy/layer_4/kernel/Initializer/Qr:1*
T0*0
_class&
$"loc:@default_policy/layer_4/kernel*
_output_shapes	
:è
Â
.default_policy/layer_4/kernel/Initializer/SignSign2default_policy/layer_4/kernel/Initializer/DiagPart*
T0*0
_class&
$"loc:@default_policy/layer_4/kernel*
_output_shapes	
:è
ï
-default_policy/layer_4/kernel/Initializer/mulMul,default_policy/layer_4/kernel/Initializer/Qr.default_policy/layer_4/kernel/Initializer/Sign*
T0*0
_class&
$"loc:@default_policy/layer_4/kernel* 
_output_shapes
:
èè
º
7default_policy/layer_4/kernel/Initializer/Reshape/shapeConst*0
_class&
$"loc:@default_policy/layer_4/kernel*
_output_shapes
:*
dtype0*
valueB"è  è  

1default_policy/layer_4/kernel/Initializer/ReshapeReshape-default_policy/layer_4/kernel/Initializer/mul7default_policy/layer_4/kernel/Initializer/Reshape/shape*
T0*
Tshape0*0
_class&
$"loc:@default_policy/layer_4/kernel* 
_output_shapes
:
èè
¨
1default_policy/layer_4/kernel/Initializer/mul_1/xConst*0
_class&
$"loc:@default_policy/layer_4/kernel*
_output_shapes
: *
dtype0*
valueB
 *  ?
ù
/default_policy/layer_4/kernel/Initializer/mul_1Mul1default_policy/layer_4/kernel/Initializer/mul_1/x1default_policy/layer_4/kernel/Initializer/Reshape*
T0*0
_class&
$"loc:@default_policy/layer_4/kernel* 
_output_shapes
:
èè
ò
default_policy/layer_4/kernelVarHandleOp*0
_class&
$"loc:@default_policy/layer_4/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
èè*.
shared_namedefault_policy/layer_4/kernel

>default_policy/layer_4/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/layer_4/kernel*
_output_shapes
: 
«
$default_policy/layer_4/kernel/AssignAssignVariableOpdefault_policy/layer_4/kernel/default_policy/layer_4/kernel/Initializer/mul_1*
dtype0*
validate_shape( 

1default_policy/layer_4/kernel/Read/ReadVariableOpReadVariableOpdefault_policy/layer_4/kernel* 
_output_shapes
:
èè*
dtype0
¸
=default_policy/layer_4/bias/Initializer/zeros/shape_as_tensorConst*.
_class$
" loc:@default_policy/layer_4/bias*
_output_shapes
:*
dtype0*
valueB:è
¨
3default_policy/layer_4/bias/Initializer/zeros/ConstConst*.
_class$
" loc:@default_policy/layer_4/bias*
_output_shapes
: *
dtype0*
valueB
 *    

-default_policy/layer_4/bias/Initializer/zerosFill=default_policy/layer_4/bias/Initializer/zeros/shape_as_tensor3default_policy/layer_4/bias/Initializer/zeros/Const*
T0*.
_class$
" loc:@default_policy/layer_4/bias*
_output_shapes	
:è*

index_type0
ç
default_policy/layer_4/biasVarHandleOp*.
_class$
" loc:@default_policy/layer_4/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:è*,
shared_namedefault_policy/layer_4/bias

<default_policy/layer_4/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/layer_4/bias*
_output_shapes
: 
¥
"default_policy/layer_4/bias/AssignAssignVariableOpdefault_policy/layer_4/bias-default_policy/layer_4/bias/Initializer/zeros*
dtype0*
validate_shape( 

/default_policy/layer_4/bias/Read/ReadVariableOpReadVariableOpdefault_policy/layer_4/bias*
_output_shapes	
:è*
dtype0

,default_policy/layer_4/MatMul/ReadVariableOpReadVariableOpdefault_policy/layer_4/kernel* 
_output_shapes
:
èè*
dtype0
Ë
default_policy/layer_4/MatMulMatMuldefault_policy/layer_3/Relu,default_policy/layer_4/MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
transpose_a( *
transpose_b( 

-default_policy/layer_4/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/layer_4/bias*
_output_shapes	
:è*
dtype0
Á
default_policy/layer_4/BiasAddBiasAdddefault_policy/layer_4/MatMul-default_policy/layer_4/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
data_formatNHWC
v
default_policy/layer_4/ReluReludefault_policy/layer_4/BiasAdd*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
Æ
@default_policy/action_out/kernel/Initializer/random_normal/shapeConst*3
_class)
'%loc:@default_policy/action_out/kernel*
_output_shapes
:*
dtype0*
valueB"è  }   
¹
?default_policy/action_out/kernel/Initializer/random_normal/meanConst*3
_class)
'%loc:@default_policy/action_out/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
»
Adefault_policy/action_out/kernel/Initializer/random_normal/stddevConst*3
_class)
'%loc:@default_policy/action_out/kernel*
_output_shapes
: *
dtype0*
valueB
 *  ?
®
Odefault_policy/action_out/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal@default_policy/action_out/kernel/Initializer/random_normal/shape*
T0*3
_class)
'%loc:@default_policy/action_out/kernel*
_output_shapes
:	è}*
dtype0*

seed *
seed2 
¸
>default_policy/action_out/kernel/Initializer/random_normal/mulMulOdefault_policy/action_out/kernel/Initializer/random_normal/RandomStandardNormalAdefault_policy/action_out/kernel/Initializer/random_normal/stddev*
T0*3
_class)
'%loc:@default_policy/action_out/kernel*
_output_shapes
:	è}
£
:default_policy/action_out/kernel/Initializer/random_normalAddV2>default_policy/action_out/kernel/Initializer/random_normal/mul?default_policy/action_out/kernel/Initializer/random_normal/mean*
T0*3
_class)
'%loc:@default_policy/action_out/kernel*
_output_shapes
:	è}
ï
/default_policy/action_out/kernel/Initializer/QrQr:default_policy/action_out/kernel/Initializer/random_normal*
T0*3
_class)
'%loc:@default_policy/action_out/kernel*)
_output_shapes
:	è}:}}*
full_matrices( 
Î
5default_policy/action_out/kernel/Initializer/DiagPartDiagPart1default_policy/action_out/kernel/Initializer/Qr:1*
T0*3
_class)
'%loc:@default_policy/action_out/kernel*
_output_shapes
:}
Ê
1default_policy/action_out/kernel/Initializer/SignSign5default_policy/action_out/kernel/Initializer/DiagPart*
T0*3
_class)
'%loc:@default_policy/action_out/kernel*
_output_shapes
:}
ú
0default_policy/action_out/kernel/Initializer/mulMul/default_policy/action_out/kernel/Initializer/Qr1default_policy/action_out/kernel/Initializer/Sign*
T0*3
_class)
'%loc:@default_policy/action_out/kernel*
_output_shapes
:	è}
À
:default_policy/action_out/kernel/Initializer/Reshape/shapeConst*3
_class)
'%loc:@default_policy/action_out/kernel*
_output_shapes
:*
dtype0*
valueB"è  }   

4default_policy/action_out/kernel/Initializer/ReshapeReshape0default_policy/action_out/kernel/Initializer/mul:default_policy/action_out/kernel/Initializer/Reshape/shape*
T0*
Tshape0*3
_class)
'%loc:@default_policy/action_out/kernel*
_output_shapes
:	è}
®
4default_policy/action_out/kernel/Initializer/mul_1/xConst*3
_class)
'%loc:@default_policy/action_out/kernel*
_output_shapes
: *
dtype0*
valueB
 *  ?

2default_policy/action_out/kernel/Initializer/mul_1Mul4default_policy/action_out/kernel/Initializer/mul_1/x4default_policy/action_out/kernel/Initializer/Reshape*
T0*3
_class)
'%loc:@default_policy/action_out/kernel*
_output_shapes
:	è}
ú
 default_policy/action_out/kernelVarHandleOp*3
_class)
'%loc:@default_policy/action_out/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:	è}*1
shared_name" default_policy/action_out/kernel

Adefault_policy/action_out/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp default_policy/action_out/kernel*
_output_shapes
: 
´
'default_policy/action_out/kernel/AssignAssignVariableOp default_policy/action_out/kernel2default_policy/action_out/kernel/Initializer/mul_1*
dtype0*
validate_shape( 

4default_policy/action_out/kernel/Read/ReadVariableOpReadVariableOp default_policy/action_out/kernel*
_output_shapes
:	è}*
dtype0
°
0default_policy/action_out/bias/Initializer/zerosConst*1
_class'
%#loc:@default_policy/action_out/bias*
_output_shapes
:}*
dtype0*
valueB}*    
ï
default_policy/action_out/biasVarHandleOp*1
_class'
%#loc:@default_policy/action_out/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:}*/
shared_name default_policy/action_out/bias

?default_policy/action_out/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/action_out/bias*
_output_shapes
: 
®
%default_policy/action_out/bias/AssignAssignVariableOpdefault_policy/action_out/bias0default_policy/action_out/bias/Initializer/zeros*
dtype0*
validate_shape( 

2default_policy/action_out/bias/Read/ReadVariableOpReadVariableOpdefault_policy/action_out/bias*
_output_shapes
:}*
dtype0

/default_policy/action_out/MatMul/ReadVariableOpReadVariableOp default_policy/action_out/kernel*
_output_shapes
:	è}*
dtype0
Ð
 default_policy/action_out/MatMulMatMuldefault_policy/layer_4/Relu/default_policy/action_out/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*
transpose_a( *
transpose_b( 

0default_policy/action_out/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/action_out/bias*
_output_shapes
:}*
dtype0
É
!default_policy/action_out/BiasAddBiasAdd default_policy/action_out/MatMul0default_policy/action_out/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*
data_formatNHWC
Ò
Fdefault_policy/layer_val_hidden/kernel/Initializer/random_normal/shapeConst*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel*
_output_shapes
:*
dtype0*
valueB"è  }   
Å
Edefault_policy/layer_val_hidden/kernel/Initializer/random_normal/meanConst*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ç
Gdefault_policy/layer_val_hidden/kernel/Initializer/random_normal/stddevConst*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel*
_output_shapes
: *
dtype0*
valueB
 *  ?
À
Udefault_policy/layer_val_hidden/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormalFdefault_policy/layer_val_hidden/kernel/Initializer/random_normal/shape*
T0*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel*
_output_shapes
:	è}*
dtype0*

seed *
seed2 
Ð
Ddefault_policy/layer_val_hidden/kernel/Initializer/random_normal/mulMulUdefault_policy/layer_val_hidden/kernel/Initializer/random_normal/RandomStandardNormalGdefault_policy/layer_val_hidden/kernel/Initializer/random_normal/stddev*
T0*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel*
_output_shapes
:	è}
»
@default_policy/layer_val_hidden/kernel/Initializer/random_normalAddV2Ddefault_policy/layer_val_hidden/kernel/Initializer/random_normal/mulEdefault_policy/layer_val_hidden/kernel/Initializer/random_normal/mean*
T0*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel*
_output_shapes
:	è}

5default_policy/layer_val_hidden/kernel/Initializer/QrQr@default_policy/layer_val_hidden/kernel/Initializer/random_normal*
T0*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel*)
_output_shapes
:	è}:}}*
full_matrices( 
à
;default_policy/layer_val_hidden/kernel/Initializer/DiagPartDiagPart7default_policy/layer_val_hidden/kernel/Initializer/Qr:1*
T0*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel*
_output_shapes
:}
Ü
7default_policy/layer_val_hidden/kernel/Initializer/SignSign;default_policy/layer_val_hidden/kernel/Initializer/DiagPart*
T0*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel*
_output_shapes
:}

6default_policy/layer_val_hidden/kernel/Initializer/mulMul5default_policy/layer_val_hidden/kernel/Initializer/Qr7default_policy/layer_val_hidden/kernel/Initializer/Sign*
T0*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel*
_output_shapes
:	è}
Ì
@default_policy/layer_val_hidden/kernel/Initializer/Reshape/shapeConst*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel*
_output_shapes
:*
dtype0*
valueB"è  }   
²
:default_policy/layer_val_hidden/kernel/Initializer/ReshapeReshape6default_policy/layer_val_hidden/kernel/Initializer/mul@default_policy/layer_val_hidden/kernel/Initializer/Reshape/shape*
T0*
Tshape0*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel*
_output_shapes
:	è}
º
:default_policy/layer_val_hidden/kernel/Initializer/mul_1/xConst*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel*
_output_shapes
: *
dtype0*
valueB
 *  ?

8default_policy/layer_val_hidden/kernel/Initializer/mul_1Mul:default_policy/layer_val_hidden/kernel/Initializer/mul_1/x:default_policy/layer_val_hidden/kernel/Initializer/Reshape*
T0*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel*
_output_shapes
:	è}

&default_policy/layer_val_hidden/kernelVarHandleOp*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:	è}*7
shared_name(&default_policy/layer_val_hidden/kernel

Gdefault_policy/layer_val_hidden/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp&default_policy/layer_val_hidden/kernel*
_output_shapes
: 
Æ
-default_policy/layer_val_hidden/kernel/AssignAssignVariableOp&default_policy/layer_val_hidden/kernel8default_policy/layer_val_hidden/kernel/Initializer/mul_1*
dtype0*
validate_shape( 
¢
:default_policy/layer_val_hidden/kernel/Read/ReadVariableOpReadVariableOp&default_policy/layer_val_hidden/kernel*
_output_shapes
:	è}*
dtype0
¼
6default_policy/layer_val_hidden/bias/Initializer/zerosConst*7
_class-
+)loc:@default_policy/layer_val_hidden/bias*
_output_shapes
:}*
dtype0*
valueB}*    

$default_policy/layer_val_hidden/biasVarHandleOp*7
_class-
+)loc:@default_policy/layer_val_hidden/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:}*5
shared_name&$default_policy/layer_val_hidden/bias

Edefault_policy/layer_val_hidden/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp$default_policy/layer_val_hidden/bias*
_output_shapes
: 
À
+default_policy/layer_val_hidden/bias/AssignAssignVariableOp$default_policy/layer_val_hidden/bias6default_policy/layer_val_hidden/bias/Initializer/zeros*
dtype0*
validate_shape( 

8default_policy/layer_val_hidden/bias/Read/ReadVariableOpReadVariableOp$default_policy/layer_val_hidden/bias*
_output_shapes
:}*
dtype0

5default_policy/layer_val_hidden/MatMul/ReadVariableOpReadVariableOp&default_policy/layer_val_hidden/kernel*
_output_shapes
:	è}*
dtype0
Ü
&default_policy/layer_val_hidden/MatMulMatMuldefault_policy/layer_4/Relu5default_policy/layer_val_hidden/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*
transpose_a( *
transpose_b( 

6default_policy/layer_val_hidden/BiasAdd/ReadVariableOpReadVariableOp$default_policy/layer_val_hidden/bias*
_output_shapes
:}*
dtype0
Û
'default_policy/layer_val_hidden/BiasAddBiasAdd&default_policy/layer_val_hidden/MatMul6default_policy/layer_val_hidden/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*
data_formatNHWC

$default_policy/layer_val_hidden/ReluRelu'default_policy/layer_val_hidden/BiasAdd*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
Ä
?default_policy/value_out/kernel/Initializer/random_normal/shapeConst*2
_class(
&$loc:@default_policy/value_out/kernel*
_output_shapes
:*
dtype0*
valueB"}      
·
>default_policy/value_out/kernel/Initializer/random_normal/meanConst*2
_class(
&$loc:@default_policy/value_out/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
¹
@default_policy/value_out/kernel/Initializer/random_normal/stddevConst*2
_class(
&$loc:@default_policy/value_out/kernel*
_output_shapes
: *
dtype0*
valueB
 *  ?
ª
Ndefault_policy/value_out/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal?default_policy/value_out/kernel/Initializer/random_normal/shape*
T0*2
_class(
&$loc:@default_policy/value_out/kernel*
_output_shapes

:}*
dtype0*

seed *
seed2 
³
=default_policy/value_out/kernel/Initializer/random_normal/mulMulNdefault_policy/value_out/kernel/Initializer/random_normal/RandomStandardNormal@default_policy/value_out/kernel/Initializer/random_normal/stddev*
T0*2
_class(
&$loc:@default_policy/value_out/kernel*
_output_shapes

:}

9default_policy/value_out/kernel/Initializer/random_normalAddV2=default_policy/value_out/kernel/Initializer/random_normal/mul>default_policy/value_out/kernel/Initializer/random_normal/mean*
T0*2
_class(
&$loc:@default_policy/value_out/kernel*
_output_shapes

:}
ë
.default_policy/value_out/kernel/Initializer/QrQr9default_policy/value_out/kernel/Initializer/random_normal*
T0*2
_class(
&$loc:@default_policy/value_out/kernel*(
_output_shapes
:}:*
full_matrices( 
Ë
4default_policy/value_out/kernel/Initializer/DiagPartDiagPart0default_policy/value_out/kernel/Initializer/Qr:1*
T0*2
_class(
&$loc:@default_policy/value_out/kernel*
_output_shapes
:
Ç
0default_policy/value_out/kernel/Initializer/SignSign4default_policy/value_out/kernel/Initializer/DiagPart*
T0*2
_class(
&$loc:@default_policy/value_out/kernel*
_output_shapes
:
õ
/default_policy/value_out/kernel/Initializer/mulMul.default_policy/value_out/kernel/Initializer/Qr0default_policy/value_out/kernel/Initializer/Sign*
T0*2
_class(
&$loc:@default_policy/value_out/kernel*
_output_shapes

:}
¾
9default_policy/value_out/kernel/Initializer/Reshape/shapeConst*2
_class(
&$loc:@default_policy/value_out/kernel*
_output_shapes
:*
dtype0*
valueB"}      

3default_policy/value_out/kernel/Initializer/ReshapeReshape/default_policy/value_out/kernel/Initializer/mul9default_policy/value_out/kernel/Initializer/Reshape/shape*
T0*
Tshape0*2
_class(
&$loc:@default_policy/value_out/kernel*
_output_shapes

:}
¬
3default_policy/value_out/kernel/Initializer/mul_1/xConst*2
_class(
&$loc:@default_policy/value_out/kernel*
_output_shapes
: *
dtype0*
valueB
 *  ?
ÿ
1default_policy/value_out/kernel/Initializer/mul_1Mul3default_policy/value_out/kernel/Initializer/mul_1/x3default_policy/value_out/kernel/Initializer/Reshape*
T0*2
_class(
&$loc:@default_policy/value_out/kernel*
_output_shapes

:}
ö
default_policy/value_out/kernelVarHandleOp*2
_class(
&$loc:@default_policy/value_out/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape
:}*0
shared_name!default_policy/value_out/kernel

@default_policy/value_out/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/value_out/kernel*
_output_shapes
: 
±
&default_policy/value_out/kernel/AssignAssignVariableOpdefault_policy/value_out/kernel1default_policy/value_out/kernel/Initializer/mul_1*
dtype0*
validate_shape( 

3default_policy/value_out/kernel/Read/ReadVariableOpReadVariableOpdefault_policy/value_out/kernel*
_output_shapes

:}*
dtype0
®
/default_policy/value_out/bias/Initializer/zerosConst*0
_class&
$"loc:@default_policy/value_out/bias*
_output_shapes
:*
dtype0*
valueB*    
ì
default_policy/value_out/biasVarHandleOp*0
_class&
$"loc:@default_policy/value_out/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:*.
shared_namedefault_policy/value_out/bias

>default_policy/value_out/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/value_out/bias*
_output_shapes
: 
«
$default_policy/value_out/bias/AssignAssignVariableOpdefault_policy/value_out/bias/default_policy/value_out/bias/Initializer/zeros*
dtype0*
validate_shape( 

1default_policy/value_out/bias/Read/ReadVariableOpReadVariableOpdefault_policy/value_out/bias*
_output_shapes
:*
dtype0

.default_policy/value_out/MatMul/ReadVariableOpReadVariableOpdefault_policy/value_out/kernel*
_output_shapes

:}*
dtype0
×
default_policy/value_out/MatMulMatMul$default_policy/layer_val_hidden/Relu.default_policy/value_out/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
transpose_a( *
transpose_b( 

/default_policy/value_out/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/value_out/bias*
_output_shapes
:*
dtype0
Æ
 default_policy/value_out/BiasAddBiasAdddefault_policy/value_out/MatMul/default_policy/value_out/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
data_formatNHWC
°
5default_policy/kernel/Initializer/random_normal/shapeConst*(
_class
loc:@default_policy/kernel*
_output_shapes
:*
dtype0*
valueB"è  Ó  
£
4default_policy/kernel/Initializer/random_normal/meanConst*(
_class
loc:@default_policy/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
¥
6default_policy/kernel/Initializer/random_normal/stddevConst*(
_class
loc:@default_policy/kernel*
_output_shapes
: *
dtype0*
valueB
 *  ?

Ddefault_policy/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal5default_policy/kernel/Initializer/random_normal/shape*
T0*(
_class
loc:@default_policy/kernel* 
_output_shapes
:
èÓ*
dtype0*

seed *
seed2 

3default_policy/kernel/Initializer/random_normal/mulMulDdefault_policy/kernel/Initializer/random_normal/RandomStandardNormal6default_policy/kernel/Initializer/random_normal/stddev*
T0*(
_class
loc:@default_policy/kernel* 
_output_shapes
:
èÓ
ø
/default_policy/kernel/Initializer/random_normalAddV23default_policy/kernel/Initializer/random_normal/mul4default_policy/kernel/Initializer/random_normal/mean*
T0*(
_class
loc:@default_policy/kernel* 
_output_shapes
:
èÓ
Ñ
$default_policy/kernel/Initializer/QrQr/default_policy/kernel/Initializer/random_normal*
T0*(
_class
loc:@default_policy/kernel*,
_output_shapes
:
èÓ:
ÓÓ*
full_matrices( 
®
*default_policy/kernel/Initializer/DiagPartDiagPart&default_policy/kernel/Initializer/Qr:1*
T0*(
_class
loc:@default_policy/kernel*
_output_shapes	
:Ó
ª
&default_policy/kernel/Initializer/SignSign*default_policy/kernel/Initializer/DiagPart*
T0*(
_class
loc:@default_policy/kernel*
_output_shapes	
:Ó
Ï
%default_policy/kernel/Initializer/mulMul$default_policy/kernel/Initializer/Qr&default_policy/kernel/Initializer/Sign*
T0*(
_class
loc:@default_policy/kernel* 
_output_shapes
:
èÓ
¼
Adefault_policy/kernel/Initializer/matrix_transpose/transpose/permConst*(
_class
loc:@default_policy/kernel*
_output_shapes
:*
dtype0*
valueB"       

<default_policy/kernel/Initializer/matrix_transpose/transpose	Transpose%default_policy/kernel/Initializer/mulAdefault_policy/kernel/Initializer/matrix_transpose/transpose/perm*
T0*
Tperm0*(
_class
loc:@default_policy/kernel* 
_output_shapes
:
Óè
ª
/default_policy/kernel/Initializer/Reshape/shapeConst*(
_class
loc:@default_policy/kernel*
_output_shapes
:*
dtype0*
valueB"Ó  è  

)default_policy/kernel/Initializer/ReshapeReshape<default_policy/kernel/Initializer/matrix_transpose/transpose/default_policy/kernel/Initializer/Reshape/shape*
T0*
Tshape0*(
_class
loc:@default_policy/kernel* 
_output_shapes
:
Óè

)default_policy/kernel/Initializer/mul_1/xConst*(
_class
loc:@default_policy/kernel*
_output_shapes
: *
dtype0*
valueB
 *  ?
Ù
'default_policy/kernel/Initializer/mul_1Mul)default_policy/kernel/Initializer/mul_1/x)default_policy/kernel/Initializer/Reshape*
T0*(
_class
loc:@default_policy/kernel* 
_output_shapes
:
Óè
Ú
default_policy/kernelVarHandleOp*(
_class
loc:@default_policy/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
Óè*&
shared_namedefault_policy/kernel
{
6default_policy/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/kernel*
_output_shapes
: 

default_policy/kernel/AssignAssignVariableOpdefault_policy/kernel'default_policy/kernel/Initializer/mul_1*
dtype0*
validate_shape( 

)default_policy/kernel/Read/ReadVariableOpReadVariableOpdefault_policy/kernel* 
_output_shapes
:
Óè*
dtype0
¨
5default_policy/bias/Initializer/zeros/shape_as_tensorConst*&
_class
loc:@default_policy/bias*
_output_shapes
:*
dtype0*
valueB:è

+default_policy/bias/Initializer/zeros/ConstConst*&
_class
loc:@default_policy/bias*
_output_shapes
: *
dtype0*
valueB
 *    
ñ
%default_policy/bias/Initializer/zerosFill5default_policy/bias/Initializer/zeros/shape_as_tensor+default_policy/bias/Initializer/zeros/Const*
T0*&
_class
loc:@default_policy/bias*
_output_shapes	
:è*

index_type0
Ï
default_policy/biasVarHandleOp*&
_class
loc:@default_policy/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:è*$
shared_namedefault_policy/bias
w
4default_policy/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/bias*
_output_shapes
: 

default_policy/bias/AssignAssignVariableOpdefault_policy/bias%default_policy/bias/Initializer/zeros*
dtype0*
validate_shape( 
x
'default_policy/bias/Read/ReadVariableOpReadVariableOpdefault_policy/bias*
_output_shapes	
:è*
dtype0
´
7default_policy/kernel_1/Initializer/random_normal/shapeConst**
_class 
loc:@default_policy/kernel_1*
_output_shapes
:*
dtype0*
valueB"è  è  
§
6default_policy/kernel_1/Initializer/random_normal/meanConst**
_class 
loc:@default_policy/kernel_1*
_output_shapes
: *
dtype0*
valueB
 *    
©
8default_policy/kernel_1/Initializer/random_normal/stddevConst**
_class 
loc:@default_policy/kernel_1*
_output_shapes
: *
dtype0*
valueB
 *  ?

Fdefault_policy/kernel_1/Initializer/random_normal/RandomStandardNormalRandomStandardNormal7default_policy/kernel_1/Initializer/random_normal/shape*
T0**
_class 
loc:@default_policy/kernel_1* 
_output_shapes
:
èè*
dtype0*

seed *
seed2 

5default_policy/kernel_1/Initializer/random_normal/mulMulFdefault_policy/kernel_1/Initializer/random_normal/RandomStandardNormal8default_policy/kernel_1/Initializer/random_normal/stddev*
T0**
_class 
loc:@default_policy/kernel_1* 
_output_shapes
:
èè

1default_policy/kernel_1/Initializer/random_normalAddV25default_policy/kernel_1/Initializer/random_normal/mul6default_policy/kernel_1/Initializer/random_normal/mean*
T0**
_class 
loc:@default_policy/kernel_1* 
_output_shapes
:
èè
×
&default_policy/kernel_1/Initializer/QrQr1default_policy/kernel_1/Initializer/random_normal*
T0**
_class 
loc:@default_policy/kernel_1*,
_output_shapes
:
èè:
èè*
full_matrices( 
´
,default_policy/kernel_1/Initializer/DiagPartDiagPart(default_policy/kernel_1/Initializer/Qr:1*
T0**
_class 
loc:@default_policy/kernel_1*
_output_shapes	
:è
°
(default_policy/kernel_1/Initializer/SignSign,default_policy/kernel_1/Initializer/DiagPart*
T0**
_class 
loc:@default_policy/kernel_1*
_output_shapes	
:è
×
'default_policy/kernel_1/Initializer/mulMul&default_policy/kernel_1/Initializer/Qr(default_policy/kernel_1/Initializer/Sign*
T0**
_class 
loc:@default_policy/kernel_1* 
_output_shapes
:
èè
®
1default_policy/kernel_1/Initializer/Reshape/shapeConst**
_class 
loc:@default_policy/kernel_1*
_output_shapes
:*
dtype0*
valueB"è  è  
÷
+default_policy/kernel_1/Initializer/ReshapeReshape'default_policy/kernel_1/Initializer/mul1default_policy/kernel_1/Initializer/Reshape/shape*
T0*
Tshape0**
_class 
loc:@default_policy/kernel_1* 
_output_shapes
:
èè

+default_policy/kernel_1/Initializer/mul_1/xConst**
_class 
loc:@default_policy/kernel_1*
_output_shapes
: *
dtype0*
valueB
 *  ?
á
)default_policy/kernel_1/Initializer/mul_1Mul+default_policy/kernel_1/Initializer/mul_1/x+default_policy/kernel_1/Initializer/Reshape*
T0**
_class 
loc:@default_policy/kernel_1* 
_output_shapes
:
èè
à
default_policy/kernel_1VarHandleOp**
_class 
loc:@default_policy/kernel_1*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
èè*(
shared_namedefault_policy/kernel_1

8default_policy/kernel_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/kernel_1*
_output_shapes
: 

default_policy/kernel_1/AssignAssignVariableOpdefault_policy/kernel_1)default_policy/kernel_1/Initializer/mul_1*
dtype0*
validate_shape( 

+default_policy/kernel_1/Read/ReadVariableOpReadVariableOpdefault_policy/kernel_1* 
_output_shapes
:
èè*
dtype0
¬
7default_policy/bias_1/Initializer/zeros/shape_as_tensorConst*(
_class
loc:@default_policy/bias_1*
_output_shapes
:*
dtype0*
valueB:è

-default_policy/bias_1/Initializer/zeros/ConstConst*(
_class
loc:@default_policy/bias_1*
_output_shapes
: *
dtype0*
valueB
 *    
ù
'default_policy/bias_1/Initializer/zerosFill7default_policy/bias_1/Initializer/zeros/shape_as_tensor-default_policy/bias_1/Initializer/zeros/Const*
T0*(
_class
loc:@default_policy/bias_1*
_output_shapes	
:è*

index_type0
Õ
default_policy/bias_1VarHandleOp*(
_class
loc:@default_policy/bias_1*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:è*&
shared_namedefault_policy/bias_1
{
6default_policy/bias_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/bias_1*
_output_shapes
: 

default_policy/bias_1/AssignAssignVariableOpdefault_policy/bias_1'default_policy/bias_1/Initializer/zeros*
dtype0*
validate_shape( 
|
)default_policy/bias_1/Read/ReadVariableOpReadVariableOpdefault_policy/bias_1*
_output_shapes	
:è*
dtype0
´
7default_policy/kernel_2/Initializer/random_normal/shapeConst**
_class 
loc:@default_policy/kernel_2*
_output_shapes
:*
dtype0*
valueB"è  è  
§
6default_policy/kernel_2/Initializer/random_normal/meanConst**
_class 
loc:@default_policy/kernel_2*
_output_shapes
: *
dtype0*
valueB
 *    
©
8default_policy/kernel_2/Initializer/random_normal/stddevConst**
_class 
loc:@default_policy/kernel_2*
_output_shapes
: *
dtype0*
valueB
 *  ?

Fdefault_policy/kernel_2/Initializer/random_normal/RandomStandardNormalRandomStandardNormal7default_policy/kernel_2/Initializer/random_normal/shape*
T0**
_class 
loc:@default_policy/kernel_2* 
_output_shapes
:
èè*
dtype0*

seed *
seed2 

5default_policy/kernel_2/Initializer/random_normal/mulMulFdefault_policy/kernel_2/Initializer/random_normal/RandomStandardNormal8default_policy/kernel_2/Initializer/random_normal/stddev*
T0**
_class 
loc:@default_policy/kernel_2* 
_output_shapes
:
èè

1default_policy/kernel_2/Initializer/random_normalAddV25default_policy/kernel_2/Initializer/random_normal/mul6default_policy/kernel_2/Initializer/random_normal/mean*
T0**
_class 
loc:@default_policy/kernel_2* 
_output_shapes
:
èè
×
&default_policy/kernel_2/Initializer/QrQr1default_policy/kernel_2/Initializer/random_normal*
T0**
_class 
loc:@default_policy/kernel_2*,
_output_shapes
:
èè:
èè*
full_matrices( 
´
,default_policy/kernel_2/Initializer/DiagPartDiagPart(default_policy/kernel_2/Initializer/Qr:1*
T0**
_class 
loc:@default_policy/kernel_2*
_output_shapes	
:è
°
(default_policy/kernel_2/Initializer/SignSign,default_policy/kernel_2/Initializer/DiagPart*
T0**
_class 
loc:@default_policy/kernel_2*
_output_shapes	
:è
×
'default_policy/kernel_2/Initializer/mulMul&default_policy/kernel_2/Initializer/Qr(default_policy/kernel_2/Initializer/Sign*
T0**
_class 
loc:@default_policy/kernel_2* 
_output_shapes
:
èè
®
1default_policy/kernel_2/Initializer/Reshape/shapeConst**
_class 
loc:@default_policy/kernel_2*
_output_shapes
:*
dtype0*
valueB"è  è  
÷
+default_policy/kernel_2/Initializer/ReshapeReshape'default_policy/kernel_2/Initializer/mul1default_policy/kernel_2/Initializer/Reshape/shape*
T0*
Tshape0**
_class 
loc:@default_policy/kernel_2* 
_output_shapes
:
èè

+default_policy/kernel_2/Initializer/mul_1/xConst**
_class 
loc:@default_policy/kernel_2*
_output_shapes
: *
dtype0*
valueB
 *  ?
á
)default_policy/kernel_2/Initializer/mul_1Mul+default_policy/kernel_2/Initializer/mul_1/x+default_policy/kernel_2/Initializer/Reshape*
T0**
_class 
loc:@default_policy/kernel_2* 
_output_shapes
:
èè
à
default_policy/kernel_2VarHandleOp**
_class 
loc:@default_policy/kernel_2*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
èè*(
shared_namedefault_policy/kernel_2

8default_policy/kernel_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/kernel_2*
_output_shapes
: 

default_policy/kernel_2/AssignAssignVariableOpdefault_policy/kernel_2)default_policy/kernel_2/Initializer/mul_1*
dtype0*
validate_shape( 

+default_policy/kernel_2/Read/ReadVariableOpReadVariableOpdefault_policy/kernel_2* 
_output_shapes
:
èè*
dtype0
¬
7default_policy/bias_2/Initializer/zeros/shape_as_tensorConst*(
_class
loc:@default_policy/bias_2*
_output_shapes
:*
dtype0*
valueB:è

-default_policy/bias_2/Initializer/zeros/ConstConst*(
_class
loc:@default_policy/bias_2*
_output_shapes
: *
dtype0*
valueB
 *    
ù
'default_policy/bias_2/Initializer/zerosFill7default_policy/bias_2/Initializer/zeros/shape_as_tensor-default_policy/bias_2/Initializer/zeros/Const*
T0*(
_class
loc:@default_policy/bias_2*
_output_shapes	
:è*

index_type0
Õ
default_policy/bias_2VarHandleOp*(
_class
loc:@default_policy/bias_2*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:è*&
shared_namedefault_policy/bias_2
{
6default_policy/bias_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/bias_2*
_output_shapes
: 

default_policy/bias_2/AssignAssignVariableOpdefault_policy/bias_2'default_policy/bias_2/Initializer/zeros*
dtype0*
validate_shape( 
|
)default_policy/bias_2/Read/ReadVariableOpReadVariableOpdefault_policy/bias_2*
_output_shapes	
:è*
dtype0
´
7default_policy/kernel_3/Initializer/random_normal/shapeConst**
_class 
loc:@default_policy/kernel_3*
_output_shapes
:*
dtype0*
valueB"è  è  
§
6default_policy/kernel_3/Initializer/random_normal/meanConst**
_class 
loc:@default_policy/kernel_3*
_output_shapes
: *
dtype0*
valueB
 *    
©
8default_policy/kernel_3/Initializer/random_normal/stddevConst**
_class 
loc:@default_policy/kernel_3*
_output_shapes
: *
dtype0*
valueB
 *  ?

Fdefault_policy/kernel_3/Initializer/random_normal/RandomStandardNormalRandomStandardNormal7default_policy/kernel_3/Initializer/random_normal/shape*
T0**
_class 
loc:@default_policy/kernel_3* 
_output_shapes
:
èè*
dtype0*

seed *
seed2 

5default_policy/kernel_3/Initializer/random_normal/mulMulFdefault_policy/kernel_3/Initializer/random_normal/RandomStandardNormal8default_policy/kernel_3/Initializer/random_normal/stddev*
T0**
_class 
loc:@default_policy/kernel_3* 
_output_shapes
:
èè

1default_policy/kernel_3/Initializer/random_normalAddV25default_policy/kernel_3/Initializer/random_normal/mul6default_policy/kernel_3/Initializer/random_normal/mean*
T0**
_class 
loc:@default_policy/kernel_3* 
_output_shapes
:
èè
×
&default_policy/kernel_3/Initializer/QrQr1default_policy/kernel_3/Initializer/random_normal*
T0**
_class 
loc:@default_policy/kernel_3*,
_output_shapes
:
èè:
èè*
full_matrices( 
´
,default_policy/kernel_3/Initializer/DiagPartDiagPart(default_policy/kernel_3/Initializer/Qr:1*
T0**
_class 
loc:@default_policy/kernel_3*
_output_shapes	
:è
°
(default_policy/kernel_3/Initializer/SignSign,default_policy/kernel_3/Initializer/DiagPart*
T0**
_class 
loc:@default_policy/kernel_3*
_output_shapes	
:è
×
'default_policy/kernel_3/Initializer/mulMul&default_policy/kernel_3/Initializer/Qr(default_policy/kernel_3/Initializer/Sign*
T0**
_class 
loc:@default_policy/kernel_3* 
_output_shapes
:
èè
®
1default_policy/kernel_3/Initializer/Reshape/shapeConst**
_class 
loc:@default_policy/kernel_3*
_output_shapes
:*
dtype0*
valueB"è  è  
÷
+default_policy/kernel_3/Initializer/ReshapeReshape'default_policy/kernel_3/Initializer/mul1default_policy/kernel_3/Initializer/Reshape/shape*
T0*
Tshape0**
_class 
loc:@default_policy/kernel_3* 
_output_shapes
:
èè

+default_policy/kernel_3/Initializer/mul_1/xConst**
_class 
loc:@default_policy/kernel_3*
_output_shapes
: *
dtype0*
valueB
 *  ?
á
)default_policy/kernel_3/Initializer/mul_1Mul+default_policy/kernel_3/Initializer/mul_1/x+default_policy/kernel_3/Initializer/Reshape*
T0**
_class 
loc:@default_policy/kernel_3* 
_output_shapes
:
èè
à
default_policy/kernel_3VarHandleOp**
_class 
loc:@default_policy/kernel_3*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
èè*(
shared_namedefault_policy/kernel_3

8default_policy/kernel_3/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/kernel_3*
_output_shapes
: 

default_policy/kernel_3/AssignAssignVariableOpdefault_policy/kernel_3)default_policy/kernel_3/Initializer/mul_1*
dtype0*
validate_shape( 

+default_policy/kernel_3/Read/ReadVariableOpReadVariableOpdefault_policy/kernel_3* 
_output_shapes
:
èè*
dtype0
¬
7default_policy/bias_3/Initializer/zeros/shape_as_tensorConst*(
_class
loc:@default_policy/bias_3*
_output_shapes
:*
dtype0*
valueB:è

-default_policy/bias_3/Initializer/zeros/ConstConst*(
_class
loc:@default_policy/bias_3*
_output_shapes
: *
dtype0*
valueB
 *    
ù
'default_policy/bias_3/Initializer/zerosFill7default_policy/bias_3/Initializer/zeros/shape_as_tensor-default_policy/bias_3/Initializer/zeros/Const*
T0*(
_class
loc:@default_policy/bias_3*
_output_shapes	
:è*

index_type0
Õ
default_policy/bias_3VarHandleOp*(
_class
loc:@default_policy/bias_3*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:è*&
shared_namedefault_policy/bias_3
{
6default_policy/bias_3/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/bias_3*
_output_shapes
: 

default_policy/bias_3/AssignAssignVariableOpdefault_policy/bias_3'default_policy/bias_3/Initializer/zeros*
dtype0*
validate_shape( 
|
)default_policy/bias_3/Read/ReadVariableOpReadVariableOpdefault_policy/bias_3*
_output_shapes	
:è*
dtype0
µ
8default_policy/kernel_4/Initializer/random_uniform/shapeConst**
_class 
loc:@default_policy/kernel_4*
_output_shapes
:*
dtype0*
valueB"è  }   
§
6default_policy/kernel_4/Initializer/random_uniform/minConst**
_class 
loc:@default_policy/kernel_4*
_output_shapes
: *
dtype0*
valueB
 *½
§
6default_policy/kernel_4/Initializer/random_uniform/maxConst**
_class 
loc:@default_policy/kernel_4*
_output_shapes
: *
dtype0*
valueB
 *=

@default_policy/kernel_4/Initializer/random_uniform/RandomUniformRandomUniform8default_policy/kernel_4/Initializer/random_uniform/shape*
T0**
_class 
loc:@default_policy/kernel_4*
_output_shapes
:	è}*
dtype0*

seed *
seed2 
ú
6default_policy/kernel_4/Initializer/random_uniform/subSub6default_policy/kernel_4/Initializer/random_uniform/max6default_policy/kernel_4/Initializer/random_uniform/min*
T0**
_class 
loc:@default_policy/kernel_4*
_output_shapes
: 

6default_policy/kernel_4/Initializer/random_uniform/mulMul@default_policy/kernel_4/Initializer/random_uniform/RandomUniform6default_policy/kernel_4/Initializer/random_uniform/sub*
T0**
_class 
loc:@default_policy/kernel_4*
_output_shapes
:	è}

2default_policy/kernel_4/Initializer/random_uniformAddV26default_policy/kernel_4/Initializer/random_uniform/mul6default_policy/kernel_4/Initializer/random_uniform/min*
T0**
_class 
loc:@default_policy/kernel_4*
_output_shapes
:	è}
ß
default_policy/kernel_4VarHandleOp**
_class 
loc:@default_policy/kernel_4*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:	è}*(
shared_namedefault_policy/kernel_4

8default_policy/kernel_4/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/kernel_4*
_output_shapes
: 
¢
default_policy/kernel_4/AssignAssignVariableOpdefault_policy/kernel_42default_policy/kernel_4/Initializer/random_uniform*
dtype0*
validate_shape( 

+default_policy/kernel_4/Read/ReadVariableOpReadVariableOpdefault_policy/kernel_4*
_output_shapes
:	è}*
dtype0

'default_policy/bias_4/Initializer/zerosConst*(
_class
loc:@default_policy/bias_4*
_output_shapes
:}*
dtype0*
valueB}*    
Ô
default_policy/bias_4VarHandleOp*(
_class
loc:@default_policy/bias_4*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:}*&
shared_namedefault_policy/bias_4
{
6default_policy/bias_4/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/bias_4*
_output_shapes
: 

default_policy/bias_4/AssignAssignVariableOpdefault_policy/bias_4'default_policy/bias_4/Initializer/zeros*
dtype0*
validate_shape( 
{
)default_policy/bias_4/Read/ReadVariableOpReadVariableOpdefault_policy/bias_4*
_output_shapes
:}*
dtype0

&default_policy/total/Initializer/zerosConst*'
_class
loc:@default_policy/total*
_output_shapes
: *
dtype0*
valueB
 *    
Í
default_policy/totalVarHandleOp*'
_class
loc:@default_policy/total*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *%
shared_namedefault_policy/total
y
5default_policy/total/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/total*
_output_shapes
: 

default_policy/total/AssignAssignVariableOpdefault_policy/total&default_policy/total/Initializer/zeros*
dtype0*
validate_shape( 
u
(default_policy/total/Read/ReadVariableOpReadVariableOpdefault_policy/total*
_output_shapes
: *
dtype0

&default_policy/count/Initializer/zerosConst*'
_class
loc:@default_policy/count*
_output_shapes
: *
dtype0*
valueB
 *    
Í
default_policy/countVarHandleOp*'
_class
loc:@default_policy/count*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *%
shared_namedefault_policy/count
y
5default_policy/count/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/count*
_output_shapes
: 

default_policy/count/AssignAssignVariableOpdefault_policy/count&default_policy/count/Initializer/zeros*
dtype0*
validate_shape( 
u
(default_policy/count/Read/ReadVariableOpReadVariableOpdefault_policy/count*
_output_shapes
: *
dtype0

(default_policy/total_1/Initializer/zerosConst*)
_class
loc:@default_policy/total_1*
_output_shapes
: *
dtype0*
valueB
 *    
Ó
default_policy/total_1VarHandleOp*)
_class
loc:@default_policy/total_1*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *'
shared_namedefault_policy/total_1
}
7default_policy/total_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/total_1*
_output_shapes
: 

default_policy/total_1/AssignAssignVariableOpdefault_policy/total_1(default_policy/total_1/Initializer/zeros*
dtype0*
validate_shape( 
y
*default_policy/total_1/Read/ReadVariableOpReadVariableOpdefault_policy/total_1*
_output_shapes
: *
dtype0

(default_policy/count_1/Initializer/zerosConst*)
_class
loc:@default_policy/count_1*
_output_shapes
: *
dtype0*
valueB
 *    
Ó
default_policy/count_1VarHandleOp*)
_class
loc:@default_policy/count_1*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *'
shared_namedefault_policy/count_1
}
7default_policy/count_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/count_1*
_output_shapes
: 

default_policy/count_1/AssignAssignVariableOpdefault_policy/count_1(default_policy/count_1/Initializer/zeros*
dtype0*
validate_shape( 
y
*default_policy/count_1/Read/ReadVariableOpReadVariableOpdefault_policy/count_1*
_output_shapes
: *
dtype0
º
?default_policy/dense/kernel/m/Initializer/zeros/shape_as_tensorConst*(
_class
loc:@default_policy/kernel*
_output_shapes
:*
dtype0*
valueB"Ó  è  
¤
5default_policy/dense/kernel/m/Initializer/zeros/ConstConst*(
_class
loc:@default_policy/kernel*
_output_shapes
: *
dtype0*
valueB
 *    

/default_policy/dense/kernel/m/Initializer/zerosFill?default_policy/dense/kernel/m/Initializer/zeros/shape_as_tensor5default_policy/dense/kernel/m/Initializer/zeros/Const*
T0*(
_class
loc:@default_policy/kernel* 
_output_shapes
:
Óè*

index_type0
ê
default_policy/dense/kernel/mVarHandleOp*(
_class
loc:@default_policy/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
Óè*.
shared_namedefault_policy/dense/kernel/m
µ
>default_policy/dense/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/dense/kernel/m*(
_class
loc:@default_policy/kernel*
_output_shapes
: 
«
$default_policy/dense/kernel/m/AssignAssignVariableOpdefault_policy/dense/kernel/m/default_policy/dense/kernel/m/Initializer/zeros*
dtype0*
validate_shape( 
»
1default_policy/dense/kernel/m/Read/ReadVariableOpReadVariableOpdefault_policy/dense/kernel/m*(
_class
loc:@default_policy/kernel* 
_output_shapes
:
Óè*
dtype0
°
=default_policy/dense/bias/m/Initializer/zeros/shape_as_tensorConst*&
_class
loc:@default_policy/bias*
_output_shapes
:*
dtype0*
valueB:è
 
3default_policy/dense/bias/m/Initializer/zeros/ConstConst*&
_class
loc:@default_policy/bias*
_output_shapes
: *
dtype0*
valueB
 *    

-default_policy/dense/bias/m/Initializer/zerosFill=default_policy/dense/bias/m/Initializer/zeros/shape_as_tensor3default_policy/dense/bias/m/Initializer/zeros/Const*
T0*&
_class
loc:@default_policy/bias*
_output_shapes	
:è*

index_type0
ß
default_policy/dense/bias/mVarHandleOp*&
_class
loc:@default_policy/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:è*,
shared_namedefault_policy/dense/bias/m
¯
<default_policy/dense/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/dense/bias/m*&
_class
loc:@default_policy/bias*
_output_shapes
: 
¥
"default_policy/dense/bias/m/AssignAssignVariableOpdefault_policy/dense/bias/m-default_policy/dense/bias/m/Initializer/zeros*
dtype0*
validate_shape( 
°
/default_policy/dense/bias/m/Read/ReadVariableOpReadVariableOpdefault_policy/dense/bias/m*&
_class
loc:@default_policy/bias*
_output_shapes	
:è*
dtype0
¾
Adefault_policy/dense_1/kernel/m/Initializer/zeros/shape_as_tensorConst**
_class 
loc:@default_policy/kernel_1*
_output_shapes
:*
dtype0*
valueB"è  è  
¨
7default_policy/dense_1/kernel/m/Initializer/zeros/ConstConst**
_class 
loc:@default_policy/kernel_1*
_output_shapes
: *
dtype0*
valueB
 *    

1default_policy/dense_1/kernel/m/Initializer/zerosFillAdefault_policy/dense_1/kernel/m/Initializer/zeros/shape_as_tensor7default_policy/dense_1/kernel/m/Initializer/zeros/Const*
T0**
_class 
loc:@default_policy/kernel_1* 
_output_shapes
:
èè*

index_type0
ð
default_policy/dense_1/kernel/mVarHandleOp**
_class 
loc:@default_policy/kernel_1*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
èè*0
shared_name!default_policy/dense_1/kernel/m
»
@default_policy/dense_1/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/dense_1/kernel/m**
_class 
loc:@default_policy/kernel_1*
_output_shapes
: 
±
&default_policy/dense_1/kernel/m/AssignAssignVariableOpdefault_policy/dense_1/kernel/m1default_policy/dense_1/kernel/m/Initializer/zeros*
dtype0*
validate_shape( 
Á
3default_policy/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpdefault_policy/dense_1/kernel/m**
_class 
loc:@default_policy/kernel_1* 
_output_shapes
:
èè*
dtype0
´
?default_policy/dense_1/bias/m/Initializer/zeros/shape_as_tensorConst*(
_class
loc:@default_policy/bias_1*
_output_shapes
:*
dtype0*
valueB:è
¤
5default_policy/dense_1/bias/m/Initializer/zeros/ConstConst*(
_class
loc:@default_policy/bias_1*
_output_shapes
: *
dtype0*
valueB
 *    

/default_policy/dense_1/bias/m/Initializer/zerosFill?default_policy/dense_1/bias/m/Initializer/zeros/shape_as_tensor5default_policy/dense_1/bias/m/Initializer/zeros/Const*
T0*(
_class
loc:@default_policy/bias_1*
_output_shapes	
:è*

index_type0
å
default_policy/dense_1/bias/mVarHandleOp*(
_class
loc:@default_policy/bias_1*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:è*.
shared_namedefault_policy/dense_1/bias/m
µ
>default_policy/dense_1/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/dense_1/bias/m*(
_class
loc:@default_policy/bias_1*
_output_shapes
: 
«
$default_policy/dense_1/bias/m/AssignAssignVariableOpdefault_policy/dense_1/bias/m/default_policy/dense_1/bias/m/Initializer/zeros*
dtype0*
validate_shape( 
¶
1default_policy/dense_1/bias/m/Read/ReadVariableOpReadVariableOpdefault_policy/dense_1/bias/m*(
_class
loc:@default_policy/bias_1*
_output_shapes	
:è*
dtype0
¾
Adefault_policy/dense_2/kernel/m/Initializer/zeros/shape_as_tensorConst**
_class 
loc:@default_policy/kernel_2*
_output_shapes
:*
dtype0*
valueB"è  è  
¨
7default_policy/dense_2/kernel/m/Initializer/zeros/ConstConst**
_class 
loc:@default_policy/kernel_2*
_output_shapes
: *
dtype0*
valueB
 *    

1default_policy/dense_2/kernel/m/Initializer/zerosFillAdefault_policy/dense_2/kernel/m/Initializer/zeros/shape_as_tensor7default_policy/dense_2/kernel/m/Initializer/zeros/Const*
T0**
_class 
loc:@default_policy/kernel_2* 
_output_shapes
:
èè*

index_type0
ð
default_policy/dense_2/kernel/mVarHandleOp**
_class 
loc:@default_policy/kernel_2*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
èè*0
shared_name!default_policy/dense_2/kernel/m
»
@default_policy/dense_2/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/dense_2/kernel/m**
_class 
loc:@default_policy/kernel_2*
_output_shapes
: 
±
&default_policy/dense_2/kernel/m/AssignAssignVariableOpdefault_policy/dense_2/kernel/m1default_policy/dense_2/kernel/m/Initializer/zeros*
dtype0*
validate_shape( 
Á
3default_policy/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpdefault_policy/dense_2/kernel/m**
_class 
loc:@default_policy/kernel_2* 
_output_shapes
:
èè*
dtype0
´
?default_policy/dense_2/bias/m/Initializer/zeros/shape_as_tensorConst*(
_class
loc:@default_policy/bias_2*
_output_shapes
:*
dtype0*
valueB:è
¤
5default_policy/dense_2/bias/m/Initializer/zeros/ConstConst*(
_class
loc:@default_policy/bias_2*
_output_shapes
: *
dtype0*
valueB
 *    

/default_policy/dense_2/bias/m/Initializer/zerosFill?default_policy/dense_2/bias/m/Initializer/zeros/shape_as_tensor5default_policy/dense_2/bias/m/Initializer/zeros/Const*
T0*(
_class
loc:@default_policy/bias_2*
_output_shapes	
:è*

index_type0
å
default_policy/dense_2/bias/mVarHandleOp*(
_class
loc:@default_policy/bias_2*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:è*.
shared_namedefault_policy/dense_2/bias/m
µ
>default_policy/dense_2/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/dense_2/bias/m*(
_class
loc:@default_policy/bias_2*
_output_shapes
: 
«
$default_policy/dense_2/bias/m/AssignAssignVariableOpdefault_policy/dense_2/bias/m/default_policy/dense_2/bias/m/Initializer/zeros*
dtype0*
validate_shape( 
¶
1default_policy/dense_2/bias/m/Read/ReadVariableOpReadVariableOpdefault_policy/dense_2/bias/m*(
_class
loc:@default_policy/bias_2*
_output_shapes	
:è*
dtype0
¾
Adefault_policy/dense_3/kernel/m/Initializer/zeros/shape_as_tensorConst**
_class 
loc:@default_policy/kernel_3*
_output_shapes
:*
dtype0*
valueB"è  è  
¨
7default_policy/dense_3/kernel/m/Initializer/zeros/ConstConst**
_class 
loc:@default_policy/kernel_3*
_output_shapes
: *
dtype0*
valueB
 *    

1default_policy/dense_3/kernel/m/Initializer/zerosFillAdefault_policy/dense_3/kernel/m/Initializer/zeros/shape_as_tensor7default_policy/dense_3/kernel/m/Initializer/zeros/Const*
T0**
_class 
loc:@default_policy/kernel_3* 
_output_shapes
:
èè*

index_type0
ð
default_policy/dense_3/kernel/mVarHandleOp**
_class 
loc:@default_policy/kernel_3*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
èè*0
shared_name!default_policy/dense_3/kernel/m
»
@default_policy/dense_3/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/dense_3/kernel/m**
_class 
loc:@default_policy/kernel_3*
_output_shapes
: 
±
&default_policy/dense_3/kernel/m/AssignAssignVariableOpdefault_policy/dense_3/kernel/m1default_policy/dense_3/kernel/m/Initializer/zeros*
dtype0*
validate_shape( 
Á
3default_policy/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpdefault_policy/dense_3/kernel/m**
_class 
loc:@default_policy/kernel_3* 
_output_shapes
:
èè*
dtype0
´
?default_policy/dense_3/bias/m/Initializer/zeros/shape_as_tensorConst*(
_class
loc:@default_policy/bias_3*
_output_shapes
:*
dtype0*
valueB:è
¤
5default_policy/dense_3/bias/m/Initializer/zeros/ConstConst*(
_class
loc:@default_policy/bias_3*
_output_shapes
: *
dtype0*
valueB
 *    

/default_policy/dense_3/bias/m/Initializer/zerosFill?default_policy/dense_3/bias/m/Initializer/zeros/shape_as_tensor5default_policy/dense_3/bias/m/Initializer/zeros/Const*
T0*(
_class
loc:@default_policy/bias_3*
_output_shapes	
:è*

index_type0
å
default_policy/dense_3/bias/mVarHandleOp*(
_class
loc:@default_policy/bias_3*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:è*.
shared_namedefault_policy/dense_3/bias/m
µ
>default_policy/dense_3/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/dense_3/bias/m*(
_class
loc:@default_policy/bias_3*
_output_shapes
: 
«
$default_policy/dense_3/bias/m/AssignAssignVariableOpdefault_policy/dense_3/bias/m/default_policy/dense_3/bias/m/Initializer/zeros*
dtype0*
validate_shape( 
¶
1default_policy/dense_3/bias/m/Read/ReadVariableOpReadVariableOpdefault_policy/dense_3/bias/m*(
_class
loc:@default_policy/bias_3*
_output_shapes	
:è*
dtype0
¾
Adefault_policy/dense_4/kernel/m/Initializer/zeros/shape_as_tensorConst**
_class 
loc:@default_policy/kernel_4*
_output_shapes
:*
dtype0*
valueB"è  }   
¨
7default_policy/dense_4/kernel/m/Initializer/zeros/ConstConst**
_class 
loc:@default_policy/kernel_4*
_output_shapes
: *
dtype0*
valueB
 *    

1default_policy/dense_4/kernel/m/Initializer/zerosFillAdefault_policy/dense_4/kernel/m/Initializer/zeros/shape_as_tensor7default_policy/dense_4/kernel/m/Initializer/zeros/Const*
T0**
_class 
loc:@default_policy/kernel_4*
_output_shapes
:	è}*

index_type0
ï
default_policy/dense_4/kernel/mVarHandleOp**
_class 
loc:@default_policy/kernel_4*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:	è}*0
shared_name!default_policy/dense_4/kernel/m
»
@default_policy/dense_4/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/dense_4/kernel/m**
_class 
loc:@default_policy/kernel_4*
_output_shapes
: 
±
&default_policy/dense_4/kernel/m/AssignAssignVariableOpdefault_policy/dense_4/kernel/m1default_policy/dense_4/kernel/m/Initializer/zeros*
dtype0*
validate_shape( 
À
3default_policy/dense_4/kernel/m/Read/ReadVariableOpReadVariableOpdefault_policy/dense_4/kernel/m**
_class 
loc:@default_policy/kernel_4*
_output_shapes
:	è}*
dtype0
¦
/default_policy/dense_4/bias/m/Initializer/zerosConst*(
_class
loc:@default_policy/bias_4*
_output_shapes
:}*
dtype0*
valueB}*    
ä
default_policy/dense_4/bias/mVarHandleOp*(
_class
loc:@default_policy/bias_4*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:}*.
shared_namedefault_policy/dense_4/bias/m
µ
>default_policy/dense_4/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/dense_4/bias/m*(
_class
loc:@default_policy/bias_4*
_output_shapes
: 
«
$default_policy/dense_4/bias/m/AssignAssignVariableOpdefault_policy/dense_4/bias/m/default_policy/dense_4/bias/m/Initializer/zeros*
dtype0*
validate_shape( 
µ
1default_policy/dense_4/bias/m/Read/ReadVariableOpReadVariableOpdefault_policy/dense_4/bias/m*(
_class
loc:@default_policy/bias_4*
_output_shapes
:}*
dtype0
º
?default_policy/dense/kernel/v/Initializer/zeros/shape_as_tensorConst*(
_class
loc:@default_policy/kernel*
_output_shapes
:*
dtype0*
valueB"Ó  è  
¤
5default_policy/dense/kernel/v/Initializer/zeros/ConstConst*(
_class
loc:@default_policy/kernel*
_output_shapes
: *
dtype0*
valueB
 *    

/default_policy/dense/kernel/v/Initializer/zerosFill?default_policy/dense/kernel/v/Initializer/zeros/shape_as_tensor5default_policy/dense/kernel/v/Initializer/zeros/Const*
T0*(
_class
loc:@default_policy/kernel* 
_output_shapes
:
Óè*

index_type0
ê
default_policy/dense/kernel/vVarHandleOp*(
_class
loc:@default_policy/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
Óè*.
shared_namedefault_policy/dense/kernel/v
µ
>default_policy/dense/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/dense/kernel/v*(
_class
loc:@default_policy/kernel*
_output_shapes
: 
«
$default_policy/dense/kernel/v/AssignAssignVariableOpdefault_policy/dense/kernel/v/default_policy/dense/kernel/v/Initializer/zeros*
dtype0*
validate_shape( 
»
1default_policy/dense/kernel/v/Read/ReadVariableOpReadVariableOpdefault_policy/dense/kernel/v*(
_class
loc:@default_policy/kernel* 
_output_shapes
:
Óè*
dtype0
°
=default_policy/dense/bias/v/Initializer/zeros/shape_as_tensorConst*&
_class
loc:@default_policy/bias*
_output_shapes
:*
dtype0*
valueB:è
 
3default_policy/dense/bias/v/Initializer/zeros/ConstConst*&
_class
loc:@default_policy/bias*
_output_shapes
: *
dtype0*
valueB
 *    

-default_policy/dense/bias/v/Initializer/zerosFill=default_policy/dense/bias/v/Initializer/zeros/shape_as_tensor3default_policy/dense/bias/v/Initializer/zeros/Const*
T0*&
_class
loc:@default_policy/bias*
_output_shapes	
:è*

index_type0
ß
default_policy/dense/bias/vVarHandleOp*&
_class
loc:@default_policy/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:è*,
shared_namedefault_policy/dense/bias/v
¯
<default_policy/dense/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/dense/bias/v*&
_class
loc:@default_policy/bias*
_output_shapes
: 
¥
"default_policy/dense/bias/v/AssignAssignVariableOpdefault_policy/dense/bias/v-default_policy/dense/bias/v/Initializer/zeros*
dtype0*
validate_shape( 
°
/default_policy/dense/bias/v/Read/ReadVariableOpReadVariableOpdefault_policy/dense/bias/v*&
_class
loc:@default_policy/bias*
_output_shapes	
:è*
dtype0
¾
Adefault_policy/dense_1/kernel/v/Initializer/zeros/shape_as_tensorConst**
_class 
loc:@default_policy/kernel_1*
_output_shapes
:*
dtype0*
valueB"è  è  
¨
7default_policy/dense_1/kernel/v/Initializer/zeros/ConstConst**
_class 
loc:@default_policy/kernel_1*
_output_shapes
: *
dtype0*
valueB
 *    

1default_policy/dense_1/kernel/v/Initializer/zerosFillAdefault_policy/dense_1/kernel/v/Initializer/zeros/shape_as_tensor7default_policy/dense_1/kernel/v/Initializer/zeros/Const*
T0**
_class 
loc:@default_policy/kernel_1* 
_output_shapes
:
èè*

index_type0
ð
default_policy/dense_1/kernel/vVarHandleOp**
_class 
loc:@default_policy/kernel_1*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
èè*0
shared_name!default_policy/dense_1/kernel/v
»
@default_policy/dense_1/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/dense_1/kernel/v**
_class 
loc:@default_policy/kernel_1*
_output_shapes
: 
±
&default_policy/dense_1/kernel/v/AssignAssignVariableOpdefault_policy/dense_1/kernel/v1default_policy/dense_1/kernel/v/Initializer/zeros*
dtype0*
validate_shape( 
Á
3default_policy/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpdefault_policy/dense_1/kernel/v**
_class 
loc:@default_policy/kernel_1* 
_output_shapes
:
èè*
dtype0
´
?default_policy/dense_1/bias/v/Initializer/zeros/shape_as_tensorConst*(
_class
loc:@default_policy/bias_1*
_output_shapes
:*
dtype0*
valueB:è
¤
5default_policy/dense_1/bias/v/Initializer/zeros/ConstConst*(
_class
loc:@default_policy/bias_1*
_output_shapes
: *
dtype0*
valueB
 *    

/default_policy/dense_1/bias/v/Initializer/zerosFill?default_policy/dense_1/bias/v/Initializer/zeros/shape_as_tensor5default_policy/dense_1/bias/v/Initializer/zeros/Const*
T0*(
_class
loc:@default_policy/bias_1*
_output_shapes	
:è*

index_type0
å
default_policy/dense_1/bias/vVarHandleOp*(
_class
loc:@default_policy/bias_1*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:è*.
shared_namedefault_policy/dense_1/bias/v
µ
>default_policy/dense_1/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/dense_1/bias/v*(
_class
loc:@default_policy/bias_1*
_output_shapes
: 
«
$default_policy/dense_1/bias/v/AssignAssignVariableOpdefault_policy/dense_1/bias/v/default_policy/dense_1/bias/v/Initializer/zeros*
dtype0*
validate_shape( 
¶
1default_policy/dense_1/bias/v/Read/ReadVariableOpReadVariableOpdefault_policy/dense_1/bias/v*(
_class
loc:@default_policy/bias_1*
_output_shapes	
:è*
dtype0
¾
Adefault_policy/dense_2/kernel/v/Initializer/zeros/shape_as_tensorConst**
_class 
loc:@default_policy/kernel_2*
_output_shapes
:*
dtype0*
valueB"è  è  
¨
7default_policy/dense_2/kernel/v/Initializer/zeros/ConstConst**
_class 
loc:@default_policy/kernel_2*
_output_shapes
: *
dtype0*
valueB
 *    

1default_policy/dense_2/kernel/v/Initializer/zerosFillAdefault_policy/dense_2/kernel/v/Initializer/zeros/shape_as_tensor7default_policy/dense_2/kernel/v/Initializer/zeros/Const*
T0**
_class 
loc:@default_policy/kernel_2* 
_output_shapes
:
èè*

index_type0
ð
default_policy/dense_2/kernel/vVarHandleOp**
_class 
loc:@default_policy/kernel_2*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
èè*0
shared_name!default_policy/dense_2/kernel/v
»
@default_policy/dense_2/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/dense_2/kernel/v**
_class 
loc:@default_policy/kernel_2*
_output_shapes
: 
±
&default_policy/dense_2/kernel/v/AssignAssignVariableOpdefault_policy/dense_2/kernel/v1default_policy/dense_2/kernel/v/Initializer/zeros*
dtype0*
validate_shape( 
Á
3default_policy/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpdefault_policy/dense_2/kernel/v**
_class 
loc:@default_policy/kernel_2* 
_output_shapes
:
èè*
dtype0
´
?default_policy/dense_2/bias/v/Initializer/zeros/shape_as_tensorConst*(
_class
loc:@default_policy/bias_2*
_output_shapes
:*
dtype0*
valueB:è
¤
5default_policy/dense_2/bias/v/Initializer/zeros/ConstConst*(
_class
loc:@default_policy/bias_2*
_output_shapes
: *
dtype0*
valueB
 *    

/default_policy/dense_2/bias/v/Initializer/zerosFill?default_policy/dense_2/bias/v/Initializer/zeros/shape_as_tensor5default_policy/dense_2/bias/v/Initializer/zeros/Const*
T0*(
_class
loc:@default_policy/bias_2*
_output_shapes	
:è*

index_type0
å
default_policy/dense_2/bias/vVarHandleOp*(
_class
loc:@default_policy/bias_2*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:è*.
shared_namedefault_policy/dense_2/bias/v
µ
>default_policy/dense_2/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/dense_2/bias/v*(
_class
loc:@default_policy/bias_2*
_output_shapes
: 
«
$default_policy/dense_2/bias/v/AssignAssignVariableOpdefault_policy/dense_2/bias/v/default_policy/dense_2/bias/v/Initializer/zeros*
dtype0*
validate_shape( 
¶
1default_policy/dense_2/bias/v/Read/ReadVariableOpReadVariableOpdefault_policy/dense_2/bias/v*(
_class
loc:@default_policy/bias_2*
_output_shapes	
:è*
dtype0
¾
Adefault_policy/dense_3/kernel/v/Initializer/zeros/shape_as_tensorConst**
_class 
loc:@default_policy/kernel_3*
_output_shapes
:*
dtype0*
valueB"è  è  
¨
7default_policy/dense_3/kernel/v/Initializer/zeros/ConstConst**
_class 
loc:@default_policy/kernel_3*
_output_shapes
: *
dtype0*
valueB
 *    

1default_policy/dense_3/kernel/v/Initializer/zerosFillAdefault_policy/dense_3/kernel/v/Initializer/zeros/shape_as_tensor7default_policy/dense_3/kernel/v/Initializer/zeros/Const*
T0**
_class 
loc:@default_policy/kernel_3* 
_output_shapes
:
èè*

index_type0
ð
default_policy/dense_3/kernel/vVarHandleOp**
_class 
loc:@default_policy/kernel_3*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
èè*0
shared_name!default_policy/dense_3/kernel/v
»
@default_policy/dense_3/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/dense_3/kernel/v**
_class 
loc:@default_policy/kernel_3*
_output_shapes
: 
±
&default_policy/dense_3/kernel/v/AssignAssignVariableOpdefault_policy/dense_3/kernel/v1default_policy/dense_3/kernel/v/Initializer/zeros*
dtype0*
validate_shape( 
Á
3default_policy/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpdefault_policy/dense_3/kernel/v**
_class 
loc:@default_policy/kernel_3* 
_output_shapes
:
èè*
dtype0
´
?default_policy/dense_3/bias/v/Initializer/zeros/shape_as_tensorConst*(
_class
loc:@default_policy/bias_3*
_output_shapes
:*
dtype0*
valueB:è
¤
5default_policy/dense_3/bias/v/Initializer/zeros/ConstConst*(
_class
loc:@default_policy/bias_3*
_output_shapes
: *
dtype0*
valueB
 *    

/default_policy/dense_3/bias/v/Initializer/zerosFill?default_policy/dense_3/bias/v/Initializer/zeros/shape_as_tensor5default_policy/dense_3/bias/v/Initializer/zeros/Const*
T0*(
_class
loc:@default_policy/bias_3*
_output_shapes	
:è*

index_type0
å
default_policy/dense_3/bias/vVarHandleOp*(
_class
loc:@default_policy/bias_3*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:è*.
shared_namedefault_policy/dense_3/bias/v
µ
>default_policy/dense_3/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/dense_3/bias/v*(
_class
loc:@default_policy/bias_3*
_output_shapes
: 
«
$default_policy/dense_3/bias/v/AssignAssignVariableOpdefault_policy/dense_3/bias/v/default_policy/dense_3/bias/v/Initializer/zeros*
dtype0*
validate_shape( 
¶
1default_policy/dense_3/bias/v/Read/ReadVariableOpReadVariableOpdefault_policy/dense_3/bias/v*(
_class
loc:@default_policy/bias_3*
_output_shapes	
:è*
dtype0
¾
Adefault_policy/dense_4/kernel/v/Initializer/zeros/shape_as_tensorConst**
_class 
loc:@default_policy/kernel_4*
_output_shapes
:*
dtype0*
valueB"è  }   
¨
7default_policy/dense_4/kernel/v/Initializer/zeros/ConstConst**
_class 
loc:@default_policy/kernel_4*
_output_shapes
: *
dtype0*
valueB
 *    

1default_policy/dense_4/kernel/v/Initializer/zerosFillAdefault_policy/dense_4/kernel/v/Initializer/zeros/shape_as_tensor7default_policy/dense_4/kernel/v/Initializer/zeros/Const*
T0**
_class 
loc:@default_policy/kernel_4*
_output_shapes
:	è}*

index_type0
ï
default_policy/dense_4/kernel/vVarHandleOp**
_class 
loc:@default_policy/kernel_4*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:	è}*0
shared_name!default_policy/dense_4/kernel/v
»
@default_policy/dense_4/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/dense_4/kernel/v**
_class 
loc:@default_policy/kernel_4*
_output_shapes
: 
±
&default_policy/dense_4/kernel/v/AssignAssignVariableOpdefault_policy/dense_4/kernel/v1default_policy/dense_4/kernel/v/Initializer/zeros*
dtype0*
validate_shape( 
À
3default_policy/dense_4/kernel/v/Read/ReadVariableOpReadVariableOpdefault_policy/dense_4/kernel/v**
_class 
loc:@default_policy/kernel_4*
_output_shapes
:	è}*
dtype0
®
default_policy/Adam/decayVarHandleOp*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: **
shared_namedefault_policy/Adam/decay

-default_policy/Adam/decay/Read/ReadVariableOpReadVariableOpdefault_policy/Adam/decay*
_output_shapes
: *
dtype0
°
default_policy/Adam/beta_2VarHandleOp*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *+
shared_namedefault_policy/Adam/beta_2

.default_policy/Adam/beta_2/Read/ReadVariableOpReadVariableOpdefault_policy/Adam/beta_2*
_output_shapes
: *
dtype0
°
default_policy/Adam/beta_1VarHandleOp*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *+
shared_namedefault_policy/Adam/beta_1

.default_policy/Adam/beta_1/Read/ReadVariableOpReadVariableOpdefault_policy/Adam/beta_1*
_output_shapes
: *
dtype0
¬
default_policy/Adam/iterVarHandleOp*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0	*
shape: *)
shared_namedefault_policy/Adam/iter
}
,default_policy/Adam/iter/Read/ReadVariableOpReadVariableOpdefault_policy/Adam/iter*
_output_shapes
: *
dtype0	
¦
/default_policy/dense_4/bias/v/Initializer/zerosConst*(
_class
loc:@default_policy/bias_4*
_output_shapes
:}*
dtype0*
valueB}*    
ä
default_policy/dense_4/bias/vVarHandleOp*(
_class
loc:@default_policy/bias_4*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:}*.
shared_namedefault_policy/dense_4/bias/v
µ
>default_policy/dense_4/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/dense_4/bias/v*(
_class
loc:@default_policy/bias_4*
_output_shapes
: 
«
$default_policy/dense_4/bias/v/AssignAssignVariableOpdefault_policy/dense_4/bias/v/default_policy/dense_4/bias/v/Initializer/zeros*
dtype0*
validate_shape( 
µ
1default_policy/dense_4/bias/v/Read/ReadVariableOpReadVariableOpdefault_policy/dense_4/bias/v*(
_class
loc:@default_policy/bias_4*
_output_shapes
:}*
dtype0
Ø
default_policy/ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
value{By Bs/home/mlehna/AI2Go/l2rpn_binbinchen_iee/curriculumagent_train_l2rpn_case14_sandbox_first/junior/variables/variables
©
%default_policy/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*À
value¶B³&B4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
Ë
)default_policy/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*_
valueVBT&B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 

default_policy/RestoreV2	RestoreV2default_policy/Const%default_policy/RestoreV2/tensor_names)default_policy/RestoreV2/shape_and_slices"/device:CPU:0*®
_output_shapes
::::::::::::::::::::::::::::::::::::::*4
dtypes*
(2&	
o
default_policy/IdentityIdentitydefault_policy/RestoreV2"/device:CPU:0*
T0*
_output_shapes
:

default_policy/AssignVariableOpAssignVariableOpdefault_policy/countdefault_policy/Identity"/device:CPU:0*
dtype0*
validate_shape( 
s
default_policy/Identity_1Identitydefault_policy/RestoreV2:1"/device:CPU:0*
T0*
_output_shapes
:

!default_policy/AssignVariableOp_1AssignVariableOpdefault_policy/totaldefault_policy/Identity_1"/device:CPU:0*
dtype0*
validate_shape( 
s
default_policy/Identity_2Identitydefault_policy/RestoreV2:2"/device:CPU:0*
T0*
_output_shapes
:

!default_policy/AssignVariableOp_2AssignVariableOpdefault_policy/count_1default_policy/Identity_2"/device:CPU:0*
dtype0*
validate_shape( 
s
default_policy/Identity_3Identitydefault_policy/RestoreV2:3"/device:CPU:0*
T0*
_output_shapes
:

!default_policy/AssignVariableOp_3AssignVariableOpdefault_policy/total_1default_policy/Identity_3"/device:CPU:0*
dtype0*
validate_shape( 
s
default_policy/Identity_4Identitydefault_policy/RestoreV2:4"/device:CPU:0*
T0*
_output_shapes
:

!default_policy/AssignVariableOp_4AssignVariableOpdefault_policy/biasdefault_policy/Identity_4"/device:CPU:0*
dtype0*
validate_shape( 
s
default_policy/Identity_5Identitydefault_policy/RestoreV2:5"/device:CPU:0*
T0*
_output_shapes
:

!default_policy/AssignVariableOp_5AssignVariableOpdefault_policy/dense/bias/mdefault_policy/Identity_5"/device:CPU:0*
dtype0*
validate_shape( 
s
default_policy/Identity_6Identitydefault_policy/RestoreV2:6"/device:CPU:0*
T0*
_output_shapes
:

!default_policy/AssignVariableOp_6AssignVariableOpdefault_policy/dense/bias/vdefault_policy/Identity_6"/device:CPU:0*
dtype0*
validate_shape( 
s
default_policy/Identity_7Identitydefault_policy/RestoreV2:7"/device:CPU:0*
T0*
_output_shapes
:

!default_policy/AssignVariableOp_7AssignVariableOpdefault_policy/kerneldefault_policy/Identity_7"/device:CPU:0*
dtype0*
validate_shape( 
s
default_policy/Identity_8Identitydefault_policy/RestoreV2:8"/device:CPU:0*
T0*
_output_shapes
:
¡
!default_policy/AssignVariableOp_8AssignVariableOpdefault_policy/dense/kernel/mdefault_policy/Identity_8"/device:CPU:0*
dtype0*
validate_shape( 
s
default_policy/Identity_9Identitydefault_policy/RestoreV2:9"/device:CPU:0*
T0*
_output_shapes
:
¡
!default_policy/AssignVariableOp_9AssignVariableOpdefault_policy/dense/kernel/vdefault_policy/Identity_9"/device:CPU:0*
dtype0*
validate_shape( 
u
default_policy/Identity_10Identitydefault_policy/RestoreV2:10"/device:CPU:0*
T0*
_output_shapes
:

"default_policy/AssignVariableOp_10AssignVariableOpdefault_policy/bias_1default_policy/Identity_10"/device:CPU:0*
dtype0*
validate_shape( 
u
default_policy/Identity_11Identitydefault_policy/RestoreV2:11"/device:CPU:0*
T0*
_output_shapes
:
£
"default_policy/AssignVariableOp_11AssignVariableOpdefault_policy/dense_1/bias/mdefault_policy/Identity_11"/device:CPU:0*
dtype0*
validate_shape( 
u
default_policy/Identity_12Identitydefault_policy/RestoreV2:12"/device:CPU:0*
T0*
_output_shapes
:
£
"default_policy/AssignVariableOp_12AssignVariableOpdefault_policy/dense_1/bias/vdefault_policy/Identity_12"/device:CPU:0*
dtype0*
validate_shape( 
u
default_policy/Identity_13Identitydefault_policy/RestoreV2:13"/device:CPU:0*
T0*
_output_shapes
:

"default_policy/AssignVariableOp_13AssignVariableOpdefault_policy/kernel_1default_policy/Identity_13"/device:CPU:0*
dtype0*
validate_shape( 
u
default_policy/Identity_14Identitydefault_policy/RestoreV2:14"/device:CPU:0*
T0*
_output_shapes
:
¥
"default_policy/AssignVariableOp_14AssignVariableOpdefault_policy/dense_1/kernel/mdefault_policy/Identity_14"/device:CPU:0*
dtype0*
validate_shape( 
u
default_policy/Identity_15Identitydefault_policy/RestoreV2:15"/device:CPU:0*
T0*
_output_shapes
:
¥
"default_policy/AssignVariableOp_15AssignVariableOpdefault_policy/dense_1/kernel/vdefault_policy/Identity_15"/device:CPU:0*
dtype0*
validate_shape( 
u
default_policy/Identity_16Identitydefault_policy/RestoreV2:16"/device:CPU:0*
T0*
_output_shapes
:

"default_policy/AssignVariableOp_16AssignVariableOpdefault_policy/bias_2default_policy/Identity_16"/device:CPU:0*
dtype0*
validate_shape( 
u
default_policy/Identity_17Identitydefault_policy/RestoreV2:17"/device:CPU:0*
T0*
_output_shapes
:
£
"default_policy/AssignVariableOp_17AssignVariableOpdefault_policy/dense_2/bias/mdefault_policy/Identity_17"/device:CPU:0*
dtype0*
validate_shape( 
u
default_policy/Identity_18Identitydefault_policy/RestoreV2:18"/device:CPU:0*
T0*
_output_shapes
:
£
"default_policy/AssignVariableOp_18AssignVariableOpdefault_policy/dense_2/bias/vdefault_policy/Identity_18"/device:CPU:0*
dtype0*
validate_shape( 
u
default_policy/Identity_19Identitydefault_policy/RestoreV2:19"/device:CPU:0*
T0*
_output_shapes
:

"default_policy/AssignVariableOp_19AssignVariableOpdefault_policy/kernel_2default_policy/Identity_19"/device:CPU:0*
dtype0*
validate_shape( 
u
default_policy/Identity_20Identitydefault_policy/RestoreV2:20"/device:CPU:0*
T0*
_output_shapes
:
¥
"default_policy/AssignVariableOp_20AssignVariableOpdefault_policy/dense_2/kernel/mdefault_policy/Identity_20"/device:CPU:0*
dtype0*
validate_shape( 
u
default_policy/Identity_21Identitydefault_policy/RestoreV2:21"/device:CPU:0*
T0*
_output_shapes
:
¥
"default_policy/AssignVariableOp_21AssignVariableOpdefault_policy/dense_2/kernel/vdefault_policy/Identity_21"/device:CPU:0*
dtype0*
validate_shape( 
u
default_policy/Identity_22Identitydefault_policy/RestoreV2:22"/device:CPU:0*
T0*
_output_shapes
:

"default_policy/AssignVariableOp_22AssignVariableOpdefault_policy/bias_3default_policy/Identity_22"/device:CPU:0*
dtype0*
validate_shape( 
u
default_policy/Identity_23Identitydefault_policy/RestoreV2:23"/device:CPU:0*
T0*
_output_shapes
:
£
"default_policy/AssignVariableOp_23AssignVariableOpdefault_policy/dense_3/bias/mdefault_policy/Identity_23"/device:CPU:0*
dtype0*
validate_shape( 
u
default_policy/Identity_24Identitydefault_policy/RestoreV2:24"/device:CPU:0*
T0*
_output_shapes
:
£
"default_policy/AssignVariableOp_24AssignVariableOpdefault_policy/dense_3/bias/vdefault_policy/Identity_24"/device:CPU:0*
dtype0*
validate_shape( 
u
default_policy/Identity_25Identitydefault_policy/RestoreV2:25"/device:CPU:0*
T0*
_output_shapes
:

"default_policy/AssignVariableOp_25AssignVariableOpdefault_policy/kernel_3default_policy/Identity_25"/device:CPU:0*
dtype0*
validate_shape( 
u
default_policy/Identity_26Identitydefault_policy/RestoreV2:26"/device:CPU:0*
T0*
_output_shapes
:
¥
"default_policy/AssignVariableOp_26AssignVariableOpdefault_policy/dense_3/kernel/mdefault_policy/Identity_26"/device:CPU:0*
dtype0*
validate_shape( 
u
default_policy/Identity_27Identitydefault_policy/RestoreV2:27"/device:CPU:0*
T0*
_output_shapes
:
¥
"default_policy/AssignVariableOp_27AssignVariableOpdefault_policy/dense_3/kernel/vdefault_policy/Identity_27"/device:CPU:0*
dtype0*
validate_shape( 
u
default_policy/Identity_28Identitydefault_policy/RestoreV2:28"/device:CPU:0*
T0*
_output_shapes
:

"default_policy/AssignVariableOp_28AssignVariableOpdefault_policy/bias_4default_policy/Identity_28"/device:CPU:0*
dtype0*
validate_shape( 
u
default_policy/Identity_29Identitydefault_policy/RestoreV2:29"/device:CPU:0*
T0*
_output_shapes
:
£
"default_policy/AssignVariableOp_29AssignVariableOpdefault_policy/dense_4/bias/mdefault_policy/Identity_29"/device:CPU:0*
dtype0*
validate_shape( 
u
default_policy/Identity_30Identitydefault_policy/RestoreV2:30"/device:CPU:0*
T0*
_output_shapes
:
£
"default_policy/AssignVariableOp_30AssignVariableOpdefault_policy/dense_4/bias/vdefault_policy/Identity_30"/device:CPU:0*
dtype0*
validate_shape( 
u
default_policy/Identity_31Identitydefault_policy/RestoreV2:31"/device:CPU:0*
T0*
_output_shapes
:

"default_policy/AssignVariableOp_31AssignVariableOpdefault_policy/kernel_4default_policy/Identity_31"/device:CPU:0*
dtype0*
validate_shape( 
u
default_policy/Identity_32Identitydefault_policy/RestoreV2:32"/device:CPU:0*
T0*
_output_shapes
:
¥
"default_policy/AssignVariableOp_32AssignVariableOpdefault_policy/dense_4/kernel/mdefault_policy/Identity_32"/device:CPU:0*
dtype0*
validate_shape( 
u
default_policy/Identity_33Identitydefault_policy/RestoreV2:33"/device:CPU:0*
T0*
_output_shapes
:
¥
"default_policy/AssignVariableOp_33AssignVariableOpdefault_policy/dense_4/kernel/vdefault_policy/Identity_33"/device:CPU:0*
dtype0*
validate_shape( 
u
default_policy/Identity_34Identitydefault_policy/RestoreV2:34"/device:CPU:0*
T0*
_output_shapes
:
 
"default_policy/AssignVariableOp_34AssignVariableOpdefault_policy/Adam/beta_1default_policy/Identity_34"/device:CPU:0*
dtype0*
validate_shape( 
u
default_policy/Identity_35Identitydefault_policy/RestoreV2:35"/device:CPU:0*
T0*
_output_shapes
:
 
"default_policy/AssignVariableOp_35AssignVariableOpdefault_policy/Adam/beta_2default_policy/Identity_35"/device:CPU:0*
dtype0*
validate_shape( 
u
default_policy/Identity_36Identitydefault_policy/RestoreV2:36"/device:CPU:0*
T0*
_output_shapes
:

"default_policy/AssignVariableOp_36AssignVariableOpdefault_policy/Adam/decaydefault_policy/Identity_36"/device:CPU:0*
dtype0*
validate_shape( 
u
default_policy/Identity_37Identitydefault_policy/RestoreV2:37"/device:CPU:0*
T0	*
_output_shapes
:

"default_policy/AssignVariableOp_37AssignVariableOpdefault_policy/Adam/iterdefault_policy/Identity_37"/device:CPU:0*
dtype0	*
validate_shape( 

default_policy/dense_inputPlaceholder*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿÓ

*default_policy/dense/MatMul/ReadVariableOpReadVariableOpdefault_policy/kernel* 
_output_shapes
:
Óè*
dtype0
Æ
default_policy/dense/MatMulMatMuldefault_policy/dense_input*default_policy/dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
transpose_a( *
transpose_b( 
|
+default_policy/dense/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/bias*
_output_shapes	
:è*
dtype0
»
default_policy/dense/BiasAddBiasAdddefault_policy/dense/MatMul+default_policy/dense/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
data_formatNHWC
x
default_policy/dense/re_lu/ReluReludefault_policy/dense/BiasAdd*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè

,default_policy/dense_1/MatMul/ReadVariableOpReadVariableOpdefault_policy/kernel_1* 
_output_shapes
:
èè*
dtype0
Ï
default_policy/dense_1/MatMulMatMuldefault_policy/dense/re_lu/Relu,default_policy/dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
transpose_a( *
transpose_b( 

-default_policy/dense_1/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/bias_1*
_output_shapes	
:è*
dtype0
Á
default_policy/dense_1/BiasAddBiasAdddefault_policy/dense_1/MatMul-default_policy/dense_1/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
data_formatNHWC
|
!default_policy/dense_1/re_lu/ReluReludefault_policy/dense_1/BiasAdd*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè

,default_policy/dense_2/MatMul/ReadVariableOpReadVariableOpdefault_policy/kernel_2* 
_output_shapes
:
èè*
dtype0
Ñ
default_policy/dense_2/MatMulMatMul!default_policy/dense_1/re_lu/Relu,default_policy/dense_2/MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
transpose_a( *
transpose_b( 

-default_policy/dense_2/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/bias_2*
_output_shapes	
:è*
dtype0
Á
default_policy/dense_2/BiasAddBiasAdddefault_policy/dense_2/MatMul-default_policy/dense_2/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
data_formatNHWC
|
!default_policy/dense_2/re_lu/ReluReludefault_policy/dense_2/BiasAdd*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
\
keras_learning_phase/inputConst*
_output_shapes
: *
dtype0
*
value	B
 Z 
|
keras_learning_phasePlaceholderWithDefaultkeras_learning_phase/input*
_output_shapes
: *
dtype0
*
shape: 
²
default_policy/dropout/condIfkeras_learning_phase!default_policy/dense_2/re_lu/Relu*
Tcond0
*
Tin
2*
Tout

2*
_lower_using_switch_merge(*6
_output_shapes$
":ÿÿÿÿÿÿÿÿÿè: : : : : : : * 
_read_only_resource_inputs
 *9
else_branch*R(
&default_policy_dropout_cond_false_1257*5
output_shapes$
":ÿÿÿÿÿÿÿÿÿè: : : : : : : *8
then_branch)R'
%default_policy_dropout_cond_true_1256

$default_policy/dropout/cond/IdentityIdentitydefault_policy/dropout/cond*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
r
&default_policy/dropout/cond/Identity_1Identitydefault_policy/dropout/cond:1*
T0*
_output_shapes
: 
r
&default_policy/dropout/cond/Identity_2Identitydefault_policy/dropout/cond:2*
T0*
_output_shapes
: 
r
&default_policy/dropout/cond/Identity_3Identitydefault_policy/dropout/cond:3*
T0*
_output_shapes
: 
r
&default_policy/dropout/cond/Identity_4Identitydefault_policy/dropout/cond:4*
T0*
_output_shapes
: 
r
&default_policy/dropout/cond/Identity_5Identitydefault_policy/dropout/cond:5*
T0*
_output_shapes
: 
r
&default_policy/dropout/cond/Identity_6Identitydefault_policy/dropout/cond:6*
T0*
_output_shapes
: 
r
&default_policy/dropout/cond/Identity_7Identitydefault_policy/dropout/cond:7*
T0*
_output_shapes
: 

,default_policy/dense_3/MatMul/ReadVariableOpReadVariableOpdefault_policy/kernel_3* 
_output_shapes
:
èè*
dtype0
Ô
default_policy/dense_3/MatMulMatMul$default_policy/dropout/cond/Identity,default_policy/dense_3/MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
transpose_a( *
transpose_b( 

-default_policy/dense_3/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/bias_3*
_output_shapes	
:è*
dtype0
Á
default_policy/dense_3/BiasAddBiasAdddefault_policy/dense_3/MatMul-default_policy/dense_3/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
data_formatNHWC
|
!default_policy/dense_3/re_lu/ReluReludefault_policy/dense_3/BiasAdd*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
¸
default_policy/dropout_1/condIfkeras_learning_phase!default_policy/dense_3/re_lu/Relu*
Tcond0
*
Tin
2*
Tout

2*
_lower_using_switch_merge(*6
_output_shapes$
":ÿÿÿÿÿÿÿÿÿè: : : : : : : * 
_read_only_resource_inputs
 *;
else_branch,R*
(default_policy_dropout_1_cond_false_1307*5
output_shapes$
":ÿÿÿÿÿÿÿÿÿè: : : : : : : *:
then_branch+R)
'default_policy_dropout_1_cond_true_1306

&default_policy/dropout_1/cond/IdentityIdentitydefault_policy/dropout_1/cond*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
v
(default_policy/dropout_1/cond/Identity_1Identitydefault_policy/dropout_1/cond:1*
T0*
_output_shapes
: 
v
(default_policy/dropout_1/cond/Identity_2Identitydefault_policy/dropout_1/cond:2*
T0*
_output_shapes
: 
v
(default_policy/dropout_1/cond/Identity_3Identitydefault_policy/dropout_1/cond:3*
T0*
_output_shapes
: 
v
(default_policy/dropout_1/cond/Identity_4Identitydefault_policy/dropout_1/cond:4*
T0*
_output_shapes
: 
v
(default_policy/dropout_1/cond/Identity_5Identitydefault_policy/dropout_1/cond:5*
T0*
_output_shapes
: 
v
(default_policy/dropout_1/cond/Identity_6Identitydefault_policy/dropout_1/cond:6*
T0*
_output_shapes
: 
v
(default_policy/dropout_1/cond/Identity_7Identitydefault_policy/dropout_1/cond:7*
T0*
_output_shapes
: 

,default_policy/dense_4/MatMul/ReadVariableOpReadVariableOpdefault_policy/kernel_4*
_output_shapes
:	è}*
dtype0
Õ
default_policy/dense_4/MatMulMatMul&default_policy/dropout_1/cond/Identity,default_policy/dense_4/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*
transpose_a( *
transpose_b( 

-default_policy/dense_4/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/bias_4*
_output_shapes
:}*
dtype0
À
default_policy/dense_4/BiasAddBiasAdddefault_policy/dense_4/MatMul-default_policy/dense_4/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*
data_formatNHWC
{
default_policy/dense_4/SoftmaxSoftmaxdefault_policy/dense_4/BiasAdd*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}

(default_policy/total_2/Initializer/zerosConst*)
_class
loc:@default_policy/total_2*
_output_shapes
: *
dtype0*
valueB
 *    
Ó
default_policy/total_2VarHandleOp*)
_class
loc:@default_policy/total_2*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *'
shared_namedefault_policy/total_2
}
7default_policy/total_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/total_2*
_output_shapes
: 

default_policy/total_2/AssignAssignVariableOpdefault_policy/total_2(default_policy/total_2/Initializer/zeros*
dtype0*
validate_shape( 
y
*default_policy/total_2/Read/ReadVariableOpReadVariableOpdefault_policy/total_2*
_output_shapes
: *
dtype0

(default_policy/count_2/Initializer/zerosConst*)
_class
loc:@default_policy/count_2*
_output_shapes
: *
dtype0*
valueB
 *    
Ó
default_policy/count_2VarHandleOp*)
_class
loc:@default_policy/count_2*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *'
shared_namedefault_policy/count_2
}
7default_policy/count_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/count_2*
_output_shapes
: 

default_policy/count_2/AssignAssignVariableOpdefault_policy/count_2(default_policy/count_2/Initializer/zeros*
dtype0*
validate_shape( 
y
*default_policy/count_2/Read/ReadVariableOpReadVariableOpdefault_policy/count_2*
_output_shapes
: *
dtype0

default_policy/dense_4_targetPlaceholder*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype0*%
shape:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

%default_policy/metrics/accuracy/ShapeShapedefault_policy/dense_4_target*
T0*
_output_shapes
:*
out_type0

'default_policy/metrics/accuracy/SqueezeSqueezedefault_policy/dense_4_target*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ÿÿÿÿÿÿÿÿÿ
{
0default_policy/metrics/accuracy/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
Ï
&default_policy/metrics/accuracy/ArgMaxArgMaxdefault_policy/dense_4/Softmax0default_policy/metrics/accuracy/ArgMax/dimension*
T0*

Tidx0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
output_type0	
¡
$default_policy/metrics/accuracy/CastCast&default_policy/metrics/accuracy/ArgMax*

DstT0*

SrcT0	*
Truncate( *#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ë
%default_policy/metrics/accuracy/EqualEqual'default_policy/metrics/accuracy/Squeeze$default_policy/metrics/accuracy/Cast*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
incompatible_shape_error(
¢
&default_policy/metrics/accuracy/Cast_1Cast%default_policy/metrics/accuracy/Equal*

DstT0*

SrcT0
*
Truncate( *#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ê
'default_policy/metrics/accuracy/ReshapeReshape&default_policy/metrics/accuracy/Cast_1%default_policy/metrics/accuracy/Shape*
T0*
Tshape0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
v
%default_policy/metrics/accuracy/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
¸
#default_policy/metrics/accuracy/SumSum'default_policy/metrics/accuracy/Reshape%default_policy/metrics/accuracy/Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 

3default_policy/metrics/accuracy/AssignAddVariableOpAssignAddVariableOpdefault_policy/total_2#default_policy/metrics/accuracy/Sum*
dtype0
Ù
.default_policy/metrics/accuracy/ReadVariableOpReadVariableOpdefault_policy/total_24^default_policy/metrics/accuracy/AssignAddVariableOp$^default_policy/metrics/accuracy/Sum*
_output_shapes
: *
dtype0

$default_policy/metrics/accuracy/SizeSize'default_policy/metrics/accuracy/Reshape*
T0*
_output_shapes
: *
out_type0

&default_policy/metrics/accuracy/Cast_2Cast$default_policy/metrics/accuracy/Size*

DstT0*

SrcT0*
Truncate( *
_output_shapes
: 
Ï
5default_policy/metrics/accuracy/AssignAddVariableOp_1AssignAddVariableOpdefault_policy/count_2&default_policy/metrics/accuracy/Cast_24^default_policy/metrics/accuracy/AssignAddVariableOp*
dtype0
í
0default_policy/metrics/accuracy/ReadVariableOp_1ReadVariableOpdefault_policy/count_24^default_policy/metrics/accuracy/AssignAddVariableOp6^default_policy/metrics/accuracy/AssignAddVariableOp_1*
_output_shapes
: *
dtype0
À
9default_policy/metrics/accuracy/div_no_nan/ReadVariableOpReadVariableOpdefault_policy/total_26^default_policy/metrics/accuracy/AssignAddVariableOp_1*
_output_shapes
: *
dtype0
Â
;default_policy/metrics/accuracy/div_no_nan/ReadVariableOp_1ReadVariableOpdefault_policy/count_26^default_policy/metrics/accuracy/AssignAddVariableOp_1*
_output_shapes
: *
dtype0
Ï
*default_policy/metrics/accuracy/div_no_nanDivNoNan9default_policy/metrics/accuracy/div_no_nan/ReadVariableOp;default_policy/metrics/accuracy/div_no_nan/ReadVariableOp_1*
T0*
_output_shapes
: 

(default_policy/metrics/accuracy/IdentityIdentity*default_policy/metrics/accuracy/div_no_nan*
T0*
_output_shapes
: 
¦
%default_policy/loss/dense_4_loss/CastCastdefault_policy/dense_4_target*

DstT0	*

SrcT0*
Truncate( *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

&default_policy/loss/dense_4_loss/ShapeShapedefault_policy/dense_4/BiasAdd*
T0*
_output_shapes
:*
out_type0

.default_policy/loss/dense_4_loss/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ
Æ
(default_policy/loss/dense_4_loss/ReshapeReshape%default_policy/loss/dense_4_loss/Cast.default_policy/loss/dense_4_loss/Reshape/shape*
T0	*
Tshape0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

4default_policy/loss/dense_4_loss/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ

6default_policy/loss/dense_4_loss/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 

6default_policy/loss/dense_4_loss/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:

.default_policy/loss/dense_4_loss/strided_sliceStridedSlice&default_policy/loss/dense_4_loss/Shape4default_policy/loss/dense_4_loss/strided_slice/stack6default_policy/loss/dense_4_loss/strided_slice/stack_16default_policy/loss/dense_4_loss/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
}
2default_policy/loss/dense_4_loss/Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
Ö
0default_policy/loss/dense_4_loss/Reshape_1/shapePack2default_policy/loss/dense_4_loss/Reshape_1/shape/0.default_policy/loss/dense_4_loss/strided_slice*
N*
T0*
_output_shapes
:*

axis 
Ç
*default_policy/loss/dense_4_loss/Reshape_1Reshapedefault_policy/dense_4/BiasAdd0default_policy/loss/dense_4_loss/Reshape_1/shape*
T0*
Tshape0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
²
Jdefault_policy/loss/dense_4_loss/SparseSoftmaxCrossEntropyWithLogits/ShapeShape(default_policy/loss/dense_4_loss/Reshape*
T0	*
_output_shapes
:*
out_type0
µ
hdefault_policy/loss/dense_4_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogits*default_policy/loss/dense_4_loss/Reshape_1(default_policy/loss/dense_4_loss/Reshape*
T0*
Tlabels0	*6
_output_shapes$
":ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ}
y
4default_policy/loss/dense_4_loss/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?

2default_policy/loss/dense_4_loss/weighted_loss/MulMulhdefault_policy/loss/dense_4_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits4default_policy/loss/dense_4_loss/weighted_loss/Const*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
p
&default_policy/loss/dense_4_loss/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
Å
$default_policy/loss/dense_4_loss/SumSum2default_policy/loss/dense_4_loss/weighted_loss/Mul&default_policy/loss/dense_4_loss/Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 

-default_policy/loss/dense_4_loss/num_elementsSize2default_policy/loss/dense_4_loss/weighted_loss/Mul*
T0*
_output_shapes
: *
out_type0
©
2default_policy/loss/dense_4_loss/num_elements/CastCast-default_policy/loss/dense_4_loss/num_elements*

DstT0*

SrcT0*
Truncate( *
_output_shapes
: 
g
%default_policy/loss/dense_4_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : 
n
,default_policy/loss/dense_4_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
n
,default_policy/loss/dense_4_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
Ø
&default_policy/loss/dense_4_loss/rangeRange,default_policy/loss/dense_4_loss/range/start%default_policy/loss/dense_4_loss/Rank,default_policy/loss/dense_4_loss/range/delta*

Tidx0*
_output_shapes
: 
¹
&default_policy/loss/dense_4_loss/Sum_1Sum$default_policy/loss/dense_4_loss/Sum&default_policy/loss/dense_4_loss/range*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
¯
&default_policy/loss/dense_4_loss/valueDivNoNan&default_policy/loss/dense_4_loss/Sum_12default_policy/loss/dense_4_loss/num_elements/Cast*
T0*
_output_shapes
: 
^
default_policy/loss/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?

default_policy/loss/mulMuldefault_policy/loss/mul/x&default_policy/loss/dense_4_loss/value*
T0*
_output_shapes
: 
n
!default_policy/VarIsInitializedOpVarIsInitializedOpdefault_policy/layer_2/kernel*
_output_shapes
: 
p
#default_policy/VarIsInitializedOp_1VarIsInitializedOpdefault_policy/layer_4/kernel*
_output_shapes
: 
j
#default_policy/VarIsInitializedOp_2VarIsInitializedOpdefault_policy/kernel_4*
_output_shapes
: 
p
#default_policy/VarIsInitializedOp_3VarIsInitializedOpdefault_policy/dense/kernel/m*
_output_shapes
: 
r
#default_policy/VarIsInitializedOp_4VarIsInitializedOpdefault_policy/dense_2/kernel/m*
_output_shapes
: 
p
#default_policy/VarIsInitializedOp_5VarIsInitializedOpdefault_policy/dense_2/bias/m*
_output_shapes
: 
i
#default_policy/VarIsInitializedOp_6VarIsInitializedOpdefault_policy/count_2*
_output_shapes
: 
n
#default_policy/VarIsInitializedOp_7VarIsInitializedOpdefault_policy/layer_1/bias*
_output_shapes
: 
j
#default_policy/VarIsInitializedOp_8VarIsInitializedOpdefault_policy/kernel_3*
_output_shapes
: 
g
#default_policy/VarIsInitializedOp_9VarIsInitializedOpdefault_policy/total*
_output_shapes
: 
q
$default_policy/VarIsInitializedOp_10VarIsInitializedOpdefault_policy/dense_3/bias/m*
_output_shapes
: 
q
$default_policy/VarIsInitializedOp_11VarIsInitializedOpdefault_policy/dense_4/bias/m*
_output_shapes
: 
q
$default_policy/VarIsInitializedOp_12VarIsInitializedOpdefault_policy/dense_2/bias/v*
_output_shapes
: 
t
$default_policy/VarIsInitializedOp_13VarIsInitializedOp default_policy/action_out/kernel*
_output_shapes
: 
i
$default_policy/VarIsInitializedOp_14VarIsInitializedOpdefault_policy/kernel*
_output_shapes
: 
i
$default_policy/VarIsInitializedOp_15VarIsInitializedOpdefault_policy/bias_1*
_output_shapes
: 
i
$default_policy/VarIsInitializedOp_16VarIsInitializedOpdefault_policy/bias_4*
_output_shapes
: 
s
$default_policy/VarIsInitializedOp_17VarIsInitializedOpdefault_policy/dense_4/kernel/v*
_output_shapes
: 
q
$default_policy/VarIsInitializedOp_18VarIsInitializedOpdefault_policy/layer_1/kernel*
_output_shapes
: 
o
$default_policy/VarIsInitializedOp_19VarIsInitializedOpdefault_policy/layer_3/bias*
_output_shapes
: 
q
$default_policy/VarIsInitializedOp_20VarIsInitializedOpdefault_policy/value_out/bias*
_output_shapes
: 
g
$default_policy/VarIsInitializedOp_21VarIsInitializedOpdefault_policy/bias*
_output_shapes
: 
i
$default_policy/VarIsInitializedOp_22VarIsInitializedOpdefault_policy/bias_2*
_output_shapes
: 
o
$default_policy/VarIsInitializedOp_23VarIsInitializedOpdefault_policy/dense/bias/m*
_output_shapes
: 
s
$default_policy/VarIsInitializedOp_24VarIsInitializedOpdefault_policy/dense_1/kernel/v*
_output_shapes
: 
q
$default_policy/VarIsInitializedOp_25VarIsInitializedOpdefault_policy/dense_1/bias/v*
_output_shapes
: 
j
$default_policy/VarIsInitializedOp_26VarIsInitializedOpdefault_policy/total_2*
_output_shapes
: 
q
$default_policy/VarIsInitializedOp_27VarIsInitializedOpdefault_policy/layer_3/kernel*
_output_shapes
: 
x
$default_policy/VarIsInitializedOp_28VarIsInitializedOp$default_policy/layer_val_hidden/bias*
_output_shapes
: 
h
$default_policy/VarIsInitializedOp_29VarIsInitializedOpdefault_policy/count*
_output_shapes
: 
s
$default_policy/VarIsInitializedOp_30VarIsInitializedOpdefault_policy/dense_1/kernel/m*
_output_shapes
: 
s
$default_policy/VarIsInitializedOp_31VarIsInitializedOpdefault_policy/dense_4/kernel/m*
_output_shapes
: 
o
$default_policy/VarIsInitializedOp_32VarIsInitializedOpdefault_policy/dense/bias/v*
_output_shapes
: 
r
$default_policy/VarIsInitializedOp_33VarIsInitializedOpdefault_policy/action_out/bias*
_output_shapes
: 
k
$default_policy/VarIsInitializedOp_34VarIsInitializedOpdefault_policy/kernel_1*
_output_shapes
: 
q
$default_policy/VarIsInitializedOp_35VarIsInitializedOpdefault_policy/dense_1/bias/m*
_output_shapes
: 
q
$default_policy/VarIsInitializedOp_36VarIsInitializedOpdefault_policy/dense/kernel/v*
_output_shapes
: 
o
$default_policy/VarIsInitializedOp_37VarIsInitializedOpdefault_policy/layer_2/bias*
_output_shapes
: 
s
$default_policy/VarIsInitializedOp_38VarIsInitializedOpdefault_policy/value_out/kernel*
_output_shapes
: 
k
$default_policy/VarIsInitializedOp_39VarIsInitializedOpdefault_policy/kernel_2*
_output_shapes
: 
i
$default_policy/VarIsInitializedOp_40VarIsInitializedOpdefault_policy/bias_3*
_output_shapes
: 
j
$default_policy/VarIsInitializedOp_41VarIsInitializedOpdefault_policy/total_1*
_output_shapes
: 
s
$default_policy/VarIsInitializedOp_42VarIsInitializedOpdefault_policy/dense_3/kernel/m*
_output_shapes
: 
s
$default_policy/VarIsInitializedOp_43VarIsInitializedOpdefault_policy/dense_2/kernel/v*
_output_shapes
: 
q
$default_policy/VarIsInitializedOp_44VarIsInitializedOpdefault_policy/dense_4/bias/v*
_output_shapes
: 
o
$default_policy/VarIsInitializedOp_45VarIsInitializedOpdefault_policy/layer_4/bias*
_output_shapes
: 
z
$default_policy/VarIsInitializedOp_46VarIsInitializedOp&default_policy/layer_val_hidden/kernel*
_output_shapes
: 
j
$default_policy/VarIsInitializedOp_47VarIsInitializedOpdefault_policy/count_1*
_output_shapes
: 
s
$default_policy/VarIsInitializedOp_48VarIsInitializedOpdefault_policy/dense_3/kernel/v*
_output_shapes
: 
q
$default_policy/VarIsInitializedOp_49VarIsInitializedOpdefault_policy/dense_3/bias/v*
_output_shapes
: 

default_policy/init/NoOpNoOp&^default_policy/action_out/bias/Assign(^default_policy/action_out/kernel/Assign^default_policy/count_2/Assign#^default_policy/layer_1/bias/Assign%^default_policy/layer_1/kernel/Assign#^default_policy/layer_2/bias/Assign%^default_policy/layer_2/kernel/Assign#^default_policy/layer_3/bias/Assign%^default_policy/layer_3/kernel/Assign#^default_policy/layer_4/bias/Assign%^default_policy/layer_4/kernel/Assign,^default_policy/layer_val_hidden/bias/Assign.^default_policy/layer_val_hidden/kernel/Assign^default_policy/total_2/Assign%^default_policy/value_out/bias/Assign'^default_policy/value_out/kernel/Assign


default_policy/init/NoOp_1NoOp ^default_policy/AssignVariableOp"^default_policy/AssignVariableOp_1#^default_policy/AssignVariableOp_10#^default_policy/AssignVariableOp_11#^default_policy/AssignVariableOp_12#^default_policy/AssignVariableOp_13#^default_policy/AssignVariableOp_14#^default_policy/AssignVariableOp_15#^default_policy/AssignVariableOp_16#^default_policy/AssignVariableOp_17#^default_policy/AssignVariableOp_18#^default_policy/AssignVariableOp_19"^default_policy/AssignVariableOp_2#^default_policy/AssignVariableOp_20#^default_policy/AssignVariableOp_21#^default_policy/AssignVariableOp_22#^default_policy/AssignVariableOp_23#^default_policy/AssignVariableOp_24#^default_policy/AssignVariableOp_25#^default_policy/AssignVariableOp_26#^default_policy/AssignVariableOp_27#^default_policy/AssignVariableOp_28#^default_policy/AssignVariableOp_29"^default_policy/AssignVariableOp_3#^default_policy/AssignVariableOp_30#^default_policy/AssignVariableOp_31#^default_policy/AssignVariableOp_32#^default_policy/AssignVariableOp_33"^default_policy/AssignVariableOp_4"^default_policy/AssignVariableOp_5"^default_policy/AssignVariableOp_6"^default_policy/AssignVariableOp_7"^default_policy/AssignVariableOp_8"^default_policy/AssignVariableOp_9"/device:CPU:0
S
default_policy/initNoOp^default_policy/init/NoOp^default_policy/init/NoOp_1

default_policy/PlaceholderPlaceholder*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype0*%
shape:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

"default_policy/AssignVariableOp_38AssignVariableOpdefault_policy/layer_1/kerneldefault_policy/Placeholder*
dtype0*
validate_shape(
¢
default_policy/ReadVariableOpReadVariableOpdefault_policy/layer_1/kernel#^default_policy/AssignVariableOp_38* 
_output_shapes
:
Óè*
dtype0
w
default_policy/Placeholder_1Placeholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ

"default_policy/AssignVariableOp_39AssignVariableOpdefault_policy/layer_1/biasdefault_policy/Placeholder_1*
dtype0*
validate_shape(

default_policy/ReadVariableOp_1ReadVariableOpdefault_policy/layer_1/bias#^default_policy/AssignVariableOp_39*
_output_shapes	
:è*
dtype0

default_policy/Placeholder_2Placeholder*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype0*%
shape:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

"default_policy/AssignVariableOp_40AssignVariableOpdefault_policy/layer_2/kerneldefault_policy/Placeholder_2*
dtype0*
validate_shape(
¤
default_policy/ReadVariableOp_2ReadVariableOpdefault_policy/layer_2/kernel#^default_policy/AssignVariableOp_40* 
_output_shapes
:
èè*
dtype0
w
default_policy/Placeholder_3Placeholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ

"default_policy/AssignVariableOp_41AssignVariableOpdefault_policy/layer_2/biasdefault_policy/Placeholder_3*
dtype0*
validate_shape(

default_policy/ReadVariableOp_3ReadVariableOpdefault_policy/layer_2/bias#^default_policy/AssignVariableOp_41*
_output_shapes	
:è*
dtype0

default_policy/Placeholder_4Placeholder*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype0*%
shape:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

"default_policy/AssignVariableOp_42AssignVariableOpdefault_policy/layer_3/kerneldefault_policy/Placeholder_4*
dtype0*
validate_shape(
¤
default_policy/ReadVariableOp_4ReadVariableOpdefault_policy/layer_3/kernel#^default_policy/AssignVariableOp_42* 
_output_shapes
:
èè*
dtype0
w
default_policy/Placeholder_5Placeholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ

"default_policy/AssignVariableOp_43AssignVariableOpdefault_policy/layer_3/biasdefault_policy/Placeholder_5*
dtype0*
validate_shape(

default_policy/ReadVariableOp_5ReadVariableOpdefault_policy/layer_3/bias#^default_policy/AssignVariableOp_43*
_output_shapes	
:è*
dtype0

default_policy/Placeholder_6Placeholder*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype0*%
shape:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

"default_policy/AssignVariableOp_44AssignVariableOpdefault_policy/layer_4/kerneldefault_policy/Placeholder_6*
dtype0*
validate_shape(
¤
default_policy/ReadVariableOp_6ReadVariableOpdefault_policy/layer_4/kernel#^default_policy/AssignVariableOp_44* 
_output_shapes
:
èè*
dtype0
w
default_policy/Placeholder_7Placeholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ

"default_policy/AssignVariableOp_45AssignVariableOpdefault_policy/layer_4/biasdefault_policy/Placeholder_7*
dtype0*
validate_shape(

default_policy/ReadVariableOp_7ReadVariableOpdefault_policy/layer_4/bias#^default_policy/AssignVariableOp_45*
_output_shapes	
:è*
dtype0

default_policy/Placeholder_8Placeholder*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype0*%
shape:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

"default_policy/AssignVariableOp_46AssignVariableOp&default_policy/layer_val_hidden/kerneldefault_policy/Placeholder_8*
dtype0*
validate_shape(
¬
default_policy/ReadVariableOp_8ReadVariableOp&default_policy/layer_val_hidden/kernel#^default_policy/AssignVariableOp_46*
_output_shapes
:	è}*
dtype0
w
default_policy/Placeholder_9Placeholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ

"default_policy/AssignVariableOp_47AssignVariableOp$default_policy/layer_val_hidden/biasdefault_policy/Placeholder_9*
dtype0*
validate_shape(
¥
default_policy/ReadVariableOp_9ReadVariableOp$default_policy/layer_val_hidden/bias#^default_policy/AssignVariableOp_47*
_output_shapes
:}*
dtype0
p
default_policy/actionPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ
w
default_policy/obsPlaceholder*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿÓ
{
default_policy/new_obsPlaceholder*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿÓ
v
default_policy/prev_actionsPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ
q
default_policy/rewardsPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
v
default_policy/prev_rewardsPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
o
default_policy/donesPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
p
default_policy/eps_idPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
s
default_policy/unroll_idPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
u
default_policy/agent_indexPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
k
default_policy/tPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
V
default_policy/zerosConst*
_output_shapes
: *
dtype0	*
value	B	 R 
y
default_policy/timestepPlaceholderWithDefaultdefault_policy/zeros*
_output_shapes
: *
dtype0	*
shape: 
c
!default_policy/is_exploring/inputConst*
_output_shapes
: *
dtype0
*
value	B
 Z

default_policy/is_exploringPlaceholderWithDefault!default_policy/is_exploring/input*
_output_shapes
: *
dtype0
*
shape: 
b
 default_policy/is_training/inputConst*
_output_shapes
: *
dtype0
*
value	B
 Z 

default_policy/is_trainingPlaceholderWithDefault default_policy/is_training/input*
_output_shapes
: *
dtype0
*
shape: 
G
ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
£
3default_policy/timestep_1/Initializer/initial_valueConst*,
_class"
 loc:@default_policy/timestep_1*
_output_shapes
: *
dtype0	*
value	B	 R 
Ü
default_policy/timestep_1VarHandleOp*,
_class"
 loc:@default_policy/timestep_1*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0	*
shape: **
shared_namedefault_policy/timestep_1

:default_policy/timestep_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/timestep_1*
_output_shapes
: 
§
 default_policy/timestep_1/AssignAssignVariableOpdefault_policy/timestep_13default_policy/timestep_1/Initializer/initial_value*
dtype0	*
validate_shape( 

-default_policy/timestep_1/Read/ReadVariableOpReadVariableOpdefault_policy/timestep_1*
_output_shapes
: *
dtype0	

2default_policy/model/layer_1/MatMul/ReadVariableOpReadVariableOpdefault_policy/layer_1/kernel* 
_output_shapes
:
Óè*
dtype0
Î
#default_policy/model/layer_1/MatMulMatMuldefault_policy/obs2default_policy/model/layer_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
transpose_a( *
transpose_b( 

3default_policy/model/layer_1/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/layer_1/bias*
_output_shapes	
:è*
dtype0
Ó
$default_policy/model/layer_1/BiasAddBiasAdd#default_policy/model/layer_1/MatMul3default_policy/model/layer_1/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
data_formatNHWC

!default_policy/model/layer_1/ReluRelu$default_policy/model/layer_1/BiasAdd*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè

2default_policy/model/layer_2/MatMul/ReadVariableOpReadVariableOpdefault_policy/layer_2/kernel* 
_output_shapes
:
èè*
dtype0
Ý
#default_policy/model/layer_2/MatMulMatMul!default_policy/model/layer_1/Relu2default_policy/model/layer_2/MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
transpose_a( *
transpose_b( 

3default_policy/model/layer_2/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/layer_2/bias*
_output_shapes	
:è*
dtype0
Ó
$default_policy/model/layer_2/BiasAddBiasAdd#default_policy/model/layer_2/MatMul3default_policy/model/layer_2/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
data_formatNHWC

!default_policy/model/layer_2/ReluRelu$default_policy/model/layer_2/BiasAdd*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè

2default_policy/model/layer_3/MatMul/ReadVariableOpReadVariableOpdefault_policy/layer_3/kernel* 
_output_shapes
:
èè*
dtype0
Ý
#default_policy/model/layer_3/MatMulMatMul!default_policy/model/layer_2/Relu2default_policy/model/layer_3/MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
transpose_a( *
transpose_b( 

3default_policy/model/layer_3/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/layer_3/bias*
_output_shapes	
:è*
dtype0
Ó
$default_policy/model/layer_3/BiasAddBiasAdd#default_policy/model/layer_3/MatMul3default_policy/model/layer_3/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
data_formatNHWC

!default_policy/model/layer_3/ReluRelu$default_policy/model/layer_3/BiasAdd*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè

2default_policy/model/layer_4/MatMul/ReadVariableOpReadVariableOpdefault_policy/layer_4/kernel* 
_output_shapes
:
èè*
dtype0
Ý
#default_policy/model/layer_4/MatMulMatMul!default_policy/model/layer_3/Relu2default_policy/model/layer_4/MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
transpose_a( *
transpose_b( 

3default_policy/model/layer_4/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/layer_4/bias*
_output_shapes	
:è*
dtype0
Ó
$default_policy/model/layer_4/BiasAddBiasAdd#default_policy/model/layer_4/MatMul3default_policy/model/layer_4/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
data_formatNHWC

!default_policy/model/layer_4/ReluRelu$default_policy/model/layer_4/BiasAdd*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
£
;default_policy/model/layer_val_hidden/MatMul/ReadVariableOpReadVariableOp&default_policy/layer_val_hidden/kernel*
_output_shapes
:	è}*
dtype0
î
,default_policy/model/layer_val_hidden/MatMulMatMul!default_policy/model/layer_4/Relu;default_policy/model/layer_val_hidden/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*
transpose_a( *
transpose_b( 

<default_policy/model/layer_val_hidden/BiasAdd/ReadVariableOpReadVariableOp$default_policy/layer_val_hidden/bias*
_output_shapes
:}*
dtype0
í
-default_policy/model/layer_val_hidden/BiasAddBiasAdd,default_policy/model/layer_val_hidden/MatMul<default_policy/model/layer_val_hidden/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*
data_formatNHWC

*default_policy/model/layer_val_hidden/ReluRelu-default_policy/model/layer_val_hidden/BiasAdd*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}

4default_policy/model/value_out/MatMul/ReadVariableOpReadVariableOpdefault_policy/value_out/kernel*
_output_shapes

:}*
dtype0
é
%default_policy/model/value_out/MatMulMatMul*default_policy/model/layer_val_hidden/Relu4default_policy/model/value_out/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
transpose_a( *
transpose_b( 

5default_policy/model/value_out/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/value_out/bias*
_output_shapes
:*
dtype0
Ø
&default_policy/model/value_out/BiasAddBiasAdd%default_policy/model/value_out/MatMul5default_policy/model/value_out/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
data_formatNHWC

5default_policy/model/action_out/MatMul/ReadVariableOpReadVariableOp default_policy/action_out/kernel*
_output_shapes
:	è}*
dtype0
â
&default_policy/model/action_out/MatMulMatMul!default_policy/model/layer_4/Relu5default_policy/model/action_out/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*
transpose_a( *
transpose_b( 

6default_policy/model/action_out/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/action_out/bias*
_output_shapes
:}*
dtype0
Û
'default_policy/model/action_out/BiasAddBiasAdd&default_policy/model/action_out/MatMul6default_policy/model/action_out/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*
data_formatNHWC
]
default_policy/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?

default_policy/truedivRealDiv'default_policy/model/action_out/BiasAdddefault_policy/truediv/y*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
t
2default_policy/categorical/Multinomial/num_samplesConst*
_output_shapes
: *
dtype0*
value	B :
à
&default_policy/categorical/MultinomialMultinomialdefault_policy/truediv2default_policy/categorical/Multinomial/num_samples*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
output_dtype0	*

seed *
seed2 

default_policy/SqueezeSqueeze&default_policy/categorical/Multinomial*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims


default_policy/CastCastdefault_policy/Squeeze*

DstT0*

SrcT0	*
Truncate( *#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

8default_policy/SparseSoftmaxCrossEntropyWithLogits/ShapeShapedefault_policy/Cast*
T0*
_output_shapes
:*
out_type0
ú
Vdefault_policy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsdefault_policy/truedivdefault_policy/Cast*
T0*
Tlabels0*6
_output_shapes$
":ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ}

default_policy/NegNegVdefault_policy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
 default_policy/ReadVariableOp_10ReadVariableOpdefault_policy/timestep_1*
_output_shapes
: *
dtype0	
V
default_policy/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R
t
default_policy/addAddV2 default_policy/ReadVariableOp_10default_policy/add/y*
T0	*
_output_shapes
: 
W
default_policy/Less/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
g
default_policy/LessLessdefault_policy/adddefault_policy/Less/y*
T0	*
_output_shapes
: 
ú
default_policy/condIfdefault_policy/Lessdefault_policy/truedivdefault_policy/Squeeze*
Tcond0
*
Tin
2	*
Tout
2	*
_lower_using_switch_merge(*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *1
else_branch"R 
default_policy_cond_false_1552*"
output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
then_branch!R
default_policy_cond_true_1551
k
default_policy/cond/IdentityIdentitydefault_policy/cond*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
a
default_policy/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
value	B :
¥
default_policy/ArgMaxArgMaxdefault_policy/truedivdefault_policy/ArgMax/dimension*
T0*

Tidx0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
output_type0	

default_policy/cond_1StatelessIfdefault_policy/is_exploringdefault_policy/cond/Identitydefault_policy/ArgMax*
Tcond0
*
Tin
2		*
Tout
2	*
_lower_using_switch_merge(*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *3
else_branch$R"
 default_policy_cond_1_false_1587*"
output_shapes
:ÿÿÿÿÿÿÿÿÿ*2
then_branch#R!
default_policy_cond_1_true_1586
o
default_policy/cond_1/IdentityIdentitydefault_policy/cond_1*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
_
default_policy/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 

default_policy/GreaterEqualGreaterEqualdefault_policy/adddefault_policy/GreaterEqual/y*
T0	*
_output_shapes
: 
y
default_policy/LogicalAnd
LogicalAnddefault_policy/is_exploringdefault_policy/GreaterEqual*
_output_shapes
: 

default_policy/cond_2StatelessIfdefault_policy/LogicalAnddefault_policy/Negdefault_policy/ArgMax*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *3
else_branch$R"
 default_policy_cond_2_false_1600*"
output_shapes
:ÿÿÿÿÿÿÿÿÿ*2
then_branch#R!
default_policy_cond_2_true_1599
o
default_policy/cond_2/IdentityIdentitydefault_policy/cond_2*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"default_policy/AssignVariableOp_48AssignVariableOpdefault_policy/timestep_1default_policy/timestep*
dtype0	*
validate_shape(

 default_policy/ReadVariableOp_11ReadVariableOpdefault_policy/timestep_1#^default_policy/AssignVariableOp_48*
_output_shapes
: *
dtype0	
g
default_policy/ExpExpdefault_policy/cond_2/Identity*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
i
default_policy/Exp_1Expdefault_policy/cond_2/Identity*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
_
default_policy/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?

default_policy/truediv_1RealDiv'default_policy/model/action_out/BiasAdddefault_policy/truediv_1/y*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
v
4default_policy/categorical_1/Multinomial/num_samplesConst*
_output_shapes
: *
dtype0*
value	B :
æ
(default_policy/categorical_1/MultinomialMultinomialdefault_policy/truediv_14default_policy/categorical_1/Multinomial/num_samples*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
output_dtype0	*

seed *
seed2 

default_policy/Squeeze_1Squeeze(default_policy/categorical_1/Multinomial*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims


default_policy/Cast_1Castdefault_policy/Squeeze_1*

DstT0*

SrcT0	*
Truncate( *#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

:default_policy/SparseSoftmaxCrossEntropyWithLogits_1/ShapeShapedefault_policy/Cast_1*
T0*
_output_shapes
:*
out_type0

Xdefault_policy/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsdefault_policy/truediv_1default_policy/Cast_1*
T0*
Tlabels0*6
_output_shapes$
":ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ}
£
default_policy/Neg_1NegXdefault_policy/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

default_policy/Cast_2Castdefault_policy/action*

DstT0*

SrcT0	*
Truncate( *#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

:default_policy/SparseSoftmaxCrossEntropyWithLogits_2/ShapeShapedefault_policy/Cast_2*
T0*
_output_shapes
:*
out_type0

Xdefault_policy/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsdefault_policy/truediv_1default_policy/Cast_2*
T0*
Tlabels0*6
_output_shapes$
":ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ}
£
default_policy/Neg_2NegXdefault_policy/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>
¢
1default_policy/kl_coeff/Initializer/initial_valueConst**
_class 
loc:@default_policy/kl_coeff*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>
Ö
default_policy/kl_coeffVarHandleOp**
_class 
loc:@default_policy/kl_coeff*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *(
shared_namedefault_policy/kl_coeff

8default_policy/kl_coeff/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/kl_coeff*
_output_shapes
: 
¡
default_policy/kl_coeff/AssignAssignVariableOpdefault_policy/kl_coeff1default_policy/kl_coeff/Initializer/initial_value*
dtype0*
validate_shape( 
{
+default_policy/kl_coeff/Read/ReadVariableOpReadVariableOpdefault_policy/kl_coeff*
_output_shapes
: *
dtype0
^
default_policy/kl_coeff_1Placeholder*
_output_shapes
:*
dtype0*
shape:

"default_policy/AssignVariableOp_49AssignVariableOpdefault_policy/kl_coeffdefault_policy/kl_coeff_1*
dtype0*
validate_shape(
L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *    
¬
6default_policy/entropy_coeff/Initializer/initial_valueConst*/
_class%
#!loc:@default_policy/entropy_coeff*
_output_shapes
: *
dtype0*
valueB
 *    
å
default_policy/entropy_coeffVarHandleOp*/
_class%
#!loc:@default_policy/entropy_coeff*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *-
shared_namedefault_policy/entropy_coeff

=default_policy/entropy_coeff/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/entropy_coeff*
_output_shapes
: 
°
#default_policy/entropy_coeff/AssignAssignVariableOpdefault_policy/entropy_coeff6default_policy/entropy_coeff/Initializer/initial_value*
dtype0*
validate_shape( 

0default_policy/entropy_coeff/Read/ReadVariableOpReadVariableOpdefault_policy/entropy_coeff*
_output_shapes
: *
dtype0

+default_policy/lr/Initializer/initial_valueConst*$
_class
loc:@default_policy/lr*
_output_shapes
: *
dtype0*
valueB
 *·Q8
Ä
default_policy/lrVarHandleOp*$
_class
loc:@default_policy/lr*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *"
shared_namedefault_policy/lr
s
2default_policy/lr/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/lr*
_output_shapes
: 

default_policy/lr/AssignAssignVariableOpdefault_policy/lr+default_policy/lr/Initializer/initial_value*
dtype0*
validate_shape( 
o
%default_policy/lr/Read/ReadVariableOpReadVariableOpdefault_policy/lr*
_output_shapes
: *
dtype0
o
default_policy/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ
£
default_policy/ReshapeReshape&default_policy/model/value_out/BiasAdddefault_policy/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
×
default_policy/init_1/NoOpNoOp&^default_policy/action_out/bias/Assign(^default_policy/action_out/kernel/Assign$^default_policy/entropy_coeff/Assign^default_policy/kl_coeff/Assign#^default_policy/layer_1/bias/Assign%^default_policy/layer_1/kernel/Assign#^default_policy/layer_2/bias/Assign%^default_policy/layer_2/kernel/Assign#^default_policy/layer_3/bias/Assign%^default_policy/layer_3/kernel/Assign#^default_policy/layer_4/bias/Assign%^default_policy/layer_4/kernel/Assign,^default_policy/layer_val_hidden/bias/Assign.^default_policy/layer_val_hidden/kernel/Assign^default_policy/lr/Assign!^default_policy/timestep_1/Assign%^default_policy/value_out/bias/Assign'^default_policy/value_out/kernel/Assign


default_policy/init_1/NoOp_1NoOp#^default_policy/AssignVariableOp_10#^default_policy/AssignVariableOp_11#^default_policy/AssignVariableOp_12#^default_policy/AssignVariableOp_13#^default_policy/AssignVariableOp_14#^default_policy/AssignVariableOp_15#^default_policy/AssignVariableOp_16#^default_policy/AssignVariableOp_17#^default_policy/AssignVariableOp_18#^default_policy/AssignVariableOp_19#^default_policy/AssignVariableOp_20#^default_policy/AssignVariableOp_21#^default_policy/AssignVariableOp_22#^default_policy/AssignVariableOp_23#^default_policy/AssignVariableOp_24#^default_policy/AssignVariableOp_25#^default_policy/AssignVariableOp_26#^default_policy/AssignVariableOp_27#^default_policy/AssignVariableOp_28#^default_policy/AssignVariableOp_29#^default_policy/AssignVariableOp_30#^default_policy/AssignVariableOp_31#^default_policy/AssignVariableOp_32#^default_policy/AssignVariableOp_33#^default_policy/AssignVariableOp_34#^default_policy/AssignVariableOp_35#^default_policy/AssignVariableOp_36#^default_policy/AssignVariableOp_37"^default_policy/AssignVariableOp_4"^default_policy/AssignVariableOp_5"^default_policy/AssignVariableOp_6"^default_policy/AssignVariableOp_7"^default_policy/AssignVariableOp_8"^default_policy/AssignVariableOp_9"/device:CPU:0
Y
default_policy/init_1NoOp^default_policy/init_1/NoOp^default_policy/init_1/NoOp_1
r
default_policy/vf_predsPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ

!default_policy/action_dist_inputsPlaceholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ}
u
default_policy/action_logpPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
u
default_policy/action_probPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
g
default_policy/obs_1Placeholder*
_output_shapes
:	Ó*
dtype0*
shape:	Ó
`
default_policy/seq_lensPlaceholder*
_output_shapes
:*
dtype0*
shape:

4default_policy/model_1/layer_1/MatMul/ReadVariableOpReadVariableOpdefault_policy/layer_1/kernel* 
_output_shapes
:
Óè*
dtype0
Ë
%default_policy/model_1/layer_1/MatMulMatMuldefault_policy/obs_14default_policy/model_1/layer_1/MatMul/ReadVariableOp*
T0*
_output_shapes
:	è*
transpose_a( *
transpose_b( 

5default_policy/model_1/layer_1/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/layer_1/bias*
_output_shapes	
:è*
dtype0
Ð
&default_policy/model_1/layer_1/BiasAddBiasAdd%default_policy/model_1/layer_1/MatMul5default_policy/model_1/layer_1/BiasAdd/ReadVariableOp*
T0*
_output_shapes
:	è*
data_formatNHWC
}
#default_policy/model_1/layer_1/ReluRelu&default_policy/model_1/layer_1/BiasAdd*
T0*
_output_shapes
:	è

4default_policy/model_1/layer_2/MatMul/ReadVariableOpReadVariableOpdefault_policy/layer_2/kernel* 
_output_shapes
:
èè*
dtype0
Ú
%default_policy/model_1/layer_2/MatMulMatMul#default_policy/model_1/layer_1/Relu4default_policy/model_1/layer_2/MatMul/ReadVariableOp*
T0*
_output_shapes
:	è*
transpose_a( *
transpose_b( 

5default_policy/model_1/layer_2/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/layer_2/bias*
_output_shapes	
:è*
dtype0
Ð
&default_policy/model_1/layer_2/BiasAddBiasAdd%default_policy/model_1/layer_2/MatMul5default_policy/model_1/layer_2/BiasAdd/ReadVariableOp*
T0*
_output_shapes
:	è*
data_formatNHWC
}
#default_policy/model_1/layer_2/ReluRelu&default_policy/model_1/layer_2/BiasAdd*
T0*
_output_shapes
:	è

4default_policy/model_1/layer_3/MatMul/ReadVariableOpReadVariableOpdefault_policy/layer_3/kernel* 
_output_shapes
:
èè*
dtype0
Ú
%default_policy/model_1/layer_3/MatMulMatMul#default_policy/model_1/layer_2/Relu4default_policy/model_1/layer_3/MatMul/ReadVariableOp*
T0*
_output_shapes
:	è*
transpose_a( *
transpose_b( 

5default_policy/model_1/layer_3/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/layer_3/bias*
_output_shapes	
:è*
dtype0
Ð
&default_policy/model_1/layer_3/BiasAddBiasAdd%default_policy/model_1/layer_3/MatMul5default_policy/model_1/layer_3/BiasAdd/ReadVariableOp*
T0*
_output_shapes
:	è*
data_formatNHWC
}
#default_policy/model_1/layer_3/ReluRelu&default_policy/model_1/layer_3/BiasAdd*
T0*
_output_shapes
:	è

4default_policy/model_1/layer_4/MatMul/ReadVariableOpReadVariableOpdefault_policy/layer_4/kernel* 
_output_shapes
:
èè*
dtype0
Ú
%default_policy/model_1/layer_4/MatMulMatMul#default_policy/model_1/layer_3/Relu4default_policy/model_1/layer_4/MatMul/ReadVariableOp*
T0*
_output_shapes
:	è*
transpose_a( *
transpose_b( 

5default_policy/model_1/layer_4/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/layer_4/bias*
_output_shapes	
:è*
dtype0
Ð
&default_policy/model_1/layer_4/BiasAddBiasAdd%default_policy/model_1/layer_4/MatMul5default_policy/model_1/layer_4/BiasAdd/ReadVariableOp*
T0*
_output_shapes
:	è*
data_formatNHWC
}
#default_policy/model_1/layer_4/ReluRelu&default_policy/model_1/layer_4/BiasAdd*
T0*
_output_shapes
:	è
¥
=default_policy/model_1/layer_val_hidden/MatMul/ReadVariableOpReadVariableOp&default_policy/layer_val_hidden/kernel*
_output_shapes
:	è}*
dtype0
ë
.default_policy/model_1/layer_val_hidden/MatMulMatMul#default_policy/model_1/layer_4/Relu=default_policy/model_1/layer_val_hidden/MatMul/ReadVariableOp*
T0*
_output_shapes

:}*
transpose_a( *
transpose_b( 

>default_policy/model_1/layer_val_hidden/BiasAdd/ReadVariableOpReadVariableOp$default_policy/layer_val_hidden/bias*
_output_shapes
:}*
dtype0
ê
/default_policy/model_1/layer_val_hidden/BiasAddBiasAdd.default_policy/model_1/layer_val_hidden/MatMul>default_policy/model_1/layer_val_hidden/BiasAdd/ReadVariableOp*
T0*
_output_shapes

:}*
data_formatNHWC

,default_policy/model_1/layer_val_hidden/ReluRelu/default_policy/model_1/layer_val_hidden/BiasAdd*
T0*
_output_shapes

:}

6default_policy/model_1/value_out/MatMul/ReadVariableOpReadVariableOpdefault_policy/value_out/kernel*
_output_shapes

:}*
dtype0
æ
'default_policy/model_1/value_out/MatMulMatMul,default_policy/model_1/layer_val_hidden/Relu6default_policy/model_1/value_out/MatMul/ReadVariableOp*
T0*
_output_shapes

:*
transpose_a( *
transpose_b( 

7default_policy/model_1/value_out/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/value_out/bias*
_output_shapes
:*
dtype0
Õ
(default_policy/model_1/value_out/BiasAddBiasAdd'default_policy/model_1/value_out/MatMul7default_policy/model_1/value_out/BiasAdd/ReadVariableOp*
T0*
_output_shapes

:*
data_formatNHWC

7default_policy/model_1/action_out/MatMul/ReadVariableOpReadVariableOp default_policy/action_out/kernel*
_output_shapes
:	è}*
dtype0
ß
(default_policy/model_1/action_out/MatMulMatMul#default_policy/model_1/layer_4/Relu7default_policy/model_1/action_out/MatMul/ReadVariableOp*
T0*
_output_shapes

:}*
transpose_a( *
transpose_b( 

8default_policy/model_1/action_out/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/action_out/bias*
_output_shapes
:}*
dtype0
Ø
)default_policy/model_1/action_out/BiasAddBiasAdd(default_policy/model_1/action_out/MatMul8default_policy/model_1/action_out/BiasAdd/ReadVariableOp*
T0*
_output_shapes

:}*
data_formatNHWC
q
default_policy/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ
 
default_policy/Reshape_1Reshape(default_policy/model_1/value_out/BiasAdddefault_policy/Reshape_1/shape*
T0*
Tshape0*
_output_shapes
:
l
"default_policy/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
n
$default_policy/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
n
$default_policy/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
È
default_policy/strided_sliceStridedSlicedefault_policy/Reshape_1"default_policy/strided_slice/stack$default_policy/strided_slice/stack_1$default_policy/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
t
default_policy/advantagesPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
w
default_policy/value_targetsPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ

4default_policy/model_2/layer_1/MatMul/ReadVariableOpReadVariableOpdefault_policy/layer_1/kernel* 
_output_shapes
:
Óè*
dtype0
Ò
%default_policy/model_2/layer_1/MatMulMatMuldefault_policy/obs4default_policy/model_2/layer_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
transpose_a( *
transpose_b( 

5default_policy/model_2/layer_1/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/layer_1/bias*
_output_shapes	
:è*
dtype0
Ù
&default_policy/model_2/layer_1/BiasAddBiasAdd%default_policy/model_2/layer_1/MatMul5default_policy/model_2/layer_1/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
data_formatNHWC

#default_policy/model_2/layer_1/ReluRelu&default_policy/model_2/layer_1/BiasAdd*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè

4default_policy/model_2/layer_2/MatMul/ReadVariableOpReadVariableOpdefault_policy/layer_2/kernel* 
_output_shapes
:
èè*
dtype0
ã
%default_policy/model_2/layer_2/MatMulMatMul#default_policy/model_2/layer_1/Relu4default_policy/model_2/layer_2/MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
transpose_a( *
transpose_b( 

5default_policy/model_2/layer_2/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/layer_2/bias*
_output_shapes	
:è*
dtype0
Ù
&default_policy/model_2/layer_2/BiasAddBiasAdd%default_policy/model_2/layer_2/MatMul5default_policy/model_2/layer_2/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
data_formatNHWC

#default_policy/model_2/layer_2/ReluRelu&default_policy/model_2/layer_2/BiasAdd*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè

4default_policy/model_2/layer_3/MatMul/ReadVariableOpReadVariableOpdefault_policy/layer_3/kernel* 
_output_shapes
:
èè*
dtype0
ã
%default_policy/model_2/layer_3/MatMulMatMul#default_policy/model_2/layer_2/Relu4default_policy/model_2/layer_3/MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
transpose_a( *
transpose_b( 

5default_policy/model_2/layer_3/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/layer_3/bias*
_output_shapes	
:è*
dtype0
Ù
&default_policy/model_2/layer_3/BiasAddBiasAdd%default_policy/model_2/layer_3/MatMul5default_policy/model_2/layer_3/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
data_formatNHWC

#default_policy/model_2/layer_3/ReluRelu&default_policy/model_2/layer_3/BiasAdd*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè

4default_policy/model_2/layer_4/MatMul/ReadVariableOpReadVariableOpdefault_policy/layer_4/kernel* 
_output_shapes
:
èè*
dtype0
ã
%default_policy/model_2/layer_4/MatMulMatMul#default_policy/model_2/layer_3/Relu4default_policy/model_2/layer_4/MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
transpose_a( *
transpose_b( 

5default_policy/model_2/layer_4/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/layer_4/bias*
_output_shapes	
:è*
dtype0
Ù
&default_policy/model_2/layer_4/BiasAddBiasAdd%default_policy/model_2/layer_4/MatMul5default_policy/model_2/layer_4/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
data_formatNHWC

#default_policy/model_2/layer_4/ReluRelu&default_policy/model_2/layer_4/BiasAdd*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
¥
=default_policy/model_2/layer_val_hidden/MatMul/ReadVariableOpReadVariableOp&default_policy/layer_val_hidden/kernel*
_output_shapes
:	è}*
dtype0
ô
.default_policy/model_2/layer_val_hidden/MatMulMatMul#default_policy/model_2/layer_4/Relu=default_policy/model_2/layer_val_hidden/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*
transpose_a( *
transpose_b( 

>default_policy/model_2/layer_val_hidden/BiasAdd/ReadVariableOpReadVariableOp$default_policy/layer_val_hidden/bias*
_output_shapes
:}*
dtype0
ó
/default_policy/model_2/layer_val_hidden/BiasAddBiasAdd.default_policy/model_2/layer_val_hidden/MatMul>default_policy/model_2/layer_val_hidden/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*
data_formatNHWC

,default_policy/model_2/layer_val_hidden/ReluRelu/default_policy/model_2/layer_val_hidden/BiasAdd*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}

6default_policy/model_2/value_out/MatMul/ReadVariableOpReadVariableOpdefault_policy/value_out/kernel*
_output_shapes

:}*
dtype0
ï
'default_policy/model_2/value_out/MatMulMatMul,default_policy/model_2/layer_val_hidden/Relu6default_policy/model_2/value_out/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
transpose_a( *
transpose_b( 

7default_policy/model_2/value_out/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/value_out/bias*
_output_shapes
:*
dtype0
Þ
(default_policy/model_2/value_out/BiasAddBiasAdd'default_policy/model_2/value_out/MatMul7default_policy/model_2/value_out/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
data_formatNHWC

7default_policy/model_2/action_out/MatMul/ReadVariableOpReadVariableOp default_policy/action_out/kernel*
_output_shapes
:	è}*
dtype0
è
(default_policy/model_2/action_out/MatMulMatMul#default_policy/model_2/layer_4/Relu7default_policy/model_2/action_out/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*
transpose_a( *
transpose_b( 

8default_policy/model_2/action_out/BiasAdd/ReadVariableOpReadVariableOpdefault_policy/action_out/bias*
_output_shapes
:}*
dtype0
á
)default_policy/model_2/action_out/BiasAddBiasAdd(default_policy/model_2/action_out/MatMul8default_policy/model_2/action_out/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*
data_formatNHWC
q
default_policy/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ
©
default_policy/Reshape_2Reshape(default_policy/model_2/value_out/BiasAdddefault_policy/Reshape_2/shape*
T0*
Tshape0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
_
default_policy/truediv_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?

default_policy/truediv_2RealDiv)default_policy/model_2/action_out/BiasAdddefault_policy/truediv_2/y*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
v
4default_policy/categorical_2/Multinomial/num_samplesConst*
_output_shapes
: *
dtype0*
value	B :
æ
(default_policy/categorical_2/MultinomialMultinomialdefault_policy/truediv_24default_policy/categorical_2/Multinomial/num_samples*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
output_dtype0	*

seed *
seed2 

default_policy/Squeeze_2Squeeze(default_policy/categorical_2/Multinomial*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims


default_policy/Cast_3Castdefault_policy/Squeeze_2*

DstT0*

SrcT0	*
Truncate( *#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

:default_policy/SparseSoftmaxCrossEntropyWithLogits_3/ShapeShapedefault_policy/Cast_3*
T0*
_output_shapes
:*
out_type0

Xdefault_policy/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsdefault_policy/truediv_2default_policy/Cast_3*
T0*
Tlabels0*6
_output_shapes$
":ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ}
£
default_policy/Neg_3NegXdefault_policy/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
_
default_policy/truediv_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?

default_policy/truediv_3RealDiv!default_policy/action_dist_inputsdefault_policy/truediv_3/y*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
v
4default_policy/categorical_3/Multinomial/num_samplesConst*
_output_shapes
: *
dtype0*
value	B :
æ
(default_policy/categorical_3/MultinomialMultinomialdefault_policy/truediv_34default_policy/categorical_3/Multinomial/num_samples*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
output_dtype0	*

seed *
seed2 

default_policy/Squeeze_3Squeeze(default_policy/categorical_3/Multinomial*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims


default_policy/Cast_4Castdefault_policy/Squeeze_3*

DstT0*

SrcT0	*
Truncate( *#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

:default_policy/SparseSoftmaxCrossEntropyWithLogits_4/ShapeShapedefault_policy/Cast_4*
T0*
_output_shapes
:*
out_type0

Xdefault_policy/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsdefault_policy/truediv_3default_policy/Cast_4*
T0*
Tlabels0*6
_output_shapes$
":ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ}
£
default_policy/Neg_4NegXdefault_policy/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

default_policy/Cast_5Castdefault_policy/action*

DstT0*

SrcT0	*
Truncate( *#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

:default_policy/SparseSoftmaxCrossEntropyWithLogits_5/ShapeShapedefault_policy/Cast_5*
T0*
_output_shapes
:*
out_type0

Xdefault_policy/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsdefault_policy/truediv_2default_policy/Cast_5*
T0*
Tlabels0*6
_output_shapes$
":ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ}
£
default_policy/Neg_5NegXdefault_policy/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
default_policy/subSubdefault_policy/Neg_5default_policy/action_logp*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
]
default_policy/Exp_2Expdefault_policy/sub*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
f
$default_policy/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
¨
default_policy/MaxMaxdefault_policy/truediv_3$default_policy/Max/reduction_indices*
T0*

Tidx0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(
{
default_policy/sub_1Subdefault_policy/truediv_3default_policy/Max*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
h
&default_policy/Max_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
¬
default_policy/Max_1Maxdefault_policy/truediv_2&default_policy/Max_1/reduction_indices*
T0*

Tidx0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(
}
default_policy/sub_2Subdefault_policy/truediv_2default_policy/Max_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
c
default_policy/Exp_3Expdefault_policy/sub_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
c
default_policy/Exp_4Expdefault_policy/sub_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
f
$default_policy/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
¤
default_policy/SumSumdefault_policy/Exp_3$default_policy/Sum/reduction_indices*
T0*

Tidx0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(
h
&default_policy/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
¨
default_policy/Sum_1Sumdefault_policy/Exp_4&default_policy/Sum_1/reduction_indices*
T0*

Tidx0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(

default_policy/truediv_4RealDivdefault_policy/Exp_3default_policy/Sum*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
_
default_policy/LogLogdefault_policy/Sum*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
default_policy/sub_3Subdefault_policy/sub_1default_policy/Log*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
y
default_policy/sub_4Subdefault_policy/sub_3default_policy/sub_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
c
default_policy/Log_1Logdefault_policy/Sum_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
{
default_policy/add_1AddV2default_policy/sub_4default_policy/Log_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
{
default_policy/mulMuldefault_policy/truediv_4default_policy/add_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
h
&default_policy/Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
¢
default_policy/Sum_2Sumdefault_policy/mul&default_policy/Sum_2/reduction_indices*
T0*

Tidx0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims( 
`
default_policy/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 

default_policy/MeanMeandefault_policy/Sum_2default_policy/Const_1*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
h
&default_policy/Max_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
¬
default_policy/Max_2Maxdefault_policy/truediv_2&default_policy/Max_2/reduction_indices*
T0*

Tidx0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(
}
default_policy/sub_5Subdefault_policy/truediv_2default_policy/Max_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
c
default_policy/Exp_5Expdefault_policy/sub_5*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
h
&default_policy/Sum_3/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
¨
default_policy/Sum_3Sumdefault_policy/Exp_5&default_policy/Sum_3/reduction_indices*
T0*

Tidx0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(

default_policy/truediv_5RealDivdefault_policy/Exp_5default_policy/Sum_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
c
default_policy/Log_2Logdefault_policy/Sum_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
default_policy/sub_6Subdefault_policy/Log_2default_policy/sub_5*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
}
default_policy/mul_1Muldefault_policy/truediv_5default_policy/sub_6*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
h
&default_policy/Sum_4/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
¤
default_policy/Sum_4Sumdefault_policy/mul_1&default_policy/Sum_4/reduction_indices*
T0*

Tidx0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims( 
`
default_policy/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 

default_policy/Mean_1Meandefault_policy/Sum_4default_policy/Const_2*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
z
default_policy/mul_2Muldefault_policy/advantagesdefault_policy/Exp_2*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
k
&default_policy/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *ff¦?

$default_policy/clip_by_value/MinimumMinimumdefault_policy/Exp_2&default_policy/clip_by_value/Minimum/y*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
c
default_policy/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *333?

default_policy/clip_by_valueMaximum$default_policy/clip_by_value/Minimumdefault_policy/clip_by_value/y*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

default_policy/mul_3Muldefault_policy/advantagesdefault_policy/clip_by_value*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
{
default_policy/MinimumMinimumdefault_policy/mul_2default_policy/mul_3*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
a
default_policy/Neg_6Negdefault_policy/Minimum*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
default_policy/Const_3Const*
_output_shapes
:*
dtype0*
valueB: 

default_policy/Mean_2Meandefault_policy/Neg_6default_policy/Const_3*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 

default_policy/sub_7Subdefault_policy/Reshape_2default_policy/value_targets*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
c
default_policy/SquareSquaredefault_policy/sub_7*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
|
default_policy/sub_8Subdefault_policy/Reshape_2default_policy/vf_preds*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
m
(default_policy/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *   A

&default_policy/clip_by_value_1/MinimumMinimumdefault_policy/sub_8(default_policy/clip_by_value_1/Minimum/y*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
e
 default_policy/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   Á
¡
default_policy/clip_by_value_1Maximum&default_policy/clip_by_value_1/Minimum default_policy/clip_by_value_1/y*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

default_policy/add_2AddV2default_policy/vf_predsdefault_policy/clip_by_value_1*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
}
default_policy/sub_9Subdefault_policy/add_2default_policy/value_targets*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
e
default_policy/Square_1Squaredefault_policy/sub_9*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

default_policy/MaximumMaximumdefault_policy/Squaredefault_policy/Square_1*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
default_policy/Const_4Const*
_output_shapes
:*
dtype0*
valueB: 

default_policy/Mean_3Meandefault_policy/Maximumdefault_policy/Const_4*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
a
default_policy/Neg_7Negdefault_policy/Minimum*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
p
 default_policy/ReadVariableOp_12ReadVariableOpdefault_policy/kl_coeff*
_output_shapes
: *
dtype0

default_policy/mul_4Mul default_policy/ReadVariableOp_12default_policy/Sum_2*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
default_policy/add_3AddV2default_policy/Neg_7default_policy/mul_4*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
[
default_policy/mul_5/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
y
default_policy/mul_5Muldefault_policy/mul_5/xdefault_policy/Maximum*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
default_policy/add_4AddV2default_policy/add_3default_policy/mul_5*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
u
 default_policy/ReadVariableOp_13ReadVariableOpdefault_policy/entropy_coeff*
_output_shapes
: *
dtype0

default_policy/mul_6Mul default_policy/ReadVariableOp_13default_policy/Sum_4*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
v
default_policy/sub_10Subdefault_policy/add_4default_policy/mul_6*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
default_policy/Const_5Const*
_output_shapes
:*
dtype0*
valueB: 

default_policy/Mean_4Meandefault_policy/sub_10default_policy/Const_5*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
t
$default_policy/Cast_6/ReadVariableOpReadVariableOpdefault_policy/kl_coeff*
_output_shapes
: *
dtype0

default_policy/Cast_6Cast$default_policy/Cast_6/ReadVariableOp*

DstT0*

SrcT0*
Truncate( *
_output_shapes
: 
n
$default_policy/Cast_7/ReadVariableOpReadVariableOpdefault_policy/lr*
_output_shapes
: *
dtype0

default_policy/Cast_7Cast$default_policy/Cast_7/ReadVariableOp*

DstT0*

SrcT0*
Truncate( *
_output_shapes
: 
w
-default_policy/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
²
default_policy/moments/meanMeandefault_policy/value_targets-default_policy/moments/mean/reduction_indices*
T0*

Tidx0*
_output_shapes
:*
	keep_dims(
u
#default_policy/moments/StopGradientStopGradientdefault_policy/moments/mean*
T0*
_output_shapes
:
®
(default_policy/moments/SquaredDifferenceSquaredDifferencedefault_policy/value_targets#default_policy/moments/StopGradient*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
{
1default_policy/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
Æ
default_policy/moments/varianceMean(default_policy/moments/SquaredDifference1default_policy/moments/variance/reduction_indices*
T0*

Tidx0*
_output_shapes
:*
	keep_dims(
~
default_policy/moments/SqueezeSqueezedefault_policy/moments/mean*
T0*
_output_shapes
: *
squeeze_dims
 

 default_policy/moments/Squeeze_1Squeezedefault_policy/moments/variance*
T0*
_output_shapes
: *
squeeze_dims
 

default_policy/sub_11Subdefault_policy/value_targetsdefault_policy/Reshape_2*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
/default_policy/moments_1/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
¯
default_policy/moments_1/meanMeandefault_policy/sub_11/default_policy/moments_1/mean/reduction_indices*
T0*

Tidx0*
_output_shapes
:*
	keep_dims(
y
%default_policy/moments_1/StopGradientStopGradientdefault_policy/moments_1/mean*
T0*
_output_shapes
:
«
*default_policy/moments_1/SquaredDifferenceSquaredDifferencedefault_policy/sub_11%default_policy/moments_1/StopGradient*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
}
3default_policy/moments_1/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
Ì
!default_policy/moments_1/varianceMean*default_policy/moments_1/SquaredDifference3default_policy/moments_1/variance/reduction_indices*
T0*

Tidx0*
_output_shapes
:*
	keep_dims(

 default_policy/moments_1/SqueezeSqueezedefault_policy/moments_1/mean*
T0*
_output_shapes
: *
squeeze_dims
 

"default_policy/moments_1/Squeeze_1Squeeze!default_policy/moments_1/variance*
T0*
_output_shapes
: *
squeeze_dims
 

default_policy/truediv_6RealDiv"default_policy/moments_1/Squeeze_1 default_policy/moments/Squeeze_1*
T0*
_output_shapes
: 
\
default_policy/sub_12/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
p
default_policy/sub_12Subdefault_policy/sub_12/xdefault_policy/truediv_6*
T0*
_output_shapes
: 
_
default_policy/Maximum_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ¿
w
default_policy/Maximum_1Maximumdefault_policy/Maximum_1/xdefault_policy/sub_12*
T0*
_output_shapes
: 
y
$default_policy/Cast_8/ReadVariableOpReadVariableOpdefault_policy/entropy_coeff*
_output_shapes
: *
dtype0

default_policy/Cast_8Cast$default_policy/Cast_8/ReadVariableOp*

DstT0*

SrcT0*
Truncate( *
_output_shapes
: 
[
default_policy/Const_6Const*
_output_shapes
: *
dtype0*
valueB
 *  (B
a
default_policy/gradients/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
m
(default_policy/gradients/grad_ys_0/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
§
"default_policy/gradients/grad_ys_0Filldefault_policy/gradients/Shape(default_policy/gradients/grad_ys_0/Const*
T0*
_output_shapes
: *

index_type0

Adefault_policy/gradients/default_policy/Mean_4_grad/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
à
;default_policy/gradients/default_policy/Mean_4_grad/ReshapeReshape"default_policy/gradients/grad_ys_0Adefault_policy/gradients/default_policy/Mean_4_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:

9default_policy/gradients/default_policy/Mean_4_grad/ShapeShapedefault_policy/sub_10*
T0*
_output_shapes
:*
out_type0
ø
8default_policy/gradients/default_policy/Mean_4_grad/TileTile;default_policy/gradients/default_policy/Mean_4_grad/Reshape9default_policy/gradients/default_policy/Mean_4_grad/Shape*
T0*

Tmultiples0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

;default_policy/gradients/default_policy/Mean_4_grad/Shape_1Shapedefault_policy/sub_10*
T0*
_output_shapes
:*
out_type0
~
;default_policy/gradients/default_policy/Mean_4_grad/Shape_2Const*
_output_shapes
: *
dtype0*
valueB 

9default_policy/gradients/default_policy/Mean_4_grad/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
ö
8default_policy/gradients/default_policy/Mean_4_grad/ProdProd;default_policy/gradients/default_policy/Mean_4_grad/Shape_19default_policy/gradients/default_policy/Mean_4_grad/Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 

;default_policy/gradients/default_policy/Mean_4_grad/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
ú
:default_policy/gradients/default_policy/Mean_4_grad/Prod_1Prod;default_policy/gradients/default_policy/Mean_4_grad/Shape_2;default_policy/gradients/default_policy/Mean_4_grad/Const_1*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 

=default_policy/gradients/default_policy/Mean_4_grad/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :
â
;default_policy/gradients/default_policy/Mean_4_grad/MaximumMaximum:default_policy/gradients/default_policy/Mean_4_grad/Prod_1=default_policy/gradients/default_policy/Mean_4_grad/Maximum/y*
T0*
_output_shapes
: 
à
<default_policy/gradients/default_policy/Mean_4_grad/floordivFloorDiv8default_policy/gradients/default_policy/Mean_4_grad/Prod;default_policy/gradients/default_policy/Mean_4_grad/Maximum*
T0*
_output_shapes
: 
¾
8default_policy/gradients/default_policy/Mean_4_grad/CastCast<default_policy/gradients/default_policy/Mean_4_grad/floordiv*

DstT0*

SrcT0*
Truncate( *
_output_shapes
: 
è
;default_policy/gradients/default_policy/Mean_4_grad/truedivRealDiv8default_policy/gradients/default_policy/Mean_4_grad/Tile8default_policy/gradients/default_policy/Mean_4_grad/Cast*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

9default_policy/gradients/default_policy/sub_10_grad/ShapeShapedefault_policy/add_4*
T0*
_output_shapes
:*
out_type0

;default_policy/gradients/default_policy/sub_10_grad/Shape_1Shapedefault_policy/mul_6*
T0*
_output_shapes
:*
out_type0

Idefault_policy/gradients/default_policy/sub_10_grad/BroadcastGradientArgsBroadcastGradientArgs9default_policy/gradients/default_policy/sub_10_grad/Shape;default_policy/gradients/default_policy/sub_10_grad/Shape_1*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ

7default_policy/gradients/default_policy/sub_10_grad/SumSum;default_policy/gradients/default_policy/Mean_4_grad/truedivIdefault_policy/gradients/default_policy/sub_10_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
ö
;default_policy/gradients/default_policy/sub_10_grad/ReshapeReshape7default_policy/gradients/default_policy/sub_10_grad/Sum9default_policy/gradients/default_policy/sub_10_grad/Shape*
T0*
Tshape0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
©
7default_policy/gradients/default_policy/sub_10_grad/NegNeg;default_policy/gradients/default_policy/Mean_4_grad/truediv*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

9default_policy/gradients/default_policy/sub_10_grad/Sum_1Sum7default_policy/gradients/default_policy/sub_10_grad/NegKdefault_policy/gradients/default_policy/sub_10_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
ü
=default_policy/gradients/default_policy/sub_10_grad/Reshape_1Reshape9default_policy/gradients/default_policy/sub_10_grad/Sum_1;default_policy/gradients/default_policy/sub_10_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ê
Ddefault_policy/gradients/default_policy/sub_10_grad/tuple/group_depsNoOp<^default_policy/gradients/default_policy/sub_10_grad/Reshape>^default_policy/gradients/default_policy/sub_10_grad/Reshape_1
Ú
Ldefault_policy/gradients/default_policy/sub_10_grad/tuple/control_dependencyIdentity;default_policy/gradients/default_policy/sub_10_grad/ReshapeE^default_policy/gradients/default_policy/sub_10_grad/tuple/group_deps*
T0*N
_classD
B@loc:@default_policy/gradients/default_policy/sub_10_grad/Reshape*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
à
Ndefault_policy/gradients/default_policy/sub_10_grad/tuple/control_dependency_1Identity=default_policy/gradients/default_policy/sub_10_grad/Reshape_1E^default_policy/gradients/default_policy/sub_10_grad/tuple/group_deps*
T0*P
_classF
DBloc:@default_policy/gradients/default_policy/sub_10_grad/Reshape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

8default_policy/gradients/default_policy/add_4_grad/ShapeShapedefault_policy/add_3*
T0*
_output_shapes
:*
out_type0

:default_policy/gradients/default_policy/add_4_grad/Shape_1Shapedefault_policy/mul_5*
T0*
_output_shapes
:*
out_type0

Hdefault_policy/gradients/default_policy/add_4_grad/BroadcastGradientArgsBroadcastGradientArgs8default_policy/gradients/default_policy/add_4_grad/Shape:default_policy/gradients/default_policy/add_4_grad/Shape_1*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ

6default_policy/gradients/default_policy/add_4_grad/SumSumLdefault_policy/gradients/default_policy/sub_10_grad/tuple/control_dependencyHdefault_policy/gradients/default_policy/add_4_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
ó
:default_policy/gradients/default_policy/add_4_grad/ReshapeReshape6default_policy/gradients/default_policy/add_4_grad/Sum8default_policy/gradients/default_policy/add_4_grad/Shape*
T0*
Tshape0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

8default_policy/gradients/default_policy/add_4_grad/Sum_1SumLdefault_policy/gradients/default_policy/sub_10_grad/tuple/control_dependencyJdefault_policy/gradients/default_policy/add_4_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
ù
<default_policy/gradients/default_policy/add_4_grad/Reshape_1Reshape8default_policy/gradients/default_policy/add_4_grad/Sum_1:default_policy/gradients/default_policy/add_4_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ç
Cdefault_policy/gradients/default_policy/add_4_grad/tuple/group_depsNoOp;^default_policy/gradients/default_policy/add_4_grad/Reshape=^default_policy/gradients/default_policy/add_4_grad/Reshape_1
Ö
Kdefault_policy/gradients/default_policy/add_4_grad/tuple/control_dependencyIdentity:default_policy/gradients/default_policy/add_4_grad/ReshapeD^default_policy/gradients/default_policy/add_4_grad/tuple/group_deps*
T0*M
_classC
A?loc:@default_policy/gradients/default_policy/add_4_grad/Reshape*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ü
Mdefault_policy/gradients/default_policy/add_4_grad/tuple/control_dependency_1Identity<default_policy/gradients/default_policy/add_4_grad/Reshape_1D^default_policy/gradients/default_policy/add_4_grad/tuple/group_deps*
T0*O
_classE
CAloc:@default_policy/gradients/default_policy/add_4_grad/Reshape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

8default_policy/gradients/default_policy/mul_6_grad/ShapeShape default_policy/ReadVariableOp_13*
T0*
_output_shapes
: *
out_type0

:default_policy/gradients/default_policy/mul_6_grad/Shape_1Shapedefault_policy/Sum_4*
T0*
_output_shapes
:*
out_type0

Hdefault_policy/gradients/default_policy/mul_6_grad/BroadcastGradientArgsBroadcastGradientArgs8default_policy/gradients/default_policy/mul_6_grad/Shape:default_policy/gradients/default_policy/mul_6_grad/Shape_1*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
Ñ
6default_policy/gradients/default_policy/mul_6_grad/MulMulNdefault_policy/gradients/default_policy/sub_10_grad/tuple/control_dependency_1default_policy/Sum_4*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ÿ
6default_policy/gradients/default_policy/mul_6_grad/SumSum6default_policy/gradients/default_policy/mul_6_grad/MulHdefault_policy/gradients/default_policy/mul_6_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
æ
:default_policy/gradients/default_policy/mul_6_grad/ReshapeReshape6default_policy/gradients/default_policy/mul_6_grad/Sum8default_policy/gradients/default_policy/mul_6_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
ß
8default_policy/gradients/default_policy/mul_6_grad/Mul_1Mul default_policy/ReadVariableOp_13Ndefault_policy/gradients/default_policy/sub_10_grad/tuple/control_dependency_1*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

8default_policy/gradients/default_policy/mul_6_grad/Sum_1Sum8default_policy/gradients/default_policy/mul_6_grad/Mul_1Jdefault_policy/gradients/default_policy/mul_6_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
ù
<default_policy/gradients/default_policy/mul_6_grad/Reshape_1Reshape8default_policy/gradients/default_policy/mul_6_grad/Sum_1:default_policy/gradients/default_policy/mul_6_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ç
Cdefault_policy/gradients/default_policy/mul_6_grad/tuple/group_depsNoOp;^default_policy/gradients/default_policy/mul_6_grad/Reshape=^default_policy/gradients/default_policy/mul_6_grad/Reshape_1
É
Kdefault_policy/gradients/default_policy/mul_6_grad/tuple/control_dependencyIdentity:default_policy/gradients/default_policy/mul_6_grad/ReshapeD^default_policy/gradients/default_policy/mul_6_grad/tuple/group_deps*
T0*M
_classC
A?loc:@default_policy/gradients/default_policy/mul_6_grad/Reshape*
_output_shapes
: 
Ü
Mdefault_policy/gradients/default_policy/mul_6_grad/tuple/control_dependency_1Identity<default_policy/gradients/default_policy/mul_6_grad/Reshape_1D^default_policy/gradients/default_policy/mul_6_grad/tuple/group_deps*
T0*O
_classE
CAloc:@default_policy/gradients/default_policy/mul_6_grad/Reshape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

8default_policy/gradients/default_policy/add_3_grad/ShapeShapedefault_policy/Neg_7*
T0*
_output_shapes
:*
out_type0

:default_policy/gradients/default_policy/add_3_grad/Shape_1Shapedefault_policy/mul_4*
T0*
_output_shapes
:*
out_type0

Hdefault_policy/gradients/default_policy/add_3_grad/BroadcastGradientArgsBroadcastGradientArgs8default_policy/gradients/default_policy/add_3_grad/Shape:default_policy/gradients/default_policy/add_3_grad/Shape_1*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ

6default_policy/gradients/default_policy/add_3_grad/SumSumKdefault_policy/gradients/default_policy/add_4_grad/tuple/control_dependencyHdefault_policy/gradients/default_policy/add_3_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
ó
:default_policy/gradients/default_policy/add_3_grad/ReshapeReshape6default_policy/gradients/default_policy/add_3_grad/Sum8default_policy/gradients/default_policy/add_3_grad/Shape*
T0*
Tshape0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

8default_policy/gradients/default_policy/add_3_grad/Sum_1SumKdefault_policy/gradients/default_policy/add_4_grad/tuple/control_dependencyJdefault_policy/gradients/default_policy/add_3_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
ù
<default_policy/gradients/default_policy/add_3_grad/Reshape_1Reshape8default_policy/gradients/default_policy/add_3_grad/Sum_1:default_policy/gradients/default_policy/add_3_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ç
Cdefault_policy/gradients/default_policy/add_3_grad/tuple/group_depsNoOp;^default_policy/gradients/default_policy/add_3_grad/Reshape=^default_policy/gradients/default_policy/add_3_grad/Reshape_1
Ö
Kdefault_policy/gradients/default_policy/add_3_grad/tuple/control_dependencyIdentity:default_policy/gradients/default_policy/add_3_grad/ReshapeD^default_policy/gradients/default_policy/add_3_grad/tuple/group_deps*
T0*M
_classC
A?loc:@default_policy/gradients/default_policy/add_3_grad/Reshape*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ü
Mdefault_policy/gradients/default_policy/add_3_grad/tuple/control_dependency_1Identity<default_policy/gradients/default_policy/add_3_grad/Reshape_1D^default_policy/gradients/default_policy/add_3_grad/tuple/group_deps*
T0*O
_classE
CAloc:@default_policy/gradients/default_policy/add_3_grad/Reshape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

8default_policy/gradients/default_policy/mul_5_grad/ShapeShapedefault_policy/mul_5/x*
T0*
_output_shapes
: *
out_type0

:default_policy/gradients/default_policy/mul_5_grad/Shape_1Shapedefault_policy/Maximum*
T0*
_output_shapes
:*
out_type0

Hdefault_policy/gradients/default_policy/mul_5_grad/BroadcastGradientArgsBroadcastGradientArgs8default_policy/gradients/default_policy/mul_5_grad/Shape:default_policy/gradients/default_policy/mul_5_grad/Shape_1*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
Ò
6default_policy/gradients/default_policy/mul_5_grad/MulMulMdefault_policy/gradients/default_policy/add_4_grad/tuple/control_dependency_1default_policy/Maximum*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ÿ
6default_policy/gradients/default_policy/mul_5_grad/SumSum6default_policy/gradients/default_policy/mul_5_grad/MulHdefault_policy/gradients/default_policy/mul_5_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
æ
:default_policy/gradients/default_policy/mul_5_grad/ReshapeReshape6default_policy/gradients/default_policy/mul_5_grad/Sum8default_policy/gradients/default_policy/mul_5_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
Ô
8default_policy/gradients/default_policy/mul_5_grad/Mul_1Muldefault_policy/mul_5/xMdefault_policy/gradients/default_policy/add_4_grad/tuple/control_dependency_1*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

8default_policy/gradients/default_policy/mul_5_grad/Sum_1Sum8default_policy/gradients/default_policy/mul_5_grad/Mul_1Jdefault_policy/gradients/default_policy/mul_5_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
ù
<default_policy/gradients/default_policy/mul_5_grad/Reshape_1Reshape8default_policy/gradients/default_policy/mul_5_grad/Sum_1:default_policy/gradients/default_policy/mul_5_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ç
Cdefault_policy/gradients/default_policy/mul_5_grad/tuple/group_depsNoOp;^default_policy/gradients/default_policy/mul_5_grad/Reshape=^default_policy/gradients/default_policy/mul_5_grad/Reshape_1
É
Kdefault_policy/gradients/default_policy/mul_5_grad/tuple/control_dependencyIdentity:default_policy/gradients/default_policy/mul_5_grad/ReshapeD^default_policy/gradients/default_policy/mul_5_grad/tuple/group_deps*
T0*M
_classC
A?loc:@default_policy/gradients/default_policy/mul_5_grad/Reshape*
_output_shapes
: 
Ü
Mdefault_policy/gradients/default_policy/mul_5_grad/tuple/control_dependency_1Identity<default_policy/gradients/default_policy/mul_5_grad/Reshape_1D^default_policy/gradients/default_policy/mul_5_grad/tuple/group_deps*
T0*O
_classE
CAloc:@default_policy/gradients/default_policy/mul_5_grad/Reshape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

8default_policy/gradients/default_policy/Sum_4_grad/ShapeShapedefault_policy/mul_1*
T0*
_output_shapes
:*
out_type0
Æ
7default_policy/gradients/default_policy/Sum_4_grad/SizeConst*K
_classA
?=loc:@default_policy/gradients/default_policy/Sum_4_grad/Shape*
_output_shapes
: *
dtype0*
value	B :

6default_policy/gradients/default_policy/Sum_4_grad/addAddV2&default_policy/Sum_4/reduction_indices7default_policy/gradients/default_policy/Sum_4_grad/Size*
T0*K
_classA
?=loc:@default_policy/gradients/default_policy/Sum_4_grad/Shape*
_output_shapes
: 
¡
6default_policy/gradients/default_policy/Sum_4_grad/modFloorMod6default_policy/gradients/default_policy/Sum_4_grad/add7default_policy/gradients/default_policy/Sum_4_grad/Size*
T0*K
_classA
?=loc:@default_policy/gradients/default_policy/Sum_4_grad/Shape*
_output_shapes
: 
Ê
:default_policy/gradients/default_policy/Sum_4_grad/Shape_1Const*K
_classA
?=loc:@default_policy/gradients/default_policy/Sum_4_grad/Shape*
_output_shapes
: *
dtype0*
valueB 
Í
>default_policy/gradients/default_policy/Sum_4_grad/range/startConst*K
_classA
?=loc:@default_policy/gradients/default_policy/Sum_4_grad/Shape*
_output_shapes
: *
dtype0*
value	B : 
Í
>default_policy/gradients/default_policy/Sum_4_grad/range/deltaConst*K
_classA
?=loc:@default_policy/gradients/default_policy/Sum_4_grad/Shape*
_output_shapes
: *
dtype0*
value	B :
ï
8default_policy/gradients/default_policy/Sum_4_grad/rangeRange>default_policy/gradients/default_policy/Sum_4_grad/range/start7default_policy/gradients/default_policy/Sum_4_grad/Size>default_policy/gradients/default_policy/Sum_4_grad/range/delta*

Tidx0*K
_classA
?=loc:@default_policy/gradients/default_policy/Sum_4_grad/Shape*
_output_shapes
:
Ì
=default_policy/gradients/default_policy/Sum_4_grad/ones/ConstConst*K
_classA
?=loc:@default_policy/gradients/default_policy/Sum_4_grad/Shape*
_output_shapes
: *
dtype0*
value	B :
º
7default_policy/gradients/default_policy/Sum_4_grad/onesFill:default_policy/gradients/default_policy/Sum_4_grad/Shape_1=default_policy/gradients/default_policy/Sum_4_grad/ones/Const*
T0*K
_classA
?=loc:@default_policy/gradients/default_policy/Sum_4_grad/Shape*
_output_shapes
: *

index_type0
±
@default_policy/gradients/default_policy/Sum_4_grad/DynamicStitchDynamicStitch8default_policy/gradients/default_policy/Sum_4_grad/range6default_policy/gradients/default_policy/Sum_4_grad/mod8default_policy/gradients/default_policy/Sum_4_grad/Shape7default_policy/gradients/default_policy/Sum_4_grad/ones*
N*
T0*K
_classA
?=loc:@default_policy/gradients/default_policy/Sum_4_grad/Shape*
_output_shapes
:

:default_policy/gradients/default_policy/Sum_4_grad/ReshapeReshapeMdefault_policy/gradients/default_policy/mul_6_grad/tuple/control_dependency_1@default_policy/gradients/default_policy/Sum_4_grad/DynamicStitch*
T0*
Tshape0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

>default_policy/gradients/default_policy/Sum_4_grad/BroadcastToBroadcastTo:default_policy/gradients/default_policy/Sum_4_grad/Reshape8default_policy/gradients/default_policy/Sum_4_grad/Shape*
T0*

Tidx0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
¸
6default_policy/gradients/default_policy/Neg_7_grad/NegNegKdefault_policy/gradients/default_policy/add_3_grad/tuple/control_dependency*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

8default_policy/gradients/default_policy/mul_4_grad/ShapeShape default_policy/ReadVariableOp_12*
T0*
_output_shapes
: *
out_type0

:default_policy/gradients/default_policy/mul_4_grad/Shape_1Shapedefault_policy/Sum_2*
T0*
_output_shapes
:*
out_type0

Hdefault_policy/gradients/default_policy/mul_4_grad/BroadcastGradientArgsBroadcastGradientArgs8default_policy/gradients/default_policy/mul_4_grad/Shape:default_policy/gradients/default_policy/mul_4_grad/Shape_1*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
Ð
6default_policy/gradients/default_policy/mul_4_grad/MulMulMdefault_policy/gradients/default_policy/add_3_grad/tuple/control_dependency_1default_policy/Sum_2*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ÿ
6default_policy/gradients/default_policy/mul_4_grad/SumSum6default_policy/gradients/default_policy/mul_4_grad/MulHdefault_policy/gradients/default_policy/mul_4_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
æ
:default_policy/gradients/default_policy/mul_4_grad/ReshapeReshape6default_policy/gradients/default_policy/mul_4_grad/Sum8default_policy/gradients/default_policy/mul_4_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
Þ
8default_policy/gradients/default_policy/mul_4_grad/Mul_1Mul default_policy/ReadVariableOp_12Mdefault_policy/gradients/default_policy/add_3_grad/tuple/control_dependency_1*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

8default_policy/gradients/default_policy/mul_4_grad/Sum_1Sum8default_policy/gradients/default_policy/mul_4_grad/Mul_1Jdefault_policy/gradients/default_policy/mul_4_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
ù
<default_policy/gradients/default_policy/mul_4_grad/Reshape_1Reshape8default_policy/gradients/default_policy/mul_4_grad/Sum_1:default_policy/gradients/default_policy/mul_4_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ç
Cdefault_policy/gradients/default_policy/mul_4_grad/tuple/group_depsNoOp;^default_policy/gradients/default_policy/mul_4_grad/Reshape=^default_policy/gradients/default_policy/mul_4_grad/Reshape_1
É
Kdefault_policy/gradients/default_policy/mul_4_grad/tuple/control_dependencyIdentity:default_policy/gradients/default_policy/mul_4_grad/ReshapeD^default_policy/gradients/default_policy/mul_4_grad/tuple/group_deps*
T0*M
_classC
A?loc:@default_policy/gradients/default_policy/mul_4_grad/Reshape*
_output_shapes
: 
Ü
Mdefault_policy/gradients/default_policy/mul_4_grad/tuple/control_dependency_1Identity<default_policy/gradients/default_policy/mul_4_grad/Reshape_1D^default_policy/gradients/default_policy/mul_4_grad/tuple/group_deps*
T0*O
_classE
CAloc:@default_policy/gradients/default_policy/mul_4_grad/Reshape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

:default_policy/gradients/default_policy/Maximum_grad/ShapeShapedefault_policy/Square*
T0*
_output_shapes
:*
out_type0

<default_policy/gradients/default_policy/Maximum_grad/Shape_1Shapedefault_policy/Square_1*
T0*
_output_shapes
:*
out_type0
É
?default_policy/gradients/default_policy/Maximum_grad/zeros_like	ZerosLikeMdefault_policy/gradients/default_policy/mul_5_grad/tuple/control_dependency_1*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¯
Adefault_policy/gradients/default_policy/Maximum_grad/GreaterEqualGreaterEqualdefault_policy/Squaredefault_policy/Square_1*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

Jdefault_policy/gradients/default_policy/Maximum_grad/BroadcastGradientArgsBroadcastGradientArgs:default_policy/gradients/default_policy/Maximum_grad/Shape<default_policy/gradients/default_policy/Maximum_grad/Shape_1*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
Ê
=default_policy/gradients/default_policy/Maximum_grad/SelectV2SelectV2Adefault_policy/gradients/default_policy/Maximum_grad/GreaterEqualMdefault_policy/gradients/default_policy/mul_5_grad/tuple/control_dependency_1?default_policy/gradients/default_policy/Maximum_grad/zeros_like*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

8default_policy/gradients/default_policy/Maximum_grad/SumSum=default_policy/gradients/default_policy/Maximum_grad/SelectV2Jdefault_policy/gradients/default_policy/Maximum_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
ù
<default_policy/gradients/default_policy/Maximum_grad/ReshapeReshape8default_policy/gradients/default_policy/Maximum_grad/Sum:default_policy/gradients/default_policy/Maximum_grad/Shape*
T0*
Tshape0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ì
?default_policy/gradients/default_policy/Maximum_grad/SelectV2_1SelectV2Adefault_policy/gradients/default_policy/Maximum_grad/GreaterEqual?default_policy/gradients/default_policy/Maximum_grad/zeros_likeMdefault_policy/gradients/default_policy/mul_5_grad/tuple/control_dependency_1*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

:default_policy/gradients/default_policy/Maximum_grad/Sum_1Sum?default_policy/gradients/default_policy/Maximum_grad/SelectV2_1Ldefault_policy/gradients/default_policy/Maximum_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
ÿ
>default_policy/gradients/default_policy/Maximum_grad/Reshape_1Reshape:default_policy/gradients/default_policy/Maximum_grad/Sum_1<default_policy/gradients/default_policy/Maximum_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Í
Edefault_policy/gradients/default_policy/Maximum_grad/tuple/group_depsNoOp=^default_policy/gradients/default_policy/Maximum_grad/Reshape?^default_policy/gradients/default_policy/Maximum_grad/Reshape_1
Þ
Mdefault_policy/gradients/default_policy/Maximum_grad/tuple/control_dependencyIdentity<default_policy/gradients/default_policy/Maximum_grad/ReshapeF^default_policy/gradients/default_policy/Maximum_grad/tuple/group_deps*
T0*O
_classE
CAloc:@default_policy/gradients/default_policy/Maximum_grad/Reshape*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ä
Odefault_policy/gradients/default_policy/Maximum_grad/tuple/control_dependency_1Identity>default_policy/gradients/default_policy/Maximum_grad/Reshape_1F^default_policy/gradients/default_policy/Maximum_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@default_policy/gradients/default_policy/Maximum_grad/Reshape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

8default_policy/gradients/default_policy/mul_1_grad/ShapeShapedefault_policy/truediv_5*
T0*
_output_shapes
:*
out_type0

:default_policy/gradients/default_policy/mul_1_grad/Shape_1Shapedefault_policy/sub_6*
T0*
_output_shapes
:*
out_type0

Hdefault_policy/gradients/default_policy/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs8default_policy/gradients/default_policy/mul_1_grad/Shape:default_policy/gradients/default_policy/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
Å
6default_policy/gradients/default_policy/mul_1_grad/MulMul>default_policy/gradients/default_policy/Sum_4_grad/BroadcastTodefault_policy/sub_6*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
ÿ
6default_policy/gradients/default_policy/mul_1_grad/SumSum6default_policy/gradients/default_policy/mul_1_grad/MulHdefault_policy/gradients/default_policy/mul_1_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
÷
:default_policy/gradients/default_policy/mul_1_grad/ReshapeReshape6default_policy/gradients/default_policy/mul_1_grad/Sum8default_policy/gradients/default_policy/mul_1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
Ë
8default_policy/gradients/default_policy/mul_1_grad/Mul_1Muldefault_policy/truediv_5>default_policy/gradients/default_policy/Sum_4_grad/BroadcastTo*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}

8default_policy/gradients/default_policy/mul_1_grad/Sum_1Sum8default_policy/gradients/default_policy/mul_1_grad/Mul_1Jdefault_policy/gradients/default_policy/mul_1_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
ý
<default_policy/gradients/default_policy/mul_1_grad/Reshape_1Reshape8default_policy/gradients/default_policy/mul_1_grad/Sum_1:default_policy/gradients/default_policy/mul_1_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
Ç
Cdefault_policy/gradients/default_policy/mul_1_grad/tuple/group_depsNoOp;^default_policy/gradients/default_policy/mul_1_grad/Reshape=^default_policy/gradients/default_policy/mul_1_grad/Reshape_1
Ú
Kdefault_policy/gradients/default_policy/mul_1_grad/tuple/control_dependencyIdentity:default_policy/gradients/default_policy/mul_1_grad/ReshapeD^default_policy/gradients/default_policy/mul_1_grad/tuple/group_deps*
T0*M
_classC
A?loc:@default_policy/gradients/default_policy/mul_1_grad/Reshape*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
à
Mdefault_policy/gradients/default_policy/mul_1_grad/tuple/control_dependency_1Identity<default_policy/gradients/default_policy/mul_1_grad/Reshape_1D^default_policy/gradients/default_policy/mul_1_grad/tuple/group_deps*
T0*O
_classE
CAloc:@default_policy/gradients/default_policy/mul_1_grad/Reshape_1*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}

:default_policy/gradients/default_policy/Minimum_grad/ShapeShapedefault_policy/mul_2*
T0*
_output_shapes
:*
out_type0

<default_policy/gradients/default_policy/Minimum_grad/Shape_1Shapedefault_policy/mul_3*
T0*
_output_shapes
:*
out_type0
²
?default_policy/gradients/default_policy/Minimum_grad/zeros_like	ZerosLike6default_policy/gradients/default_policy/Neg_7_grad/Neg*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¥
>default_policy/gradients/default_policy/Minimum_grad/LessEqual	LessEqualdefault_policy/mul_2default_policy/mul_3*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

Jdefault_policy/gradients/default_policy/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs:default_policy/gradients/default_policy/Minimum_grad/Shape<default_policy/gradients/default_policy/Minimum_grad/Shape_1*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
°
=default_policy/gradients/default_policy/Minimum_grad/SelectV2SelectV2>default_policy/gradients/default_policy/Minimum_grad/LessEqual6default_policy/gradients/default_policy/Neg_7_grad/Neg?default_policy/gradients/default_policy/Minimum_grad/zeros_like*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

8default_policy/gradients/default_policy/Minimum_grad/SumSum=default_policy/gradients/default_policy/Minimum_grad/SelectV2Jdefault_policy/gradients/default_policy/Minimum_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
ù
<default_policy/gradients/default_policy/Minimum_grad/ReshapeReshape8default_policy/gradients/default_policy/Minimum_grad/Sum:default_policy/gradients/default_policy/Minimum_grad/Shape*
T0*
Tshape0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
²
?default_policy/gradients/default_policy/Minimum_grad/SelectV2_1SelectV2>default_policy/gradients/default_policy/Minimum_grad/LessEqual?default_policy/gradients/default_policy/Minimum_grad/zeros_like6default_policy/gradients/default_policy/Neg_7_grad/Neg*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

:default_policy/gradients/default_policy/Minimum_grad/Sum_1Sum?default_policy/gradients/default_policy/Minimum_grad/SelectV2_1Ldefault_policy/gradients/default_policy/Minimum_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
ÿ
>default_policy/gradients/default_policy/Minimum_grad/Reshape_1Reshape:default_policy/gradients/default_policy/Minimum_grad/Sum_1<default_policy/gradients/default_policy/Minimum_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Í
Edefault_policy/gradients/default_policy/Minimum_grad/tuple/group_depsNoOp=^default_policy/gradients/default_policy/Minimum_grad/Reshape?^default_policy/gradients/default_policy/Minimum_grad/Reshape_1
Þ
Mdefault_policy/gradients/default_policy/Minimum_grad/tuple/control_dependencyIdentity<default_policy/gradients/default_policy/Minimum_grad/ReshapeF^default_policy/gradients/default_policy/Minimum_grad/tuple/group_deps*
T0*O
_classE
CAloc:@default_policy/gradients/default_policy/Minimum_grad/Reshape*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ä
Odefault_policy/gradients/default_policy/Minimum_grad/tuple/control_dependency_1Identity>default_policy/gradients/default_policy/Minimum_grad/Reshape_1F^default_policy/gradients/default_policy/Minimum_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@default_policy/gradients/default_policy/Minimum_grad/Reshape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

8default_policy/gradients/default_policy/Sum_2_grad/ShapeShapedefault_policy/mul*
T0*
_output_shapes
:*
out_type0
Æ
7default_policy/gradients/default_policy/Sum_2_grad/SizeConst*K
_classA
?=loc:@default_policy/gradients/default_policy/Sum_2_grad/Shape*
_output_shapes
: *
dtype0*
value	B :

6default_policy/gradients/default_policy/Sum_2_grad/addAddV2&default_policy/Sum_2/reduction_indices7default_policy/gradients/default_policy/Sum_2_grad/Size*
T0*K
_classA
?=loc:@default_policy/gradients/default_policy/Sum_2_grad/Shape*
_output_shapes
: 
¡
6default_policy/gradients/default_policy/Sum_2_grad/modFloorMod6default_policy/gradients/default_policy/Sum_2_grad/add7default_policy/gradients/default_policy/Sum_2_grad/Size*
T0*K
_classA
?=loc:@default_policy/gradients/default_policy/Sum_2_grad/Shape*
_output_shapes
: 
Ê
:default_policy/gradients/default_policy/Sum_2_grad/Shape_1Const*K
_classA
?=loc:@default_policy/gradients/default_policy/Sum_2_grad/Shape*
_output_shapes
: *
dtype0*
valueB 
Í
>default_policy/gradients/default_policy/Sum_2_grad/range/startConst*K
_classA
?=loc:@default_policy/gradients/default_policy/Sum_2_grad/Shape*
_output_shapes
: *
dtype0*
value	B : 
Í
>default_policy/gradients/default_policy/Sum_2_grad/range/deltaConst*K
_classA
?=loc:@default_policy/gradients/default_policy/Sum_2_grad/Shape*
_output_shapes
: *
dtype0*
value	B :
ï
8default_policy/gradients/default_policy/Sum_2_grad/rangeRange>default_policy/gradients/default_policy/Sum_2_grad/range/start7default_policy/gradients/default_policy/Sum_2_grad/Size>default_policy/gradients/default_policy/Sum_2_grad/range/delta*

Tidx0*K
_classA
?=loc:@default_policy/gradients/default_policy/Sum_2_grad/Shape*
_output_shapes
:
Ì
=default_policy/gradients/default_policy/Sum_2_grad/ones/ConstConst*K
_classA
?=loc:@default_policy/gradients/default_policy/Sum_2_grad/Shape*
_output_shapes
: *
dtype0*
value	B :
º
7default_policy/gradients/default_policy/Sum_2_grad/onesFill:default_policy/gradients/default_policy/Sum_2_grad/Shape_1=default_policy/gradients/default_policy/Sum_2_grad/ones/Const*
T0*K
_classA
?=loc:@default_policy/gradients/default_policy/Sum_2_grad/Shape*
_output_shapes
: *

index_type0
±
@default_policy/gradients/default_policy/Sum_2_grad/DynamicStitchDynamicStitch8default_policy/gradients/default_policy/Sum_2_grad/range6default_policy/gradients/default_policy/Sum_2_grad/mod8default_policy/gradients/default_policy/Sum_2_grad/Shape7default_policy/gradients/default_policy/Sum_2_grad/ones*
N*
T0*K
_classA
?=loc:@default_policy/gradients/default_policy/Sum_2_grad/Shape*
_output_shapes
:

:default_policy/gradients/default_policy/Sum_2_grad/ReshapeReshapeMdefault_policy/gradients/default_policy/mul_4_grad/tuple/control_dependency_1@default_policy/gradients/default_policy/Sum_2_grad/DynamicStitch*
T0*
Tshape0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

>default_policy/gradients/default_policy/Sum_2_grad/BroadcastToBroadcastTo:default_policy/gradients/default_policy/Sum_2_grad/Reshape8default_policy/gradients/default_policy/Sum_2_grad/Shape*
T0*

Tidx0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
Î
9default_policy/gradients/default_policy/Square_grad/ConstConstN^default_policy/gradients/default_policy/Maximum_grad/tuple/control_dependency*
_output_shapes
: *
dtype0*
valueB
 *   @
½
7default_policy/gradients/default_policy/Square_grad/MulMuldefault_policy/sub_79default_policy/gradients/default_policy/Square_grad/Const*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ö
9default_policy/gradients/default_policy/Square_grad/Mul_1MulMdefault_policy/gradients/default_policy/Maximum_grad/tuple/control_dependency7default_policy/gradients/default_policy/Square_grad/Mul*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ò
;default_policy/gradients/default_policy/Square_1_grad/ConstConstP^default_policy/gradients/default_policy/Maximum_grad/tuple/control_dependency_1*
_output_shapes
: *
dtype0*
valueB
 *   @
Á
9default_policy/gradients/default_policy/Square_1_grad/MulMuldefault_policy/sub_9;default_policy/gradients/default_policy/Square_1_grad/Const*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ü
;default_policy/gradients/default_policy/Square_1_grad/Mul_1MulOdefault_policy/gradients/default_policy/Maximum_grad/tuple/control_dependency_19default_policy/gradients/default_policy/Square_1_grad/Mul*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

<default_policy/gradients/default_policy/truediv_5_grad/ShapeShapedefault_policy/Exp_5*
T0*
_output_shapes
:*
out_type0

>default_policy/gradients/default_policy/truediv_5_grad/Shape_1Shapedefault_policy/Sum_3*
T0*
_output_shapes
:*
out_type0
 
Ldefault_policy/gradients/default_policy/truediv_5_grad/BroadcastGradientArgsBroadcastGradientArgs<default_policy/gradients/default_policy/truediv_5_grad/Shape>default_policy/gradients/default_policy/truediv_5_grad/Shape_1*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
Þ
>default_policy/gradients/default_policy/truediv_5_grad/RealDivRealDivKdefault_policy/gradients/default_policy/mul_1_grad/tuple/control_dependencydefault_policy/Sum_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}

:default_policy/gradients/default_policy/truediv_5_grad/SumSum>default_policy/gradients/default_policy/truediv_5_grad/RealDivLdefault_policy/gradients/default_policy/truediv_5_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 

>default_policy/gradients/default_policy/truediv_5_grad/ReshapeReshape:default_policy/gradients/default_policy/truediv_5_grad/Sum<default_policy/gradients/default_policy/truediv_5_grad/Shape*
T0*
Tshape0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}

:default_policy/gradients/default_policy/truediv_5_grad/NegNegdefault_policy/Exp_5*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
Ï
@default_policy/gradients/default_policy/truediv_5_grad/RealDiv_1RealDiv:default_policy/gradients/default_policy/truediv_5_grad/Negdefault_policy/Sum_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
Õ
@default_policy/gradients/default_policy/truediv_5_grad/RealDiv_2RealDiv@default_policy/gradients/default_policy/truediv_5_grad/RealDiv_1default_policy/Sum_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}

:default_policy/gradients/default_policy/truediv_5_grad/mulMulKdefault_policy/gradients/default_policy/mul_1_grad/tuple/control_dependency@default_policy/gradients/default_policy/truediv_5_grad/RealDiv_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}

<default_policy/gradients/default_policy/truediv_5_grad/Sum_1Sum:default_policy/gradients/default_policy/truediv_5_grad/mulNdefault_policy/gradients/default_policy/truediv_5_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 

@default_policy/gradients/default_policy/truediv_5_grad/Reshape_1Reshape<default_policy/gradients/default_policy/truediv_5_grad/Sum_1>default_policy/gradients/default_policy/truediv_5_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ó
Gdefault_policy/gradients/default_policy/truediv_5_grad/tuple/group_depsNoOp?^default_policy/gradients/default_policy/truediv_5_grad/ReshapeA^default_policy/gradients/default_policy/truediv_5_grad/Reshape_1
ê
Odefault_policy/gradients/default_policy/truediv_5_grad/tuple/control_dependencyIdentity>default_policy/gradients/default_policy/truediv_5_grad/ReshapeH^default_policy/gradients/default_policy/truediv_5_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@default_policy/gradients/default_policy/truediv_5_grad/Reshape*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
ð
Qdefault_policy/gradients/default_policy/truediv_5_grad/tuple/control_dependency_1Identity@default_policy/gradients/default_policy/truediv_5_grad/Reshape_1H^default_policy/gradients/default_policy/truediv_5_grad/tuple/group_deps*
T0*S
_classI
GEloc:@default_policy/gradients/default_policy/truediv_5_grad/Reshape_1*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

8default_policy/gradients/default_policy/sub_6_grad/ShapeShapedefault_policy/Log_2*
T0*
_output_shapes
:*
out_type0

:default_policy/gradients/default_policy/sub_6_grad/Shape_1Shapedefault_policy/sub_5*
T0*
_output_shapes
:*
out_type0

Hdefault_policy/gradients/default_policy/sub_6_grad/BroadcastGradientArgsBroadcastGradientArgs8default_policy/gradients/default_policy/sub_6_grad/Shape:default_policy/gradients/default_policy/sub_6_grad/Shape_1*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ

6default_policy/gradients/default_policy/sub_6_grad/SumSumMdefault_policy/gradients/default_policy/mul_1_grad/tuple/control_dependency_1Hdefault_policy/gradients/default_policy/sub_6_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
÷
:default_policy/gradients/default_policy/sub_6_grad/ReshapeReshape6default_policy/gradients/default_policy/sub_6_grad/Sum8default_policy/gradients/default_policy/sub_6_grad/Shape*
T0*
Tshape0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¾
6default_policy/gradients/default_policy/sub_6_grad/NegNegMdefault_policy/gradients/default_policy/mul_1_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}

8default_policy/gradients/default_policy/sub_6_grad/Sum_1Sum6default_policy/gradients/default_policy/sub_6_grad/NegJdefault_policy/gradients/default_policy/sub_6_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
ý
<default_policy/gradients/default_policy/sub_6_grad/Reshape_1Reshape8default_policy/gradients/default_policy/sub_6_grad/Sum_1:default_policy/gradients/default_policy/sub_6_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
Ç
Cdefault_policy/gradients/default_policy/sub_6_grad/tuple/group_depsNoOp;^default_policy/gradients/default_policy/sub_6_grad/Reshape=^default_policy/gradients/default_policy/sub_6_grad/Reshape_1
Ú
Kdefault_policy/gradients/default_policy/sub_6_grad/tuple/control_dependencyIdentity:default_policy/gradients/default_policy/sub_6_grad/ReshapeD^default_policy/gradients/default_policy/sub_6_grad/tuple/group_deps*
T0*M
_classC
A?loc:@default_policy/gradients/default_policy/sub_6_grad/Reshape*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
à
Mdefault_policy/gradients/default_policy/sub_6_grad/tuple/control_dependency_1Identity<default_policy/gradients/default_policy/sub_6_grad/Reshape_1D^default_policy/gradients/default_policy/sub_6_grad/tuple/group_deps*
T0*O
_classE
CAloc:@default_policy/gradients/default_policy/sub_6_grad/Reshape_1*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}

8default_policy/gradients/default_policy/mul_2_grad/ShapeShapedefault_policy/advantages*
T0*
_output_shapes
:*
out_type0

:default_policy/gradients/default_policy/mul_2_grad/Shape_1Shapedefault_policy/Exp_2*
T0*
_output_shapes
:*
out_type0

Hdefault_policy/gradients/default_policy/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs8default_policy/gradients/default_policy/mul_2_grad/Shape:default_policy/gradients/default_policy/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
Ð
6default_policy/gradients/default_policy/mul_2_grad/MulMulMdefault_policy/gradients/default_policy/Minimum_grad/tuple/control_dependencydefault_policy/Exp_2*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ÿ
6default_policy/gradients/default_policy/mul_2_grad/SumSum6default_policy/gradients/default_policy/mul_2_grad/MulHdefault_policy/gradients/default_policy/mul_2_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
ó
:default_policy/gradients/default_policy/mul_2_grad/ReshapeReshape6default_policy/gradients/default_policy/mul_2_grad/Sum8default_policy/gradients/default_policy/mul_2_grad/Shape*
T0*
Tshape0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
×
8default_policy/gradients/default_policy/mul_2_grad/Mul_1Muldefault_policy/advantagesMdefault_policy/gradients/default_policy/Minimum_grad/tuple/control_dependency*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

8default_policy/gradients/default_policy/mul_2_grad/Sum_1Sum8default_policy/gradients/default_policy/mul_2_grad/Mul_1Jdefault_policy/gradients/default_policy/mul_2_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
ù
<default_policy/gradients/default_policy/mul_2_grad/Reshape_1Reshape8default_policy/gradients/default_policy/mul_2_grad/Sum_1:default_policy/gradients/default_policy/mul_2_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ç
Cdefault_policy/gradients/default_policy/mul_2_grad/tuple/group_depsNoOp;^default_policy/gradients/default_policy/mul_2_grad/Reshape=^default_policy/gradients/default_policy/mul_2_grad/Reshape_1
Ö
Kdefault_policy/gradients/default_policy/mul_2_grad/tuple/control_dependencyIdentity:default_policy/gradients/default_policy/mul_2_grad/ReshapeD^default_policy/gradients/default_policy/mul_2_grad/tuple/group_deps*
T0*M
_classC
A?loc:@default_policy/gradients/default_policy/mul_2_grad/Reshape*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ü
Mdefault_policy/gradients/default_policy/mul_2_grad/tuple/control_dependency_1Identity<default_policy/gradients/default_policy/mul_2_grad/Reshape_1D^default_policy/gradients/default_policy/mul_2_grad/tuple/group_deps*
T0*O
_classE
CAloc:@default_policy/gradients/default_policy/mul_2_grad/Reshape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

8default_policy/gradients/default_policy/mul_3_grad/ShapeShapedefault_policy/advantages*
T0*
_output_shapes
:*
out_type0

:default_policy/gradients/default_policy/mul_3_grad/Shape_1Shapedefault_policy/clip_by_value*
T0*
_output_shapes
:*
out_type0

Hdefault_policy/gradients/default_policy/mul_3_grad/BroadcastGradientArgsBroadcastGradientArgs8default_policy/gradients/default_policy/mul_3_grad/Shape:default_policy/gradients/default_policy/mul_3_grad/Shape_1*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
Ú
6default_policy/gradients/default_policy/mul_3_grad/MulMulOdefault_policy/gradients/default_policy/Minimum_grad/tuple/control_dependency_1default_policy/clip_by_value*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ÿ
6default_policy/gradients/default_policy/mul_3_grad/SumSum6default_policy/gradients/default_policy/mul_3_grad/MulHdefault_policy/gradients/default_policy/mul_3_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
ó
:default_policy/gradients/default_policy/mul_3_grad/ReshapeReshape6default_policy/gradients/default_policy/mul_3_grad/Sum8default_policy/gradients/default_policy/mul_3_grad/Shape*
T0*
Tshape0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ù
8default_policy/gradients/default_policy/mul_3_grad/Mul_1Muldefault_policy/advantagesOdefault_policy/gradients/default_policy/Minimum_grad/tuple/control_dependency_1*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

8default_policy/gradients/default_policy/mul_3_grad/Sum_1Sum8default_policy/gradients/default_policy/mul_3_grad/Mul_1Jdefault_policy/gradients/default_policy/mul_3_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
ù
<default_policy/gradients/default_policy/mul_3_grad/Reshape_1Reshape8default_policy/gradients/default_policy/mul_3_grad/Sum_1:default_policy/gradients/default_policy/mul_3_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ç
Cdefault_policy/gradients/default_policy/mul_3_grad/tuple/group_depsNoOp;^default_policy/gradients/default_policy/mul_3_grad/Reshape=^default_policy/gradients/default_policy/mul_3_grad/Reshape_1
Ö
Kdefault_policy/gradients/default_policy/mul_3_grad/tuple/control_dependencyIdentity:default_policy/gradients/default_policy/mul_3_grad/ReshapeD^default_policy/gradients/default_policy/mul_3_grad/tuple/group_deps*
T0*M
_classC
A?loc:@default_policy/gradients/default_policy/mul_3_grad/Reshape*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ü
Mdefault_policy/gradients/default_policy/mul_3_grad/tuple/control_dependency_1Identity<default_policy/gradients/default_policy/mul_3_grad/Reshape_1D^default_policy/gradients/default_policy/mul_3_grad/tuple/group_deps*
T0*O
_classE
CAloc:@default_policy/gradients/default_policy/mul_3_grad/Reshape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

6default_policy/gradients/default_policy/mul_grad/ShapeShapedefault_policy/truediv_4*
T0*
_output_shapes
:*
out_type0

8default_policy/gradients/default_policy/mul_grad/Shape_1Shapedefault_policy/add_1*
T0*
_output_shapes
:*
out_type0

Fdefault_policy/gradients/default_policy/mul_grad/BroadcastGradientArgsBroadcastGradientArgs6default_policy/gradients/default_policy/mul_grad/Shape8default_policy/gradients/default_policy/mul_grad/Shape_1*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
Ã
4default_policy/gradients/default_policy/mul_grad/MulMul>default_policy/gradients/default_policy/Sum_2_grad/BroadcastTodefault_policy/add_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
ù
4default_policy/gradients/default_policy/mul_grad/SumSum4default_policy/gradients/default_policy/mul_grad/MulFdefault_policy/gradients/default_policy/mul_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
ñ
8default_policy/gradients/default_policy/mul_grad/ReshapeReshape4default_policy/gradients/default_policy/mul_grad/Sum6default_policy/gradients/default_policy/mul_grad/Shape*
T0*
Tshape0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
É
6default_policy/gradients/default_policy/mul_grad/Mul_1Muldefault_policy/truediv_4>default_policy/gradients/default_policy/Sum_2_grad/BroadcastTo*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
ÿ
6default_policy/gradients/default_policy/mul_grad/Sum_1Sum6default_policy/gradients/default_policy/mul_grad/Mul_1Hdefault_policy/gradients/default_policy/mul_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
÷
:default_policy/gradients/default_policy/mul_grad/Reshape_1Reshape6default_policy/gradients/default_policy/mul_grad/Sum_18default_policy/gradients/default_policy/mul_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
Á
Adefault_policy/gradients/default_policy/mul_grad/tuple/group_depsNoOp9^default_policy/gradients/default_policy/mul_grad/Reshape;^default_policy/gradients/default_policy/mul_grad/Reshape_1
Ò
Idefault_policy/gradients/default_policy/mul_grad/tuple/control_dependencyIdentity8default_policy/gradients/default_policy/mul_grad/ReshapeB^default_policy/gradients/default_policy/mul_grad/tuple/group_deps*
T0*K
_classA
?=loc:@default_policy/gradients/default_policy/mul_grad/Reshape*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
Ø
Kdefault_policy/gradients/default_policy/mul_grad/tuple/control_dependency_1Identity:default_policy/gradients/default_policy/mul_grad/Reshape_1B^default_policy/gradients/default_policy/mul_grad/tuple/group_deps*
T0*M
_classC
A?loc:@default_policy/gradients/default_policy/mul_grad/Reshape_1*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}

8default_policy/gradients/default_policy/sub_7_grad/ShapeShapedefault_policy/Reshape_2*
T0*
_output_shapes
:*
out_type0

:default_policy/gradients/default_policy/sub_7_grad/Shape_1Shapedefault_policy/value_targets*
T0*
_output_shapes
:*
out_type0

Hdefault_policy/gradients/default_policy/sub_7_grad/BroadcastGradientArgsBroadcastGradientArgs8default_policy/gradients/default_policy/sub_7_grad/Shape:default_policy/gradients/default_policy/sub_7_grad/Shape_1*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ

6default_policy/gradients/default_policy/sub_7_grad/SumSum9default_policy/gradients/default_policy/Square_grad/Mul_1Hdefault_policy/gradients/default_policy/sub_7_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
ó
:default_policy/gradients/default_policy/sub_7_grad/ReshapeReshape6default_policy/gradients/default_policy/sub_7_grad/Sum8default_policy/gradients/default_policy/sub_7_grad/Shape*
T0*
Tshape0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¦
6default_policy/gradients/default_policy/sub_7_grad/NegNeg9default_policy/gradients/default_policy/Square_grad/Mul_1*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

8default_policy/gradients/default_policy/sub_7_grad/Sum_1Sum6default_policy/gradients/default_policy/sub_7_grad/NegJdefault_policy/gradients/default_policy/sub_7_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
ù
<default_policy/gradients/default_policy/sub_7_grad/Reshape_1Reshape8default_policy/gradients/default_policy/sub_7_grad/Sum_1:default_policy/gradients/default_policy/sub_7_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ç
Cdefault_policy/gradients/default_policy/sub_7_grad/tuple/group_depsNoOp;^default_policy/gradients/default_policy/sub_7_grad/Reshape=^default_policy/gradients/default_policy/sub_7_grad/Reshape_1
Ö
Kdefault_policy/gradients/default_policy/sub_7_grad/tuple/control_dependencyIdentity:default_policy/gradients/default_policy/sub_7_grad/ReshapeD^default_policy/gradients/default_policy/sub_7_grad/tuple/group_deps*
T0*M
_classC
A?loc:@default_policy/gradients/default_policy/sub_7_grad/Reshape*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ü
Mdefault_policy/gradients/default_policy/sub_7_grad/tuple/control_dependency_1Identity<default_policy/gradients/default_policy/sub_7_grad/Reshape_1D^default_policy/gradients/default_policy/sub_7_grad/tuple/group_deps*
T0*O
_classE
CAloc:@default_policy/gradients/default_policy/sub_7_grad/Reshape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

8default_policy/gradients/default_policy/sub_9_grad/ShapeShapedefault_policy/add_2*
T0*
_output_shapes
:*
out_type0

:default_policy/gradients/default_policy/sub_9_grad/Shape_1Shapedefault_policy/value_targets*
T0*
_output_shapes
:*
out_type0

Hdefault_policy/gradients/default_policy/sub_9_grad/BroadcastGradientArgsBroadcastGradientArgs8default_policy/gradients/default_policy/sub_9_grad/Shape:default_policy/gradients/default_policy/sub_9_grad/Shape_1*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ

6default_policy/gradients/default_policy/sub_9_grad/SumSum;default_policy/gradients/default_policy/Square_1_grad/Mul_1Hdefault_policy/gradients/default_policy/sub_9_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
ó
:default_policy/gradients/default_policy/sub_9_grad/ReshapeReshape6default_policy/gradients/default_policy/sub_9_grad/Sum8default_policy/gradients/default_policy/sub_9_grad/Shape*
T0*
Tshape0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¨
6default_policy/gradients/default_policy/sub_9_grad/NegNeg;default_policy/gradients/default_policy/Square_1_grad/Mul_1*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

8default_policy/gradients/default_policy/sub_9_grad/Sum_1Sum6default_policy/gradients/default_policy/sub_9_grad/NegJdefault_policy/gradients/default_policy/sub_9_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
ù
<default_policy/gradients/default_policy/sub_9_grad/Reshape_1Reshape8default_policy/gradients/default_policy/sub_9_grad/Sum_1:default_policy/gradients/default_policy/sub_9_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ç
Cdefault_policy/gradients/default_policy/sub_9_grad/tuple/group_depsNoOp;^default_policy/gradients/default_policy/sub_9_grad/Reshape=^default_policy/gradients/default_policy/sub_9_grad/Reshape_1
Ö
Kdefault_policy/gradients/default_policy/sub_9_grad/tuple/control_dependencyIdentity:default_policy/gradients/default_policy/sub_9_grad/ReshapeD^default_policy/gradients/default_policy/sub_9_grad/tuple/group_deps*
T0*M
_classC
A?loc:@default_policy/gradients/default_policy/sub_9_grad/Reshape*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ü
Mdefault_policy/gradients/default_policy/sub_9_grad/tuple/control_dependency_1Identity<default_policy/gradients/default_policy/sub_9_grad/Reshape_1D^default_policy/gradients/default_policy/sub_9_grad/tuple/group_deps*
T0*O
_classE
CAloc:@default_policy/gradients/default_policy/sub_9_grad/Reshape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
á
=default_policy/gradients/default_policy/Log_2_grad/Reciprocal
Reciprocaldefault_policy/Sum_3L^default_policy/gradients/default_policy/sub_6_grad/tuple/control_dependency*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
û
6default_policy/gradients/default_policy/Log_2_grad/mulMulKdefault_policy/gradients/default_policy/sub_6_grad/tuple/control_dependency=default_policy/gradients/default_policy/Log_2_grad/Reciprocal*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¤
@default_policy/gradients/default_policy/clip_by_value_grad/ShapeShape$default_policy/clip_by_value/Minimum*
T0*
_output_shapes
:*
out_type0

Bdefault_policy/gradients/default_policy/clip_by_value_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 
Ï
Edefault_policy/gradients/default_policy/clip_by_value_grad/zeros_like	ZerosLikeMdefault_policy/gradients/default_policy/mul_3_grad/tuple/control_dependency_1*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ë
Gdefault_policy/gradients/default_policy/clip_by_value_grad/GreaterEqualGreaterEqual$default_policy/clip_by_value/Minimumdefault_policy/clip_by_value/y*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¬
Pdefault_policy/gradients/default_policy/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs@default_policy/gradients/default_policy/clip_by_value_grad/ShapeBdefault_policy/gradients/default_policy/clip_by_value_grad/Shape_1*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
Ü
Cdefault_policy/gradients/default_policy/clip_by_value_grad/SelectV2SelectV2Gdefault_policy/gradients/default_policy/clip_by_value_grad/GreaterEqualMdefault_policy/gradients/default_policy/mul_3_grad/tuple/control_dependency_1Edefault_policy/gradients/default_policy/clip_by_value_grad/zeros_like*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

>default_policy/gradients/default_policy/clip_by_value_grad/SumSumCdefault_policy/gradients/default_policy/clip_by_value_grad/SelectV2Pdefault_policy/gradients/default_policy/clip_by_value_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 

Bdefault_policy/gradients/default_policy/clip_by_value_grad/ReshapeReshape>default_policy/gradients/default_policy/clip_by_value_grad/Sum@default_policy/gradients/default_policy/clip_by_value_grad/Shape*
T0*
Tshape0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Þ
Edefault_policy/gradients/default_policy/clip_by_value_grad/SelectV2_1SelectV2Gdefault_policy/gradients/default_policy/clip_by_value_grad/GreaterEqualEdefault_policy/gradients/default_policy/clip_by_value_grad/zeros_likeMdefault_policy/gradients/default_policy/mul_3_grad/tuple/control_dependency_1*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¢
@default_policy/gradients/default_policy/clip_by_value_grad/Sum_1SumEdefault_policy/gradients/default_policy/clip_by_value_grad/SelectV2_1Rdefault_policy/gradients/default_policy/clip_by_value_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 

Ddefault_policy/gradients/default_policy/clip_by_value_grad/Reshape_1Reshape@default_policy/gradients/default_policy/clip_by_value_grad/Sum_1Bdefault_policy/gradients/default_policy/clip_by_value_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
ß
Kdefault_policy/gradients/default_policy/clip_by_value_grad/tuple/group_depsNoOpC^default_policy/gradients/default_policy/clip_by_value_grad/ReshapeE^default_policy/gradients/default_policy/clip_by_value_grad/Reshape_1
ö
Sdefault_policy/gradients/default_policy/clip_by_value_grad/tuple/control_dependencyIdentityBdefault_policy/gradients/default_policy/clip_by_value_grad/ReshapeL^default_policy/gradients/default_policy/clip_by_value_grad/tuple/group_deps*
T0*U
_classK
IGloc:@default_policy/gradients/default_policy/clip_by_value_grad/Reshape*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ï
Udefault_policy/gradients/default_policy/clip_by_value_grad/tuple/control_dependency_1IdentityDdefault_policy/gradients/default_policy/clip_by_value_grad/Reshape_1L^default_policy/gradients/default_policy/clip_by_value_grad/tuple/group_deps*
T0*W
_classM
KIloc:@default_policy/gradients/default_policy/clip_by_value_grad/Reshape_1*
_output_shapes
: 

8default_policy/gradients/default_policy/add_1_grad/ShapeShapedefault_policy/sub_4*
T0*
_output_shapes
:*
out_type0

:default_policy/gradients/default_policy/add_1_grad/Shape_1Shapedefault_policy/Log_1*
T0*
_output_shapes
:*
out_type0

Hdefault_policy/gradients/default_policy/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs8default_policy/gradients/default_policy/add_1_grad/Shape:default_policy/gradients/default_policy/add_1_grad/Shape_1*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ

6default_policy/gradients/default_policy/add_1_grad/SumSumKdefault_policy/gradients/default_policy/mul_grad/tuple/control_dependency_1Hdefault_policy/gradients/default_policy/add_1_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
÷
:default_policy/gradients/default_policy/add_1_grad/ReshapeReshape6default_policy/gradients/default_policy/add_1_grad/Sum8default_policy/gradients/default_policy/add_1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}

8default_policy/gradients/default_policy/add_1_grad/Sum_1SumKdefault_policy/gradients/default_policy/mul_grad/tuple/control_dependency_1Jdefault_policy/gradients/default_policy/add_1_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
ý
<default_policy/gradients/default_policy/add_1_grad/Reshape_1Reshape8default_policy/gradients/default_policy/add_1_grad/Sum_1:default_policy/gradients/default_policy/add_1_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ç
Cdefault_policy/gradients/default_policy/add_1_grad/tuple/group_depsNoOp;^default_policy/gradients/default_policy/add_1_grad/Reshape=^default_policy/gradients/default_policy/add_1_grad/Reshape_1
Ú
Kdefault_policy/gradients/default_policy/add_1_grad/tuple/control_dependencyIdentity:default_policy/gradients/default_policy/add_1_grad/ReshapeD^default_policy/gradients/default_policy/add_1_grad/tuple/group_deps*
T0*M
_classC
A?loc:@default_policy/gradients/default_policy/add_1_grad/Reshape*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
à
Mdefault_policy/gradients/default_policy/add_1_grad/tuple/control_dependency_1Identity<default_policy/gradients/default_policy/add_1_grad/Reshape_1D^default_policy/gradients/default_policy/add_1_grad/tuple/group_deps*
T0*O
_classE
CAloc:@default_policy/gradients/default_policy/add_1_grad/Reshape_1*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

8default_policy/gradients/default_policy/add_2_grad/ShapeShapedefault_policy/vf_preds*
T0*
_output_shapes
:*
out_type0

:default_policy/gradients/default_policy/add_2_grad/Shape_1Shapedefault_policy/clip_by_value_1*
T0*
_output_shapes
:*
out_type0

Hdefault_policy/gradients/default_policy/add_2_grad/BroadcastGradientArgsBroadcastGradientArgs8default_policy/gradients/default_policy/add_2_grad/Shape:default_policy/gradients/default_policy/add_2_grad/Shape_1*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ

6default_policy/gradients/default_policy/add_2_grad/SumSumKdefault_policy/gradients/default_policy/sub_9_grad/tuple/control_dependencyHdefault_policy/gradients/default_policy/add_2_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
ó
:default_policy/gradients/default_policy/add_2_grad/ReshapeReshape6default_policy/gradients/default_policy/add_2_grad/Sum8default_policy/gradients/default_policy/add_2_grad/Shape*
T0*
Tshape0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

8default_policy/gradients/default_policy/add_2_grad/Sum_1SumKdefault_policy/gradients/default_policy/sub_9_grad/tuple/control_dependencyJdefault_policy/gradients/default_policy/add_2_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
ù
<default_policy/gradients/default_policy/add_2_grad/Reshape_1Reshape8default_policy/gradients/default_policy/add_2_grad/Sum_1:default_policy/gradients/default_policy/add_2_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ç
Cdefault_policy/gradients/default_policy/add_2_grad/tuple/group_depsNoOp;^default_policy/gradients/default_policy/add_2_grad/Reshape=^default_policy/gradients/default_policy/add_2_grad/Reshape_1
Ö
Kdefault_policy/gradients/default_policy/add_2_grad/tuple/control_dependencyIdentity:default_policy/gradients/default_policy/add_2_grad/ReshapeD^default_policy/gradients/default_policy/add_2_grad/tuple/group_deps*
T0*M
_classC
A?loc:@default_policy/gradients/default_policy/add_2_grad/Reshape*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ü
Mdefault_policy/gradients/default_policy/add_2_grad/tuple/control_dependency_1Identity<default_policy/gradients/default_policy/add_2_grad/Reshape_1D^default_policy/gradients/default_policy/add_2_grad/tuple/group_deps*
T0*O
_classE
CAloc:@default_policy/gradients/default_policy/add_2_grad/Reshape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
À
default_policy/gradients/AddNAddNQdefault_policy/gradients/default_policy/truediv_5_grad/tuple/control_dependency_16default_policy/gradients/default_policy/Log_2_grad/mul*
N*
T0*S
_classI
GEloc:@default_policy/gradients/default_policy/truediv_5_grad/Reshape_1*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

8default_policy/gradients/default_policy/Sum_3_grad/ShapeShapedefault_policy/Exp_5*
T0*
_output_shapes
:*
out_type0
ä
>default_policy/gradients/default_policy/Sum_3_grad/BroadcastToBroadcastTodefault_policy/gradients/AddN8default_policy/gradients/default_policy/Sum_3_grad/Shape*
T0*

Tidx0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}

Hdefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/ShapeShapedefault_policy/Exp_2*
T0*
_output_shapes
:*
out_type0

Jdefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 
Ý
Mdefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/zeros_like	ZerosLikeSdefault_policy/gradients/default_policy/clip_by_value_grad/tuple/control_dependency*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Å
Ldefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/LessEqual	LessEqualdefault_policy/Exp_2&default_policy/clip_by_value/Minimum/y*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ä
Xdefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsHdefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/ShapeJdefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/Shape_1*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
÷
Kdefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/SelectV2SelectV2Ldefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/LessEqualSdefault_policy/gradients/default_policy/clip_by_value_grad/tuple/control_dependencyMdefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/zeros_like*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
´
Fdefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/SumSumKdefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/SelectV2Xdefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
£
Jdefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/ReshapeReshapeFdefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/SumHdefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ù
Mdefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/SelectV2_1SelectV2Ldefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/LessEqualMdefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/zeros_likeSdefault_policy/gradients/default_policy/clip_by_value_grad/tuple/control_dependency*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
º
Hdefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/Sum_1SumMdefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/SelectV2_1Zdefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 

Ldefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/Reshape_1ReshapeHdefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/Sum_1Jdefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
÷
Sdefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/tuple/group_depsNoOpK^default_policy/gradients/default_policy/clip_by_value/Minimum_grad/ReshapeM^default_policy/gradients/default_policy/clip_by_value/Minimum_grad/Reshape_1

[default_policy/gradients/default_policy/clip_by_value/Minimum_grad/tuple/control_dependencyIdentityJdefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/ReshapeT^default_policy/gradients/default_policy/clip_by_value/Minimum_grad/tuple/group_deps*
T0*]
_classS
QOloc:@default_policy/gradients/default_policy/clip_by_value/Minimum_grad/Reshape*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

]default_policy/gradients/default_policy/clip_by_value/Minimum_grad/tuple/control_dependency_1IdentityLdefault_policy/gradients/default_policy/clip_by_value/Minimum_grad/Reshape_1T^default_policy/gradients/default_policy/clip_by_value/Minimum_grad/tuple/group_deps*
T0*_
_classU
SQloc:@default_policy/gradients/default_policy/clip_by_value/Minimum_grad/Reshape_1*
_output_shapes
: 

8default_policy/gradients/default_policy/sub_4_grad/ShapeShapedefault_policy/sub_3*
T0*
_output_shapes
:*
out_type0

:default_policy/gradients/default_policy/sub_4_grad/Shape_1Shapedefault_policy/sub_2*
T0*
_output_shapes
:*
out_type0

Hdefault_policy/gradients/default_policy/sub_4_grad/BroadcastGradientArgsBroadcastGradientArgs8default_policy/gradients/default_policy/sub_4_grad/Shape:default_policy/gradients/default_policy/sub_4_grad/Shape_1*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ

6default_policy/gradients/default_policy/sub_4_grad/SumSumKdefault_policy/gradients/default_policy/add_1_grad/tuple/control_dependencyHdefault_policy/gradients/default_policy/sub_4_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
÷
:default_policy/gradients/default_policy/sub_4_grad/ReshapeReshape6default_policy/gradients/default_policy/sub_4_grad/Sum8default_policy/gradients/default_policy/sub_4_grad/Shape*
T0*
Tshape0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
¼
6default_policy/gradients/default_policy/sub_4_grad/NegNegKdefault_policy/gradients/default_policy/add_1_grad/tuple/control_dependency*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}

8default_policy/gradients/default_policy/sub_4_grad/Sum_1Sum6default_policy/gradients/default_policy/sub_4_grad/NegJdefault_policy/gradients/default_policy/sub_4_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
ý
<default_policy/gradients/default_policy/sub_4_grad/Reshape_1Reshape8default_policy/gradients/default_policy/sub_4_grad/Sum_1:default_policy/gradients/default_policy/sub_4_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
Ç
Cdefault_policy/gradients/default_policy/sub_4_grad/tuple/group_depsNoOp;^default_policy/gradients/default_policy/sub_4_grad/Reshape=^default_policy/gradients/default_policy/sub_4_grad/Reshape_1
Ú
Kdefault_policy/gradients/default_policy/sub_4_grad/tuple/control_dependencyIdentity:default_policy/gradients/default_policy/sub_4_grad/ReshapeD^default_policy/gradients/default_policy/sub_4_grad/tuple/group_deps*
T0*M
_classC
A?loc:@default_policy/gradients/default_policy/sub_4_grad/Reshape*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
à
Mdefault_policy/gradients/default_policy/sub_4_grad/tuple/control_dependency_1Identity<default_policy/gradients/default_policy/sub_4_grad/Reshape_1D^default_policy/gradients/default_policy/sub_4_grad/tuple/group_deps*
T0*O
_classE
CAloc:@default_policy/gradients/default_policy/sub_4_grad/Reshape_1*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
ã
=default_policy/gradients/default_policy/Log_1_grad/Reciprocal
Reciprocaldefault_policy/Sum_1N^default_policy/gradients/default_policy/add_1_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ý
6default_policy/gradients/default_policy/Log_1_grad/mulMulMdefault_policy/gradients/default_policy/add_1_grad/tuple/control_dependency_1=default_policy/gradients/default_policy/Log_1_grad/Reciprocal*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¨
Bdefault_policy/gradients/default_policy/clip_by_value_1_grad/ShapeShape&default_policy/clip_by_value_1/Minimum*
T0*
_output_shapes
:*
out_type0

Ddefault_policy/gradients/default_policy/clip_by_value_1_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 
Ñ
Gdefault_policy/gradients/default_policy/clip_by_value_1_grad/zeros_like	ZerosLikeMdefault_policy/gradients/default_policy/add_2_grad/tuple/control_dependency_1*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ñ
Idefault_policy/gradients/default_policy/clip_by_value_1_grad/GreaterEqualGreaterEqual&default_policy/clip_by_value_1/Minimum default_policy/clip_by_value_1/y*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
²
Rdefault_policy/gradients/default_policy/clip_by_value_1_grad/BroadcastGradientArgsBroadcastGradientArgsBdefault_policy/gradients/default_policy/clip_by_value_1_grad/ShapeDdefault_policy/gradients/default_policy/clip_by_value_1_grad/Shape_1*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
â
Edefault_policy/gradients/default_policy/clip_by_value_1_grad/SelectV2SelectV2Idefault_policy/gradients/default_policy/clip_by_value_1_grad/GreaterEqualMdefault_policy/gradients/default_policy/add_2_grad/tuple/control_dependency_1Gdefault_policy/gradients/default_policy/clip_by_value_1_grad/zeros_like*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¢
@default_policy/gradients/default_policy/clip_by_value_1_grad/SumSumEdefault_policy/gradients/default_policy/clip_by_value_1_grad/SelectV2Rdefault_policy/gradients/default_policy/clip_by_value_1_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 

Ddefault_policy/gradients/default_policy/clip_by_value_1_grad/ReshapeReshape@default_policy/gradients/default_policy/clip_by_value_1_grad/SumBdefault_policy/gradients/default_policy/clip_by_value_1_grad/Shape*
T0*
Tshape0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ä
Gdefault_policy/gradients/default_policy/clip_by_value_1_grad/SelectV2_1SelectV2Idefault_policy/gradients/default_policy/clip_by_value_1_grad/GreaterEqualGdefault_policy/gradients/default_policy/clip_by_value_1_grad/zeros_likeMdefault_policy/gradients/default_policy/add_2_grad/tuple/control_dependency_1*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¨
Bdefault_policy/gradients/default_policy/clip_by_value_1_grad/Sum_1SumGdefault_policy/gradients/default_policy/clip_by_value_1_grad/SelectV2_1Tdefault_policy/gradients/default_policy/clip_by_value_1_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 

Fdefault_policy/gradients/default_policy/clip_by_value_1_grad/Reshape_1ReshapeBdefault_policy/gradients/default_policy/clip_by_value_1_grad/Sum_1Ddefault_policy/gradients/default_policy/clip_by_value_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
å
Mdefault_policy/gradients/default_policy/clip_by_value_1_grad/tuple/group_depsNoOpE^default_policy/gradients/default_policy/clip_by_value_1_grad/ReshapeG^default_policy/gradients/default_policy/clip_by_value_1_grad/Reshape_1
þ
Udefault_policy/gradients/default_policy/clip_by_value_1_grad/tuple/control_dependencyIdentityDdefault_policy/gradients/default_policy/clip_by_value_1_grad/ReshapeN^default_policy/gradients/default_policy/clip_by_value_1_grad/tuple/group_deps*
T0*W
_classM
KIloc:@default_policy/gradients/default_policy/clip_by_value_1_grad/Reshape*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
÷
Wdefault_policy/gradients/default_policy/clip_by_value_1_grad/tuple/control_dependency_1IdentityFdefault_policy/gradients/default_policy/clip_by_value_1_grad/Reshape_1N^default_policy/gradients/default_policy/clip_by_value_1_grad/tuple/group_deps*
T0*Y
_classO
MKloc:@default_policy/gradients/default_policy/clip_by_value_1_grad/Reshape_1*
_output_shapes
: 
Æ
default_policy/gradients/AddN_1AddNOdefault_policy/gradients/default_policy/truediv_5_grad/tuple/control_dependency>default_policy/gradients/default_policy/Sum_3_grad/BroadcastTo*
N*
T0*Q
_classG
ECloc:@default_policy/gradients/default_policy/truediv_5_grad/Reshape*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
¦
6default_policy/gradients/default_policy/Exp_5_grad/mulMuldefault_policy/gradients/AddN_1default_policy/Exp_5*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
Û
default_policy/gradients/AddN_2AddNMdefault_policy/gradients/default_policy/mul_2_grad/tuple/control_dependency_1[default_policy/gradients/default_policy/clip_by_value/Minimum_grad/tuple/control_dependency*
N*
T0*O
_classE
CAloc:@default_policy/gradients/default_policy/mul_2_grad/Reshape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¢
6default_policy/gradients/default_policy/Exp_2_grad/mulMuldefault_policy/gradients/AddN_2default_policy/Exp_2*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

8default_policy/gradients/default_policy/Sum_1_grad/ShapeShapedefault_policy/Exp_4*
T0*
_output_shapes
:*
out_type0
ý
>default_policy/gradients/default_policy/Sum_1_grad/BroadcastToBroadcastTo6default_policy/gradients/default_policy/Log_1_grad/mul8default_policy/gradients/default_policy/Sum_1_grad/Shape*
T0*

Tidx0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}

Jdefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/ShapeShapedefault_policy/sub_8*
T0*
_output_shapes
:*
out_type0

Ldefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 
á
Odefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/zeros_like	ZerosLikeUdefault_policy/gradients/default_policy/clip_by_value_1_grad/tuple/control_dependency*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
É
Ndefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/LessEqual	LessEqualdefault_policy/sub_8(default_policy/clip_by_value_1/Minimum/y*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ê
Zdefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsJdefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/ShapeLdefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/Shape_1*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
ÿ
Mdefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/SelectV2SelectV2Ndefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/LessEqualUdefault_policy/gradients/default_policy/clip_by_value_1_grad/tuple/control_dependencyOdefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/zeros_like*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
º
Hdefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/SumSumMdefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/SelectV2Zdefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
©
Ldefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/ReshapeReshapeHdefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/SumJdefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/Shape*
T0*
Tshape0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

Odefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/SelectV2_1SelectV2Ndefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/LessEqualOdefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/zeros_likeUdefault_policy/gradients/default_policy/clip_by_value_1_grad/tuple/control_dependency*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
À
Jdefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/Sum_1SumOdefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/SelectV2_1\default_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
¢
Ndefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/Reshape_1ReshapeJdefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/Sum_1Ldefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
ý
Udefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/tuple/group_depsNoOpM^default_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/ReshapeO^default_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/Reshape_1

]default_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/tuple/control_dependencyIdentityLdefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/ReshapeV^default_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/tuple/group_deps*
T0*_
_classU
SQloc:@default_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/Reshape*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_default_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/tuple/control_dependency_1IdentityNdefault_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/Reshape_1V^default_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/tuple/group_deps*
T0*a
_classW
USloc:@default_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/Reshape_1*
_output_shapes
: 
º
default_policy/gradients/AddN_3AddNMdefault_policy/gradients/default_policy/sub_6_grad/tuple/control_dependency_16default_policy/gradients/default_policy/Exp_5_grad/mul*
N*
T0*O
_classE
CAloc:@default_policy/gradients/default_policy/sub_6_grad/Reshape_1*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}

8default_policy/gradients/default_policy/sub_5_grad/ShapeShapedefault_policy/truediv_2*
T0*
_output_shapes
:*
out_type0

:default_policy/gradients/default_policy/sub_5_grad/Shape_1Shapedefault_policy/Max_2*
T0*
_output_shapes
:*
out_type0

Hdefault_policy/gradients/default_policy/sub_5_grad/BroadcastGradientArgsBroadcastGradientArgs8default_policy/gradients/default_policy/sub_5_grad/Shape:default_policy/gradients/default_policy/sub_5_grad/Shape_1*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
è
6default_policy/gradients/default_policy/sub_5_grad/SumSumdefault_policy/gradients/AddN_3Hdefault_policy/gradients/default_policy/sub_5_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
÷
:default_policy/gradients/default_policy/sub_5_grad/ReshapeReshape6default_policy/gradients/default_policy/sub_5_grad/Sum8default_policy/gradients/default_policy/sub_5_grad/Shape*
T0*
Tshape0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}

6default_policy/gradients/default_policy/sub_5_grad/NegNegdefault_policy/gradients/AddN_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}

8default_policy/gradients/default_policy/sub_5_grad/Sum_1Sum6default_policy/gradients/default_policy/sub_5_grad/NegJdefault_policy/gradients/default_policy/sub_5_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
ý
<default_policy/gradients/default_policy/sub_5_grad/Reshape_1Reshape8default_policy/gradients/default_policy/sub_5_grad/Sum_1:default_policy/gradients/default_policy/sub_5_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ç
Cdefault_policy/gradients/default_policy/sub_5_grad/tuple/group_depsNoOp;^default_policy/gradients/default_policy/sub_5_grad/Reshape=^default_policy/gradients/default_policy/sub_5_grad/Reshape_1
Ú
Kdefault_policy/gradients/default_policy/sub_5_grad/tuple/control_dependencyIdentity:default_policy/gradients/default_policy/sub_5_grad/ReshapeD^default_policy/gradients/default_policy/sub_5_grad/tuple/group_deps*
T0*M
_classC
A?loc:@default_policy/gradients/default_policy/sub_5_grad/Reshape*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
à
Mdefault_policy/gradients/default_policy/sub_5_grad/tuple/control_dependency_1Identity<default_policy/gradients/default_policy/sub_5_grad/Reshape_1D^default_policy/gradients/default_policy/sub_5_grad/tuple/group_deps*
T0*O
_classE
CAloc:@default_policy/gradients/default_policy/sub_5_grad/Reshape_1*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

6default_policy/gradients/default_policy/sub_grad/ShapeShapedefault_policy/Neg_5*
T0*
_output_shapes
:*
out_type0

8default_policy/gradients/default_policy/sub_grad/Shape_1Shapedefault_policy/action_logp*
T0*
_output_shapes
:*
out_type0

Fdefault_policy/gradients/default_policy/sub_grad/BroadcastGradientArgsBroadcastGradientArgs6default_policy/gradients/default_policy/sub_grad/Shape8default_policy/gradients/default_policy/sub_grad/Shape_1*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
û
4default_policy/gradients/default_policy/sub_grad/SumSum6default_policy/gradients/default_policy/Exp_2_grad/mulFdefault_policy/gradients/default_policy/sub_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
í
8default_policy/gradients/default_policy/sub_grad/ReshapeReshape4default_policy/gradients/default_policy/sub_grad/Sum6default_policy/gradients/default_policy/sub_grad/Shape*
T0*
Tshape0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¡
4default_policy/gradients/default_policy/sub_grad/NegNeg6default_policy/gradients/default_policy/Exp_2_grad/mul*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ý
6default_policy/gradients/default_policy/sub_grad/Sum_1Sum4default_policy/gradients/default_policy/sub_grad/NegHdefault_policy/gradients/default_policy/sub_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
ó
:default_policy/gradients/default_policy/sub_grad/Reshape_1Reshape6default_policy/gradients/default_policy/sub_grad/Sum_18default_policy/gradients/default_policy/sub_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Á
Adefault_policy/gradients/default_policy/sub_grad/tuple/group_depsNoOp9^default_policy/gradients/default_policy/sub_grad/Reshape;^default_policy/gradients/default_policy/sub_grad/Reshape_1
Î
Idefault_policy/gradients/default_policy/sub_grad/tuple/control_dependencyIdentity8default_policy/gradients/default_policy/sub_grad/ReshapeB^default_policy/gradients/default_policy/sub_grad/tuple/group_deps*
T0*K
_classA
?=loc:@default_policy/gradients/default_policy/sub_grad/Reshape*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ô
Kdefault_policy/gradients/default_policy/sub_grad/tuple/control_dependency_1Identity:default_policy/gradients/default_policy/sub_grad/Reshape_1B^default_policy/gradients/default_policy/sub_grad/tuple/group_deps*
T0*M
_classC
A?loc:@default_policy/gradients/default_policy/sub_grad/Reshape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Å
6default_policy/gradients/default_policy/Exp_4_grad/mulMul>default_policy/gradients/default_policy/Sum_1_grad/BroadcastTodefault_policy/Exp_4*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}

8default_policy/gradients/default_policy/sub_8_grad/ShapeShapedefault_policy/Reshape_2*
T0*
_output_shapes
:*
out_type0

:default_policy/gradients/default_policy/sub_8_grad/Shape_1Shapedefault_policy/vf_preds*
T0*
_output_shapes
:*
out_type0

Hdefault_policy/gradients/default_policy/sub_8_grad/BroadcastGradientArgsBroadcastGradientArgs8default_policy/gradients/default_policy/sub_8_grad/Shape:default_policy/gradients/default_policy/sub_8_grad/Shape_1*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
¦
6default_policy/gradients/default_policy/sub_8_grad/SumSum]default_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/tuple/control_dependencyHdefault_policy/gradients/default_policy/sub_8_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
ó
:default_policy/gradients/default_policy/sub_8_grad/ReshapeReshape6default_policy/gradients/default_policy/sub_8_grad/Sum8default_policy/gradients/default_policy/sub_8_grad/Shape*
T0*
Tshape0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ê
6default_policy/gradients/default_policy/sub_8_grad/NegNeg]default_policy/gradients/default_policy/clip_by_value_1/Minimum_grad/tuple/control_dependency*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

8default_policy/gradients/default_policy/sub_8_grad/Sum_1Sum6default_policy/gradients/default_policy/sub_8_grad/NegJdefault_policy/gradients/default_policy/sub_8_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
ù
<default_policy/gradients/default_policy/sub_8_grad/Reshape_1Reshape8default_policy/gradients/default_policy/sub_8_grad/Sum_1:default_policy/gradients/default_policy/sub_8_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ç
Cdefault_policy/gradients/default_policy/sub_8_grad/tuple/group_depsNoOp;^default_policy/gradients/default_policy/sub_8_grad/Reshape=^default_policy/gradients/default_policy/sub_8_grad/Reshape_1
Ö
Kdefault_policy/gradients/default_policy/sub_8_grad/tuple/control_dependencyIdentity:default_policy/gradients/default_policy/sub_8_grad/ReshapeD^default_policy/gradients/default_policy/sub_8_grad/tuple/group_deps*
T0*M
_classC
A?loc:@default_policy/gradients/default_policy/sub_8_grad/Reshape*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ü
Mdefault_policy/gradients/default_policy/sub_8_grad/tuple/control_dependency_1Identity<default_policy/gradients/default_policy/sub_8_grad/Reshape_1D^default_policy/gradients/default_policy/sub_8_grad/tuple/group_deps*
T0*O
_classE
CAloc:@default_policy/gradients/default_policy/sub_8_grad/Reshape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

8default_policy/gradients/default_policy/Max_2_grad/ShapeShapedefault_policy/truediv_2*
T0*
_output_shapes
:*
out_type0

:default_policy/gradients/default_policy/Max_2_grad/Shape_1Shapedefault_policy/Max_2*
T0*
_output_shapes
:*
out_type0
Ã
8default_policy/gradients/default_policy/Max_2_grad/EqualEqualdefault_policy/Max_2default_policy/truediv_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*
incompatible_shape_error(
Ê
7default_policy/gradients/default_policy/Max_2_grad/CastCast8default_policy/gradients/default_policy/Max_2_grad/Equal*

DstT0*

SrcT0
*
Truncate( *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
é
6default_policy/gradients/default_policy/Max_2_grad/SumSum7default_policy/gradients/default_policy/Max_2_grad/Cast&default_policy/Max_2/reduction_indices*
T0*

Tidx0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims( 
ù
:default_policy/gradients/default_policy/Max_2_grad/ReshapeReshape6default_policy/gradients/default_policy/Max_2_grad/Sum:default_policy/gradients/default_policy/Max_2_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ì
:default_policy/gradients/default_policy/Max_2_grad/truedivRealDiv7default_policy/gradients/default_policy/Max_2_grad/Cast:default_policy/gradients/default_policy/Max_2_grad/Reshape*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
ú
6default_policy/gradients/default_policy/Max_2_grad/mulMul:default_policy/gradients/default_policy/Max_2_grad/truedivMdefault_policy/gradients/default_policy/sub_5_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
¶
6default_policy/gradients/default_policy/Neg_5_grad/NegNegIdefault_policy/gradients/default_policy/sub_grad/tuple/control_dependency*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
º
default_policy/gradients/AddN_4AddNMdefault_policy/gradients/default_policy/sub_4_grad/tuple/control_dependency_16default_policy/gradients/default_policy/Exp_4_grad/mul*
N*
T0*O
_classE
CAloc:@default_policy/gradients/default_policy/sub_4_grad/Reshape_1*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}

8default_policy/gradients/default_policy/sub_2_grad/ShapeShapedefault_policy/truediv_2*
T0*
_output_shapes
:*
out_type0

:default_policy/gradients/default_policy/sub_2_grad/Shape_1Shapedefault_policy/Max_1*
T0*
_output_shapes
:*
out_type0

Hdefault_policy/gradients/default_policy/sub_2_grad/BroadcastGradientArgsBroadcastGradientArgs8default_policy/gradients/default_policy/sub_2_grad/Shape:default_policy/gradients/default_policy/sub_2_grad/Shape_1*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
è
6default_policy/gradients/default_policy/sub_2_grad/SumSumdefault_policy/gradients/AddN_4Hdefault_policy/gradients/default_policy/sub_2_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
÷
:default_policy/gradients/default_policy/sub_2_grad/ReshapeReshape6default_policy/gradients/default_policy/sub_2_grad/Sum8default_policy/gradients/default_policy/sub_2_grad/Shape*
T0*
Tshape0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}

6default_policy/gradients/default_policy/sub_2_grad/NegNegdefault_policy/gradients/AddN_4*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}

8default_policy/gradients/default_policy/sub_2_grad/Sum_1Sum6default_policy/gradients/default_policy/sub_2_grad/NegJdefault_policy/gradients/default_policy/sub_2_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
ý
<default_policy/gradients/default_policy/sub_2_grad/Reshape_1Reshape8default_policy/gradients/default_policy/sub_2_grad/Sum_1:default_policy/gradients/default_policy/sub_2_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ç
Cdefault_policy/gradients/default_policy/sub_2_grad/tuple/group_depsNoOp;^default_policy/gradients/default_policy/sub_2_grad/Reshape=^default_policy/gradients/default_policy/sub_2_grad/Reshape_1
Ú
Kdefault_policy/gradients/default_policy/sub_2_grad/tuple/control_dependencyIdentity:default_policy/gradients/default_policy/sub_2_grad/ReshapeD^default_policy/gradients/default_policy/sub_2_grad/tuple/group_deps*
T0*M
_classC
A?loc:@default_policy/gradients/default_policy/sub_2_grad/Reshape*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
à
Mdefault_policy/gradients/default_policy/sub_2_grad/tuple/control_dependency_1Identity<default_policy/gradients/default_policy/sub_2_grad/Reshape_1D^default_policy/gradients/default_policy/sub_2_grad/tuple/group_deps*
T0*O
_classE
CAloc:@default_policy/gradients/default_policy/sub_2_grad/Reshape_1*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ç
default_policy/gradients/AddN_5AddNKdefault_policy/gradients/default_policy/sub_7_grad/tuple/control_dependencyKdefault_policy/gradients/default_policy/sub_8_grad/tuple/control_dependency*
N*
T0*M
_classC
A?loc:@default_policy/gradients/default_policy/sub_7_grad/Reshape*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¤
<default_policy/gradients/default_policy/Reshape_2_grad/ShapeShape(default_policy/model_2/value_out/BiasAdd*
T0*
_output_shapes
:*
out_type0
è
>default_policy/gradients/default_policy/Reshape_2_grad/ReshapeReshapedefault_policy/gradients/AddN_5<default_policy/gradients/default_policy/Reshape_2_grad/Shape*
T0*
Tshape0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¾
#default_policy/gradients/zeros_like	ZerosLikeZdefault_policy/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
Ñ
default_policy/gradients/default_policy/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ

default_policy/gradients/default_policy/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims6default_policy/gradients/default_policy/Neg_5_grad/Negdefault_policy/gradients/default_policy/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*

Tdim0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

zdefault_policy/gradients/default_policy/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/mulMuldefault_policy/gradients/default_policy/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsZdefault_policy/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}

8default_policy/gradients/default_policy/Max_1_grad/ShapeShapedefault_policy/truediv_2*
T0*
_output_shapes
:*
out_type0

:default_policy/gradients/default_policy/Max_1_grad/Shape_1Shapedefault_policy/Max_1*
T0*
_output_shapes
:*
out_type0
Ã
8default_policy/gradients/default_policy/Max_1_grad/EqualEqualdefault_policy/Max_1default_policy/truediv_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*
incompatible_shape_error(
Ê
7default_policy/gradients/default_policy/Max_1_grad/CastCast8default_policy/gradients/default_policy/Max_1_grad/Equal*

DstT0*

SrcT0
*
Truncate( *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
é
6default_policy/gradients/default_policy/Max_1_grad/SumSum7default_policy/gradients/default_policy/Max_1_grad/Cast&default_policy/Max_1/reduction_indices*
T0*

Tidx0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims( 
ù
:default_policy/gradients/default_policy/Max_1_grad/ReshapeReshape6default_policy/gradients/default_policy/Max_1_grad/Sum:default_policy/gradients/default_policy/Max_1_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ì
:default_policy/gradients/default_policy/Max_1_grad/truedivRealDiv7default_policy/gradients/default_policy/Max_1_grad/Cast:default_policy/gradients/default_policy/Max_1_grad/Reshape*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
ú
6default_policy/gradients/default_policy/Max_1_grad/mulMul:default_policy/gradients/default_policy/Max_1_grad/truedivMdefault_policy/gradients/default_policy/sub_2_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
Ý
Rdefault_policy/gradients/default_policy/model_2/value_out/BiasAdd_grad/BiasAddGradBiasAddGrad>default_policy/gradients/default_policy/Reshape_2_grad/Reshape*
T0*
_output_shapes
:*
data_formatNHWC
õ
Wdefault_policy/gradients/default_policy/model_2/value_out/BiasAdd_grad/tuple/group_depsNoOp?^default_policy/gradients/default_policy/Reshape_2_grad/ReshapeS^default_policy/gradients/default_policy/model_2/value_out/BiasAdd_grad/BiasAddGrad

_default_policy/gradients/default_policy/model_2/value_out/BiasAdd_grad/tuple/control_dependencyIdentity>default_policy/gradients/default_policy/Reshape_2_grad/ReshapeX^default_policy/gradients/default_policy/model_2/value_out/BiasAdd_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@default_policy/gradients/default_policy/Reshape_2_grad/Reshape*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
§
adefault_policy/gradients/default_policy/model_2/value_out/BiasAdd_grad/tuple/control_dependency_1IdentityRdefault_policy/gradients/default_policy/model_2/value_out/BiasAdd_grad/BiasAddGradX^default_policy/gradients/default_policy/model_2/value_out/BiasAdd_grad/tuple/group_deps*
T0*e
_class[
YWloc:@default_policy/gradients/default_policy/model_2/value_out/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
·
default_policy/gradients/AddN_6AddNKdefault_policy/gradients/default_policy/sub_5_grad/tuple/control_dependency6default_policy/gradients/default_policy/Max_2_grad/mulKdefault_policy/gradients/default_policy/sub_2_grad/tuple/control_dependencyzdefault_policy/gradients/default_policy/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/mul6default_policy/gradients/default_policy/Max_1_grad/mul*
N*
T0*M
_classC
A?loc:@default_policy/gradients/default_policy/sub_5_grad/Reshape*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
¥
<default_policy/gradients/default_policy/truediv_2_grad/ShapeShape)default_policy/model_2/action_out/BiasAdd*
T0*
_output_shapes
:*
out_type0

>default_policy/gradients/default_policy/truediv_2_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 
 
Ldefault_policy/gradients/default_policy/truediv_2_grad/BroadcastGradientArgsBroadcastGradientArgs<default_policy/gradients/default_policy/truediv_2_grad/Shape>default_policy/gradients/default_policy/truediv_2_grad/Shape_1*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
¸
>default_policy/gradients/default_policy/truediv_2_grad/RealDivRealDivdefault_policy/gradients/AddN_6default_policy/truediv_2/y*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}

:default_policy/gradients/default_policy/truediv_2_grad/SumSum>default_policy/gradients/default_policy/truediv_2_grad/RealDivLdefault_policy/gradients/default_policy/truediv_2_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 

>default_policy/gradients/default_policy/truediv_2_grad/ReshapeReshape:default_policy/gradients/default_policy/truediv_2_grad/Sum<default_policy/gradients/default_policy/truediv_2_grad/Shape*
T0*
Tshape0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}

:default_policy/gradients/default_policy/truediv_2_grad/NegNeg)default_policy/model_2/action_out/BiasAdd*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
Õ
@default_policy/gradients/default_policy/truediv_2_grad/RealDiv_1RealDiv:default_policy/gradients/default_policy/truediv_2_grad/Negdefault_policy/truediv_2/y*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
Û
@default_policy/gradients/default_policy/truediv_2_grad/RealDiv_2RealDiv@default_policy/gradients/default_policy/truediv_2_grad/RealDiv_1default_policy/truediv_2/y*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
Ö
:default_policy/gradients/default_policy/truediv_2_grad/mulMuldefault_policy/gradients/AddN_6@default_policy/gradients/default_policy/truediv_2_grad/RealDiv_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}

<default_policy/gradients/default_policy/truediv_2_grad/Sum_1Sum:default_policy/gradients/default_policy/truediv_2_grad/mulNdefault_policy/gradients/default_policy/truediv_2_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
ø
@default_policy/gradients/default_policy/truediv_2_grad/Reshape_1Reshape<default_policy/gradients/default_policy/truediv_2_grad/Sum_1>default_policy/gradients/default_policy/truediv_2_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
Ó
Gdefault_policy/gradients/default_policy/truediv_2_grad/tuple/group_depsNoOp?^default_policy/gradients/default_policy/truediv_2_grad/ReshapeA^default_policy/gradients/default_policy/truediv_2_grad/Reshape_1
ê
Odefault_policy/gradients/default_policy/truediv_2_grad/tuple/control_dependencyIdentity>default_policy/gradients/default_policy/truediv_2_grad/ReshapeH^default_policy/gradients/default_policy/truediv_2_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@default_policy/gradients/default_policy/truediv_2_grad/Reshape*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
ß
Qdefault_policy/gradients/default_policy/truediv_2_grad/tuple/control_dependency_1Identity@default_policy/gradients/default_policy/truediv_2_grad/Reshape_1H^default_policy/gradients/default_policy/truediv_2_grad/tuple/group_deps*
T0*S
_classI
GEloc:@default_policy/gradients/default_policy/truediv_2_grad/Reshape_1*
_output_shapes
: 
Ç
Ldefault_policy/gradients/default_policy/model_2/value_out/MatMul_grad/MatMulMatMul_default_policy/gradients/default_policy/model_2/value_out/BiasAdd_grad/tuple/control_dependency6default_policy/model_2/value_out/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*
transpose_a( *
transpose_b(
¶
Ndefault_policy/gradients/default_policy/model_2/value_out/MatMul_grad/MatMul_1MatMul,default_policy/model_2/layer_val_hidden/Relu_default_policy/gradients/default_policy/model_2/value_out/BiasAdd_grad/tuple/control_dependency*
T0*
_output_shapes

:}*
transpose_a(*
transpose_b( 
þ
Vdefault_policy/gradients/default_policy/model_2/value_out/MatMul_grad/tuple/group_depsNoOpM^default_policy/gradients/default_policy/model_2/value_out/MatMul_grad/MatMulO^default_policy/gradients/default_policy/model_2/value_out/MatMul_grad/MatMul_1
¤
^default_policy/gradients/default_policy/model_2/value_out/MatMul_grad/tuple/control_dependencyIdentityLdefault_policy/gradients/default_policy/model_2/value_out/MatMul_grad/MatMulW^default_policy/gradients/default_policy/model_2/value_out/MatMul_grad/tuple/group_deps*
T0*_
_classU
SQloc:@default_policy/gradients/default_policy/model_2/value_out/MatMul_grad/MatMul*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
¡
`default_policy/gradients/default_policy/model_2/value_out/MatMul_grad/tuple/control_dependency_1IdentityNdefault_policy/gradients/default_policy/model_2/value_out/MatMul_grad/MatMul_1W^default_policy/gradients/default_policy/model_2/value_out/MatMul_grad/tuple/group_deps*
T0*a
_classW
USloc:@default_policy/gradients/default_policy/model_2/value_out/MatMul_grad/MatMul_1*
_output_shapes

:}
ï
Sdefault_policy/gradients/default_policy/model_2/action_out/BiasAdd_grad/BiasAddGradBiasAddGradOdefault_policy/gradients/default_policy/truediv_2_grad/tuple/control_dependency*
T0*
_output_shapes
:}*
data_formatNHWC

Xdefault_policy/gradients/default_policy/model_2/action_out/BiasAdd_grad/tuple/group_depsNoOpT^default_policy/gradients/default_policy/model_2/action_out/BiasAdd_grad/BiasAddGradP^default_policy/gradients/default_policy/truediv_2_grad/tuple/control_dependency

`default_policy/gradients/default_policy/model_2/action_out/BiasAdd_grad/tuple/control_dependencyIdentityOdefault_policy/gradients/default_policy/truediv_2_grad/tuple/control_dependencyY^default_policy/gradients/default_policy/model_2/action_out/BiasAdd_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@default_policy/gradients/default_policy/truediv_2_grad/Reshape*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
«
bdefault_policy/gradients/default_policy/model_2/action_out/BiasAdd_grad/tuple/control_dependency_1IdentitySdefault_policy/gradients/default_policy/model_2/action_out/BiasAdd_grad/BiasAddGradY^default_policy/gradients/default_policy/model_2/action_out/BiasAdd_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@default_policy/gradients/default_policy/model_2/action_out/BiasAdd_grad/BiasAddGrad*
_output_shapes
:}

Sdefault_policy/gradients/default_policy/model_2/layer_val_hidden/Relu_grad/ReluGradReluGrad^default_policy/gradients/default_policy/model_2/value_out/MatMul_grad/tuple/control_dependency,default_policy/model_2/layer_val_hidden/Relu*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
Ë
Mdefault_policy/gradients/default_policy/model_2/action_out/MatMul_grad/MatMulMatMul`default_policy/gradients/default_policy/model_2/action_out/BiasAdd_grad/tuple/control_dependency7default_policy/model_2/action_out/MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
transpose_a( *
transpose_b(
°
Odefault_policy/gradients/default_policy/model_2/action_out/MatMul_grad/MatMul_1MatMul#default_policy/model_2/layer_4/Relu`default_policy/gradients/default_policy/model_2/action_out/BiasAdd_grad/tuple/control_dependency*
T0*
_output_shapes
:	è}*
transpose_a(*
transpose_b( 

Wdefault_policy/gradients/default_policy/model_2/action_out/MatMul_grad/tuple/group_depsNoOpN^default_policy/gradients/default_policy/model_2/action_out/MatMul_grad/MatMulP^default_policy/gradients/default_policy/model_2/action_out/MatMul_grad/MatMul_1
©
_default_policy/gradients/default_policy/model_2/action_out/MatMul_grad/tuple/control_dependencyIdentityMdefault_policy/gradients/default_policy/model_2/action_out/MatMul_grad/MatMulX^default_policy/gradients/default_policy/model_2/action_out/MatMul_grad/tuple/group_deps*
T0*`
_classV
TRloc:@default_policy/gradients/default_policy/model_2/action_out/MatMul_grad/MatMul*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
¦
adefault_policy/gradients/default_policy/model_2/action_out/MatMul_grad/tuple/control_dependency_1IdentityOdefault_policy/gradients/default_policy/model_2/action_out/MatMul_grad/MatMul_1X^default_policy/gradients/default_policy/model_2/action_out/MatMul_grad/tuple/group_deps*
T0*b
_classX
VTloc:@default_policy/gradients/default_policy/model_2/action_out/MatMul_grad/MatMul_1*
_output_shapes
:	è}
ù
Ydefault_policy/gradients/default_policy/model_2/layer_val_hidden/BiasAdd_grad/BiasAddGradBiasAddGradSdefault_policy/gradients/default_policy/model_2/layer_val_hidden/Relu_grad/ReluGrad*
T0*
_output_shapes
:}*
data_formatNHWC

^default_policy/gradients/default_policy/model_2/layer_val_hidden/BiasAdd_grad/tuple/group_depsNoOpZ^default_policy/gradients/default_policy/model_2/layer_val_hidden/BiasAdd_grad/BiasAddGradT^default_policy/gradients/default_policy/model_2/layer_val_hidden/Relu_grad/ReluGrad
Â
fdefault_policy/gradients/default_policy/model_2/layer_val_hidden/BiasAdd_grad/tuple/control_dependencyIdentitySdefault_policy/gradients/default_policy/model_2/layer_val_hidden/Relu_grad/ReluGrad_^default_policy/gradients/default_policy/model_2/layer_val_hidden/BiasAdd_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@default_policy/gradients/default_policy/model_2/layer_val_hidden/Relu_grad/ReluGrad*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
Ã
hdefault_policy/gradients/default_policy/model_2/layer_val_hidden/BiasAdd_grad/tuple/control_dependency_1IdentityYdefault_policy/gradients/default_policy/model_2/layer_val_hidden/BiasAdd_grad/BiasAddGrad_^default_policy/gradients/default_policy/model_2/layer_val_hidden/BiasAdd_grad/tuple/group_deps*
T0*l
_classb
`^loc:@default_policy/gradients/default_policy/model_2/layer_val_hidden/BiasAdd_grad/BiasAddGrad*
_output_shapes
:}
Ý
Sdefault_policy/gradients/default_policy/model_2/layer_val_hidden/MatMul_grad/MatMulMatMulfdefault_policy/gradients/default_policy/model_2/layer_val_hidden/BiasAdd_grad/tuple/control_dependency=default_policy/model_2/layer_val_hidden/MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
transpose_a( *
transpose_b(
¼
Udefault_policy/gradients/default_policy/model_2/layer_val_hidden/MatMul_grad/MatMul_1MatMul#default_policy/model_2/layer_4/Relufdefault_policy/gradients/default_policy/model_2/layer_val_hidden/BiasAdd_grad/tuple/control_dependency*
T0*
_output_shapes
:	è}*
transpose_a(*
transpose_b( 

]default_policy/gradients/default_policy/model_2/layer_val_hidden/MatMul_grad/tuple/group_depsNoOpT^default_policy/gradients/default_policy/model_2/layer_val_hidden/MatMul_grad/MatMulV^default_policy/gradients/default_policy/model_2/layer_val_hidden/MatMul_grad/MatMul_1
Á
edefault_policy/gradients/default_policy/model_2/layer_val_hidden/MatMul_grad/tuple/control_dependencyIdentitySdefault_policy/gradients/default_policy/model_2/layer_val_hidden/MatMul_grad/MatMul^^default_policy/gradients/default_policy/model_2/layer_val_hidden/MatMul_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@default_policy/gradients/default_policy/model_2/layer_val_hidden/MatMul_grad/MatMul*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
¾
gdefault_policy/gradients/default_policy/model_2/layer_val_hidden/MatMul_grad/tuple/control_dependency_1IdentityUdefault_policy/gradients/default_policy/model_2/layer_val_hidden/MatMul_grad/MatMul_1^^default_policy/gradients/default_policy/model_2/layer_val_hidden/MatMul_grad/tuple/group_deps*
T0*h
_class^
\Zloc:@default_policy/gradients/default_policy/model_2/layer_val_hidden/MatMul_grad/MatMul_1*
_output_shapes
:	è}

default_policy/gradients/AddN_7AddN_default_policy/gradients/default_policy/model_2/action_out/MatMul_grad/tuple/control_dependencyedefault_policy/gradients/default_policy/model_2/layer_val_hidden/MatMul_grad/tuple/control_dependency*
N*
T0*`
_classV
TRloc:@default_policy/gradients/default_policy/model_2/action_out/MatMul_grad/MatMul*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
Ï
Jdefault_policy/gradients/default_policy/model_2/layer_4/Relu_grad/ReluGradReluGraddefault_policy/gradients/AddN_7#default_policy/model_2/layer_4/Relu*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
è
Pdefault_policy/gradients/default_policy/model_2/layer_4/BiasAdd_grad/BiasAddGradBiasAddGradJdefault_policy/gradients/default_policy/model_2/layer_4/Relu_grad/ReluGrad*
T0*
_output_shapes	
:è*
data_formatNHWC
ý
Udefault_policy/gradients/default_policy/model_2/layer_4/BiasAdd_grad/tuple/group_depsNoOpQ^default_policy/gradients/default_policy/model_2/layer_4/BiasAdd_grad/BiasAddGradK^default_policy/gradients/default_policy/model_2/layer_4/Relu_grad/ReluGrad

]default_policy/gradients/default_policy/model_2/layer_4/BiasAdd_grad/tuple/control_dependencyIdentityJdefault_policy/gradients/default_policy/model_2/layer_4/Relu_grad/ReluGradV^default_policy/gradients/default_policy/model_2/layer_4/BiasAdd_grad/tuple/group_deps*
T0*]
_classS
QOloc:@default_policy/gradients/default_policy/model_2/layer_4/Relu_grad/ReluGrad*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
 
_default_policy/gradients/default_policy/model_2/layer_4/BiasAdd_grad/tuple/control_dependency_1IdentityPdefault_policy/gradients/default_policy/model_2/layer_4/BiasAdd_grad/BiasAddGradV^default_policy/gradients/default_policy/model_2/layer_4/BiasAdd_grad/tuple/group_deps*
T0*c
_classY
WUloc:@default_policy/gradients/default_policy/model_2/layer_4/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:è
Â
Jdefault_policy/gradients/default_policy/model_2/layer_4/MatMul_grad/MatMulMatMul]default_policy/gradients/default_policy/model_2/layer_4/BiasAdd_grad/tuple/control_dependency4default_policy/model_2/layer_4/MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
transpose_a( *
transpose_b(
«
Ldefault_policy/gradients/default_policy/model_2/layer_4/MatMul_grad/MatMul_1MatMul#default_policy/model_2/layer_3/Relu]default_policy/gradients/default_policy/model_2/layer_4/BiasAdd_grad/tuple/control_dependency*
T0* 
_output_shapes
:
èè*
transpose_a(*
transpose_b( 
ø
Tdefault_policy/gradients/default_policy/model_2/layer_4/MatMul_grad/tuple/group_depsNoOpK^default_policy/gradients/default_policy/model_2/layer_4/MatMul_grad/MatMulM^default_policy/gradients/default_policy/model_2/layer_4/MatMul_grad/MatMul_1

\default_policy/gradients/default_policy/model_2/layer_4/MatMul_grad/tuple/control_dependencyIdentityJdefault_policy/gradients/default_policy/model_2/layer_4/MatMul_grad/MatMulU^default_policy/gradients/default_policy/model_2/layer_4/MatMul_grad/tuple/group_deps*
T0*]
_classS
QOloc:@default_policy/gradients/default_policy/model_2/layer_4/MatMul_grad/MatMul*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè

^default_policy/gradients/default_policy/model_2/layer_4/MatMul_grad/tuple/control_dependency_1IdentityLdefault_policy/gradients/default_policy/model_2/layer_4/MatMul_grad/MatMul_1U^default_policy/gradients/default_policy/model_2/layer_4/MatMul_grad/tuple/group_deps*
T0*_
_classU
SQloc:@default_policy/gradients/default_policy/model_2/layer_4/MatMul_grad/MatMul_1* 
_output_shapes
:
èè

Jdefault_policy/gradients/default_policy/model_2/layer_3/Relu_grad/ReluGradReluGrad\default_policy/gradients/default_policy/model_2/layer_4/MatMul_grad/tuple/control_dependency#default_policy/model_2/layer_3/Relu*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
è
Pdefault_policy/gradients/default_policy/model_2/layer_3/BiasAdd_grad/BiasAddGradBiasAddGradJdefault_policy/gradients/default_policy/model_2/layer_3/Relu_grad/ReluGrad*
T0*
_output_shapes	
:è*
data_formatNHWC
ý
Udefault_policy/gradients/default_policy/model_2/layer_3/BiasAdd_grad/tuple/group_depsNoOpQ^default_policy/gradients/default_policy/model_2/layer_3/BiasAdd_grad/BiasAddGradK^default_policy/gradients/default_policy/model_2/layer_3/Relu_grad/ReluGrad

]default_policy/gradients/default_policy/model_2/layer_3/BiasAdd_grad/tuple/control_dependencyIdentityJdefault_policy/gradients/default_policy/model_2/layer_3/Relu_grad/ReluGradV^default_policy/gradients/default_policy/model_2/layer_3/BiasAdd_grad/tuple/group_deps*
T0*]
_classS
QOloc:@default_policy/gradients/default_policy/model_2/layer_3/Relu_grad/ReluGrad*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
 
_default_policy/gradients/default_policy/model_2/layer_3/BiasAdd_grad/tuple/control_dependency_1IdentityPdefault_policy/gradients/default_policy/model_2/layer_3/BiasAdd_grad/BiasAddGradV^default_policy/gradients/default_policy/model_2/layer_3/BiasAdd_grad/tuple/group_deps*
T0*c
_classY
WUloc:@default_policy/gradients/default_policy/model_2/layer_3/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:è
Â
Jdefault_policy/gradients/default_policy/model_2/layer_3/MatMul_grad/MatMulMatMul]default_policy/gradients/default_policy/model_2/layer_3/BiasAdd_grad/tuple/control_dependency4default_policy/model_2/layer_3/MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
transpose_a( *
transpose_b(
«
Ldefault_policy/gradients/default_policy/model_2/layer_3/MatMul_grad/MatMul_1MatMul#default_policy/model_2/layer_2/Relu]default_policy/gradients/default_policy/model_2/layer_3/BiasAdd_grad/tuple/control_dependency*
T0* 
_output_shapes
:
èè*
transpose_a(*
transpose_b( 
ø
Tdefault_policy/gradients/default_policy/model_2/layer_3/MatMul_grad/tuple/group_depsNoOpK^default_policy/gradients/default_policy/model_2/layer_3/MatMul_grad/MatMulM^default_policy/gradients/default_policy/model_2/layer_3/MatMul_grad/MatMul_1

\default_policy/gradients/default_policy/model_2/layer_3/MatMul_grad/tuple/control_dependencyIdentityJdefault_policy/gradients/default_policy/model_2/layer_3/MatMul_grad/MatMulU^default_policy/gradients/default_policy/model_2/layer_3/MatMul_grad/tuple/group_deps*
T0*]
_classS
QOloc:@default_policy/gradients/default_policy/model_2/layer_3/MatMul_grad/MatMul*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè

^default_policy/gradients/default_policy/model_2/layer_3/MatMul_grad/tuple/control_dependency_1IdentityLdefault_policy/gradients/default_policy/model_2/layer_3/MatMul_grad/MatMul_1U^default_policy/gradients/default_policy/model_2/layer_3/MatMul_grad/tuple/group_deps*
T0*_
_classU
SQloc:@default_policy/gradients/default_policy/model_2/layer_3/MatMul_grad/MatMul_1* 
_output_shapes
:
èè

Jdefault_policy/gradients/default_policy/model_2/layer_2/Relu_grad/ReluGradReluGrad\default_policy/gradients/default_policy/model_2/layer_3/MatMul_grad/tuple/control_dependency#default_policy/model_2/layer_2/Relu*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
è
Pdefault_policy/gradients/default_policy/model_2/layer_2/BiasAdd_grad/BiasAddGradBiasAddGradJdefault_policy/gradients/default_policy/model_2/layer_2/Relu_grad/ReluGrad*
T0*
_output_shapes	
:è*
data_formatNHWC
ý
Udefault_policy/gradients/default_policy/model_2/layer_2/BiasAdd_grad/tuple/group_depsNoOpQ^default_policy/gradients/default_policy/model_2/layer_2/BiasAdd_grad/BiasAddGradK^default_policy/gradients/default_policy/model_2/layer_2/Relu_grad/ReluGrad

]default_policy/gradients/default_policy/model_2/layer_2/BiasAdd_grad/tuple/control_dependencyIdentityJdefault_policy/gradients/default_policy/model_2/layer_2/Relu_grad/ReluGradV^default_policy/gradients/default_policy/model_2/layer_2/BiasAdd_grad/tuple/group_deps*
T0*]
_classS
QOloc:@default_policy/gradients/default_policy/model_2/layer_2/Relu_grad/ReluGrad*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
 
_default_policy/gradients/default_policy/model_2/layer_2/BiasAdd_grad/tuple/control_dependency_1IdentityPdefault_policy/gradients/default_policy/model_2/layer_2/BiasAdd_grad/BiasAddGradV^default_policy/gradients/default_policy/model_2/layer_2/BiasAdd_grad/tuple/group_deps*
T0*c
_classY
WUloc:@default_policy/gradients/default_policy/model_2/layer_2/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:è
Â
Jdefault_policy/gradients/default_policy/model_2/layer_2/MatMul_grad/MatMulMatMul]default_policy/gradients/default_policy/model_2/layer_2/BiasAdd_grad/tuple/control_dependency4default_policy/model_2/layer_2/MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
transpose_a( *
transpose_b(
«
Ldefault_policy/gradients/default_policy/model_2/layer_2/MatMul_grad/MatMul_1MatMul#default_policy/model_2/layer_1/Relu]default_policy/gradients/default_policy/model_2/layer_2/BiasAdd_grad/tuple/control_dependency*
T0* 
_output_shapes
:
èè*
transpose_a(*
transpose_b( 
ø
Tdefault_policy/gradients/default_policy/model_2/layer_2/MatMul_grad/tuple/group_depsNoOpK^default_policy/gradients/default_policy/model_2/layer_2/MatMul_grad/MatMulM^default_policy/gradients/default_policy/model_2/layer_2/MatMul_grad/MatMul_1

\default_policy/gradients/default_policy/model_2/layer_2/MatMul_grad/tuple/control_dependencyIdentityJdefault_policy/gradients/default_policy/model_2/layer_2/MatMul_grad/MatMulU^default_policy/gradients/default_policy/model_2/layer_2/MatMul_grad/tuple/group_deps*
T0*]
_classS
QOloc:@default_policy/gradients/default_policy/model_2/layer_2/MatMul_grad/MatMul*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè

^default_policy/gradients/default_policy/model_2/layer_2/MatMul_grad/tuple/control_dependency_1IdentityLdefault_policy/gradients/default_policy/model_2/layer_2/MatMul_grad/MatMul_1U^default_policy/gradients/default_policy/model_2/layer_2/MatMul_grad/tuple/group_deps*
T0*_
_classU
SQloc:@default_policy/gradients/default_policy/model_2/layer_2/MatMul_grad/MatMul_1* 
_output_shapes
:
èè

Jdefault_policy/gradients/default_policy/model_2/layer_1/Relu_grad/ReluGradReluGrad\default_policy/gradients/default_policy/model_2/layer_2/MatMul_grad/tuple/control_dependency#default_policy/model_2/layer_1/Relu*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
è
Pdefault_policy/gradients/default_policy/model_2/layer_1/BiasAdd_grad/BiasAddGradBiasAddGradJdefault_policy/gradients/default_policy/model_2/layer_1/Relu_grad/ReluGrad*
T0*
_output_shapes	
:è*
data_formatNHWC
ý
Udefault_policy/gradients/default_policy/model_2/layer_1/BiasAdd_grad/tuple/group_depsNoOpQ^default_policy/gradients/default_policy/model_2/layer_1/BiasAdd_grad/BiasAddGradK^default_policy/gradients/default_policy/model_2/layer_1/Relu_grad/ReluGrad

]default_policy/gradients/default_policy/model_2/layer_1/BiasAdd_grad/tuple/control_dependencyIdentityJdefault_policy/gradients/default_policy/model_2/layer_1/Relu_grad/ReluGradV^default_policy/gradients/default_policy/model_2/layer_1/BiasAdd_grad/tuple/group_deps*
T0*]
_classS
QOloc:@default_policy/gradients/default_policy/model_2/layer_1/Relu_grad/ReluGrad*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
 
_default_policy/gradients/default_policy/model_2/layer_1/BiasAdd_grad/tuple/control_dependency_1IdentityPdefault_policy/gradients/default_policy/model_2/layer_1/BiasAdd_grad/BiasAddGradV^default_policy/gradients/default_policy/model_2/layer_1/BiasAdd_grad/tuple/group_deps*
T0*c
_classY
WUloc:@default_policy/gradients/default_policy/model_2/layer_1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:è
Â
Jdefault_policy/gradients/default_policy/model_2/layer_1/MatMul_grad/MatMulMatMul]default_policy/gradients/default_policy/model_2/layer_1/BiasAdd_grad/tuple/control_dependency4default_policy/model_2/layer_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ*
transpose_a( *
transpose_b(

Ldefault_policy/gradients/default_policy/model_2/layer_1/MatMul_grad/MatMul_1MatMuldefault_policy/obs]default_policy/gradients/default_policy/model_2/layer_1/BiasAdd_grad/tuple/control_dependency*
T0* 
_output_shapes
:
Óè*
transpose_a(*
transpose_b( 
ø
Tdefault_policy/gradients/default_policy/model_2/layer_1/MatMul_grad/tuple/group_depsNoOpK^default_policy/gradients/default_policy/model_2/layer_1/MatMul_grad/MatMulM^default_policy/gradients/default_policy/model_2/layer_1/MatMul_grad/MatMul_1

\default_policy/gradients/default_policy/model_2/layer_1/MatMul_grad/tuple/control_dependencyIdentityJdefault_policy/gradients/default_policy/model_2/layer_1/MatMul_grad/MatMulU^default_policy/gradients/default_policy/model_2/layer_1/MatMul_grad/tuple/group_deps*
T0*]
_classS
QOloc:@default_policy/gradients/default_policy/model_2/layer_1/MatMul_grad/MatMul*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ

^default_policy/gradients/default_policy/model_2/layer_1/MatMul_grad/tuple/control_dependency_1IdentityLdefault_policy/gradients/default_policy/model_2/layer_1/MatMul_grad/MatMul_1U^default_policy/gradients/default_policy/model_2/layer_1/MatMul_grad/tuple/group_deps*
T0*_
_classU
SQloc:@default_policy/gradients/default_policy/model_2/layer_1/MatMul_grad/MatMul_1* 
_output_shapes
:
Óè

 default_policy/ReadVariableOp_14ReadVariableOpdefault_policy/layer_1/kernel* 
_output_shapes
:
Óè*
dtype0

8default_policy/Placeholder_default_policy/layer_1/kernelPlaceholder* 
_output_shapes
:
Óè*
dtype0*
shape:
Óè
²
"default_policy/AssignVariableOp_50AssignVariableOpdefault_policy/layer_1/kernel8default_policy/Placeholder_default_policy/layer_1/kernel*
dtype0*
validate_shape(
¥
 default_policy/ReadVariableOp_15ReadVariableOpdefault_policy/layer_1/kernel#^default_policy/AssignVariableOp_50* 
_output_shapes
:
Óè*
dtype0
y
 default_policy/ReadVariableOp_16ReadVariableOpdefault_policy/layer_1/bias*
_output_shapes	
:è*
dtype0

6default_policy/Placeholder_default_policy/layer_1/biasPlaceholder*
_output_shapes	
:è*
dtype0*
shape:è
®
"default_policy/AssignVariableOp_51AssignVariableOpdefault_policy/layer_1/bias6default_policy/Placeholder_default_policy/layer_1/bias*
dtype0*
validate_shape(

 default_policy/ReadVariableOp_17ReadVariableOpdefault_policy/layer_1/bias#^default_policy/AssignVariableOp_51*
_output_shapes	
:è*
dtype0

 default_policy/ReadVariableOp_18ReadVariableOpdefault_policy/layer_2/kernel* 
_output_shapes
:
èè*
dtype0

8default_policy/Placeholder_default_policy/layer_2/kernelPlaceholder* 
_output_shapes
:
èè*
dtype0*
shape:
èè
²
"default_policy/AssignVariableOp_52AssignVariableOpdefault_policy/layer_2/kernel8default_policy/Placeholder_default_policy/layer_2/kernel*
dtype0*
validate_shape(
¥
 default_policy/ReadVariableOp_19ReadVariableOpdefault_policy/layer_2/kernel#^default_policy/AssignVariableOp_52* 
_output_shapes
:
èè*
dtype0
y
 default_policy/ReadVariableOp_20ReadVariableOpdefault_policy/layer_2/bias*
_output_shapes	
:è*
dtype0

6default_policy/Placeholder_default_policy/layer_2/biasPlaceholder*
_output_shapes	
:è*
dtype0*
shape:è
®
"default_policy/AssignVariableOp_53AssignVariableOpdefault_policy/layer_2/bias6default_policy/Placeholder_default_policy/layer_2/bias*
dtype0*
validate_shape(

 default_policy/ReadVariableOp_21ReadVariableOpdefault_policy/layer_2/bias#^default_policy/AssignVariableOp_53*
_output_shapes	
:è*
dtype0

 default_policy/ReadVariableOp_22ReadVariableOpdefault_policy/layer_3/kernel* 
_output_shapes
:
èè*
dtype0

8default_policy/Placeholder_default_policy/layer_3/kernelPlaceholder* 
_output_shapes
:
èè*
dtype0*
shape:
èè
²
"default_policy/AssignVariableOp_54AssignVariableOpdefault_policy/layer_3/kernel8default_policy/Placeholder_default_policy/layer_3/kernel*
dtype0*
validate_shape(
¥
 default_policy/ReadVariableOp_23ReadVariableOpdefault_policy/layer_3/kernel#^default_policy/AssignVariableOp_54* 
_output_shapes
:
èè*
dtype0
y
 default_policy/ReadVariableOp_24ReadVariableOpdefault_policy/layer_3/bias*
_output_shapes	
:è*
dtype0

6default_policy/Placeholder_default_policy/layer_3/biasPlaceholder*
_output_shapes	
:è*
dtype0*
shape:è
®
"default_policy/AssignVariableOp_55AssignVariableOpdefault_policy/layer_3/bias6default_policy/Placeholder_default_policy/layer_3/bias*
dtype0*
validate_shape(

 default_policy/ReadVariableOp_25ReadVariableOpdefault_policy/layer_3/bias#^default_policy/AssignVariableOp_55*
_output_shapes	
:è*
dtype0

 default_policy/ReadVariableOp_26ReadVariableOpdefault_policy/layer_4/kernel* 
_output_shapes
:
èè*
dtype0

8default_policy/Placeholder_default_policy/layer_4/kernelPlaceholder* 
_output_shapes
:
èè*
dtype0*
shape:
èè
²
"default_policy/AssignVariableOp_56AssignVariableOpdefault_policy/layer_4/kernel8default_policy/Placeholder_default_policy/layer_4/kernel*
dtype0*
validate_shape(
¥
 default_policy/ReadVariableOp_27ReadVariableOpdefault_policy/layer_4/kernel#^default_policy/AssignVariableOp_56* 
_output_shapes
:
èè*
dtype0
y
 default_policy/ReadVariableOp_28ReadVariableOpdefault_policy/layer_4/bias*
_output_shapes	
:è*
dtype0

6default_policy/Placeholder_default_policy/layer_4/biasPlaceholder*
_output_shapes	
:è*
dtype0*
shape:è
®
"default_policy/AssignVariableOp_57AssignVariableOpdefault_policy/layer_4/bias6default_policy/Placeholder_default_policy/layer_4/bias*
dtype0*
validate_shape(

 default_policy/ReadVariableOp_29ReadVariableOpdefault_policy/layer_4/bias#^default_policy/AssignVariableOp_57*
_output_shapes	
:è*
dtype0

 default_policy/ReadVariableOp_30ReadVariableOp&default_policy/layer_val_hidden/kernel*
_output_shapes
:	è}*
dtype0

Adefault_policy/Placeholder_default_policy/layer_val_hidden/kernelPlaceholder*
_output_shapes
:	è}*
dtype0*
shape:	è}
Ä
"default_policy/AssignVariableOp_58AssignVariableOp&default_policy/layer_val_hidden/kernelAdefault_policy/Placeholder_default_policy/layer_val_hidden/kernel*
dtype0*
validate_shape(
­
 default_policy/ReadVariableOp_31ReadVariableOp&default_policy/layer_val_hidden/kernel#^default_policy/AssignVariableOp_58*
_output_shapes
:	è}*
dtype0

 default_policy/ReadVariableOp_32ReadVariableOp$default_policy/layer_val_hidden/bias*
_output_shapes
:}*
dtype0

?default_policy/Placeholder_default_policy/layer_val_hidden/biasPlaceholder*
_output_shapes
:}*
dtype0*
shape:}
À
"default_policy/AssignVariableOp_59AssignVariableOp$default_policy/layer_val_hidden/bias?default_policy/Placeholder_default_policy/layer_val_hidden/bias*
dtype0*
validate_shape(
¦
 default_policy/ReadVariableOp_33ReadVariableOp$default_policy/layer_val_hidden/bias#^default_policy/AssignVariableOp_59*
_output_shapes
:}*
dtype0

 default_policy/ReadVariableOp_34ReadVariableOp default_policy/action_out/kernel*
_output_shapes
:	è}*
dtype0

;default_policy/Placeholder_default_policy/action_out/kernelPlaceholder*
_output_shapes
:	è}*
dtype0*
shape:	è}
¸
"default_policy/AssignVariableOp_60AssignVariableOp default_policy/action_out/kernel;default_policy/Placeholder_default_policy/action_out/kernel*
dtype0*
validate_shape(
§
 default_policy/ReadVariableOp_35ReadVariableOp default_policy/action_out/kernel#^default_policy/AssignVariableOp_60*
_output_shapes
:	è}*
dtype0
{
 default_policy/ReadVariableOp_36ReadVariableOpdefault_policy/action_out/bias*
_output_shapes
:}*
dtype0

9default_policy/Placeholder_default_policy/action_out/biasPlaceholder*
_output_shapes
:}*
dtype0*
shape:}
´
"default_policy/AssignVariableOp_61AssignVariableOpdefault_policy/action_out/bias9default_policy/Placeholder_default_policy/action_out/bias*
dtype0*
validate_shape(
 
 default_policy/ReadVariableOp_37ReadVariableOpdefault_policy/action_out/bias#^default_policy/AssignVariableOp_61*
_output_shapes
:}*
dtype0

 default_policy/ReadVariableOp_38ReadVariableOpdefault_policy/value_out/kernel*
_output_shapes

:}*
dtype0

:default_policy/Placeholder_default_policy/value_out/kernelPlaceholder*
_output_shapes

:}*
dtype0*
shape
:}
¶
"default_policy/AssignVariableOp_62AssignVariableOpdefault_policy/value_out/kernel:default_policy/Placeholder_default_policy/value_out/kernel*
dtype0*
validate_shape(
¥
 default_policy/ReadVariableOp_39ReadVariableOpdefault_policy/value_out/kernel#^default_policy/AssignVariableOp_62*
_output_shapes

:}*
dtype0
z
 default_policy/ReadVariableOp_40ReadVariableOpdefault_policy/value_out/bias*
_output_shapes
:*
dtype0

8default_policy/Placeholder_default_policy/value_out/biasPlaceholder*
_output_shapes
:*
dtype0*
shape:
²
"default_policy/AssignVariableOp_63AssignVariableOpdefault_policy/value_out/bias8default_policy/Placeholder_default_policy/value_out/bias*
dtype0*
validate_shape(

 default_policy/ReadVariableOp_41ReadVariableOpdefault_policy/value_out/bias#^default_policy/AssignVariableOp_63*
_output_shapes
:*
dtype0

,default_policy/global_step/Initializer/zerosConst*-
_class#
!loc:@default_policy/global_step*
_output_shapes
: *
dtype0	*
value	B	 R 
ß
default_policy/global_stepVarHandleOp*-
_class#
!loc:@default_policy/global_step*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0	*
shape: *+
shared_namedefault_policy/global_step

;default_policy/global_step/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/global_step*
_output_shapes
: 
¢
!default_policy/global_step/AssignAssignVariableOpdefault_policy/global_step,default_policy/global_step/Initializer/zeros*
dtype0	*
validate_shape( 

.default_policy/global_step/Read/ReadVariableOpReadVariableOpdefault_policy/global_step*
_output_shapes
: *
dtype0	
¬
4default_policy/beta1_power/Initializer/initial_valueConst*1
_class'
%#loc:@default_policy/action_out/bias*
_output_shapes
: *
dtype0*
valueB
 *fff?
ã
default_policy/beta1_powerVarHandleOp*1
_class'
%#loc:@default_policy/action_out/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *+
shared_namedefault_policy/beta1_power
¸
;default_policy/beta1_power/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/beta1_power*1
_class'
%#loc:@default_policy/action_out/bias*
_output_shapes
: 
ª
!default_policy/beta1_power/AssignAssignVariableOpdefault_policy/beta1_power4default_policy/beta1_power/Initializer/initial_value*
dtype0*
validate_shape( 
´
.default_policy/beta1_power/Read/ReadVariableOpReadVariableOpdefault_policy/beta1_power*1
_class'
%#loc:@default_policy/action_out/bias*
_output_shapes
: *
dtype0
¬
4default_policy/beta2_power/Initializer/initial_valueConst*1
_class'
%#loc:@default_policy/action_out/bias*
_output_shapes
: *
dtype0*
valueB
 *w¾?
ã
default_policy/beta2_powerVarHandleOp*1
_class'
%#loc:@default_policy/action_out/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *+
shared_namedefault_policy/beta2_power
¸
;default_policy/beta2_power/IsInitialized/VarIsInitializedOpVarIsInitializedOpdefault_policy/beta2_power*1
_class'
%#loc:@default_policy/action_out/bias*
_output_shapes
: 
ª
!default_policy/beta2_power/AssignAssignVariableOpdefault_policy/beta2_power4default_policy/beta2_power/Initializer/initial_value*
dtype0*
validate_shape( 
´
.default_policy/beta2_power/Read/ReadVariableOpReadVariableOpdefault_policy/beta2_power*1
_class'
%#loc:@default_policy/action_out/bias*
_output_shapes
: *
dtype0
Ö
Sdefault_policy/default_policy/layer_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*0
_class&
$"loc:@default_policy/layer_1/kernel*
_output_shapes
:*
dtype0*
valueB"Ó  è  
À
Idefault_policy/default_policy/layer_1/kernel/Adam/Initializer/zeros/ConstConst*0
_class&
$"loc:@default_policy/layer_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ú
Cdefault_policy/default_policy/layer_1/kernel/Adam/Initializer/zerosFillSdefault_policy/default_policy/layer_1/kernel/Adam/Initializer/zeros/shape_as_tensorIdefault_policy/default_policy/layer_1/kernel/Adam/Initializer/zeros/Const*
T0*0
_class&
$"loc:@default_policy/layer_1/kernel* 
_output_shapes
:
Óè*

index_type0

1default_policy/default_policy/layer_1/kernel/AdamVarHandleOp*0
_class&
$"loc:@default_policy/layer_1/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
Óè*B
shared_name31default_policy/default_policy/layer_1/kernel/Adam
å
Rdefault_policy/default_policy/layer_1/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOp1default_policy/default_policy/layer_1/kernel/Adam*0
_class&
$"loc:@default_policy/layer_1/kernel*
_output_shapes
: 
ç
8default_policy/default_policy/layer_1/kernel/Adam/AssignAssignVariableOp1default_policy/default_policy/layer_1/kernel/AdamCdefault_policy/default_policy/layer_1/kernel/Adam/Initializer/zeros*
dtype0*
validate_shape( 
ë
Edefault_policy/default_policy/layer_1/kernel/Adam/Read/ReadVariableOpReadVariableOp1default_policy/default_policy/layer_1/kernel/Adam*0
_class&
$"loc:@default_policy/layer_1/kernel* 
_output_shapes
:
Óè*
dtype0
Ø
Udefault_policy/default_policy/layer_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*0
_class&
$"loc:@default_policy/layer_1/kernel*
_output_shapes
:*
dtype0*
valueB"Ó  è  
Â
Kdefault_policy/default_policy/layer_1/kernel/Adam_1/Initializer/zeros/ConstConst*0
_class&
$"loc:@default_policy/layer_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
à
Edefault_policy/default_policy/layer_1/kernel/Adam_1/Initializer/zerosFillUdefault_policy/default_policy/layer_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorKdefault_policy/default_policy/layer_1/kernel/Adam_1/Initializer/zeros/Const*
T0*0
_class&
$"loc:@default_policy/layer_1/kernel* 
_output_shapes
:
Óè*

index_type0

3default_policy/default_policy/layer_1/kernel/Adam_1VarHandleOp*0
_class&
$"loc:@default_policy/layer_1/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
Óè*D
shared_name53default_policy/default_policy/layer_1/kernel/Adam_1
é
Tdefault_policy/default_policy/layer_1/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp3default_policy/default_policy/layer_1/kernel/Adam_1*0
_class&
$"loc:@default_policy/layer_1/kernel*
_output_shapes
: 
í
:default_policy/default_policy/layer_1/kernel/Adam_1/AssignAssignVariableOp3default_policy/default_policy/layer_1/kernel/Adam_1Edefault_policy/default_policy/layer_1/kernel/Adam_1/Initializer/zeros*
dtype0*
validate_shape( 
ï
Gdefault_policy/default_policy/layer_1/kernel/Adam_1/Read/ReadVariableOpReadVariableOp3default_policy/default_policy/layer_1/kernel/Adam_1*0
_class&
$"loc:@default_policy/layer_1/kernel* 
_output_shapes
:
Óè*
dtype0
Ì
Qdefault_policy/default_policy/layer_1/bias/Adam/Initializer/zeros/shape_as_tensorConst*.
_class$
" loc:@default_policy/layer_1/bias*
_output_shapes
:*
dtype0*
valueB:è
¼
Gdefault_policy/default_policy/layer_1/bias/Adam/Initializer/zeros/ConstConst*.
_class$
" loc:@default_policy/layer_1/bias*
_output_shapes
: *
dtype0*
valueB
 *    
Í
Adefault_policy/default_policy/layer_1/bias/Adam/Initializer/zerosFillQdefault_policy/default_policy/layer_1/bias/Adam/Initializer/zeros/shape_as_tensorGdefault_policy/default_policy/layer_1/bias/Adam/Initializer/zeros/Const*
T0*.
_class$
" loc:@default_policy/layer_1/bias*
_output_shapes	
:è*

index_type0

/default_policy/default_policy/layer_1/bias/AdamVarHandleOp*.
_class$
" loc:@default_policy/layer_1/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:è*@
shared_name1/default_policy/default_policy/layer_1/bias/Adam
ß
Pdefault_policy/default_policy/layer_1/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOp/default_policy/default_policy/layer_1/bias/Adam*.
_class$
" loc:@default_policy/layer_1/bias*
_output_shapes
: 
á
6default_policy/default_policy/layer_1/bias/Adam/AssignAssignVariableOp/default_policy/default_policy/layer_1/bias/AdamAdefault_policy/default_policy/layer_1/bias/Adam/Initializer/zeros*
dtype0*
validate_shape( 
à
Cdefault_policy/default_policy/layer_1/bias/Adam/Read/ReadVariableOpReadVariableOp/default_policy/default_policy/layer_1/bias/Adam*.
_class$
" loc:@default_policy/layer_1/bias*
_output_shapes	
:è*
dtype0
Î
Sdefault_policy/default_policy/layer_1/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*.
_class$
" loc:@default_policy/layer_1/bias*
_output_shapes
:*
dtype0*
valueB:è
¾
Idefault_policy/default_policy/layer_1/bias/Adam_1/Initializer/zeros/ConstConst*.
_class$
" loc:@default_policy/layer_1/bias*
_output_shapes
: *
dtype0*
valueB
 *    
Ó
Cdefault_policy/default_policy/layer_1/bias/Adam_1/Initializer/zerosFillSdefault_policy/default_policy/layer_1/bias/Adam_1/Initializer/zeros/shape_as_tensorIdefault_policy/default_policy/layer_1/bias/Adam_1/Initializer/zeros/Const*
T0*.
_class$
" loc:@default_policy/layer_1/bias*
_output_shapes	
:è*

index_type0

1default_policy/default_policy/layer_1/bias/Adam_1VarHandleOp*.
_class$
" loc:@default_policy/layer_1/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:è*B
shared_name31default_policy/default_policy/layer_1/bias/Adam_1
ã
Rdefault_policy/default_policy/layer_1/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp1default_policy/default_policy/layer_1/bias/Adam_1*.
_class$
" loc:@default_policy/layer_1/bias*
_output_shapes
: 
ç
8default_policy/default_policy/layer_1/bias/Adam_1/AssignAssignVariableOp1default_policy/default_policy/layer_1/bias/Adam_1Cdefault_policy/default_policy/layer_1/bias/Adam_1/Initializer/zeros*
dtype0*
validate_shape( 
ä
Edefault_policy/default_policy/layer_1/bias/Adam_1/Read/ReadVariableOpReadVariableOp1default_policy/default_policy/layer_1/bias/Adam_1*.
_class$
" loc:@default_policy/layer_1/bias*
_output_shapes	
:è*
dtype0
Ö
Sdefault_policy/default_policy/layer_2/kernel/Adam/Initializer/zeros/shape_as_tensorConst*0
_class&
$"loc:@default_policy/layer_2/kernel*
_output_shapes
:*
dtype0*
valueB"è  è  
À
Idefault_policy/default_policy/layer_2/kernel/Adam/Initializer/zeros/ConstConst*0
_class&
$"loc:@default_policy/layer_2/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ú
Cdefault_policy/default_policy/layer_2/kernel/Adam/Initializer/zerosFillSdefault_policy/default_policy/layer_2/kernel/Adam/Initializer/zeros/shape_as_tensorIdefault_policy/default_policy/layer_2/kernel/Adam/Initializer/zeros/Const*
T0*0
_class&
$"loc:@default_policy/layer_2/kernel* 
_output_shapes
:
èè*

index_type0

1default_policy/default_policy/layer_2/kernel/AdamVarHandleOp*0
_class&
$"loc:@default_policy/layer_2/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
èè*B
shared_name31default_policy/default_policy/layer_2/kernel/Adam
å
Rdefault_policy/default_policy/layer_2/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOp1default_policy/default_policy/layer_2/kernel/Adam*0
_class&
$"loc:@default_policy/layer_2/kernel*
_output_shapes
: 
ç
8default_policy/default_policy/layer_2/kernel/Adam/AssignAssignVariableOp1default_policy/default_policy/layer_2/kernel/AdamCdefault_policy/default_policy/layer_2/kernel/Adam/Initializer/zeros*
dtype0*
validate_shape( 
ë
Edefault_policy/default_policy/layer_2/kernel/Adam/Read/ReadVariableOpReadVariableOp1default_policy/default_policy/layer_2/kernel/Adam*0
_class&
$"loc:@default_policy/layer_2/kernel* 
_output_shapes
:
èè*
dtype0
Ø
Udefault_policy/default_policy/layer_2/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*0
_class&
$"loc:@default_policy/layer_2/kernel*
_output_shapes
:*
dtype0*
valueB"è  è  
Â
Kdefault_policy/default_policy/layer_2/kernel/Adam_1/Initializer/zeros/ConstConst*0
_class&
$"loc:@default_policy/layer_2/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
à
Edefault_policy/default_policy/layer_2/kernel/Adam_1/Initializer/zerosFillUdefault_policy/default_policy/layer_2/kernel/Adam_1/Initializer/zeros/shape_as_tensorKdefault_policy/default_policy/layer_2/kernel/Adam_1/Initializer/zeros/Const*
T0*0
_class&
$"loc:@default_policy/layer_2/kernel* 
_output_shapes
:
èè*

index_type0

3default_policy/default_policy/layer_2/kernel/Adam_1VarHandleOp*0
_class&
$"loc:@default_policy/layer_2/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
èè*D
shared_name53default_policy/default_policy/layer_2/kernel/Adam_1
é
Tdefault_policy/default_policy/layer_2/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp3default_policy/default_policy/layer_2/kernel/Adam_1*0
_class&
$"loc:@default_policy/layer_2/kernel*
_output_shapes
: 
í
:default_policy/default_policy/layer_2/kernel/Adam_1/AssignAssignVariableOp3default_policy/default_policy/layer_2/kernel/Adam_1Edefault_policy/default_policy/layer_2/kernel/Adam_1/Initializer/zeros*
dtype0*
validate_shape( 
ï
Gdefault_policy/default_policy/layer_2/kernel/Adam_1/Read/ReadVariableOpReadVariableOp3default_policy/default_policy/layer_2/kernel/Adam_1*0
_class&
$"loc:@default_policy/layer_2/kernel* 
_output_shapes
:
èè*
dtype0
Ì
Qdefault_policy/default_policy/layer_2/bias/Adam/Initializer/zeros/shape_as_tensorConst*.
_class$
" loc:@default_policy/layer_2/bias*
_output_shapes
:*
dtype0*
valueB:è
¼
Gdefault_policy/default_policy/layer_2/bias/Adam/Initializer/zeros/ConstConst*.
_class$
" loc:@default_policy/layer_2/bias*
_output_shapes
: *
dtype0*
valueB
 *    
Í
Adefault_policy/default_policy/layer_2/bias/Adam/Initializer/zerosFillQdefault_policy/default_policy/layer_2/bias/Adam/Initializer/zeros/shape_as_tensorGdefault_policy/default_policy/layer_2/bias/Adam/Initializer/zeros/Const*
T0*.
_class$
" loc:@default_policy/layer_2/bias*
_output_shapes	
:è*

index_type0

/default_policy/default_policy/layer_2/bias/AdamVarHandleOp*.
_class$
" loc:@default_policy/layer_2/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:è*@
shared_name1/default_policy/default_policy/layer_2/bias/Adam
ß
Pdefault_policy/default_policy/layer_2/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOp/default_policy/default_policy/layer_2/bias/Adam*.
_class$
" loc:@default_policy/layer_2/bias*
_output_shapes
: 
á
6default_policy/default_policy/layer_2/bias/Adam/AssignAssignVariableOp/default_policy/default_policy/layer_2/bias/AdamAdefault_policy/default_policy/layer_2/bias/Adam/Initializer/zeros*
dtype0*
validate_shape( 
à
Cdefault_policy/default_policy/layer_2/bias/Adam/Read/ReadVariableOpReadVariableOp/default_policy/default_policy/layer_2/bias/Adam*.
_class$
" loc:@default_policy/layer_2/bias*
_output_shapes	
:è*
dtype0
Î
Sdefault_policy/default_policy/layer_2/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*.
_class$
" loc:@default_policy/layer_2/bias*
_output_shapes
:*
dtype0*
valueB:è
¾
Idefault_policy/default_policy/layer_2/bias/Adam_1/Initializer/zeros/ConstConst*.
_class$
" loc:@default_policy/layer_2/bias*
_output_shapes
: *
dtype0*
valueB
 *    
Ó
Cdefault_policy/default_policy/layer_2/bias/Adam_1/Initializer/zerosFillSdefault_policy/default_policy/layer_2/bias/Adam_1/Initializer/zeros/shape_as_tensorIdefault_policy/default_policy/layer_2/bias/Adam_1/Initializer/zeros/Const*
T0*.
_class$
" loc:@default_policy/layer_2/bias*
_output_shapes	
:è*

index_type0

1default_policy/default_policy/layer_2/bias/Adam_1VarHandleOp*.
_class$
" loc:@default_policy/layer_2/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:è*B
shared_name31default_policy/default_policy/layer_2/bias/Adam_1
ã
Rdefault_policy/default_policy/layer_2/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp1default_policy/default_policy/layer_2/bias/Adam_1*.
_class$
" loc:@default_policy/layer_2/bias*
_output_shapes
: 
ç
8default_policy/default_policy/layer_2/bias/Adam_1/AssignAssignVariableOp1default_policy/default_policy/layer_2/bias/Adam_1Cdefault_policy/default_policy/layer_2/bias/Adam_1/Initializer/zeros*
dtype0*
validate_shape( 
ä
Edefault_policy/default_policy/layer_2/bias/Adam_1/Read/ReadVariableOpReadVariableOp1default_policy/default_policy/layer_2/bias/Adam_1*.
_class$
" loc:@default_policy/layer_2/bias*
_output_shapes	
:è*
dtype0
Ö
Sdefault_policy/default_policy/layer_3/kernel/Adam/Initializer/zeros/shape_as_tensorConst*0
_class&
$"loc:@default_policy/layer_3/kernel*
_output_shapes
:*
dtype0*
valueB"è  è  
À
Idefault_policy/default_policy/layer_3/kernel/Adam/Initializer/zeros/ConstConst*0
_class&
$"loc:@default_policy/layer_3/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ú
Cdefault_policy/default_policy/layer_3/kernel/Adam/Initializer/zerosFillSdefault_policy/default_policy/layer_3/kernel/Adam/Initializer/zeros/shape_as_tensorIdefault_policy/default_policy/layer_3/kernel/Adam/Initializer/zeros/Const*
T0*0
_class&
$"loc:@default_policy/layer_3/kernel* 
_output_shapes
:
èè*

index_type0

1default_policy/default_policy/layer_3/kernel/AdamVarHandleOp*0
_class&
$"loc:@default_policy/layer_3/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
èè*B
shared_name31default_policy/default_policy/layer_3/kernel/Adam
å
Rdefault_policy/default_policy/layer_3/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOp1default_policy/default_policy/layer_3/kernel/Adam*0
_class&
$"loc:@default_policy/layer_3/kernel*
_output_shapes
: 
ç
8default_policy/default_policy/layer_3/kernel/Adam/AssignAssignVariableOp1default_policy/default_policy/layer_3/kernel/AdamCdefault_policy/default_policy/layer_3/kernel/Adam/Initializer/zeros*
dtype0*
validate_shape( 
ë
Edefault_policy/default_policy/layer_3/kernel/Adam/Read/ReadVariableOpReadVariableOp1default_policy/default_policy/layer_3/kernel/Adam*0
_class&
$"loc:@default_policy/layer_3/kernel* 
_output_shapes
:
èè*
dtype0
Ø
Udefault_policy/default_policy/layer_3/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*0
_class&
$"loc:@default_policy/layer_3/kernel*
_output_shapes
:*
dtype0*
valueB"è  è  
Â
Kdefault_policy/default_policy/layer_3/kernel/Adam_1/Initializer/zeros/ConstConst*0
_class&
$"loc:@default_policy/layer_3/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
à
Edefault_policy/default_policy/layer_3/kernel/Adam_1/Initializer/zerosFillUdefault_policy/default_policy/layer_3/kernel/Adam_1/Initializer/zeros/shape_as_tensorKdefault_policy/default_policy/layer_3/kernel/Adam_1/Initializer/zeros/Const*
T0*0
_class&
$"loc:@default_policy/layer_3/kernel* 
_output_shapes
:
èè*

index_type0

3default_policy/default_policy/layer_3/kernel/Adam_1VarHandleOp*0
_class&
$"loc:@default_policy/layer_3/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
èè*D
shared_name53default_policy/default_policy/layer_3/kernel/Adam_1
é
Tdefault_policy/default_policy/layer_3/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp3default_policy/default_policy/layer_3/kernel/Adam_1*0
_class&
$"loc:@default_policy/layer_3/kernel*
_output_shapes
: 
í
:default_policy/default_policy/layer_3/kernel/Adam_1/AssignAssignVariableOp3default_policy/default_policy/layer_3/kernel/Adam_1Edefault_policy/default_policy/layer_3/kernel/Adam_1/Initializer/zeros*
dtype0*
validate_shape( 
ï
Gdefault_policy/default_policy/layer_3/kernel/Adam_1/Read/ReadVariableOpReadVariableOp3default_policy/default_policy/layer_3/kernel/Adam_1*0
_class&
$"loc:@default_policy/layer_3/kernel* 
_output_shapes
:
èè*
dtype0
Ì
Qdefault_policy/default_policy/layer_3/bias/Adam/Initializer/zeros/shape_as_tensorConst*.
_class$
" loc:@default_policy/layer_3/bias*
_output_shapes
:*
dtype0*
valueB:è
¼
Gdefault_policy/default_policy/layer_3/bias/Adam/Initializer/zeros/ConstConst*.
_class$
" loc:@default_policy/layer_3/bias*
_output_shapes
: *
dtype0*
valueB
 *    
Í
Adefault_policy/default_policy/layer_3/bias/Adam/Initializer/zerosFillQdefault_policy/default_policy/layer_3/bias/Adam/Initializer/zeros/shape_as_tensorGdefault_policy/default_policy/layer_3/bias/Adam/Initializer/zeros/Const*
T0*.
_class$
" loc:@default_policy/layer_3/bias*
_output_shapes	
:è*

index_type0

/default_policy/default_policy/layer_3/bias/AdamVarHandleOp*.
_class$
" loc:@default_policy/layer_3/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:è*@
shared_name1/default_policy/default_policy/layer_3/bias/Adam
ß
Pdefault_policy/default_policy/layer_3/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOp/default_policy/default_policy/layer_3/bias/Adam*.
_class$
" loc:@default_policy/layer_3/bias*
_output_shapes
: 
á
6default_policy/default_policy/layer_3/bias/Adam/AssignAssignVariableOp/default_policy/default_policy/layer_3/bias/AdamAdefault_policy/default_policy/layer_3/bias/Adam/Initializer/zeros*
dtype0*
validate_shape( 
à
Cdefault_policy/default_policy/layer_3/bias/Adam/Read/ReadVariableOpReadVariableOp/default_policy/default_policy/layer_3/bias/Adam*.
_class$
" loc:@default_policy/layer_3/bias*
_output_shapes	
:è*
dtype0
Î
Sdefault_policy/default_policy/layer_3/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*.
_class$
" loc:@default_policy/layer_3/bias*
_output_shapes
:*
dtype0*
valueB:è
¾
Idefault_policy/default_policy/layer_3/bias/Adam_1/Initializer/zeros/ConstConst*.
_class$
" loc:@default_policy/layer_3/bias*
_output_shapes
: *
dtype0*
valueB
 *    
Ó
Cdefault_policy/default_policy/layer_3/bias/Adam_1/Initializer/zerosFillSdefault_policy/default_policy/layer_3/bias/Adam_1/Initializer/zeros/shape_as_tensorIdefault_policy/default_policy/layer_3/bias/Adam_1/Initializer/zeros/Const*
T0*.
_class$
" loc:@default_policy/layer_3/bias*
_output_shapes	
:è*

index_type0

1default_policy/default_policy/layer_3/bias/Adam_1VarHandleOp*.
_class$
" loc:@default_policy/layer_3/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:è*B
shared_name31default_policy/default_policy/layer_3/bias/Adam_1
ã
Rdefault_policy/default_policy/layer_3/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp1default_policy/default_policy/layer_3/bias/Adam_1*.
_class$
" loc:@default_policy/layer_3/bias*
_output_shapes
: 
ç
8default_policy/default_policy/layer_3/bias/Adam_1/AssignAssignVariableOp1default_policy/default_policy/layer_3/bias/Adam_1Cdefault_policy/default_policy/layer_3/bias/Adam_1/Initializer/zeros*
dtype0*
validate_shape( 
ä
Edefault_policy/default_policy/layer_3/bias/Adam_1/Read/ReadVariableOpReadVariableOp1default_policy/default_policy/layer_3/bias/Adam_1*.
_class$
" loc:@default_policy/layer_3/bias*
_output_shapes	
:è*
dtype0
Ö
Sdefault_policy/default_policy/layer_4/kernel/Adam/Initializer/zeros/shape_as_tensorConst*0
_class&
$"loc:@default_policy/layer_4/kernel*
_output_shapes
:*
dtype0*
valueB"è  è  
À
Idefault_policy/default_policy/layer_4/kernel/Adam/Initializer/zeros/ConstConst*0
_class&
$"loc:@default_policy/layer_4/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ú
Cdefault_policy/default_policy/layer_4/kernel/Adam/Initializer/zerosFillSdefault_policy/default_policy/layer_4/kernel/Adam/Initializer/zeros/shape_as_tensorIdefault_policy/default_policy/layer_4/kernel/Adam/Initializer/zeros/Const*
T0*0
_class&
$"loc:@default_policy/layer_4/kernel* 
_output_shapes
:
èè*

index_type0

1default_policy/default_policy/layer_4/kernel/AdamVarHandleOp*0
_class&
$"loc:@default_policy/layer_4/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
èè*B
shared_name31default_policy/default_policy/layer_4/kernel/Adam
å
Rdefault_policy/default_policy/layer_4/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOp1default_policy/default_policy/layer_4/kernel/Adam*0
_class&
$"loc:@default_policy/layer_4/kernel*
_output_shapes
: 
ç
8default_policy/default_policy/layer_4/kernel/Adam/AssignAssignVariableOp1default_policy/default_policy/layer_4/kernel/AdamCdefault_policy/default_policy/layer_4/kernel/Adam/Initializer/zeros*
dtype0*
validate_shape( 
ë
Edefault_policy/default_policy/layer_4/kernel/Adam/Read/ReadVariableOpReadVariableOp1default_policy/default_policy/layer_4/kernel/Adam*0
_class&
$"loc:@default_policy/layer_4/kernel* 
_output_shapes
:
èè*
dtype0
Ø
Udefault_policy/default_policy/layer_4/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*0
_class&
$"loc:@default_policy/layer_4/kernel*
_output_shapes
:*
dtype0*
valueB"è  è  
Â
Kdefault_policy/default_policy/layer_4/kernel/Adam_1/Initializer/zeros/ConstConst*0
_class&
$"loc:@default_policy/layer_4/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
à
Edefault_policy/default_policy/layer_4/kernel/Adam_1/Initializer/zerosFillUdefault_policy/default_policy/layer_4/kernel/Adam_1/Initializer/zeros/shape_as_tensorKdefault_policy/default_policy/layer_4/kernel/Adam_1/Initializer/zeros/Const*
T0*0
_class&
$"loc:@default_policy/layer_4/kernel* 
_output_shapes
:
èè*

index_type0

3default_policy/default_policy/layer_4/kernel/Adam_1VarHandleOp*0
_class&
$"loc:@default_policy/layer_4/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
èè*D
shared_name53default_policy/default_policy/layer_4/kernel/Adam_1
é
Tdefault_policy/default_policy/layer_4/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp3default_policy/default_policy/layer_4/kernel/Adam_1*0
_class&
$"loc:@default_policy/layer_4/kernel*
_output_shapes
: 
í
:default_policy/default_policy/layer_4/kernel/Adam_1/AssignAssignVariableOp3default_policy/default_policy/layer_4/kernel/Adam_1Edefault_policy/default_policy/layer_4/kernel/Adam_1/Initializer/zeros*
dtype0*
validate_shape( 
ï
Gdefault_policy/default_policy/layer_4/kernel/Adam_1/Read/ReadVariableOpReadVariableOp3default_policy/default_policy/layer_4/kernel/Adam_1*0
_class&
$"loc:@default_policy/layer_4/kernel* 
_output_shapes
:
èè*
dtype0
Ì
Qdefault_policy/default_policy/layer_4/bias/Adam/Initializer/zeros/shape_as_tensorConst*.
_class$
" loc:@default_policy/layer_4/bias*
_output_shapes
:*
dtype0*
valueB:è
¼
Gdefault_policy/default_policy/layer_4/bias/Adam/Initializer/zeros/ConstConst*.
_class$
" loc:@default_policy/layer_4/bias*
_output_shapes
: *
dtype0*
valueB
 *    
Í
Adefault_policy/default_policy/layer_4/bias/Adam/Initializer/zerosFillQdefault_policy/default_policy/layer_4/bias/Adam/Initializer/zeros/shape_as_tensorGdefault_policy/default_policy/layer_4/bias/Adam/Initializer/zeros/Const*
T0*.
_class$
" loc:@default_policy/layer_4/bias*
_output_shapes	
:è*

index_type0

/default_policy/default_policy/layer_4/bias/AdamVarHandleOp*.
_class$
" loc:@default_policy/layer_4/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:è*@
shared_name1/default_policy/default_policy/layer_4/bias/Adam
ß
Pdefault_policy/default_policy/layer_4/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOp/default_policy/default_policy/layer_4/bias/Adam*.
_class$
" loc:@default_policy/layer_4/bias*
_output_shapes
: 
á
6default_policy/default_policy/layer_4/bias/Adam/AssignAssignVariableOp/default_policy/default_policy/layer_4/bias/AdamAdefault_policy/default_policy/layer_4/bias/Adam/Initializer/zeros*
dtype0*
validate_shape( 
à
Cdefault_policy/default_policy/layer_4/bias/Adam/Read/ReadVariableOpReadVariableOp/default_policy/default_policy/layer_4/bias/Adam*.
_class$
" loc:@default_policy/layer_4/bias*
_output_shapes	
:è*
dtype0
Î
Sdefault_policy/default_policy/layer_4/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*.
_class$
" loc:@default_policy/layer_4/bias*
_output_shapes
:*
dtype0*
valueB:è
¾
Idefault_policy/default_policy/layer_4/bias/Adam_1/Initializer/zeros/ConstConst*.
_class$
" loc:@default_policy/layer_4/bias*
_output_shapes
: *
dtype0*
valueB
 *    
Ó
Cdefault_policy/default_policy/layer_4/bias/Adam_1/Initializer/zerosFillSdefault_policy/default_policy/layer_4/bias/Adam_1/Initializer/zeros/shape_as_tensorIdefault_policy/default_policy/layer_4/bias/Adam_1/Initializer/zeros/Const*
T0*.
_class$
" loc:@default_policy/layer_4/bias*
_output_shapes	
:è*

index_type0

1default_policy/default_policy/layer_4/bias/Adam_1VarHandleOp*.
_class$
" loc:@default_policy/layer_4/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:è*B
shared_name31default_policy/default_policy/layer_4/bias/Adam_1
ã
Rdefault_policy/default_policy/layer_4/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp1default_policy/default_policy/layer_4/bias/Adam_1*.
_class$
" loc:@default_policy/layer_4/bias*
_output_shapes
: 
ç
8default_policy/default_policy/layer_4/bias/Adam_1/AssignAssignVariableOp1default_policy/default_policy/layer_4/bias/Adam_1Cdefault_policy/default_policy/layer_4/bias/Adam_1/Initializer/zeros*
dtype0*
validate_shape( 
ä
Edefault_policy/default_policy/layer_4/bias/Adam_1/Read/ReadVariableOpReadVariableOp1default_policy/default_policy/layer_4/bias/Adam_1*.
_class$
" loc:@default_policy/layer_4/bias*
_output_shapes	
:è*
dtype0
è
\default_policy/default_policy/layer_val_hidden/kernel/Adam/Initializer/zeros/shape_as_tensorConst*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel*
_output_shapes
:*
dtype0*
valueB"è  }   
Ò
Rdefault_policy/default_policy/layer_val_hidden/kernel/Adam/Initializer/zeros/ConstConst*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
ý
Ldefault_policy/default_policy/layer_val_hidden/kernel/Adam/Initializer/zerosFill\default_policy/default_policy/layer_val_hidden/kernel/Adam/Initializer/zeros/shape_as_tensorRdefault_policy/default_policy/layer_val_hidden/kernel/Adam/Initializer/zeros/Const*
T0*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel*
_output_shapes
:	è}*

index_type0
´
:default_policy/default_policy/layer_val_hidden/kernel/AdamVarHandleOp*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:	è}*K
shared_name<:default_policy/default_policy/layer_val_hidden/kernel/Adam

[default_policy/default_policy/layer_val_hidden/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOp:default_policy/default_policy/layer_val_hidden/kernel/Adam*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel*
_output_shapes
: 

Adefault_policy/default_policy/layer_val_hidden/kernel/Adam/AssignAssignVariableOp:default_policy/default_policy/layer_val_hidden/kernel/AdamLdefault_policy/default_policy/layer_val_hidden/kernel/Adam/Initializer/zeros*
dtype0*
validate_shape( 

Ndefault_policy/default_policy/layer_val_hidden/kernel/Adam/Read/ReadVariableOpReadVariableOp:default_policy/default_policy/layer_val_hidden/kernel/Adam*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel*
_output_shapes
:	è}*
dtype0
ê
^default_policy/default_policy/layer_val_hidden/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel*
_output_shapes
:*
dtype0*
valueB"è  }   
Ô
Tdefault_policy/default_policy/layer_val_hidden/kernel/Adam_1/Initializer/zeros/ConstConst*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel*
_output_shapes
: *
dtype0*
valueB
 *    

Ndefault_policy/default_policy/layer_val_hidden/kernel/Adam_1/Initializer/zerosFill^default_policy/default_policy/layer_val_hidden/kernel/Adam_1/Initializer/zeros/shape_as_tensorTdefault_policy/default_policy/layer_val_hidden/kernel/Adam_1/Initializer/zeros/Const*
T0*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel*
_output_shapes
:	è}*

index_type0
¸
<default_policy/default_policy/layer_val_hidden/kernel/Adam_1VarHandleOp*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:	è}*M
shared_name><default_policy/default_policy/layer_val_hidden/kernel/Adam_1

]default_policy/default_policy/layer_val_hidden/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp<default_policy/default_policy/layer_val_hidden/kernel/Adam_1*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel*
_output_shapes
: 

Cdefault_policy/default_policy/layer_val_hidden/kernel/Adam_1/AssignAssignVariableOp<default_policy/default_policy/layer_val_hidden/kernel/Adam_1Ndefault_policy/default_policy/layer_val_hidden/kernel/Adam_1/Initializer/zeros*
dtype0*
validate_shape( 

Pdefault_policy/default_policy/layer_val_hidden/kernel/Adam_1/Read/ReadVariableOpReadVariableOp<default_policy/default_policy/layer_val_hidden/kernel/Adam_1*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel*
_output_shapes
:	è}*
dtype0
Ð
Jdefault_policy/default_policy/layer_val_hidden/bias/Adam/Initializer/zerosConst*7
_class-
+)loc:@default_policy/layer_val_hidden/bias*
_output_shapes
:}*
dtype0*
valueB}*    
©
8default_policy/default_policy/layer_val_hidden/bias/AdamVarHandleOp*7
_class-
+)loc:@default_policy/layer_val_hidden/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:}*I
shared_name:8default_policy/default_policy/layer_val_hidden/bias/Adam
ú
Ydefault_policy/default_policy/layer_val_hidden/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOp8default_policy/default_policy/layer_val_hidden/bias/Adam*7
_class-
+)loc:@default_policy/layer_val_hidden/bias*
_output_shapes
: 
ü
?default_policy/default_policy/layer_val_hidden/bias/Adam/AssignAssignVariableOp8default_policy/default_policy/layer_val_hidden/bias/AdamJdefault_policy/default_policy/layer_val_hidden/bias/Adam/Initializer/zeros*
dtype0*
validate_shape( 
ú
Ldefault_policy/default_policy/layer_val_hidden/bias/Adam/Read/ReadVariableOpReadVariableOp8default_policy/default_policy/layer_val_hidden/bias/Adam*7
_class-
+)loc:@default_policy/layer_val_hidden/bias*
_output_shapes
:}*
dtype0
Ò
Ldefault_policy/default_policy/layer_val_hidden/bias/Adam_1/Initializer/zerosConst*7
_class-
+)loc:@default_policy/layer_val_hidden/bias*
_output_shapes
:}*
dtype0*
valueB}*    
­
:default_policy/default_policy/layer_val_hidden/bias/Adam_1VarHandleOp*7
_class-
+)loc:@default_policy/layer_val_hidden/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:}*K
shared_name<:default_policy/default_policy/layer_val_hidden/bias/Adam_1
þ
[default_policy/default_policy/layer_val_hidden/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp:default_policy/default_policy/layer_val_hidden/bias/Adam_1*7
_class-
+)loc:@default_policy/layer_val_hidden/bias*
_output_shapes
: 

Adefault_policy/default_policy/layer_val_hidden/bias/Adam_1/AssignAssignVariableOp:default_policy/default_policy/layer_val_hidden/bias/Adam_1Ldefault_policy/default_policy/layer_val_hidden/bias/Adam_1/Initializer/zeros*
dtype0*
validate_shape( 
þ
Ndefault_policy/default_policy/layer_val_hidden/bias/Adam_1/Read/ReadVariableOpReadVariableOp:default_policy/default_policy/layer_val_hidden/bias/Adam_1*7
_class-
+)loc:@default_policy/layer_val_hidden/bias*
_output_shapes
:}*
dtype0
Ü
Vdefault_policy/default_policy/action_out/kernel/Adam/Initializer/zeros/shape_as_tensorConst*3
_class)
'%loc:@default_policy/action_out/kernel*
_output_shapes
:*
dtype0*
valueB"è  }   
Æ
Ldefault_policy/default_policy/action_out/kernel/Adam/Initializer/zeros/ConstConst*3
_class)
'%loc:@default_policy/action_out/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
å
Fdefault_policy/default_policy/action_out/kernel/Adam/Initializer/zerosFillVdefault_policy/default_policy/action_out/kernel/Adam/Initializer/zeros/shape_as_tensorLdefault_policy/default_policy/action_out/kernel/Adam/Initializer/zeros/Const*
T0*3
_class)
'%loc:@default_policy/action_out/kernel*
_output_shapes
:	è}*

index_type0
¢
4default_policy/default_policy/action_out/kernel/AdamVarHandleOp*3
_class)
'%loc:@default_policy/action_out/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:	è}*E
shared_name64default_policy/default_policy/action_out/kernel/Adam
î
Udefault_policy/default_policy/action_out/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOp4default_policy/default_policy/action_out/kernel/Adam*3
_class)
'%loc:@default_policy/action_out/kernel*
_output_shapes
: 
ð
;default_policy/default_policy/action_out/kernel/Adam/AssignAssignVariableOp4default_policy/default_policy/action_out/kernel/AdamFdefault_policy/default_policy/action_out/kernel/Adam/Initializer/zeros*
dtype0*
validate_shape( 
ó
Hdefault_policy/default_policy/action_out/kernel/Adam/Read/ReadVariableOpReadVariableOp4default_policy/default_policy/action_out/kernel/Adam*3
_class)
'%loc:@default_policy/action_out/kernel*
_output_shapes
:	è}*
dtype0
Þ
Xdefault_policy/default_policy/action_out/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*3
_class)
'%loc:@default_policy/action_out/kernel*
_output_shapes
:*
dtype0*
valueB"è  }   
È
Ndefault_policy/default_policy/action_out/kernel/Adam_1/Initializer/zeros/ConstConst*3
_class)
'%loc:@default_policy/action_out/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
ë
Hdefault_policy/default_policy/action_out/kernel/Adam_1/Initializer/zerosFillXdefault_policy/default_policy/action_out/kernel/Adam_1/Initializer/zeros/shape_as_tensorNdefault_policy/default_policy/action_out/kernel/Adam_1/Initializer/zeros/Const*
T0*3
_class)
'%loc:@default_policy/action_out/kernel*
_output_shapes
:	è}*

index_type0
¦
6default_policy/default_policy/action_out/kernel/Adam_1VarHandleOp*3
_class)
'%loc:@default_policy/action_out/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:	è}*G
shared_name86default_policy/default_policy/action_out/kernel/Adam_1
ò
Wdefault_policy/default_policy/action_out/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp6default_policy/default_policy/action_out/kernel/Adam_1*3
_class)
'%loc:@default_policy/action_out/kernel*
_output_shapes
: 
ö
=default_policy/default_policy/action_out/kernel/Adam_1/AssignAssignVariableOp6default_policy/default_policy/action_out/kernel/Adam_1Hdefault_policy/default_policy/action_out/kernel/Adam_1/Initializer/zeros*
dtype0*
validate_shape( 
÷
Jdefault_policy/default_policy/action_out/kernel/Adam_1/Read/ReadVariableOpReadVariableOp6default_policy/default_policy/action_out/kernel/Adam_1*3
_class)
'%loc:@default_policy/action_out/kernel*
_output_shapes
:	è}*
dtype0
Ä
Ddefault_policy/default_policy/action_out/bias/Adam/Initializer/zerosConst*1
_class'
%#loc:@default_policy/action_out/bias*
_output_shapes
:}*
dtype0*
valueB}*    

2default_policy/default_policy/action_out/bias/AdamVarHandleOp*1
_class'
%#loc:@default_policy/action_out/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:}*C
shared_name42default_policy/default_policy/action_out/bias/Adam
è
Sdefault_policy/default_policy/action_out/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOp2default_policy/default_policy/action_out/bias/Adam*1
_class'
%#loc:@default_policy/action_out/bias*
_output_shapes
: 
ê
9default_policy/default_policy/action_out/bias/Adam/AssignAssignVariableOp2default_policy/default_policy/action_out/bias/AdamDdefault_policy/default_policy/action_out/bias/Adam/Initializer/zeros*
dtype0*
validate_shape( 
è
Fdefault_policy/default_policy/action_out/bias/Adam/Read/ReadVariableOpReadVariableOp2default_policy/default_policy/action_out/bias/Adam*1
_class'
%#loc:@default_policy/action_out/bias*
_output_shapes
:}*
dtype0
Æ
Fdefault_policy/default_policy/action_out/bias/Adam_1/Initializer/zerosConst*1
_class'
%#loc:@default_policy/action_out/bias*
_output_shapes
:}*
dtype0*
valueB}*    

4default_policy/default_policy/action_out/bias/Adam_1VarHandleOp*1
_class'
%#loc:@default_policy/action_out/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:}*E
shared_name64default_policy/default_policy/action_out/bias/Adam_1
ì
Udefault_policy/default_policy/action_out/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp4default_policy/default_policy/action_out/bias/Adam_1*1
_class'
%#loc:@default_policy/action_out/bias*
_output_shapes
: 
ð
;default_policy/default_policy/action_out/bias/Adam_1/AssignAssignVariableOp4default_policy/default_policy/action_out/bias/Adam_1Fdefault_policy/default_policy/action_out/bias/Adam_1/Initializer/zeros*
dtype0*
validate_shape( 
ì
Hdefault_policy/default_policy/action_out/bias/Adam_1/Read/ReadVariableOpReadVariableOp4default_policy/default_policy/action_out/bias/Adam_1*1
_class'
%#loc:@default_policy/action_out/bias*
_output_shapes
:}*
dtype0
Î
Edefault_policy/default_policy/value_out/kernel/Adam/Initializer/zerosConst*2
_class(
&$loc:@default_policy/value_out/kernel*
_output_shapes

:}*
dtype0*
valueB}*    

3default_policy/default_policy/value_out/kernel/AdamVarHandleOp*2
_class(
&$loc:@default_policy/value_out/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape
:}*D
shared_name53default_policy/default_policy/value_out/kernel/Adam
ë
Tdefault_policy/default_policy/value_out/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOp3default_policy/default_policy/value_out/kernel/Adam*2
_class(
&$loc:@default_policy/value_out/kernel*
_output_shapes
: 
í
:default_policy/default_policy/value_out/kernel/Adam/AssignAssignVariableOp3default_policy/default_policy/value_out/kernel/AdamEdefault_policy/default_policy/value_out/kernel/Adam/Initializer/zeros*
dtype0*
validate_shape( 
ï
Gdefault_policy/default_policy/value_out/kernel/Adam/Read/ReadVariableOpReadVariableOp3default_policy/default_policy/value_out/kernel/Adam*2
_class(
&$loc:@default_policy/value_out/kernel*
_output_shapes

:}*
dtype0
Ð
Gdefault_policy/default_policy/value_out/kernel/Adam_1/Initializer/zerosConst*2
_class(
&$loc:@default_policy/value_out/kernel*
_output_shapes

:}*
dtype0*
valueB}*    
¢
5default_policy/default_policy/value_out/kernel/Adam_1VarHandleOp*2
_class(
&$loc:@default_policy/value_out/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape
:}*F
shared_name75default_policy/default_policy/value_out/kernel/Adam_1
ï
Vdefault_policy/default_policy/value_out/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp5default_policy/default_policy/value_out/kernel/Adam_1*2
_class(
&$loc:@default_policy/value_out/kernel*
_output_shapes
: 
ó
<default_policy/default_policy/value_out/kernel/Adam_1/AssignAssignVariableOp5default_policy/default_policy/value_out/kernel/Adam_1Gdefault_policy/default_policy/value_out/kernel/Adam_1/Initializer/zeros*
dtype0*
validate_shape( 
ó
Idefault_policy/default_policy/value_out/kernel/Adam_1/Read/ReadVariableOpReadVariableOp5default_policy/default_policy/value_out/kernel/Adam_1*2
_class(
&$loc:@default_policy/value_out/kernel*
_output_shapes

:}*
dtype0
Â
Cdefault_policy/default_policy/value_out/bias/Adam/Initializer/zerosConst*0
_class&
$"loc:@default_policy/value_out/bias*
_output_shapes
:*
dtype0*
valueB*    

1default_policy/default_policy/value_out/bias/AdamVarHandleOp*0
_class&
$"loc:@default_policy/value_out/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:*B
shared_name31default_policy/default_policy/value_out/bias/Adam
å
Rdefault_policy/default_policy/value_out/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOp1default_policy/default_policy/value_out/bias/Adam*0
_class&
$"loc:@default_policy/value_out/bias*
_output_shapes
: 
ç
8default_policy/default_policy/value_out/bias/Adam/AssignAssignVariableOp1default_policy/default_policy/value_out/bias/AdamCdefault_policy/default_policy/value_out/bias/Adam/Initializer/zeros*
dtype0*
validate_shape( 
å
Edefault_policy/default_policy/value_out/bias/Adam/Read/ReadVariableOpReadVariableOp1default_policy/default_policy/value_out/bias/Adam*0
_class&
$"loc:@default_policy/value_out/bias*
_output_shapes
:*
dtype0
Ä
Edefault_policy/default_policy/value_out/bias/Adam_1/Initializer/zerosConst*0
_class&
$"loc:@default_policy/value_out/bias*
_output_shapes
:*
dtype0*
valueB*    

3default_policy/default_policy/value_out/bias/Adam_1VarHandleOp*0
_class&
$"loc:@default_policy/value_out/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:*D
shared_name53default_policy/default_policy/value_out/bias/Adam_1
é
Tdefault_policy/default_policy/value_out/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp3default_policy/default_policy/value_out/bias/Adam_1*0
_class&
$"loc:@default_policy/value_out/bias*
_output_shapes
: 
í
:default_policy/default_policy/value_out/bias/Adam_1/AssignAssignVariableOp3default_policy/default_policy/value_out/bias/Adam_1Edefault_policy/default_policy/value_out/bias/Adam_1/Initializer/zeros*
dtype0*
validate_shape( 
é
Gdefault_policy/default_policy/value_out/bias/Adam_1/Read/ReadVariableOpReadVariableOp3default_policy/default_policy/value_out/bias/Adam_1*0
_class&
$"loc:@default_policy/value_out/bias*
_output_shapes
:*
dtype0
l
"default_policy/Adam/ReadVariableOpReadVariableOpdefault_policy/lr*
_output_shapes
: *
dtype0
^
default_policy/Adam/beta1Const*
_output_shapes
: *
dtype0*
valueB
 *fff?
^
default_policy/Adam/beta2Const*
_output_shapes
: *
dtype0*
valueB
 *w¾?
`
default_policy/Adam/epsilonConst*
_output_shapes
: *
dtype0*
valueB
 *wÌ+2
¬
Ydefault_policy/Adam/update_default_policy/layer_1/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpdefault_policy/beta1_power*
_output_shapes
: *
dtype0
®
[default_policy/Adam/update_default_policy/layer_1/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpdefault_policy/beta2_power*
_output_shapes
: *
dtype0
×
Jdefault_policy/Adam/update_default_policy/layer_1/kernel/ResourceApplyAdamResourceApplyAdamdefault_policy/layer_1/kernel1default_policy/default_policy/layer_1/kernel/Adam3default_policy/default_policy/layer_1/kernel/Adam_1Ydefault_policy/Adam/update_default_policy/layer_1/kernel/ResourceApplyAdam/ReadVariableOp[default_policy/Adam/update_default_policy/layer_1/kernel/ResourceApplyAdam/ReadVariableOp_1"default_policy/Adam/ReadVariableOpdefault_policy/Adam/beta1default_policy/Adam/beta2default_policy/Adam/epsilon^default_policy/gradients/default_policy/model_2/layer_1/MatMul_grad/tuple/control_dependency_1*
T0*0
_class&
$"loc:@default_policy/layer_1/kernel*
use_locking( *
use_nesterov( 
ª
Wdefault_policy/Adam/update_default_policy/layer_1/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpdefault_policy/beta1_power*
_output_shapes
: *
dtype0
¬
Ydefault_policy/Adam/update_default_policy/layer_1/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpdefault_policy/beta2_power*
_output_shapes
: *
dtype0
Ê
Hdefault_policy/Adam/update_default_policy/layer_1/bias/ResourceApplyAdamResourceApplyAdamdefault_policy/layer_1/bias/default_policy/default_policy/layer_1/bias/Adam1default_policy/default_policy/layer_1/bias/Adam_1Wdefault_policy/Adam/update_default_policy/layer_1/bias/ResourceApplyAdam/ReadVariableOpYdefault_policy/Adam/update_default_policy/layer_1/bias/ResourceApplyAdam/ReadVariableOp_1"default_policy/Adam/ReadVariableOpdefault_policy/Adam/beta1default_policy/Adam/beta2default_policy/Adam/epsilon_default_policy/gradients/default_policy/model_2/layer_1/BiasAdd_grad/tuple/control_dependency_1*
T0*.
_class$
" loc:@default_policy/layer_1/bias*
use_locking( *
use_nesterov( 
¬
Ydefault_policy/Adam/update_default_policy/layer_2/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpdefault_policy/beta1_power*
_output_shapes
: *
dtype0
®
[default_policy/Adam/update_default_policy/layer_2/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpdefault_policy/beta2_power*
_output_shapes
: *
dtype0
×
Jdefault_policy/Adam/update_default_policy/layer_2/kernel/ResourceApplyAdamResourceApplyAdamdefault_policy/layer_2/kernel1default_policy/default_policy/layer_2/kernel/Adam3default_policy/default_policy/layer_2/kernel/Adam_1Ydefault_policy/Adam/update_default_policy/layer_2/kernel/ResourceApplyAdam/ReadVariableOp[default_policy/Adam/update_default_policy/layer_2/kernel/ResourceApplyAdam/ReadVariableOp_1"default_policy/Adam/ReadVariableOpdefault_policy/Adam/beta1default_policy/Adam/beta2default_policy/Adam/epsilon^default_policy/gradients/default_policy/model_2/layer_2/MatMul_grad/tuple/control_dependency_1*
T0*0
_class&
$"loc:@default_policy/layer_2/kernel*
use_locking( *
use_nesterov( 
ª
Wdefault_policy/Adam/update_default_policy/layer_2/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpdefault_policy/beta1_power*
_output_shapes
: *
dtype0
¬
Ydefault_policy/Adam/update_default_policy/layer_2/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpdefault_policy/beta2_power*
_output_shapes
: *
dtype0
Ê
Hdefault_policy/Adam/update_default_policy/layer_2/bias/ResourceApplyAdamResourceApplyAdamdefault_policy/layer_2/bias/default_policy/default_policy/layer_2/bias/Adam1default_policy/default_policy/layer_2/bias/Adam_1Wdefault_policy/Adam/update_default_policy/layer_2/bias/ResourceApplyAdam/ReadVariableOpYdefault_policy/Adam/update_default_policy/layer_2/bias/ResourceApplyAdam/ReadVariableOp_1"default_policy/Adam/ReadVariableOpdefault_policy/Adam/beta1default_policy/Adam/beta2default_policy/Adam/epsilon_default_policy/gradients/default_policy/model_2/layer_2/BiasAdd_grad/tuple/control_dependency_1*
T0*.
_class$
" loc:@default_policy/layer_2/bias*
use_locking( *
use_nesterov( 
¬
Ydefault_policy/Adam/update_default_policy/layer_3/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpdefault_policy/beta1_power*
_output_shapes
: *
dtype0
®
[default_policy/Adam/update_default_policy/layer_3/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpdefault_policy/beta2_power*
_output_shapes
: *
dtype0
×
Jdefault_policy/Adam/update_default_policy/layer_3/kernel/ResourceApplyAdamResourceApplyAdamdefault_policy/layer_3/kernel1default_policy/default_policy/layer_3/kernel/Adam3default_policy/default_policy/layer_3/kernel/Adam_1Ydefault_policy/Adam/update_default_policy/layer_3/kernel/ResourceApplyAdam/ReadVariableOp[default_policy/Adam/update_default_policy/layer_3/kernel/ResourceApplyAdam/ReadVariableOp_1"default_policy/Adam/ReadVariableOpdefault_policy/Adam/beta1default_policy/Adam/beta2default_policy/Adam/epsilon^default_policy/gradients/default_policy/model_2/layer_3/MatMul_grad/tuple/control_dependency_1*
T0*0
_class&
$"loc:@default_policy/layer_3/kernel*
use_locking( *
use_nesterov( 
ª
Wdefault_policy/Adam/update_default_policy/layer_3/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpdefault_policy/beta1_power*
_output_shapes
: *
dtype0
¬
Ydefault_policy/Adam/update_default_policy/layer_3/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpdefault_policy/beta2_power*
_output_shapes
: *
dtype0
Ê
Hdefault_policy/Adam/update_default_policy/layer_3/bias/ResourceApplyAdamResourceApplyAdamdefault_policy/layer_3/bias/default_policy/default_policy/layer_3/bias/Adam1default_policy/default_policy/layer_3/bias/Adam_1Wdefault_policy/Adam/update_default_policy/layer_3/bias/ResourceApplyAdam/ReadVariableOpYdefault_policy/Adam/update_default_policy/layer_3/bias/ResourceApplyAdam/ReadVariableOp_1"default_policy/Adam/ReadVariableOpdefault_policy/Adam/beta1default_policy/Adam/beta2default_policy/Adam/epsilon_default_policy/gradients/default_policy/model_2/layer_3/BiasAdd_grad/tuple/control_dependency_1*
T0*.
_class$
" loc:@default_policy/layer_3/bias*
use_locking( *
use_nesterov( 
¬
Ydefault_policy/Adam/update_default_policy/layer_4/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpdefault_policy/beta1_power*
_output_shapes
: *
dtype0
®
[default_policy/Adam/update_default_policy/layer_4/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpdefault_policy/beta2_power*
_output_shapes
: *
dtype0
×
Jdefault_policy/Adam/update_default_policy/layer_4/kernel/ResourceApplyAdamResourceApplyAdamdefault_policy/layer_4/kernel1default_policy/default_policy/layer_4/kernel/Adam3default_policy/default_policy/layer_4/kernel/Adam_1Ydefault_policy/Adam/update_default_policy/layer_4/kernel/ResourceApplyAdam/ReadVariableOp[default_policy/Adam/update_default_policy/layer_4/kernel/ResourceApplyAdam/ReadVariableOp_1"default_policy/Adam/ReadVariableOpdefault_policy/Adam/beta1default_policy/Adam/beta2default_policy/Adam/epsilon^default_policy/gradients/default_policy/model_2/layer_4/MatMul_grad/tuple/control_dependency_1*
T0*0
_class&
$"loc:@default_policy/layer_4/kernel*
use_locking( *
use_nesterov( 
ª
Wdefault_policy/Adam/update_default_policy/layer_4/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpdefault_policy/beta1_power*
_output_shapes
: *
dtype0
¬
Ydefault_policy/Adam/update_default_policy/layer_4/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpdefault_policy/beta2_power*
_output_shapes
: *
dtype0
Ê
Hdefault_policy/Adam/update_default_policy/layer_4/bias/ResourceApplyAdamResourceApplyAdamdefault_policy/layer_4/bias/default_policy/default_policy/layer_4/bias/Adam1default_policy/default_policy/layer_4/bias/Adam_1Wdefault_policy/Adam/update_default_policy/layer_4/bias/ResourceApplyAdam/ReadVariableOpYdefault_policy/Adam/update_default_policy/layer_4/bias/ResourceApplyAdam/ReadVariableOp_1"default_policy/Adam/ReadVariableOpdefault_policy/Adam/beta1default_policy/Adam/beta2default_policy/Adam/epsilon_default_policy/gradients/default_policy/model_2/layer_4/BiasAdd_grad/tuple/control_dependency_1*
T0*.
_class$
" loc:@default_policy/layer_4/bias*
use_locking( *
use_nesterov( 
µ
bdefault_policy/Adam/update_default_policy/layer_val_hidden/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpdefault_policy/beta1_power*
_output_shapes
: *
dtype0
·
ddefault_policy/Adam/update_default_policy/layer_val_hidden/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpdefault_policy/beta2_power*
_output_shapes
: *
dtype0

Sdefault_policy/Adam/update_default_policy/layer_val_hidden/kernel/ResourceApplyAdamResourceApplyAdam&default_policy/layer_val_hidden/kernel:default_policy/default_policy/layer_val_hidden/kernel/Adam<default_policy/default_policy/layer_val_hidden/kernel/Adam_1bdefault_policy/Adam/update_default_policy/layer_val_hidden/kernel/ResourceApplyAdam/ReadVariableOpddefault_policy/Adam/update_default_policy/layer_val_hidden/kernel/ResourceApplyAdam/ReadVariableOp_1"default_policy/Adam/ReadVariableOpdefault_policy/Adam/beta1default_policy/Adam/beta2default_policy/Adam/epsilongdefault_policy/gradients/default_policy/model_2/layer_val_hidden/MatMul_grad/tuple/control_dependency_1*
T0*9
_class/
-+loc:@default_policy/layer_val_hidden/kernel*
use_locking( *
use_nesterov( 
³
`default_policy/Adam/update_default_policy/layer_val_hidden/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpdefault_policy/beta1_power*
_output_shapes
: *
dtype0
µ
bdefault_policy/Adam/update_default_policy/layer_val_hidden/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpdefault_policy/beta2_power*
_output_shapes
: *
dtype0

Qdefault_policy/Adam/update_default_policy/layer_val_hidden/bias/ResourceApplyAdamResourceApplyAdam$default_policy/layer_val_hidden/bias8default_policy/default_policy/layer_val_hidden/bias/Adam:default_policy/default_policy/layer_val_hidden/bias/Adam_1`default_policy/Adam/update_default_policy/layer_val_hidden/bias/ResourceApplyAdam/ReadVariableOpbdefault_policy/Adam/update_default_policy/layer_val_hidden/bias/ResourceApplyAdam/ReadVariableOp_1"default_policy/Adam/ReadVariableOpdefault_policy/Adam/beta1default_policy/Adam/beta2default_policy/Adam/epsilonhdefault_policy/gradients/default_policy/model_2/layer_val_hidden/BiasAdd_grad/tuple/control_dependency_1*
T0*7
_class-
+)loc:@default_policy/layer_val_hidden/bias*
use_locking( *
use_nesterov( 
¯
\default_policy/Adam/update_default_policy/action_out/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpdefault_policy/beta1_power*
_output_shapes
: *
dtype0
±
^default_policy/Adam/update_default_policy/action_out/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpdefault_policy/beta2_power*
_output_shapes
: *
dtype0
ï
Mdefault_policy/Adam/update_default_policy/action_out/kernel/ResourceApplyAdamResourceApplyAdam default_policy/action_out/kernel4default_policy/default_policy/action_out/kernel/Adam6default_policy/default_policy/action_out/kernel/Adam_1\default_policy/Adam/update_default_policy/action_out/kernel/ResourceApplyAdam/ReadVariableOp^default_policy/Adam/update_default_policy/action_out/kernel/ResourceApplyAdam/ReadVariableOp_1"default_policy/Adam/ReadVariableOpdefault_policy/Adam/beta1default_policy/Adam/beta2default_policy/Adam/epsilonadefault_policy/gradients/default_policy/model_2/action_out/MatMul_grad/tuple/control_dependency_1*
T0*3
_class)
'%loc:@default_policy/action_out/kernel*
use_locking( *
use_nesterov( 
­
Zdefault_policy/Adam/update_default_policy/action_out/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpdefault_policy/beta1_power*
_output_shapes
: *
dtype0
¯
\default_policy/Adam/update_default_policy/action_out/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpdefault_policy/beta2_power*
_output_shapes
: *
dtype0
â
Kdefault_policy/Adam/update_default_policy/action_out/bias/ResourceApplyAdamResourceApplyAdamdefault_policy/action_out/bias2default_policy/default_policy/action_out/bias/Adam4default_policy/default_policy/action_out/bias/Adam_1Zdefault_policy/Adam/update_default_policy/action_out/bias/ResourceApplyAdam/ReadVariableOp\default_policy/Adam/update_default_policy/action_out/bias/ResourceApplyAdam/ReadVariableOp_1"default_policy/Adam/ReadVariableOpdefault_policy/Adam/beta1default_policy/Adam/beta2default_policy/Adam/epsilonbdefault_policy/gradients/default_policy/model_2/action_out/BiasAdd_grad/tuple/control_dependency_1*
T0*1
_class'
%#loc:@default_policy/action_out/bias*
use_locking( *
use_nesterov( 
®
[default_policy/Adam/update_default_policy/value_out/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpdefault_policy/beta1_power*
_output_shapes
: *
dtype0
°
]default_policy/Adam/update_default_policy/value_out/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpdefault_policy/beta2_power*
_output_shapes
: *
dtype0
ç
Ldefault_policy/Adam/update_default_policy/value_out/kernel/ResourceApplyAdamResourceApplyAdamdefault_policy/value_out/kernel3default_policy/default_policy/value_out/kernel/Adam5default_policy/default_policy/value_out/kernel/Adam_1[default_policy/Adam/update_default_policy/value_out/kernel/ResourceApplyAdam/ReadVariableOp]default_policy/Adam/update_default_policy/value_out/kernel/ResourceApplyAdam/ReadVariableOp_1"default_policy/Adam/ReadVariableOpdefault_policy/Adam/beta1default_policy/Adam/beta2default_policy/Adam/epsilon`default_policy/gradients/default_policy/model_2/value_out/MatMul_grad/tuple/control_dependency_1*
T0*2
_class(
&$loc:@default_policy/value_out/kernel*
use_locking( *
use_nesterov( 
¬
Ydefault_policy/Adam/update_default_policy/value_out/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpdefault_policy/beta1_power*
_output_shapes
: *
dtype0
®
[default_policy/Adam/update_default_policy/value_out/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpdefault_policy/beta2_power*
_output_shapes
: *
dtype0
Ú
Jdefault_policy/Adam/update_default_policy/value_out/bias/ResourceApplyAdamResourceApplyAdamdefault_policy/value_out/bias1default_policy/default_policy/value_out/bias/Adam3default_policy/default_policy/value_out/bias/Adam_1Ydefault_policy/Adam/update_default_policy/value_out/bias/ResourceApplyAdam/ReadVariableOp[default_policy/Adam/update_default_policy/value_out/bias/ResourceApplyAdam/ReadVariableOp_1"default_policy/Adam/ReadVariableOpdefault_policy/Adam/beta1default_policy/Adam/beta2default_policy/Adam/epsilonadefault_policy/gradients/default_policy/model_2/value_out/BiasAdd_grad/tuple/control_dependency_1*
T0*0
_class&
$"loc:@default_policy/value_out/bias*
use_locking( *
use_nesterov( 
»	
$default_policy/Adam/ReadVariableOp_1ReadVariableOpdefault_policy/beta1_powerL^default_policy/Adam/update_default_policy/action_out/bias/ResourceApplyAdamN^default_policy/Adam/update_default_policy/action_out/kernel/ResourceApplyAdamI^default_policy/Adam/update_default_policy/layer_1/bias/ResourceApplyAdamK^default_policy/Adam/update_default_policy/layer_1/kernel/ResourceApplyAdamI^default_policy/Adam/update_default_policy/layer_2/bias/ResourceApplyAdamK^default_policy/Adam/update_default_policy/layer_2/kernel/ResourceApplyAdamI^default_policy/Adam/update_default_policy/layer_3/bias/ResourceApplyAdamK^default_policy/Adam/update_default_policy/layer_3/kernel/ResourceApplyAdamI^default_policy/Adam/update_default_policy/layer_4/bias/ResourceApplyAdamK^default_policy/Adam/update_default_policy/layer_4/kernel/ResourceApplyAdamR^default_policy/Adam/update_default_policy/layer_val_hidden/bias/ResourceApplyAdamT^default_policy/Adam/update_default_policy/layer_val_hidden/kernel/ResourceApplyAdamK^default_policy/Adam/update_default_policy/value_out/bias/ResourceApplyAdamM^default_policy/Adam/update_default_policy/value_out/kernel/ResourceApplyAdam*
_output_shapes
: *
dtype0
³
default_policy/Adam/mulMul$default_policy/Adam/ReadVariableOp_1default_policy/Adam/beta1*
T0*1
_class'
%#loc:@default_policy/action_out/bias*
_output_shapes
: 
Ã
$default_policy/Adam/AssignVariableOpAssignVariableOpdefault_policy/beta1_powerdefault_policy/Adam/mul*1
_class'
%#loc:@default_policy/action_out/bias*
dtype0*
validate_shape(


$default_policy/Adam/ReadVariableOp_2ReadVariableOpdefault_policy/beta1_power%^default_policy/Adam/AssignVariableOpL^default_policy/Adam/update_default_policy/action_out/bias/ResourceApplyAdamN^default_policy/Adam/update_default_policy/action_out/kernel/ResourceApplyAdamI^default_policy/Adam/update_default_policy/layer_1/bias/ResourceApplyAdamK^default_policy/Adam/update_default_policy/layer_1/kernel/ResourceApplyAdamI^default_policy/Adam/update_default_policy/layer_2/bias/ResourceApplyAdamK^default_policy/Adam/update_default_policy/layer_2/kernel/ResourceApplyAdamI^default_policy/Adam/update_default_policy/layer_3/bias/ResourceApplyAdamK^default_policy/Adam/update_default_policy/layer_3/kernel/ResourceApplyAdamI^default_policy/Adam/update_default_policy/layer_4/bias/ResourceApplyAdamK^default_policy/Adam/update_default_policy/layer_4/kernel/ResourceApplyAdamR^default_policy/Adam/update_default_policy/layer_val_hidden/bias/ResourceApplyAdamT^default_policy/Adam/update_default_policy/layer_val_hidden/kernel/ResourceApplyAdamK^default_policy/Adam/update_default_policy/value_out/bias/ResourceApplyAdamM^default_policy/Adam/update_default_policy/value_out/kernel/ResourceApplyAdam*1
_class'
%#loc:@default_policy/action_out/bias*
_output_shapes
: *
dtype0
»	
$default_policy/Adam/ReadVariableOp_3ReadVariableOpdefault_policy/beta2_powerL^default_policy/Adam/update_default_policy/action_out/bias/ResourceApplyAdamN^default_policy/Adam/update_default_policy/action_out/kernel/ResourceApplyAdamI^default_policy/Adam/update_default_policy/layer_1/bias/ResourceApplyAdamK^default_policy/Adam/update_default_policy/layer_1/kernel/ResourceApplyAdamI^default_policy/Adam/update_default_policy/layer_2/bias/ResourceApplyAdamK^default_policy/Adam/update_default_policy/layer_2/kernel/ResourceApplyAdamI^default_policy/Adam/update_default_policy/layer_3/bias/ResourceApplyAdamK^default_policy/Adam/update_default_policy/layer_3/kernel/ResourceApplyAdamI^default_policy/Adam/update_default_policy/layer_4/bias/ResourceApplyAdamK^default_policy/Adam/update_default_policy/layer_4/kernel/ResourceApplyAdamR^default_policy/Adam/update_default_policy/layer_val_hidden/bias/ResourceApplyAdamT^default_policy/Adam/update_default_policy/layer_val_hidden/kernel/ResourceApplyAdamK^default_policy/Adam/update_default_policy/value_out/bias/ResourceApplyAdamM^default_policy/Adam/update_default_policy/value_out/kernel/ResourceApplyAdam*
_output_shapes
: *
dtype0
µ
default_policy/Adam/mul_1Mul$default_policy/Adam/ReadVariableOp_3default_policy/Adam/beta2*
T0*1
_class'
%#loc:@default_policy/action_out/bias*
_output_shapes
: 
Ç
&default_policy/Adam/AssignVariableOp_1AssignVariableOpdefault_policy/beta2_powerdefault_policy/Adam/mul_1*1
_class'
%#loc:@default_policy/action_out/bias*
dtype0*
validate_shape(


$default_policy/Adam/ReadVariableOp_4ReadVariableOpdefault_policy/beta2_power'^default_policy/Adam/AssignVariableOp_1L^default_policy/Adam/update_default_policy/action_out/bias/ResourceApplyAdamN^default_policy/Adam/update_default_policy/action_out/kernel/ResourceApplyAdamI^default_policy/Adam/update_default_policy/layer_1/bias/ResourceApplyAdamK^default_policy/Adam/update_default_policy/layer_1/kernel/ResourceApplyAdamI^default_policy/Adam/update_default_policy/layer_2/bias/ResourceApplyAdamK^default_policy/Adam/update_default_policy/layer_2/kernel/ResourceApplyAdamI^default_policy/Adam/update_default_policy/layer_3/bias/ResourceApplyAdamK^default_policy/Adam/update_default_policy/layer_3/kernel/ResourceApplyAdamI^default_policy/Adam/update_default_policy/layer_4/bias/ResourceApplyAdamK^default_policy/Adam/update_default_policy/layer_4/kernel/ResourceApplyAdamR^default_policy/Adam/update_default_policy/layer_val_hidden/bias/ResourceApplyAdamT^default_policy/Adam/update_default_policy/layer_val_hidden/kernel/ResourceApplyAdamK^default_policy/Adam/update_default_policy/value_out/bias/ResourceApplyAdamM^default_policy/Adam/update_default_policy/value_out/kernel/ResourceApplyAdam*1
_class'
%#loc:@default_policy/action_out/bias*
_output_shapes
: *
dtype0
¶	
default_policy/Adam/updateNoOp%^default_policy/Adam/AssignVariableOp'^default_policy/Adam/AssignVariableOp_1L^default_policy/Adam/update_default_policy/action_out/bias/ResourceApplyAdamN^default_policy/Adam/update_default_policy/action_out/kernel/ResourceApplyAdamI^default_policy/Adam/update_default_policy/layer_1/bias/ResourceApplyAdamK^default_policy/Adam/update_default_policy/layer_1/kernel/ResourceApplyAdamI^default_policy/Adam/update_default_policy/layer_2/bias/ResourceApplyAdamK^default_policy/Adam/update_default_policy/layer_2/kernel/ResourceApplyAdamI^default_policy/Adam/update_default_policy/layer_3/bias/ResourceApplyAdamK^default_policy/Adam/update_default_policy/layer_3/kernel/ResourceApplyAdamI^default_policy/Adam/update_default_policy/layer_4/bias/ResourceApplyAdamK^default_policy/Adam/update_default_policy/layer_4/kernel/ResourceApplyAdamR^default_policy/Adam/update_default_policy/layer_val_hidden/bias/ResourceApplyAdamT^default_policy/Adam/update_default_policy/layer_val_hidden/kernel/ResourceApplyAdamK^default_policy/Adam/update_default_policy/value_out/bias/ResourceApplyAdamM^default_policy/Adam/update_default_policy/value_out/kernel/ResourceApplyAdam
§
default_policy/Adam/ConstConst^default_policy/Adam/update*-
_class#
!loc:@default_policy/global_step*
_output_shapes
: *
dtype0	*
value	B	 R

default_policy/AdamAssignAddVariableOpdefault_policy/global_stepdefault_policy/Adam/Const*-
_class#
!loc:@default_policy/global_step*
dtype0	
ï
default_policy/init_2/NoOpNoOp&^default_policy/action_out/bias/Assign(^default_policy/action_out/kernel/Assign"^default_policy/beta1_power/Assign"^default_policy/beta2_power/Assign:^default_policy/default_policy/action_out/bias/Adam/Assign<^default_policy/default_policy/action_out/bias/Adam_1/Assign<^default_policy/default_policy/action_out/kernel/Adam/Assign>^default_policy/default_policy/action_out/kernel/Adam_1/Assign7^default_policy/default_policy/layer_1/bias/Adam/Assign9^default_policy/default_policy/layer_1/bias/Adam_1/Assign9^default_policy/default_policy/layer_1/kernel/Adam/Assign;^default_policy/default_policy/layer_1/kernel/Adam_1/Assign7^default_policy/default_policy/layer_2/bias/Adam/Assign9^default_policy/default_policy/layer_2/bias/Adam_1/Assign9^default_policy/default_policy/layer_2/kernel/Adam/Assign;^default_policy/default_policy/layer_2/kernel/Adam_1/Assign7^default_policy/default_policy/layer_3/bias/Adam/Assign9^default_policy/default_policy/layer_3/bias/Adam_1/Assign9^default_policy/default_policy/layer_3/kernel/Adam/Assign;^default_policy/default_policy/layer_3/kernel/Adam_1/Assign7^default_policy/default_policy/layer_4/bias/Adam/Assign9^default_policy/default_policy/layer_4/bias/Adam_1/Assign9^default_policy/default_policy/layer_4/kernel/Adam/Assign;^default_policy/default_policy/layer_4/kernel/Adam_1/Assign@^default_policy/default_policy/layer_val_hidden/bias/Adam/AssignB^default_policy/default_policy/layer_val_hidden/bias/Adam_1/AssignB^default_policy/default_policy/layer_val_hidden/kernel/Adam/AssignD^default_policy/default_policy/layer_val_hidden/kernel/Adam_1/Assign9^default_policy/default_policy/value_out/bias/Adam/Assign;^default_policy/default_policy/value_out/bias/Adam_1/Assign;^default_policy/default_policy/value_out/kernel/Adam/Assign=^default_policy/default_policy/value_out/kernel/Adam_1/Assign$^default_policy/entropy_coeff/Assign"^default_policy/global_step/Assign^default_policy/kl_coeff/Assign#^default_policy/layer_1/bias/Assign%^default_policy/layer_1/kernel/Assign#^default_policy/layer_2/bias/Assign%^default_policy/layer_2/kernel/Assign#^default_policy/layer_3/bias/Assign%^default_policy/layer_3/kernel/Assign#^default_policy/layer_4/bias/Assign%^default_policy/layer_4/kernel/Assign,^default_policy/layer_val_hidden/bias/Assign.^default_policy/layer_val_hidden/kernel/Assign^default_policy/lr/Assign!^default_policy/timestep_1/Assign%^default_policy/value_out/bias/Assign'^default_policy/value_out/kernel/Assign


default_policy/init_2/NoOp_1NoOp#^default_policy/AssignVariableOp_10#^default_policy/AssignVariableOp_11#^default_policy/AssignVariableOp_12#^default_policy/AssignVariableOp_13#^default_policy/AssignVariableOp_14#^default_policy/AssignVariableOp_15#^default_policy/AssignVariableOp_16#^default_policy/AssignVariableOp_17#^default_policy/AssignVariableOp_18#^default_policy/AssignVariableOp_19#^default_policy/AssignVariableOp_20#^default_policy/AssignVariableOp_21#^default_policy/AssignVariableOp_22#^default_policy/AssignVariableOp_23#^default_policy/AssignVariableOp_24#^default_policy/AssignVariableOp_25#^default_policy/AssignVariableOp_26#^default_policy/AssignVariableOp_27#^default_policy/AssignVariableOp_28#^default_policy/AssignVariableOp_29#^default_policy/AssignVariableOp_30#^default_policy/AssignVariableOp_31#^default_policy/AssignVariableOp_32#^default_policy/AssignVariableOp_33#^default_policy/AssignVariableOp_34#^default_policy/AssignVariableOp_35#^default_policy/AssignVariableOp_36#^default_policy/AssignVariableOp_37"^default_policy/AssignVariableOp_4"^default_policy/AssignVariableOp_5"^default_policy/AssignVariableOp_6"^default_policy/AssignVariableOp_7"^default_policy/AssignVariableOp_8"^default_policy/AssignVariableOp_9"/device:CPU:0
Y
default_policy/init_2NoOp^default_policy/init_2/NoOp^default_policy/init_2/NoOp_1
s
 default_policy/ReadVariableOp_42ReadVariableOpdefault_policy/beta1_power*
_output_shapes
: *
dtype0
v
5default_policy/Placeholder_default_policy/beta1_powerPlaceholder*
_output_shapes
: *
dtype0*
shape: 
¬
"default_policy/AssignVariableOp_64AssignVariableOpdefault_policy/beta1_power5default_policy/Placeholder_default_policy/beta1_power*
dtype0*
validate_shape(

 default_policy/ReadVariableOp_43ReadVariableOpdefault_policy/beta1_power#^default_policy/AssignVariableOp_64*
_output_shapes
: *
dtype0
s
 default_policy/ReadVariableOp_44ReadVariableOpdefault_policy/beta2_power*
_output_shapes
: *
dtype0
v
5default_policy/Placeholder_default_policy/beta2_powerPlaceholder*
_output_shapes
: *
dtype0*
shape: 
¬
"default_policy/AssignVariableOp_65AssignVariableOpdefault_policy/beta2_power5default_policy/Placeholder_default_policy/beta2_power*
dtype0*
validate_shape(

 default_policy/ReadVariableOp_45ReadVariableOpdefault_policy/beta2_power#^default_policy/AssignVariableOp_65*
_output_shapes
: *
dtype0

 default_policy/ReadVariableOp_46ReadVariableOp1default_policy/default_policy/layer_1/kernel/Adam* 
_output_shapes
:
Óè*
dtype0
¡
Ldefault_policy/Placeholder_default_policy/default_policy/layer_1/kernel/AdamPlaceholder* 
_output_shapes
:
Óè*
dtype0*
shape:
Óè
Ú
"default_policy/AssignVariableOp_66AssignVariableOp1default_policy/default_policy/layer_1/kernel/AdamLdefault_policy/Placeholder_default_policy/default_policy/layer_1/kernel/Adam*
dtype0*
validate_shape(
¹
 default_policy/ReadVariableOp_47ReadVariableOp1default_policy/default_policy/layer_1/kernel/Adam#^default_policy/AssignVariableOp_66* 
_output_shapes
:
Óè*
dtype0

 default_policy/ReadVariableOp_48ReadVariableOp3default_policy/default_policy/layer_1/kernel/Adam_1* 
_output_shapes
:
Óè*
dtype0
£
Ndefault_policy/Placeholder_default_policy/default_policy/layer_1/kernel/Adam_1Placeholder* 
_output_shapes
:
Óè*
dtype0*
shape:
Óè
Þ
"default_policy/AssignVariableOp_67AssignVariableOp3default_policy/default_policy/layer_1/kernel/Adam_1Ndefault_policy/Placeholder_default_policy/default_policy/layer_1/kernel/Adam_1*
dtype0*
validate_shape(
»
 default_policy/ReadVariableOp_49ReadVariableOp3default_policy/default_policy/layer_1/kernel/Adam_1#^default_policy/AssignVariableOp_67* 
_output_shapes
:
Óè*
dtype0

 default_policy/ReadVariableOp_50ReadVariableOp/default_policy/default_policy/layer_1/bias/Adam*
_output_shapes	
:è*
dtype0

Jdefault_policy/Placeholder_default_policy/default_policy/layer_1/bias/AdamPlaceholder*
_output_shapes	
:è*
dtype0*
shape:è
Ö
"default_policy/AssignVariableOp_68AssignVariableOp/default_policy/default_policy/layer_1/bias/AdamJdefault_policy/Placeholder_default_policy/default_policy/layer_1/bias/Adam*
dtype0*
validate_shape(
²
 default_policy/ReadVariableOp_51ReadVariableOp/default_policy/default_policy/layer_1/bias/Adam#^default_policy/AssignVariableOp_68*
_output_shapes	
:è*
dtype0

 default_policy/ReadVariableOp_52ReadVariableOp1default_policy/default_policy/layer_1/bias/Adam_1*
_output_shapes	
:è*
dtype0

Ldefault_policy/Placeholder_default_policy/default_policy/layer_1/bias/Adam_1Placeholder*
_output_shapes	
:è*
dtype0*
shape:è
Ú
"default_policy/AssignVariableOp_69AssignVariableOp1default_policy/default_policy/layer_1/bias/Adam_1Ldefault_policy/Placeholder_default_policy/default_policy/layer_1/bias/Adam_1*
dtype0*
validate_shape(
´
 default_policy/ReadVariableOp_53ReadVariableOp1default_policy/default_policy/layer_1/bias/Adam_1#^default_policy/AssignVariableOp_69*
_output_shapes	
:è*
dtype0

 default_policy/ReadVariableOp_54ReadVariableOp1default_policy/default_policy/layer_2/kernel/Adam* 
_output_shapes
:
èè*
dtype0
¡
Ldefault_policy/Placeholder_default_policy/default_policy/layer_2/kernel/AdamPlaceholder* 
_output_shapes
:
èè*
dtype0*
shape:
èè
Ú
"default_policy/AssignVariableOp_70AssignVariableOp1default_policy/default_policy/layer_2/kernel/AdamLdefault_policy/Placeholder_default_policy/default_policy/layer_2/kernel/Adam*
dtype0*
validate_shape(
¹
 default_policy/ReadVariableOp_55ReadVariableOp1default_policy/default_policy/layer_2/kernel/Adam#^default_policy/AssignVariableOp_70* 
_output_shapes
:
èè*
dtype0

 default_policy/ReadVariableOp_56ReadVariableOp3default_policy/default_policy/layer_2/kernel/Adam_1* 
_output_shapes
:
èè*
dtype0
£
Ndefault_policy/Placeholder_default_policy/default_policy/layer_2/kernel/Adam_1Placeholder* 
_output_shapes
:
èè*
dtype0*
shape:
èè
Þ
"default_policy/AssignVariableOp_71AssignVariableOp3default_policy/default_policy/layer_2/kernel/Adam_1Ndefault_policy/Placeholder_default_policy/default_policy/layer_2/kernel/Adam_1*
dtype0*
validate_shape(
»
 default_policy/ReadVariableOp_57ReadVariableOp3default_policy/default_policy/layer_2/kernel/Adam_1#^default_policy/AssignVariableOp_71* 
_output_shapes
:
èè*
dtype0

 default_policy/ReadVariableOp_58ReadVariableOp/default_policy/default_policy/layer_2/bias/Adam*
_output_shapes	
:è*
dtype0

Jdefault_policy/Placeholder_default_policy/default_policy/layer_2/bias/AdamPlaceholder*
_output_shapes	
:è*
dtype0*
shape:è
Ö
"default_policy/AssignVariableOp_72AssignVariableOp/default_policy/default_policy/layer_2/bias/AdamJdefault_policy/Placeholder_default_policy/default_policy/layer_2/bias/Adam*
dtype0*
validate_shape(
²
 default_policy/ReadVariableOp_59ReadVariableOp/default_policy/default_policy/layer_2/bias/Adam#^default_policy/AssignVariableOp_72*
_output_shapes	
:è*
dtype0

 default_policy/ReadVariableOp_60ReadVariableOp1default_policy/default_policy/layer_2/bias/Adam_1*
_output_shapes	
:è*
dtype0

Ldefault_policy/Placeholder_default_policy/default_policy/layer_2/bias/Adam_1Placeholder*
_output_shapes	
:è*
dtype0*
shape:è
Ú
"default_policy/AssignVariableOp_73AssignVariableOp1default_policy/default_policy/layer_2/bias/Adam_1Ldefault_policy/Placeholder_default_policy/default_policy/layer_2/bias/Adam_1*
dtype0*
validate_shape(
´
 default_policy/ReadVariableOp_61ReadVariableOp1default_policy/default_policy/layer_2/bias/Adam_1#^default_policy/AssignVariableOp_73*
_output_shapes	
:è*
dtype0

 default_policy/ReadVariableOp_62ReadVariableOp1default_policy/default_policy/layer_3/kernel/Adam* 
_output_shapes
:
èè*
dtype0
¡
Ldefault_policy/Placeholder_default_policy/default_policy/layer_3/kernel/AdamPlaceholder* 
_output_shapes
:
èè*
dtype0*
shape:
èè
Ú
"default_policy/AssignVariableOp_74AssignVariableOp1default_policy/default_policy/layer_3/kernel/AdamLdefault_policy/Placeholder_default_policy/default_policy/layer_3/kernel/Adam*
dtype0*
validate_shape(
¹
 default_policy/ReadVariableOp_63ReadVariableOp1default_policy/default_policy/layer_3/kernel/Adam#^default_policy/AssignVariableOp_74* 
_output_shapes
:
èè*
dtype0

 default_policy/ReadVariableOp_64ReadVariableOp3default_policy/default_policy/layer_3/kernel/Adam_1* 
_output_shapes
:
èè*
dtype0
£
Ndefault_policy/Placeholder_default_policy/default_policy/layer_3/kernel/Adam_1Placeholder* 
_output_shapes
:
èè*
dtype0*
shape:
èè
Þ
"default_policy/AssignVariableOp_75AssignVariableOp3default_policy/default_policy/layer_3/kernel/Adam_1Ndefault_policy/Placeholder_default_policy/default_policy/layer_3/kernel/Adam_1*
dtype0*
validate_shape(
»
 default_policy/ReadVariableOp_65ReadVariableOp3default_policy/default_policy/layer_3/kernel/Adam_1#^default_policy/AssignVariableOp_75* 
_output_shapes
:
èè*
dtype0

 default_policy/ReadVariableOp_66ReadVariableOp/default_policy/default_policy/layer_3/bias/Adam*
_output_shapes	
:è*
dtype0

Jdefault_policy/Placeholder_default_policy/default_policy/layer_3/bias/AdamPlaceholder*
_output_shapes	
:è*
dtype0*
shape:è
Ö
"default_policy/AssignVariableOp_76AssignVariableOp/default_policy/default_policy/layer_3/bias/AdamJdefault_policy/Placeholder_default_policy/default_policy/layer_3/bias/Adam*
dtype0*
validate_shape(
²
 default_policy/ReadVariableOp_67ReadVariableOp/default_policy/default_policy/layer_3/bias/Adam#^default_policy/AssignVariableOp_76*
_output_shapes	
:è*
dtype0

 default_policy/ReadVariableOp_68ReadVariableOp1default_policy/default_policy/layer_3/bias/Adam_1*
_output_shapes	
:è*
dtype0

Ldefault_policy/Placeholder_default_policy/default_policy/layer_3/bias/Adam_1Placeholder*
_output_shapes	
:è*
dtype0*
shape:è
Ú
"default_policy/AssignVariableOp_77AssignVariableOp1default_policy/default_policy/layer_3/bias/Adam_1Ldefault_policy/Placeholder_default_policy/default_policy/layer_3/bias/Adam_1*
dtype0*
validate_shape(
´
 default_policy/ReadVariableOp_69ReadVariableOp1default_policy/default_policy/layer_3/bias/Adam_1#^default_policy/AssignVariableOp_77*
_output_shapes	
:è*
dtype0

 default_policy/ReadVariableOp_70ReadVariableOp1default_policy/default_policy/layer_4/kernel/Adam* 
_output_shapes
:
èè*
dtype0
¡
Ldefault_policy/Placeholder_default_policy/default_policy/layer_4/kernel/AdamPlaceholder* 
_output_shapes
:
èè*
dtype0*
shape:
èè
Ú
"default_policy/AssignVariableOp_78AssignVariableOp1default_policy/default_policy/layer_4/kernel/AdamLdefault_policy/Placeholder_default_policy/default_policy/layer_4/kernel/Adam*
dtype0*
validate_shape(
¹
 default_policy/ReadVariableOp_71ReadVariableOp1default_policy/default_policy/layer_4/kernel/Adam#^default_policy/AssignVariableOp_78* 
_output_shapes
:
èè*
dtype0

 default_policy/ReadVariableOp_72ReadVariableOp3default_policy/default_policy/layer_4/kernel/Adam_1* 
_output_shapes
:
èè*
dtype0
£
Ndefault_policy/Placeholder_default_policy/default_policy/layer_4/kernel/Adam_1Placeholder* 
_output_shapes
:
èè*
dtype0*
shape:
èè
Þ
"default_policy/AssignVariableOp_79AssignVariableOp3default_policy/default_policy/layer_4/kernel/Adam_1Ndefault_policy/Placeholder_default_policy/default_policy/layer_4/kernel/Adam_1*
dtype0*
validate_shape(
»
 default_policy/ReadVariableOp_73ReadVariableOp3default_policy/default_policy/layer_4/kernel/Adam_1#^default_policy/AssignVariableOp_79* 
_output_shapes
:
èè*
dtype0

 default_policy/ReadVariableOp_74ReadVariableOp/default_policy/default_policy/layer_4/bias/Adam*
_output_shapes	
:è*
dtype0

Jdefault_policy/Placeholder_default_policy/default_policy/layer_4/bias/AdamPlaceholder*
_output_shapes	
:è*
dtype0*
shape:è
Ö
"default_policy/AssignVariableOp_80AssignVariableOp/default_policy/default_policy/layer_4/bias/AdamJdefault_policy/Placeholder_default_policy/default_policy/layer_4/bias/Adam*
dtype0*
validate_shape(
²
 default_policy/ReadVariableOp_75ReadVariableOp/default_policy/default_policy/layer_4/bias/Adam#^default_policy/AssignVariableOp_80*
_output_shapes	
:è*
dtype0

 default_policy/ReadVariableOp_76ReadVariableOp1default_policy/default_policy/layer_4/bias/Adam_1*
_output_shapes	
:è*
dtype0

Ldefault_policy/Placeholder_default_policy/default_policy/layer_4/bias/Adam_1Placeholder*
_output_shapes	
:è*
dtype0*
shape:è
Ú
"default_policy/AssignVariableOp_81AssignVariableOp1default_policy/default_policy/layer_4/bias/Adam_1Ldefault_policy/Placeholder_default_policy/default_policy/layer_4/bias/Adam_1*
dtype0*
validate_shape(
´
 default_policy/ReadVariableOp_77ReadVariableOp1default_policy/default_policy/layer_4/bias/Adam_1#^default_policy/AssignVariableOp_81*
_output_shapes	
:è*
dtype0

 default_policy/ReadVariableOp_78ReadVariableOp:default_policy/default_policy/layer_val_hidden/kernel/Adam*
_output_shapes
:	è}*
dtype0
¨
Udefault_policy/Placeholder_default_policy/default_policy/layer_val_hidden/kernel/AdamPlaceholder*
_output_shapes
:	è}*
dtype0*
shape:	è}
ì
"default_policy/AssignVariableOp_82AssignVariableOp:default_policy/default_policy/layer_val_hidden/kernel/AdamUdefault_policy/Placeholder_default_policy/default_policy/layer_val_hidden/kernel/Adam*
dtype0*
validate_shape(
Á
 default_policy/ReadVariableOp_79ReadVariableOp:default_policy/default_policy/layer_val_hidden/kernel/Adam#^default_policy/AssignVariableOp_82*
_output_shapes
:	è}*
dtype0

 default_policy/ReadVariableOp_80ReadVariableOp<default_policy/default_policy/layer_val_hidden/kernel/Adam_1*
_output_shapes
:	è}*
dtype0
ª
Wdefault_policy/Placeholder_default_policy/default_policy/layer_val_hidden/kernel/Adam_1Placeholder*
_output_shapes
:	è}*
dtype0*
shape:	è}
ð
"default_policy/AssignVariableOp_83AssignVariableOp<default_policy/default_policy/layer_val_hidden/kernel/Adam_1Wdefault_policy/Placeholder_default_policy/default_policy/layer_val_hidden/kernel/Adam_1*
dtype0*
validate_shape(
Ã
 default_policy/ReadVariableOp_81ReadVariableOp<default_policy/default_policy/layer_val_hidden/kernel/Adam_1#^default_policy/AssignVariableOp_83*
_output_shapes
:	è}*
dtype0

 default_policy/ReadVariableOp_82ReadVariableOp8default_policy/default_policy/layer_val_hidden/bias/Adam*
_output_shapes
:}*
dtype0

Sdefault_policy/Placeholder_default_policy/default_policy/layer_val_hidden/bias/AdamPlaceholder*
_output_shapes
:}*
dtype0*
shape:}
è
"default_policy/AssignVariableOp_84AssignVariableOp8default_policy/default_policy/layer_val_hidden/bias/AdamSdefault_policy/Placeholder_default_policy/default_policy/layer_val_hidden/bias/Adam*
dtype0*
validate_shape(
º
 default_policy/ReadVariableOp_83ReadVariableOp8default_policy/default_policy/layer_val_hidden/bias/Adam#^default_policy/AssignVariableOp_84*
_output_shapes
:}*
dtype0

 default_policy/ReadVariableOp_84ReadVariableOp:default_policy/default_policy/layer_val_hidden/bias/Adam_1*
_output_shapes
:}*
dtype0

Udefault_policy/Placeholder_default_policy/default_policy/layer_val_hidden/bias/Adam_1Placeholder*
_output_shapes
:}*
dtype0*
shape:}
ì
"default_policy/AssignVariableOp_85AssignVariableOp:default_policy/default_policy/layer_val_hidden/bias/Adam_1Udefault_policy/Placeholder_default_policy/default_policy/layer_val_hidden/bias/Adam_1*
dtype0*
validate_shape(
¼
 default_policy/ReadVariableOp_85ReadVariableOp:default_policy/default_policy/layer_val_hidden/bias/Adam_1#^default_policy/AssignVariableOp_85*
_output_shapes
:}*
dtype0

 default_policy/ReadVariableOp_86ReadVariableOp4default_policy/default_policy/action_out/kernel/Adam*
_output_shapes
:	è}*
dtype0
¢
Odefault_policy/Placeholder_default_policy/default_policy/action_out/kernel/AdamPlaceholder*
_output_shapes
:	è}*
dtype0*
shape:	è}
à
"default_policy/AssignVariableOp_86AssignVariableOp4default_policy/default_policy/action_out/kernel/AdamOdefault_policy/Placeholder_default_policy/default_policy/action_out/kernel/Adam*
dtype0*
validate_shape(
»
 default_policy/ReadVariableOp_87ReadVariableOp4default_policy/default_policy/action_out/kernel/Adam#^default_policy/AssignVariableOp_86*
_output_shapes
:	è}*
dtype0

 default_policy/ReadVariableOp_88ReadVariableOp6default_policy/default_policy/action_out/kernel/Adam_1*
_output_shapes
:	è}*
dtype0
¤
Qdefault_policy/Placeholder_default_policy/default_policy/action_out/kernel/Adam_1Placeholder*
_output_shapes
:	è}*
dtype0*
shape:	è}
ä
"default_policy/AssignVariableOp_87AssignVariableOp6default_policy/default_policy/action_out/kernel/Adam_1Qdefault_policy/Placeholder_default_policy/default_policy/action_out/kernel/Adam_1*
dtype0*
validate_shape(
½
 default_policy/ReadVariableOp_89ReadVariableOp6default_policy/default_policy/action_out/kernel/Adam_1#^default_policy/AssignVariableOp_87*
_output_shapes
:	è}*
dtype0

 default_policy/ReadVariableOp_90ReadVariableOp2default_policy/default_policy/action_out/bias/Adam*
_output_shapes
:}*
dtype0

Mdefault_policy/Placeholder_default_policy/default_policy/action_out/bias/AdamPlaceholder*
_output_shapes
:}*
dtype0*
shape:}
Ü
"default_policy/AssignVariableOp_88AssignVariableOp2default_policy/default_policy/action_out/bias/AdamMdefault_policy/Placeholder_default_policy/default_policy/action_out/bias/Adam*
dtype0*
validate_shape(
´
 default_policy/ReadVariableOp_91ReadVariableOp2default_policy/default_policy/action_out/bias/Adam#^default_policy/AssignVariableOp_88*
_output_shapes
:}*
dtype0

 default_policy/ReadVariableOp_92ReadVariableOp4default_policy/default_policy/action_out/bias/Adam_1*
_output_shapes
:}*
dtype0

Odefault_policy/Placeholder_default_policy/default_policy/action_out/bias/Adam_1Placeholder*
_output_shapes
:}*
dtype0*
shape:}
à
"default_policy/AssignVariableOp_89AssignVariableOp4default_policy/default_policy/action_out/bias/Adam_1Odefault_policy/Placeholder_default_policy/default_policy/action_out/bias/Adam_1*
dtype0*
validate_shape(
¶
 default_policy/ReadVariableOp_93ReadVariableOp4default_policy/default_policy/action_out/bias/Adam_1#^default_policy/AssignVariableOp_89*
_output_shapes
:}*
dtype0

 default_policy/ReadVariableOp_94ReadVariableOp3default_policy/default_policy/value_out/kernel/Adam*
_output_shapes

:}*
dtype0

Ndefault_policy/Placeholder_default_policy/default_policy/value_out/kernel/AdamPlaceholder*
_output_shapes

:}*
dtype0*
shape
:}
Þ
"default_policy/AssignVariableOp_90AssignVariableOp3default_policy/default_policy/value_out/kernel/AdamNdefault_policy/Placeholder_default_policy/default_policy/value_out/kernel/Adam*
dtype0*
validate_shape(
¹
 default_policy/ReadVariableOp_95ReadVariableOp3default_policy/default_policy/value_out/kernel/Adam#^default_policy/AssignVariableOp_90*
_output_shapes

:}*
dtype0

 default_policy/ReadVariableOp_96ReadVariableOp5default_policy/default_policy/value_out/kernel/Adam_1*
_output_shapes

:}*
dtype0
¡
Pdefault_policy/Placeholder_default_policy/default_policy/value_out/kernel/Adam_1Placeholder*
_output_shapes

:}*
dtype0*
shape
:}
â
"default_policy/AssignVariableOp_91AssignVariableOp5default_policy/default_policy/value_out/kernel/Adam_1Pdefault_policy/Placeholder_default_policy/default_policy/value_out/kernel/Adam_1*
dtype0*
validate_shape(
»
 default_policy/ReadVariableOp_97ReadVariableOp5default_policy/default_policy/value_out/kernel/Adam_1#^default_policy/AssignVariableOp_91*
_output_shapes

:}*
dtype0

 default_policy/ReadVariableOp_98ReadVariableOp1default_policy/default_policy/value_out/bias/Adam*
_output_shapes
:*
dtype0

Ldefault_policy/Placeholder_default_policy/default_policy/value_out/bias/AdamPlaceholder*
_output_shapes
:*
dtype0*
shape:
Ú
"default_policy/AssignVariableOp_92AssignVariableOp1default_policy/default_policy/value_out/bias/AdamLdefault_policy/Placeholder_default_policy/default_policy/value_out/bias/Adam*
dtype0*
validate_shape(
³
 default_policy/ReadVariableOp_99ReadVariableOp1default_policy/default_policy/value_out/bias/Adam#^default_policy/AssignVariableOp_92*
_output_shapes
:*
dtype0

!default_policy/ReadVariableOp_100ReadVariableOp3default_policy/default_policy/value_out/bias/Adam_1*
_output_shapes
:*
dtype0

Ndefault_policy/Placeholder_default_policy/default_policy/value_out/bias/Adam_1Placeholder*
_output_shapes
:*
dtype0*
shape:
Þ
"default_policy/AssignVariableOp_93AssignVariableOp3default_policy/default_policy/value_out/bias/Adam_1Ndefault_policy/Placeholder_default_policy/default_policy/value_out/bias/Adam_1*
dtype0*
validate_shape(
¶
!default_policy/ReadVariableOp_101ReadVariableOp3default_policy/default_policy/value_out/bias/Adam_1#^default_policy/AssignVariableOp_93*
_output_shapes
:*
dtype0
ï
default_policy/init_3/NoOpNoOp&^default_policy/action_out/bias/Assign(^default_policy/action_out/kernel/Assign"^default_policy/beta1_power/Assign"^default_policy/beta2_power/Assign:^default_policy/default_policy/action_out/bias/Adam/Assign<^default_policy/default_policy/action_out/bias/Adam_1/Assign<^default_policy/default_policy/action_out/kernel/Adam/Assign>^default_policy/default_policy/action_out/kernel/Adam_1/Assign7^default_policy/default_policy/layer_1/bias/Adam/Assign9^default_policy/default_policy/layer_1/bias/Adam_1/Assign9^default_policy/default_policy/layer_1/kernel/Adam/Assign;^default_policy/default_policy/layer_1/kernel/Adam_1/Assign7^default_policy/default_policy/layer_2/bias/Adam/Assign9^default_policy/default_policy/layer_2/bias/Adam_1/Assign9^default_policy/default_policy/layer_2/kernel/Adam/Assign;^default_policy/default_policy/layer_2/kernel/Adam_1/Assign7^default_policy/default_policy/layer_3/bias/Adam/Assign9^default_policy/default_policy/layer_3/bias/Adam_1/Assign9^default_policy/default_policy/layer_3/kernel/Adam/Assign;^default_policy/default_policy/layer_3/kernel/Adam_1/Assign7^default_policy/default_policy/layer_4/bias/Adam/Assign9^default_policy/default_policy/layer_4/bias/Adam_1/Assign9^default_policy/default_policy/layer_4/kernel/Adam/Assign;^default_policy/default_policy/layer_4/kernel/Adam_1/Assign@^default_policy/default_policy/layer_val_hidden/bias/Adam/AssignB^default_policy/default_policy/layer_val_hidden/bias/Adam_1/AssignB^default_policy/default_policy/layer_val_hidden/kernel/Adam/AssignD^default_policy/default_policy/layer_val_hidden/kernel/Adam_1/Assign9^default_policy/default_policy/value_out/bias/Adam/Assign;^default_policy/default_policy/value_out/bias/Adam_1/Assign;^default_policy/default_policy/value_out/kernel/Adam/Assign=^default_policy/default_policy/value_out/kernel/Adam_1/Assign$^default_policy/entropy_coeff/Assign"^default_policy/global_step/Assign^default_policy/kl_coeff/Assign#^default_policy/layer_1/bias/Assign%^default_policy/layer_1/kernel/Assign#^default_policy/layer_2/bias/Assign%^default_policy/layer_2/kernel/Assign#^default_policy/layer_3/bias/Assign%^default_policy/layer_3/kernel/Assign#^default_policy/layer_4/bias/Assign%^default_policy/layer_4/kernel/Assign,^default_policy/layer_val_hidden/bias/Assign.^default_policy/layer_val_hidden/kernel/Assign^default_policy/lr/Assign!^default_policy/timestep_1/Assign%^default_policy/value_out/bias/Assign'^default_policy/value_out/kernel/Assign


default_policy/init_3/NoOp_1NoOp#^default_policy/AssignVariableOp_10#^default_policy/AssignVariableOp_11#^default_policy/AssignVariableOp_12#^default_policy/AssignVariableOp_13#^default_policy/AssignVariableOp_14#^default_policy/AssignVariableOp_15#^default_policy/AssignVariableOp_16#^default_policy/AssignVariableOp_17#^default_policy/AssignVariableOp_18#^default_policy/AssignVariableOp_19#^default_policy/AssignVariableOp_20#^default_policy/AssignVariableOp_21#^default_policy/AssignVariableOp_22#^default_policy/AssignVariableOp_23#^default_policy/AssignVariableOp_24#^default_policy/AssignVariableOp_25#^default_policy/AssignVariableOp_26#^default_policy/AssignVariableOp_27#^default_policy/AssignVariableOp_28#^default_policy/AssignVariableOp_29#^default_policy/AssignVariableOp_30#^default_policy/AssignVariableOp_31#^default_policy/AssignVariableOp_32#^default_policy/AssignVariableOp_33#^default_policy/AssignVariableOp_34#^default_policy/AssignVariableOp_35#^default_policy/AssignVariableOp_36#^default_policy/AssignVariableOp_37"^default_policy/AssignVariableOp_4"^default_policy/AssignVariableOp_5"^default_policy/AssignVariableOp_6"^default_policy/AssignVariableOp_7"^default_policy/AssignVariableOp_8"^default_policy/AssignVariableOp_9"/device:CPU:0
Y
default_policy/init_3NoOp^default_policy/init_3/NoOp^default_policy/init_3/NoOp_1
Y
save/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
dtype0*
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
_output_shapes
: *
dtype0*
shape: 
{
save/StaticRegexFullMatchStaticRegexFullMatch
save/Const"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*
a
save/Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part
f
save/Const_2Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
|
save/SelectSelectsave/StaticRegexFullMatchsave/Const_1save/Const_2"/device:CPU:**
T0*
_output_shapes
: 
w
save/StringJoin
StringJoin
save/Constsave/Select"/device:CPU:**
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
k
save/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 

save/SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:S*
dtype0*«
value¡BSBdefault_policy/Adam/beta_1Bdefault_policy/Adam/beta_2Bdefault_policy/Adam/decayBdefault_policy/Adam/iterBdefault_policy/action_out/biasB default_policy/action_out/kernelBdefault_policy/beta1_powerBdefault_policy/beta2_powerBdefault_policy/biasBdefault_policy/bias_1Bdefault_policy/bias_2Bdefault_policy/bias_3Bdefault_policy/bias_4B2default_policy/default_policy/action_out/bias/AdamB4default_policy/default_policy/action_out/bias/Adam_1B4default_policy/default_policy/action_out/kernel/AdamB6default_policy/default_policy/action_out/kernel/Adam_1B/default_policy/default_policy/layer_1/bias/AdamB1default_policy/default_policy/layer_1/bias/Adam_1B1default_policy/default_policy/layer_1/kernel/AdamB3default_policy/default_policy/layer_1/kernel/Adam_1B/default_policy/default_policy/layer_2/bias/AdamB1default_policy/default_policy/layer_2/bias/Adam_1B1default_policy/default_policy/layer_2/kernel/AdamB3default_policy/default_policy/layer_2/kernel/Adam_1B/default_policy/default_policy/layer_3/bias/AdamB1default_policy/default_policy/layer_3/bias/Adam_1B1default_policy/default_policy/layer_3/kernel/AdamB3default_policy/default_policy/layer_3/kernel/Adam_1B/default_policy/default_policy/layer_4/bias/AdamB1default_policy/default_policy/layer_4/bias/Adam_1B1default_policy/default_policy/layer_4/kernel/AdamB3default_policy/default_policy/layer_4/kernel/Adam_1B8default_policy/default_policy/layer_val_hidden/bias/AdamB:default_policy/default_policy/layer_val_hidden/bias/Adam_1B:default_policy/default_policy/layer_val_hidden/kernel/AdamB<default_policy/default_policy/layer_val_hidden/kernel/Adam_1B1default_policy/default_policy/value_out/bias/AdamB3default_policy/default_policy/value_out/bias/Adam_1B3default_policy/default_policy/value_out/kernel/AdamB5default_policy/default_policy/value_out/kernel/Adam_1Bdefault_policy/dense/bias/mBdefault_policy/dense/bias/vBdefault_policy/dense/kernel/mBdefault_policy/dense/kernel/vBdefault_policy/dense_1/bias/mBdefault_policy/dense_1/bias/vBdefault_policy/dense_1/kernel/mBdefault_policy/dense_1/kernel/vBdefault_policy/dense_2/bias/mBdefault_policy/dense_2/bias/vBdefault_policy/dense_2/kernel/mBdefault_policy/dense_2/kernel/vBdefault_policy/dense_3/bias/mBdefault_policy/dense_3/bias/vBdefault_policy/dense_3/kernel/mBdefault_policy/dense_3/kernel/vBdefault_policy/dense_4/bias/mBdefault_policy/dense_4/bias/vBdefault_policy/dense_4/kernel/mBdefault_policy/dense_4/kernel/vBdefault_policy/entropy_coeffBdefault_policy/global_stepBdefault_policy/kernelBdefault_policy/kernel_1Bdefault_policy/kernel_2Bdefault_policy/kernel_3Bdefault_policy/kernel_4Bdefault_policy/kl_coeffBdefault_policy/layer_1/biasBdefault_policy/layer_1/kernelBdefault_policy/layer_2/biasBdefault_policy/layer_2/kernelBdefault_policy/layer_3/biasBdefault_policy/layer_3/kernelBdefault_policy/layer_4/biasBdefault_policy/layer_4/kernelB$default_policy/layer_val_hidden/biasB&default_policy/layer_val_hidden/kernelBdefault_policy/lrBdefault_policy/timestep_1Bdefault_policy/value_out/biasBdefault_policy/value_out/kernel

save/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:S*
dtype0*»
value±B®SB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
ç&
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices.default_policy/Adam/beta_1/Read/ReadVariableOp.default_policy/Adam/beta_2/Read/ReadVariableOp-default_policy/Adam/decay/Read/ReadVariableOp,default_policy/Adam/iter/Read/ReadVariableOp2default_policy/action_out/bias/Read/ReadVariableOp4default_policy/action_out/kernel/Read/ReadVariableOp.default_policy/beta1_power/Read/ReadVariableOp.default_policy/beta2_power/Read/ReadVariableOp'default_policy/bias/Read/ReadVariableOp)default_policy/bias_1/Read/ReadVariableOp)default_policy/bias_2/Read/ReadVariableOp)default_policy/bias_3/Read/ReadVariableOp)default_policy/bias_4/Read/ReadVariableOpFdefault_policy/default_policy/action_out/bias/Adam/Read/ReadVariableOpHdefault_policy/default_policy/action_out/bias/Adam_1/Read/ReadVariableOpHdefault_policy/default_policy/action_out/kernel/Adam/Read/ReadVariableOpJdefault_policy/default_policy/action_out/kernel/Adam_1/Read/ReadVariableOpCdefault_policy/default_policy/layer_1/bias/Adam/Read/ReadVariableOpEdefault_policy/default_policy/layer_1/bias/Adam_1/Read/ReadVariableOpEdefault_policy/default_policy/layer_1/kernel/Adam/Read/ReadVariableOpGdefault_policy/default_policy/layer_1/kernel/Adam_1/Read/ReadVariableOpCdefault_policy/default_policy/layer_2/bias/Adam/Read/ReadVariableOpEdefault_policy/default_policy/layer_2/bias/Adam_1/Read/ReadVariableOpEdefault_policy/default_policy/layer_2/kernel/Adam/Read/ReadVariableOpGdefault_policy/default_policy/layer_2/kernel/Adam_1/Read/ReadVariableOpCdefault_policy/default_policy/layer_3/bias/Adam/Read/ReadVariableOpEdefault_policy/default_policy/layer_3/bias/Adam_1/Read/ReadVariableOpEdefault_policy/default_policy/layer_3/kernel/Adam/Read/ReadVariableOpGdefault_policy/default_policy/layer_3/kernel/Adam_1/Read/ReadVariableOpCdefault_policy/default_policy/layer_4/bias/Adam/Read/ReadVariableOpEdefault_policy/default_policy/layer_4/bias/Adam_1/Read/ReadVariableOpEdefault_policy/default_policy/layer_4/kernel/Adam/Read/ReadVariableOpGdefault_policy/default_policy/layer_4/kernel/Adam_1/Read/ReadVariableOpLdefault_policy/default_policy/layer_val_hidden/bias/Adam/Read/ReadVariableOpNdefault_policy/default_policy/layer_val_hidden/bias/Adam_1/Read/ReadVariableOpNdefault_policy/default_policy/layer_val_hidden/kernel/Adam/Read/ReadVariableOpPdefault_policy/default_policy/layer_val_hidden/kernel/Adam_1/Read/ReadVariableOpEdefault_policy/default_policy/value_out/bias/Adam/Read/ReadVariableOpGdefault_policy/default_policy/value_out/bias/Adam_1/Read/ReadVariableOpGdefault_policy/default_policy/value_out/kernel/Adam/Read/ReadVariableOpIdefault_policy/default_policy/value_out/kernel/Adam_1/Read/ReadVariableOp/default_policy/dense/bias/m/Read/ReadVariableOp/default_policy/dense/bias/v/Read/ReadVariableOp1default_policy/dense/kernel/m/Read/ReadVariableOp1default_policy/dense/kernel/v/Read/ReadVariableOp1default_policy/dense_1/bias/m/Read/ReadVariableOp1default_policy/dense_1/bias/v/Read/ReadVariableOp3default_policy/dense_1/kernel/m/Read/ReadVariableOp3default_policy/dense_1/kernel/v/Read/ReadVariableOp1default_policy/dense_2/bias/m/Read/ReadVariableOp1default_policy/dense_2/bias/v/Read/ReadVariableOp3default_policy/dense_2/kernel/m/Read/ReadVariableOp3default_policy/dense_2/kernel/v/Read/ReadVariableOp1default_policy/dense_3/bias/m/Read/ReadVariableOp1default_policy/dense_3/bias/v/Read/ReadVariableOp3default_policy/dense_3/kernel/m/Read/ReadVariableOp3default_policy/dense_3/kernel/v/Read/ReadVariableOp1default_policy/dense_4/bias/m/Read/ReadVariableOp1default_policy/dense_4/bias/v/Read/ReadVariableOp3default_policy/dense_4/kernel/m/Read/ReadVariableOp3default_policy/dense_4/kernel/v/Read/ReadVariableOp0default_policy/entropy_coeff/Read/ReadVariableOp.default_policy/global_step/Read/ReadVariableOp)default_policy/kernel/Read/ReadVariableOp+default_policy/kernel_1/Read/ReadVariableOp+default_policy/kernel_2/Read/ReadVariableOp+default_policy/kernel_3/Read/ReadVariableOp+default_policy/kernel_4/Read/ReadVariableOp+default_policy/kl_coeff/Read/ReadVariableOp/default_policy/layer_1/bias/Read/ReadVariableOp1default_policy/layer_1/kernel/Read/ReadVariableOp/default_policy/layer_2/bias/Read/ReadVariableOp1default_policy/layer_2/kernel/Read/ReadVariableOp/default_policy/layer_3/bias/Read/ReadVariableOp1default_policy/layer_3/kernel/Read/ReadVariableOp/default_policy/layer_4/bias/Read/ReadVariableOp1default_policy/layer_4/kernel/Read/ReadVariableOp8default_policy/layer_val_hidden/bias/Read/ReadVariableOp:default_policy/layer_val_hidden/kernel/Read/ReadVariableOp%default_policy/lr/Read/ReadVariableOp-default_policy/timestep_1/Read/ReadVariableOp1default_policy/value_out/bias/Read/ReadVariableOp3default_policy/value_out/kernel/Read/ReadVariableOp"/device:CPU:0*a
dtypesW
U2S			
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
¬
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
N*
T0*
_output_shapes
:*

axis 

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 

save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:S*
dtype0*«
value¡BSBdefault_policy/Adam/beta_1Bdefault_policy/Adam/beta_2Bdefault_policy/Adam/decayBdefault_policy/Adam/iterBdefault_policy/action_out/biasB default_policy/action_out/kernelBdefault_policy/beta1_powerBdefault_policy/beta2_powerBdefault_policy/biasBdefault_policy/bias_1Bdefault_policy/bias_2Bdefault_policy/bias_3Bdefault_policy/bias_4B2default_policy/default_policy/action_out/bias/AdamB4default_policy/default_policy/action_out/bias/Adam_1B4default_policy/default_policy/action_out/kernel/AdamB6default_policy/default_policy/action_out/kernel/Adam_1B/default_policy/default_policy/layer_1/bias/AdamB1default_policy/default_policy/layer_1/bias/Adam_1B1default_policy/default_policy/layer_1/kernel/AdamB3default_policy/default_policy/layer_1/kernel/Adam_1B/default_policy/default_policy/layer_2/bias/AdamB1default_policy/default_policy/layer_2/bias/Adam_1B1default_policy/default_policy/layer_2/kernel/AdamB3default_policy/default_policy/layer_2/kernel/Adam_1B/default_policy/default_policy/layer_3/bias/AdamB1default_policy/default_policy/layer_3/bias/Adam_1B1default_policy/default_policy/layer_3/kernel/AdamB3default_policy/default_policy/layer_3/kernel/Adam_1B/default_policy/default_policy/layer_4/bias/AdamB1default_policy/default_policy/layer_4/bias/Adam_1B1default_policy/default_policy/layer_4/kernel/AdamB3default_policy/default_policy/layer_4/kernel/Adam_1B8default_policy/default_policy/layer_val_hidden/bias/AdamB:default_policy/default_policy/layer_val_hidden/bias/Adam_1B:default_policy/default_policy/layer_val_hidden/kernel/AdamB<default_policy/default_policy/layer_val_hidden/kernel/Adam_1B1default_policy/default_policy/value_out/bias/AdamB3default_policy/default_policy/value_out/bias/Adam_1B3default_policy/default_policy/value_out/kernel/AdamB5default_policy/default_policy/value_out/kernel/Adam_1Bdefault_policy/dense/bias/mBdefault_policy/dense/bias/vBdefault_policy/dense/kernel/mBdefault_policy/dense/kernel/vBdefault_policy/dense_1/bias/mBdefault_policy/dense_1/bias/vBdefault_policy/dense_1/kernel/mBdefault_policy/dense_1/kernel/vBdefault_policy/dense_2/bias/mBdefault_policy/dense_2/bias/vBdefault_policy/dense_2/kernel/mBdefault_policy/dense_2/kernel/vBdefault_policy/dense_3/bias/mBdefault_policy/dense_3/bias/vBdefault_policy/dense_3/kernel/mBdefault_policy/dense_3/kernel/vBdefault_policy/dense_4/bias/mBdefault_policy/dense_4/bias/vBdefault_policy/dense_4/kernel/mBdefault_policy/dense_4/kernel/vBdefault_policy/entropy_coeffBdefault_policy/global_stepBdefault_policy/kernelBdefault_policy/kernel_1Bdefault_policy/kernel_2Bdefault_policy/kernel_3Bdefault_policy/kernel_4Bdefault_policy/kl_coeffBdefault_policy/layer_1/biasBdefault_policy/layer_1/kernelBdefault_policy/layer_2/biasBdefault_policy/layer_2/kernelBdefault_policy/layer_3/biasBdefault_policy/layer_3/kernelBdefault_policy/layer_4/biasBdefault_policy/layer_4/kernelB$default_policy/layer_val_hidden/biasB&default_policy/layer_val_hidden/kernelBdefault_policy/lrBdefault_policy/timestep_1Bdefault_policy/value_out/biasBdefault_policy/value_out/kernel

save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:S*
dtype0*»
value±B®SB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
¼
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*â
_output_shapesÏ
Ì:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*a
dtypesW
U2S			
N
save/Identity_1Identitysave/RestoreV2*
T0*
_output_shapes
:
y
save/AssignVariableOpAssignVariableOpdefault_policy/Adam/beta_1save/Identity_1*
dtype0*
validate_shape( 
P
save/Identity_2Identitysave/RestoreV2:1*
T0*
_output_shapes
:
{
save/AssignVariableOp_1AssignVariableOpdefault_policy/Adam/beta_2save/Identity_2*
dtype0*
validate_shape( 
P
save/Identity_3Identitysave/RestoreV2:2*
T0*
_output_shapes
:
z
save/AssignVariableOp_2AssignVariableOpdefault_policy/Adam/decaysave/Identity_3*
dtype0*
validate_shape( 
P
save/Identity_4Identitysave/RestoreV2:3*
T0	*
_output_shapes
:
y
save/AssignVariableOp_3AssignVariableOpdefault_policy/Adam/itersave/Identity_4*
dtype0	*
validate_shape( 
P
save/Identity_5Identitysave/RestoreV2:4*
T0*
_output_shapes
:

save/AssignVariableOp_4AssignVariableOpdefault_policy/action_out/biassave/Identity_5*
dtype0*
validate_shape( 
P
save/Identity_6Identitysave/RestoreV2:5*
T0*
_output_shapes
:

save/AssignVariableOp_5AssignVariableOp default_policy/action_out/kernelsave/Identity_6*
dtype0*
validate_shape( 
P
save/Identity_7Identitysave/RestoreV2:6*
T0*
_output_shapes
:
{
save/AssignVariableOp_6AssignVariableOpdefault_policy/beta1_powersave/Identity_7*
dtype0*
validate_shape( 
P
save/Identity_8Identitysave/RestoreV2:7*
T0*
_output_shapes
:
{
save/AssignVariableOp_7AssignVariableOpdefault_policy/beta2_powersave/Identity_8*
dtype0*
validate_shape( 
P
save/Identity_9Identitysave/RestoreV2:8*
T0*
_output_shapes
:
t
save/AssignVariableOp_8AssignVariableOpdefault_policy/biassave/Identity_9*
dtype0*
validate_shape( 
Q
save/Identity_10Identitysave/RestoreV2:9*
T0*
_output_shapes
:
w
save/AssignVariableOp_9AssignVariableOpdefault_policy/bias_1save/Identity_10*
dtype0*
validate_shape( 
R
save/Identity_11Identitysave/RestoreV2:10*
T0*
_output_shapes
:
x
save/AssignVariableOp_10AssignVariableOpdefault_policy/bias_2save/Identity_11*
dtype0*
validate_shape( 
R
save/Identity_12Identitysave/RestoreV2:11*
T0*
_output_shapes
:
x
save/AssignVariableOp_11AssignVariableOpdefault_policy/bias_3save/Identity_12*
dtype0*
validate_shape( 
R
save/Identity_13Identitysave/RestoreV2:12*
T0*
_output_shapes
:
x
save/AssignVariableOp_12AssignVariableOpdefault_policy/bias_4save/Identity_13*
dtype0*
validate_shape( 
R
save/Identity_14Identitysave/RestoreV2:13*
T0*
_output_shapes
:

save/AssignVariableOp_13AssignVariableOp2default_policy/default_policy/action_out/bias/Adamsave/Identity_14*
dtype0*
validate_shape( 
R
save/Identity_15Identitysave/RestoreV2:14*
T0*
_output_shapes
:

save/AssignVariableOp_14AssignVariableOp4default_policy/default_policy/action_out/bias/Adam_1save/Identity_15*
dtype0*
validate_shape( 
R
save/Identity_16Identitysave/RestoreV2:15*
T0*
_output_shapes
:

save/AssignVariableOp_15AssignVariableOp4default_policy/default_policy/action_out/kernel/Adamsave/Identity_16*
dtype0*
validate_shape( 
R
save/Identity_17Identitysave/RestoreV2:16*
T0*
_output_shapes
:

save/AssignVariableOp_16AssignVariableOp6default_policy/default_policy/action_out/kernel/Adam_1save/Identity_17*
dtype0*
validate_shape( 
R
save/Identity_18Identitysave/RestoreV2:17*
T0*
_output_shapes
:

save/AssignVariableOp_17AssignVariableOp/default_policy/default_policy/layer_1/bias/Adamsave/Identity_18*
dtype0*
validate_shape( 
R
save/Identity_19Identitysave/RestoreV2:18*
T0*
_output_shapes
:

save/AssignVariableOp_18AssignVariableOp1default_policy/default_policy/layer_1/bias/Adam_1save/Identity_19*
dtype0*
validate_shape( 
R
save/Identity_20Identitysave/RestoreV2:19*
T0*
_output_shapes
:

save/AssignVariableOp_19AssignVariableOp1default_policy/default_policy/layer_1/kernel/Adamsave/Identity_20*
dtype0*
validate_shape( 
R
save/Identity_21Identitysave/RestoreV2:20*
T0*
_output_shapes
:

save/AssignVariableOp_20AssignVariableOp3default_policy/default_policy/layer_1/kernel/Adam_1save/Identity_21*
dtype0*
validate_shape( 
R
save/Identity_22Identitysave/RestoreV2:21*
T0*
_output_shapes
:

save/AssignVariableOp_21AssignVariableOp/default_policy/default_policy/layer_2/bias/Adamsave/Identity_22*
dtype0*
validate_shape( 
R
save/Identity_23Identitysave/RestoreV2:22*
T0*
_output_shapes
:

save/AssignVariableOp_22AssignVariableOp1default_policy/default_policy/layer_2/bias/Adam_1save/Identity_23*
dtype0*
validate_shape( 
R
save/Identity_24Identitysave/RestoreV2:23*
T0*
_output_shapes
:

save/AssignVariableOp_23AssignVariableOp1default_policy/default_policy/layer_2/kernel/Adamsave/Identity_24*
dtype0*
validate_shape( 
R
save/Identity_25Identitysave/RestoreV2:24*
T0*
_output_shapes
:

save/AssignVariableOp_24AssignVariableOp3default_policy/default_policy/layer_2/kernel/Adam_1save/Identity_25*
dtype0*
validate_shape( 
R
save/Identity_26Identitysave/RestoreV2:25*
T0*
_output_shapes
:

save/AssignVariableOp_25AssignVariableOp/default_policy/default_policy/layer_3/bias/Adamsave/Identity_26*
dtype0*
validate_shape( 
R
save/Identity_27Identitysave/RestoreV2:26*
T0*
_output_shapes
:

save/AssignVariableOp_26AssignVariableOp1default_policy/default_policy/layer_3/bias/Adam_1save/Identity_27*
dtype0*
validate_shape( 
R
save/Identity_28Identitysave/RestoreV2:27*
T0*
_output_shapes
:

save/AssignVariableOp_27AssignVariableOp1default_policy/default_policy/layer_3/kernel/Adamsave/Identity_28*
dtype0*
validate_shape( 
R
save/Identity_29Identitysave/RestoreV2:28*
T0*
_output_shapes
:

save/AssignVariableOp_28AssignVariableOp3default_policy/default_policy/layer_3/kernel/Adam_1save/Identity_29*
dtype0*
validate_shape( 
R
save/Identity_30Identitysave/RestoreV2:29*
T0*
_output_shapes
:

save/AssignVariableOp_29AssignVariableOp/default_policy/default_policy/layer_4/bias/Adamsave/Identity_30*
dtype0*
validate_shape( 
R
save/Identity_31Identitysave/RestoreV2:30*
T0*
_output_shapes
:

save/AssignVariableOp_30AssignVariableOp1default_policy/default_policy/layer_4/bias/Adam_1save/Identity_31*
dtype0*
validate_shape( 
R
save/Identity_32Identitysave/RestoreV2:31*
T0*
_output_shapes
:

save/AssignVariableOp_31AssignVariableOp1default_policy/default_policy/layer_4/kernel/Adamsave/Identity_32*
dtype0*
validate_shape( 
R
save/Identity_33Identitysave/RestoreV2:32*
T0*
_output_shapes
:

save/AssignVariableOp_32AssignVariableOp3default_policy/default_policy/layer_4/kernel/Adam_1save/Identity_33*
dtype0*
validate_shape( 
R
save/Identity_34Identitysave/RestoreV2:33*
T0*
_output_shapes
:

save/AssignVariableOp_33AssignVariableOp8default_policy/default_policy/layer_val_hidden/bias/Adamsave/Identity_34*
dtype0*
validate_shape( 
R
save/Identity_35Identitysave/RestoreV2:34*
T0*
_output_shapes
:

save/AssignVariableOp_34AssignVariableOp:default_policy/default_policy/layer_val_hidden/bias/Adam_1save/Identity_35*
dtype0*
validate_shape( 
R
save/Identity_36Identitysave/RestoreV2:35*
T0*
_output_shapes
:

save/AssignVariableOp_35AssignVariableOp:default_policy/default_policy/layer_val_hidden/kernel/Adamsave/Identity_36*
dtype0*
validate_shape( 
R
save/Identity_37Identitysave/RestoreV2:36*
T0*
_output_shapes
:

save/AssignVariableOp_36AssignVariableOp<default_policy/default_policy/layer_val_hidden/kernel/Adam_1save/Identity_37*
dtype0*
validate_shape( 
R
save/Identity_38Identitysave/RestoreV2:37*
T0*
_output_shapes
:

save/AssignVariableOp_37AssignVariableOp1default_policy/default_policy/value_out/bias/Adamsave/Identity_38*
dtype0*
validate_shape( 
R
save/Identity_39Identitysave/RestoreV2:38*
T0*
_output_shapes
:

save/AssignVariableOp_38AssignVariableOp3default_policy/default_policy/value_out/bias/Adam_1save/Identity_39*
dtype0*
validate_shape( 
R
save/Identity_40Identitysave/RestoreV2:39*
T0*
_output_shapes
:

save/AssignVariableOp_39AssignVariableOp3default_policy/default_policy/value_out/kernel/Adamsave/Identity_40*
dtype0*
validate_shape( 
R
save/Identity_41Identitysave/RestoreV2:40*
T0*
_output_shapes
:

save/AssignVariableOp_40AssignVariableOp5default_policy/default_policy/value_out/kernel/Adam_1save/Identity_41*
dtype0*
validate_shape( 
R
save/Identity_42Identitysave/RestoreV2:41*
T0*
_output_shapes
:
~
save/AssignVariableOp_41AssignVariableOpdefault_policy/dense/bias/msave/Identity_42*
dtype0*
validate_shape( 
R
save/Identity_43Identitysave/RestoreV2:42*
T0*
_output_shapes
:
~
save/AssignVariableOp_42AssignVariableOpdefault_policy/dense/bias/vsave/Identity_43*
dtype0*
validate_shape( 
R
save/Identity_44Identitysave/RestoreV2:43*
T0*
_output_shapes
:

save/AssignVariableOp_43AssignVariableOpdefault_policy/dense/kernel/msave/Identity_44*
dtype0*
validate_shape( 
R
save/Identity_45Identitysave/RestoreV2:44*
T0*
_output_shapes
:

save/AssignVariableOp_44AssignVariableOpdefault_policy/dense/kernel/vsave/Identity_45*
dtype0*
validate_shape( 
R
save/Identity_46Identitysave/RestoreV2:45*
T0*
_output_shapes
:

save/AssignVariableOp_45AssignVariableOpdefault_policy/dense_1/bias/msave/Identity_46*
dtype0*
validate_shape( 
R
save/Identity_47Identitysave/RestoreV2:46*
T0*
_output_shapes
:

save/AssignVariableOp_46AssignVariableOpdefault_policy/dense_1/bias/vsave/Identity_47*
dtype0*
validate_shape( 
R
save/Identity_48Identitysave/RestoreV2:47*
T0*
_output_shapes
:

save/AssignVariableOp_47AssignVariableOpdefault_policy/dense_1/kernel/msave/Identity_48*
dtype0*
validate_shape( 
R
save/Identity_49Identitysave/RestoreV2:48*
T0*
_output_shapes
:

save/AssignVariableOp_48AssignVariableOpdefault_policy/dense_1/kernel/vsave/Identity_49*
dtype0*
validate_shape( 
R
save/Identity_50Identitysave/RestoreV2:49*
T0*
_output_shapes
:

save/AssignVariableOp_49AssignVariableOpdefault_policy/dense_2/bias/msave/Identity_50*
dtype0*
validate_shape( 
R
save/Identity_51Identitysave/RestoreV2:50*
T0*
_output_shapes
:

save/AssignVariableOp_50AssignVariableOpdefault_policy/dense_2/bias/vsave/Identity_51*
dtype0*
validate_shape( 
R
save/Identity_52Identitysave/RestoreV2:51*
T0*
_output_shapes
:

save/AssignVariableOp_51AssignVariableOpdefault_policy/dense_2/kernel/msave/Identity_52*
dtype0*
validate_shape( 
R
save/Identity_53Identitysave/RestoreV2:52*
T0*
_output_shapes
:

save/AssignVariableOp_52AssignVariableOpdefault_policy/dense_2/kernel/vsave/Identity_53*
dtype0*
validate_shape( 
R
save/Identity_54Identitysave/RestoreV2:53*
T0*
_output_shapes
:

save/AssignVariableOp_53AssignVariableOpdefault_policy/dense_3/bias/msave/Identity_54*
dtype0*
validate_shape( 
R
save/Identity_55Identitysave/RestoreV2:54*
T0*
_output_shapes
:

save/AssignVariableOp_54AssignVariableOpdefault_policy/dense_3/bias/vsave/Identity_55*
dtype0*
validate_shape( 
R
save/Identity_56Identitysave/RestoreV2:55*
T0*
_output_shapes
:

save/AssignVariableOp_55AssignVariableOpdefault_policy/dense_3/kernel/msave/Identity_56*
dtype0*
validate_shape( 
R
save/Identity_57Identitysave/RestoreV2:56*
T0*
_output_shapes
:

save/AssignVariableOp_56AssignVariableOpdefault_policy/dense_3/kernel/vsave/Identity_57*
dtype0*
validate_shape( 
R
save/Identity_58Identitysave/RestoreV2:57*
T0*
_output_shapes
:

save/AssignVariableOp_57AssignVariableOpdefault_policy/dense_4/bias/msave/Identity_58*
dtype0*
validate_shape( 
R
save/Identity_59Identitysave/RestoreV2:58*
T0*
_output_shapes
:

save/AssignVariableOp_58AssignVariableOpdefault_policy/dense_4/bias/vsave/Identity_59*
dtype0*
validate_shape( 
R
save/Identity_60Identitysave/RestoreV2:59*
T0*
_output_shapes
:

save/AssignVariableOp_59AssignVariableOpdefault_policy/dense_4/kernel/msave/Identity_60*
dtype0*
validate_shape( 
R
save/Identity_61Identitysave/RestoreV2:60*
T0*
_output_shapes
:

save/AssignVariableOp_60AssignVariableOpdefault_policy/dense_4/kernel/vsave/Identity_61*
dtype0*
validate_shape( 
R
save/Identity_62Identitysave/RestoreV2:61*
T0*
_output_shapes
:

save/AssignVariableOp_61AssignVariableOpdefault_policy/entropy_coeffsave/Identity_62*
dtype0*
validate_shape( 
R
save/Identity_63Identitysave/RestoreV2:62*
T0	*
_output_shapes
:
}
save/AssignVariableOp_62AssignVariableOpdefault_policy/global_stepsave/Identity_63*
dtype0	*
validate_shape( 
R
save/Identity_64Identitysave/RestoreV2:63*
T0*
_output_shapes
:
x
save/AssignVariableOp_63AssignVariableOpdefault_policy/kernelsave/Identity_64*
dtype0*
validate_shape( 
R
save/Identity_65Identitysave/RestoreV2:64*
T0*
_output_shapes
:
z
save/AssignVariableOp_64AssignVariableOpdefault_policy/kernel_1save/Identity_65*
dtype0*
validate_shape( 
R
save/Identity_66Identitysave/RestoreV2:65*
T0*
_output_shapes
:
z
save/AssignVariableOp_65AssignVariableOpdefault_policy/kernel_2save/Identity_66*
dtype0*
validate_shape( 
R
save/Identity_67Identitysave/RestoreV2:66*
T0*
_output_shapes
:
z
save/AssignVariableOp_66AssignVariableOpdefault_policy/kernel_3save/Identity_67*
dtype0*
validate_shape( 
R
save/Identity_68Identitysave/RestoreV2:67*
T0*
_output_shapes
:
z
save/AssignVariableOp_67AssignVariableOpdefault_policy/kernel_4save/Identity_68*
dtype0*
validate_shape( 
R
save/Identity_69Identitysave/RestoreV2:68*
T0*
_output_shapes
:
z
save/AssignVariableOp_68AssignVariableOpdefault_policy/kl_coeffsave/Identity_69*
dtype0*
validate_shape( 
R
save/Identity_70Identitysave/RestoreV2:69*
T0*
_output_shapes
:
~
save/AssignVariableOp_69AssignVariableOpdefault_policy/layer_1/biassave/Identity_70*
dtype0*
validate_shape( 
R
save/Identity_71Identitysave/RestoreV2:70*
T0*
_output_shapes
:

save/AssignVariableOp_70AssignVariableOpdefault_policy/layer_1/kernelsave/Identity_71*
dtype0*
validate_shape( 
R
save/Identity_72Identitysave/RestoreV2:71*
T0*
_output_shapes
:
~
save/AssignVariableOp_71AssignVariableOpdefault_policy/layer_2/biassave/Identity_72*
dtype0*
validate_shape( 
R
save/Identity_73Identitysave/RestoreV2:72*
T0*
_output_shapes
:

save/AssignVariableOp_72AssignVariableOpdefault_policy/layer_2/kernelsave/Identity_73*
dtype0*
validate_shape( 
R
save/Identity_74Identitysave/RestoreV2:73*
T0*
_output_shapes
:
~
save/AssignVariableOp_73AssignVariableOpdefault_policy/layer_3/biassave/Identity_74*
dtype0*
validate_shape( 
R
save/Identity_75Identitysave/RestoreV2:74*
T0*
_output_shapes
:

save/AssignVariableOp_74AssignVariableOpdefault_policy/layer_3/kernelsave/Identity_75*
dtype0*
validate_shape( 
R
save/Identity_76Identitysave/RestoreV2:75*
T0*
_output_shapes
:
~
save/AssignVariableOp_75AssignVariableOpdefault_policy/layer_4/biassave/Identity_76*
dtype0*
validate_shape( 
R
save/Identity_77Identitysave/RestoreV2:76*
T0*
_output_shapes
:

save/AssignVariableOp_76AssignVariableOpdefault_policy/layer_4/kernelsave/Identity_77*
dtype0*
validate_shape( 
R
save/Identity_78Identitysave/RestoreV2:77*
T0*
_output_shapes
:

save/AssignVariableOp_77AssignVariableOp$default_policy/layer_val_hidden/biassave/Identity_78*
dtype0*
validate_shape( 
R
save/Identity_79Identitysave/RestoreV2:78*
T0*
_output_shapes
:

save/AssignVariableOp_78AssignVariableOp&default_policy/layer_val_hidden/kernelsave/Identity_79*
dtype0*
validate_shape( 
R
save/Identity_80Identitysave/RestoreV2:79*
T0*
_output_shapes
:
t
save/AssignVariableOp_79AssignVariableOpdefault_policy/lrsave/Identity_80*
dtype0*
validate_shape( 
R
save/Identity_81Identitysave/RestoreV2:80*
T0	*
_output_shapes
:
|
save/AssignVariableOp_80AssignVariableOpdefault_policy/timestep_1save/Identity_81*
dtype0	*
validate_shape( 
R
save/Identity_82Identitysave/RestoreV2:81*
T0*
_output_shapes
:

save/AssignVariableOp_81AssignVariableOpdefault_policy/value_out/biassave/Identity_82*
dtype0*
validate_shape( 
R
save/Identity_83Identitysave/RestoreV2:82*
T0*
_output_shapes
:

save/AssignVariableOp_82AssignVariableOpdefault_policy/value_out/kernelsave/Identity_83*
dtype0*
validate_shape( 
Ï
save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_21^save/AssignVariableOp_22^save/AssignVariableOp_23^save/AssignVariableOp_24^save/AssignVariableOp_25^save/AssignVariableOp_26^save/AssignVariableOp_27^save/AssignVariableOp_28^save/AssignVariableOp_29^save/AssignVariableOp_3^save/AssignVariableOp_30^save/AssignVariableOp_31^save/AssignVariableOp_32^save/AssignVariableOp_33^save/AssignVariableOp_34^save/AssignVariableOp_35^save/AssignVariableOp_36^save/AssignVariableOp_37^save/AssignVariableOp_38^save/AssignVariableOp_39^save/AssignVariableOp_4^save/AssignVariableOp_40^save/AssignVariableOp_41^save/AssignVariableOp_42^save/AssignVariableOp_43^save/AssignVariableOp_44^save/AssignVariableOp_45^save/AssignVariableOp_46^save/AssignVariableOp_47^save/AssignVariableOp_48^save/AssignVariableOp_49^save/AssignVariableOp_5^save/AssignVariableOp_50^save/AssignVariableOp_51^save/AssignVariableOp_52^save/AssignVariableOp_53^save/AssignVariableOp_54^save/AssignVariableOp_55^save/AssignVariableOp_56^save/AssignVariableOp_57^save/AssignVariableOp_58^save/AssignVariableOp_59^save/AssignVariableOp_6^save/AssignVariableOp_60^save/AssignVariableOp_61^save/AssignVariableOp_62^save/AssignVariableOp_63^save/AssignVariableOp_64^save/AssignVariableOp_65^save/AssignVariableOp_66^save/AssignVariableOp_67^save/AssignVariableOp_68^save/AssignVariableOp_69^save/AssignVariableOp_7^save/AssignVariableOp_70^save/AssignVariableOp_71^save/AssignVariableOp_72^save/AssignVariableOp_73^save/AssignVariableOp_74^save/AssignVariableOp_75^save/AssignVariableOp_76^save/AssignVariableOp_77^save/AssignVariableOp_78^save/AssignVariableOp_79^save/AssignVariableOp_8^save/AssignVariableOp_80^save/AssignVariableOp_81^save/AssignVariableOp_82^save/AssignVariableOp_9
-
save/restore_allNoOp^save/restore_shard÷¤
¢
@
cond_false_1556!
argmax_default_policy_truediv

argmax	R
ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
value	B :
ArgMaxArgMaxargmax_default_policy_truedivArgMax/dimension:output:0*
T0*

Tidx0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
output_type0	"
argmaxArgMax:output:0*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ}:- )
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
î

ô
@__inference_dense_2_layer_call_and_return_conditional_losses_403

inputs2
matmul_readvariableop_resource:
èè.
biasadd_readvariableop_resource:	è
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
èè*
dtype0
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
transpose_a( *
transpose_b( s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:è*
dtype0
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
data_formatNHWCW

re_lu/ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿèw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 h
IdentityIdentityre_lu/Relu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿè: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
 
_user_specified_nameinputs

^
%__inference_dropout_layer_call_fn_970

inputs
identity¢StatefulPartitionedCallâ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè* 
_read_only_resource_inputs
 *
config *0
config_proto 

CPU

GPU2*0J 8 *
executor_type *I
fDRB
@__inference_dropout_layer_call_and_return_conditional_losses_944`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿè22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
 
_user_specified_nameinputs
×
^
@__inference_dropout_layer_call_and_return_conditional_losses_932

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿè:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
 
_user_specified_nameinputs
	
ò
(default_policy_dropout_1_cond_false_1307.
*identity_default_policy_dense_3_re_lu_relu
identity
optionalnone
optionalnone_1
optionalnone_2
optionalnone_3
optionalnone_4
optionalnone_5
optionalnone_6s
IdentityIdentity*identity_default_policy_dense_3_re_lu_relu*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè4
OptionalNoneOptionalNone*
_output_shapes
: 6
OptionalNone_1OptionalNone*
_output_shapes
: 6
OptionalNone_2OptionalNone*
_output_shapes
: 6
OptionalNone_3OptionalNone*
_output_shapes
: 6
OptionalNone_4OptionalNone*
_output_shapes
: 6
OptionalNone_5OptionalNone*
_output_shapes
: 6
OptionalNone_6OptionalNone*
_output_shapes
: "
identityIdentity:output:0"'
optionalnoneOptionalNone:optional:0"+
optionalnone_1OptionalNone_1:optional:0"+
optionalnone_2OptionalNone_2:optional:0"+
optionalnone_3OptionalNone_3:optional:0"+
optionalnone_4OptionalNone_4:optional:0"+
optionalnone_5OptionalNone_5:optional:0"+
optionalnone_6OptionalNone_6:optional:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿè:. *
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
Å
g
default_policy_cond_true_1551
cond_default_policy_truediv
placeholder	
cond_identity	G
ConstConst*
_output_shapes
: *
dtype0
*
value	B
 Z´
condIfConst:output:0cond_default_policy_truediv*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *"
else_branchR
cond_false_1556*"
output_shapes
:ÿÿÿÿÿÿÿÿÿ*!
then_branchR
cond_true_1555V
cond/IdentityIdentitycond:output:0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
zeros_like/ShapeShapecond/Identity:output:0*
T0	*
_output_shapes
:*
out_type0U
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    

zeros_likeFillzeros_like/Shape:output:0zeros_like/Const:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

index_type0"'
cond_identitycond/Identity:output:0*5
_input_shapes$
":ÿÿÿÿÿÿÿÿÿ}:ÿÿÿÿÿÿÿÿÿ:- )
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}:)%
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¢%

C__inference_sequential_layer_call_and_return_conditional_losses_991

inputs 
dense_300415:
Óè
dense_300417:	è"
dense_1_300420:
èè
dense_1_300422:	è"
dense_2_300425:
èè
dense_2_300427:	è"
dense_3_300431:
èè
dense_3_300433:	è!
dense_4_300437:	è}
dense_4_300439:}
identity¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢dense_3/StatefulPartitionedCall¢dense_4/StatefulPartitionedCall¢dropout/StatefulPartitionedCall¢!dropout_1/StatefulPartitionedCall
dense/StatefulPartitionedCallStatefulPartitionedCallinputsdense_300415dense_300417*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8 *
executor_type *G
fBR@
>__inference_dense_layer_call_and_return_conditional_losses_455°
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_300420dense_1_300422*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8 *
executor_type *I
fDRB
@__inference_dense_1_layer_call_and_return_conditional_losses_721²
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_300425dense_2_300427*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8 *
executor_type *I
fDRB
@__inference_dense_2_layer_call_and_return_conditional_losses_338
dropout/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè* 
_read_only_resource_inputs
 *
config *0
config_proto 

CPU

GPU2*0J 8 *
executor_type *I
fDRB
@__inference_dropout_layer_call_and_return_conditional_losses_944²
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_3_300431dense_3_300433*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8 *
executor_type *I
fDRB
@__inference_dense_3_layer_call_and_return_conditional_losses_703²
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè* 
_read_only_resource_inputs
 *
config *0
config_proto 

CPU

GPU2*0J 8 *
executor_type *K
fFRD
B__inference_dropout_1_layer_call_and_return_conditional_losses_357³
dense_4/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_4_300437dense_4_300439*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8 *
executor_type *I
fDRB
@__inference_dense_4_layer_call_and_return_conditional_losses_373´
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 w
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÓ: : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ
 
_user_specified_nameinputs
î

ô
@__inference_dense_2_layer_call_and_return_conditional_losses_338

inputs2
matmul_readvariableop_resource:
èè.
biasadd_readvariableop_resource:	è
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
èè*
dtype0
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
transpose_a( *
transpose_b( s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:è*
dtype0
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
data_formatNHWCW

re_lu/ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿèw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 h
IdentityIdentityre_lu/Relu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿè: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
 
_user_specified_nameinputs
	
ð
&default_policy_dropout_cond_false_1257.
*identity_default_policy_dense_2_re_lu_relu
identity
optionalnone
optionalnone_1
optionalnone_2
optionalnone_3
optionalnone_4
optionalnone_5
optionalnone_6s
IdentityIdentity*identity_default_policy_dense_2_re_lu_relu*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè4
OptionalNoneOptionalNone*
_output_shapes
: 6
OptionalNone_1OptionalNone*
_output_shapes
: 6
OptionalNone_2OptionalNone*
_output_shapes
: 6
OptionalNone_3OptionalNone*
_output_shapes
: 6
OptionalNone_4OptionalNone*
_output_shapes
: 6
OptionalNone_5OptionalNone*
_output_shapes
: 6
OptionalNone_6OptionalNone*
_output_shapes
: "
identityIdentity:output:0"'
optionalnoneOptionalNone:optional:0"+
optionalnone_1OptionalNone_1:optional:0"+
optionalnone_2OptionalNone_2:optional:0"+
optionalnone_3OptionalNone_3:optional:0"+
optionalnone_4OptionalNone_4:optional:0"+
optionalnone_5OptionalNone_5:optional:0"+
optionalnone_6OptionalNone_6:optional:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿè:. *
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
×
^
@__inference_dropout_layer_call_and_return_conditional_losses_622

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿè:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
 
_user_specified_nameinputs
²
k
default_policy_cond_false_1552
placeholder
default_policy_squeeze_0	
default_policy_squeeze	"2
default_policy_squeezedefault_policy_squeeze_0*5
_input_shapes$
":ÿÿÿÿÿÿÿÿÿ}:ÿÿÿÿÿÿÿÿÿ:- )
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}:)%
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ñ

%default_policy_dropout_cond_true_12561
-dropout_mul_default_policy_dense_2_re_lu_relu
dropout_mul_1
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4
optionalfromvalue_5
optionalfromvalue_6R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?
dropout/MulMul-dropout_mul_default_policy_dense_2_re_lu_reludropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿèz
dropout/ShapeShape-dropout_mul_default_policy_dense_2_re_lu_relu*
T0*
_output_shapes
:*
out_type0¦
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
dtype0*

seed *
seed2 [
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
Truncate( *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿèj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
OptionalFromValueOptionalFromValuedropout/Const:output:0*
Toutput_types
2*
_output_shapes
: :êèÒ
OptionalFromValue_1OptionalFromValuedropout/Mul:z:0*
Toutput_types
2*
_output_shapes
: :êèÒ
OptionalFromValue_2OptionalFromValuedropout/Shape:output:0*
Toutput_types
2*
_output_shapes
: :êèÏ
OptionalFromValue_3OptionalFromValue-dropout/random_uniform/RandomUniform:output:0*
Toutput_types
2*
_output_shapes
: :êèÒ
OptionalFromValue_4OptionalFromValuedropout/GreaterEqual/y:output:0*
Toutput_types
2*
_output_shapes
: :êèÒ
OptionalFromValue_5OptionalFromValuedropout/GreaterEqual:z:0*
Toutput_types
2
*
_output_shapes
: :êèÈ
OptionalFromValue_6OptionalFromValuedropout/Cast:y:0*
Toutput_types
2*
_output_shapes
: :êèÒ""
dropout_mul_1dropout/Mul_1:z:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0"5
optionalfromvalue_5OptionalFromValue_5:optional:0"5
optionalfromvalue_6OptionalFromValue_6:optional:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿè:. *
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
@
á
C__inference_sequential_layer_call_and_return_conditional_losses_682

inputs8
$dense_matmul_readvariableop_resource:
Óè4
%dense_biasadd_readvariableop_resource:	è:
&dense_1_matmul_readvariableop_resource:
èè6
'dense_1_biasadd_readvariableop_resource:	è:
&dense_2_matmul_readvariableop_resource:
èè6
'dense_2_biasadd_readvariableop_resource:	è:
&dense_3_matmul_readvariableop_resource:
èè6
'dense_3_biasadd_readvariableop_resource:	è9
&dense_4_matmul_readvariableop_resource:	è}5
'dense_4_biasadd_readvariableop_resource:}
identity¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOp¢dense_2/BiasAdd/ReadVariableOp¢dense_2/MatMul/ReadVariableOp¢dense_3/BiasAdd/ReadVariableOp¢dense_3/MatMul/ReadVariableOp¢dense_4/BiasAdd/ReadVariableOp¢dense_4/MatMul/ReadVariableOp
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
Óè*
dtype0
dense/MatMulMatMulinputs#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
transpose_a( *
transpose_b( 
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:è*
dtype0 
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
data_formatNHWCc
dense/re_lu/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
èè*
dtype0¸
dense_1/MatMulMatMuldense/re_lu/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
transpose_a( *
transpose_b( 
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:è*
dtype0¦
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
data_formatNHWCg
dense_1/re_lu/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource* 
_output_shapes
:
èè*
dtype0º
dense_2/MatMulMatMul dense_1/re_lu/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
transpose_a( *
transpose_b( 
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:è*
dtype0¦
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
data_formatNHWCg
dense_2/re_lu/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿèZ
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?
dropout/dropout/MulMul dense_2/re_lu/Relu:activations:0dropout/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿèu
dropout/dropout/ShapeShape dense_2/re_lu/Relu:activations:0*
T0*
_output_shapes
:*
out_type0¶
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
dtype0*

seed**
seed2 c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >¿
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
Truncate( *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource* 
_output_shapes
:
èè*
dtype0³
dense_3/MatMulMatMuldropout/dropout/Mul_1:z:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
transpose_a( *
transpose_b( 
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes	
:è*
dtype0¦
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
data_formatNHWCg
dense_3/re_lu/ReluReludense_3/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?
dropout_1/dropout/MulMul dense_3/re_lu/Relu:activations:0 dropout_1/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿèw
dropout_1/dropout/ShapeShape dense_3/re_lu/Relu:activations:0*
T0*
_output_shapes
:*
out_type0º
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
dtype0*

seed**
seed2e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >Å
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
Truncate( *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes
:	è}*
dtype0´
dense_4/MatMulMatMuldropout_1/dropout/Mul_1:z:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*
transpose_a( *
transpose_b( 
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:}*
dtype0¥
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*
data_formatNHWCf
dense_4/SoftmaxSoftmaxdense_4/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 h
IdentityIdentitydense_4/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÓ: : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ
 
_user_specified_nameinputs
¨

ø
!__inference_signature_wrapper_927
dense_input
unknown:
Óè
	unknown_0:	è
	unknown_1:
èè
	unknown_2:	è
	unknown_3:
èè
	unknown_4:	è
	unknown_5:
èè
	unknown_6:	è
	unknown_7:	è}
	unknown_8:}
identity¢StatefulPartitionedCallÆ
StatefulPartitionedCallStatefulPartitionedCalldense_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*,
_read_only_resource_inputs

	
*
config *0
config_proto 

CPU

GPU2*0J 8 *
executor_type *'
f"R 
__inference__wrapped_model_912`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÓ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ
%
_user_specified_namedense_input
Ô

ÿ
(__inference_sequential_layer_call_fn_764
dense_input
unknown:
Óè
	unknown_0:	è
	unknown_1:
èè
	unknown_2:	è
	unknown_3:
èè
	unknown_4:	è
	unknown_5:
èè
	unknown_6:	è
	unknown_7:	è}
	unknown_8:}
identity¢StatefulPartitionedCallë
StatefulPartitionedCallStatefulPartitionedCalldense_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*,
_read_only_resource_inputs

	
*
config *0
config_proto 

CPU

GPU2*0J 8 *
executor_type *L
fGRE
C__inference_sequential_layer_call_and_return_conditional_losses_749`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÓ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ
%
_user_specified_namedense_input
Õ
o
 default_policy_cond_2_false_1600
placeholder*
&zeros_like_shape_default_policy_argmax	

zeros_likev
zeros_like/ShapeShape&zeros_like_shape_default_policy_argmax*
T0	*
_output_shapes
:*
out_type0U
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    e
zeros_like_0Fillzeros_like/Shape:output:0zeros_like/Const:output:0*
T0*

index_type0"#

zeros_likezeros_like_0:output:0*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:) %
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:)%
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Æ

û
)__inference_sequential_layer_call_fn_1021

inputs
unknown:
Óè
	unknown_0:	è
	unknown_1:
èè
	unknown_2:	è
	unknown_3:
èè
	unknown_4:	è
	unknown_5:
èè
	unknown_6:	è
	unknown_7:	è}
	unknown_8:}
identity¢StatefulPartitionedCallæ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*,
_read_only_resource_inputs

	
*
config *0
config_proto 

CPU

GPU2*0J 8 *
executor_type *L
fGRE
C__inference_sequential_layer_call_and_return_conditional_losses_991`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÓ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ
 
_user_specified_nameinputs

Ô
__inference__traced_restore_584
file_prefix1
assignvariableop_dense_kernel:
Óè,
assignvariableop_1_dense_bias:	è5
!assignvariableop_2_dense_1_kernel:
èè.
assignvariableop_3_dense_1_bias:	è5
!assignvariableop_4_dense_2_kernel:
èè.
assignvariableop_5_dense_2_bias:	è5
!assignvariableop_6_dense_3_kernel:
èè.
assignvariableop_7_dense_3_bias:	è4
!assignvariableop_8_dense_4_kernel:	è}-
assignvariableop_9_dense_4_bias:}'
assignvariableop_10_adam_iter:	 )
assignvariableop_11_adam_beta_1: )
assignvariableop_12_adam_beta_2: (
assignvariableop_13_adam_decay: %
assignvariableop_14_total_1: %
assignvariableop_15_count_1: #
assignvariableop_16_total: #
assignvariableop_17_count: ;
'assignvariableop_18_adam_dense_kernel_m:
Óè4
%assignvariableop_19_adam_dense_bias_m:	è=
)assignvariableop_20_adam_dense_1_kernel_m:
èè6
'assignvariableop_21_adam_dense_1_bias_m:	è=
)assignvariableop_22_adam_dense_2_kernel_m:
èè6
'assignvariableop_23_adam_dense_2_bias_m:	è=
)assignvariableop_24_adam_dense_3_kernel_m:
èè6
'assignvariableop_25_adam_dense_3_bias_m:	è<
)assignvariableop_26_adam_dense_4_kernel_m:	è}5
'assignvariableop_27_adam_dense_4_bias_m:};
'assignvariableop_28_adam_dense_kernel_v:
Óè4
%assignvariableop_29_adam_dense_bias_v:	è=
)assignvariableop_30_adam_dense_1_kernel_v:
èè6
'assignvariableop_31_adam_dense_1_bias_v:	è=
)assignvariableop_32_adam_dense_2_kernel_v:
èè6
'assignvariableop_33_adam_dense_2_bias_v:	è=
)assignvariableop_34_adam_dense_3_kernel_v:
èè6
'assignvariableop_35_adam_dense_3_bias_v:	è<
)assignvariableop_36_adam_dense_4_kernel_v:	è}5
'assignvariableop_37_adam_dense_4_bias_v:}
identity_39¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9¸
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*Þ
valueÔBÑ'B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH¾
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*a
valueXBV'B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ä
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*²
_output_shapes
:::::::::::::::::::::::::::::::::::::::*5
dtypes+
)2'	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0*
validate_shape( ]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0*
validate_shape( ]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0*
validate_shape( ]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0*
validate_shape( ]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0*
validate_shape( ]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0*
validate_shape( ]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_3_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0*
validate_shape( ]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_3_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0*
validate_shape( ]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_4_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0*
validate_shape( ]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_4_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0*
validate_shape( _
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:¤
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	*
validate_shape( _
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0*
validate_shape( _
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0*
validate_shape( _
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0*
validate_shape( _
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_14AssignVariableOpassignvariableop_14_total_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0*
validate_shape( _
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_15AssignVariableOpassignvariableop_15_count_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0*
validate_shape( _
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0*
validate_shape( _
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0*
validate_shape( _
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_18AssignVariableOp'assignvariableop_18_adam_dense_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0*
validate_shape( _
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_19AssignVariableOp%assignvariableop_19_adam_dense_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0*
validate_shape( _
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adam_dense_1_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0*
validate_shape( _
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_21AssignVariableOp'assignvariableop_21_adam_dense_1_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0*
validate_shape( _
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_dense_2_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0*
validate_shape( _
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_23AssignVariableOp'assignvariableop_23_adam_dense_2_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0*
validate_shape( _
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_dense_3_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0*
validate_shape( _
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_25AssignVariableOp'assignvariableop_25_adam_dense_3_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0*
validate_shape( _
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_dense_4_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0*
validate_shape( _
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_27AssignVariableOp'assignvariableop_27_adam_dense_4_bias_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0*
validate_shape( _
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_28AssignVariableOp'assignvariableop_28_adam_dense_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0*
validate_shape( _
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_29AssignVariableOp%assignvariableop_29_adam_dense_bias_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0*
validate_shape( _
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_1_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0*
validate_shape( _
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_31AssignVariableOp'assignvariableop_31_adam_dense_1_bias_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0*
validate_shape( _
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_dense_2_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0*
validate_shape( _
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_33AssignVariableOp'assignvariableop_33_adam_dense_2_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0*
validate_shape( _
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_dense_3_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0*
validate_shape( _
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_35AssignVariableOp'assignvariableop_35_adam_dense_3_bias_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0*
validate_shape( _
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_36AssignVariableOp)assignvariableop_36_adam_dense_4_kernel_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0*
validate_shape( _
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_37AssignVariableOp'assignvariableop_37_adam_dense_4_bias_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0*
validate_shape( 1
NoOpNoOp"/device:CPU:0*
_output_shapes
 
Identity_38Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 W
Identity_39IdentityIdentity_38:output:0^NoOp_1*
T0*
_output_shapes
: "#
identity_39Identity_39:output:0*a
_input_shapesP
N: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_37AssignVariableOp_372(
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
ç

%__inference_dense_3_layer_call_fn_710

inputs
unknown:
èè
	unknown_0:	è
identity¢StatefulPartitionedCallü
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8 *
executor_type *I
fDRB
@__inference_dense_3_layer_call_and_return_conditional_losses_703`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿè: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
 
_user_specified_nameinputs
°

_
@__inference_dropout_layer_call_and_return_conditional_losses_392

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿèS
dropout/ShapeShapeinputs*
T0*
_output_shapes
:*
out_type0¦
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
dtype0*

seed**
seed2 [
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
Truncate( *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿèj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿèZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿè:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
 
_user_specified_nameinputs
ÿ9
	
__inference__wrapped_model_912
dense_inputC
/sequential_dense_matmul_readvariableop_resource:
Óè?
0sequential_dense_biasadd_readvariableop_resource:	èE
1sequential_dense_1_matmul_readvariableop_resource:
èèA
2sequential_dense_1_biasadd_readvariableop_resource:	èE
1sequential_dense_2_matmul_readvariableop_resource:
èèA
2sequential_dense_2_biasadd_readvariableop_resource:	èE
1sequential_dense_3_matmul_readvariableop_resource:
èèA
2sequential_dense_3_biasadd_readvariableop_resource:	èD
1sequential_dense_4_matmul_readvariableop_resource:	è}@
2sequential_dense_4_biasadd_readvariableop_resource:}
identity¢'sequential/dense/BiasAdd/ReadVariableOp¢&sequential/dense/MatMul/ReadVariableOp¢)sequential/dense_1/BiasAdd/ReadVariableOp¢(sequential/dense_1/MatMul/ReadVariableOp¢)sequential/dense_2/BiasAdd/ReadVariableOp¢(sequential/dense_2/MatMul/ReadVariableOp¢)sequential/dense_3/BiasAdd/ReadVariableOp¢(sequential/dense_3/MatMul/ReadVariableOp¢)sequential/dense_4/BiasAdd/ReadVariableOp¢(sequential/dense_4/MatMul/ReadVariableOp
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource* 
_output_shapes
:
Óè*
dtype0·
sequential/dense/MatMulMatMuldense_input.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
transpose_a( *
transpose_b( 
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:è*
dtype0Á
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
data_formatNHWCy
sequential/dense/re_lu/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
èè*
dtype0Ù
sequential/dense_1/MatMulMatMul)sequential/dense/re_lu/Relu:activations:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
transpose_a( *
transpose_b( 
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:è*
dtype0Ç
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
data_formatNHWC}
sequential/dense_1/re_lu/ReluRelu#sequential/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
(sequential/dense_2/MatMul/ReadVariableOpReadVariableOp1sequential_dense_2_matmul_readvariableop_resource* 
_output_shapes
:
èè*
dtype0Û
sequential/dense_2/MatMulMatMul+sequential/dense_1/re_lu/Relu:activations:00sequential/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
transpose_a( *
transpose_b( 
)sequential/dense_2/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:è*
dtype0Ç
sequential/dense_2/BiasAddBiasAdd#sequential/dense_2/MatMul:product:01sequential/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
data_formatNHWC}
sequential/dense_2/re_lu/ReluRelu#sequential/dense_2/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
sequential/dropout/IdentityIdentity+sequential/dense_2/re_lu/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
(sequential/dense_3/MatMul/ReadVariableOpReadVariableOp1sequential_dense_3_matmul_readvariableop_resource* 
_output_shapes
:
èè*
dtype0Ô
sequential/dense_3/MatMulMatMul$sequential/dropout/Identity:output:00sequential/dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
transpose_a( *
transpose_b( 
)sequential/dense_3/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:è*
dtype0Ç
sequential/dense_3/BiasAddBiasAdd#sequential/dense_3/MatMul:product:01sequential/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
data_formatNHWC}
sequential/dense_3/re_lu/ReluRelu#sequential/dense_3/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
sequential/dropout_1/IdentityIdentity+sequential/dense_3/re_lu/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
(sequential/dense_4/MatMul/ReadVariableOpReadVariableOp1sequential_dense_4_matmul_readvariableop_resource*
_output_shapes
:	è}*
dtype0Õ
sequential/dense_4/MatMulMatMul&sequential/dropout_1/Identity:output:00sequential/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*
transpose_a( *
transpose_b( 
)sequential/dense_4/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_4_biasadd_readvariableop_resource*
_output_shapes
:}*
dtype0Æ
sequential/dense_4/BiasAddBiasAdd#sequential/dense_4/MatMul:product:01sequential/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*
data_formatNHWC|
sequential/dense_4/SoftmaxSoftmax#sequential/dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}õ
NoOpNoOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp*^sequential/dense_2/BiasAdd/ReadVariableOp)^sequential/dense_2/MatMul/ReadVariableOp*^sequential/dense_3/BiasAdd/ReadVariableOp)^sequential/dense_3/MatMul/ReadVariableOp*^sequential/dense_4/BiasAdd/ReadVariableOp)^sequential/dense_4/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 s
IdentityIdentity$sequential/dense_4/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÓ: : : : : : : : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2V
)sequential/dense_2/BiasAdd/ReadVariableOp)sequential/dense_2/BiasAdd/ReadVariableOp2T
(sequential/dense_2/MatMul/ReadVariableOp(sequential/dense_2/MatMul/ReadVariableOp2V
)sequential/dense_3/BiasAdd/ReadVariableOp)sequential/dense_3/BiasAdd/ReadVariableOp2T
(sequential/dense_3/MatMul/ReadVariableOp(sequential/dense_3/MatMul/ReadVariableOp2V
)sequential/dense_4/BiasAdd/ReadVariableOp)sequential/dense_4/BiasAdd/ReadVariableOp2T
(sequential/dense_4/MatMul/ReadVariableOp(sequential/dense_4/MatMul/ReadVariableOp:U Q
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ
%
_user_specified_namedense_input
î

ô
@__inference_dense_3_layer_call_and_return_conditional_losses_703

inputs2
matmul_readvariableop_resource:
èè.
biasadd_readvariableop_resource:	è
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
èè*
dtype0
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
transpose_a( *
transpose_b( s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:è*
dtype0
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
data_formatNHWCW

re_lu/ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿèw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 h
IdentityIdentityre_lu/Relu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿè: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
 
_user_specified_nameinputs
ì

ò
>__inference_dense_layer_call_and_return_conditional_losses_606

inputs2
matmul_readvariableop_resource:
Óè.
biasadd_readvariableop_resource:	è
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Óè*
dtype0
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
transpose_a( *
transpose_b( s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:è*
dtype0
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
data_formatNHWCW

re_lu/ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿèw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 h
IdentityIdentityre_lu/Relu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÓ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ
 
_user_specified_nameinputs
ß

ò
@__inference_dense_4_layer_call_and_return_conditional_losses_871

inputs1
matmul_readvariableop_resource:	è}-
biasadd_readvariableop_resource:}
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	è}*
dtype0
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*
transpose_a( *
transpose_b( r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:}*
dtype0
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*
data_formatNHWCV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿè: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
 
_user_specified_nameinputs

d
default_policy_cond_2_true_1599
default_policy_neg_0
placeholder	
default_policy_neg"*
default_policy_negdefault_policy_neg_0*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:) %
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:)%
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ß

ò
@__inference_dense_4_layer_call_and_return_conditional_losses_373

inputs1
matmul_readvariableop_resource:	è}-
biasadd_readvariableop_resource:}
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	è}*
dtype0
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*
transpose_a( *
transpose_b( r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:}*
dtype0
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*
data_formatNHWCV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿè: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
 
_user_specified_nameinputs
°

_
@__inference_dropout_layer_call_and_return_conditional_losses_944

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿèS
dropout/ShapeShapeinputs*
T0*
_output_shapes
:*
out_type0¦
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
dtype0*

seed**
seed2 [
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
Truncate( *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿèj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿèZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿè:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
 
_user_specified_nameinputs
î

ô
@__inference_dense_3_layer_call_and_return_conditional_losses_595

inputs2
matmul_readvariableop_resource:
èè.
biasadd_readvariableop_resource:	è
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
èè*
dtype0
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
transpose_a( *
transpose_b( s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:è*
dtype0
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
data_formatNHWCW

re_lu/ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿèw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 h
IdentityIdentityre_lu/Relu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿè: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
 
_user_specified_nameinputs
²

a
B__inference_dropout_1_layer_call_and_return_conditional_losses_357

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿèS
dropout/ShapeShapeinputs*
T0*
_output_shapes
:*
out_type0¦
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
dtype0*

seed**
seed2 [
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
Truncate( *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿèj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿèZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿè:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
 
_user_specified_nameinputs

`
'__inference_dropout_1_layer_call_fn_362

inputs
identity¢StatefulPartitionedCallä
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè* 
_read_only_resource_inputs
 *
config *0
config_proto 

CPU

GPU2*0J 8 *
executor_type *K
fFRD
B__inference_dropout_1_layer_call_and_return_conditional_losses_357`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿè22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
 
_user_specified_nameinputs
³

b
C__inference_dropout_1_layer_call_and_return_conditional_losses_1033

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿèS
dropout/ShapeShapeinputs*
T0*
_output_shapes
:*
out_type0¦
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
dtype0*

seed**
seed2 [
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
Truncate( *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿèj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿèZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿè:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
 
_user_specified_nameinputs
ó

'default_policy_dropout_1_cond_true_13061
-dropout_mul_default_policy_dense_3_re_lu_relu
dropout_mul_1
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4
optionalfromvalue_5
optionalfromvalue_6R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?
dropout/MulMul-dropout_mul_default_policy_dense_3_re_lu_reludropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿèz
dropout/ShapeShape-dropout_mul_default_policy_dense_3_re_lu_relu*
T0*
_output_shapes
:*
out_type0¦
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
dtype0*

seed *
seed2 [
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
Truncate( *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿèj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
OptionalFromValueOptionalFromValuedropout/Const:output:0*
Toutput_types
2*
_output_shapes
: :êèÒ
OptionalFromValue_1OptionalFromValuedropout/Mul:z:0*
Toutput_types
2*
_output_shapes
: :êèÒ
OptionalFromValue_2OptionalFromValuedropout/Shape:output:0*
Toutput_types
2*
_output_shapes
: :êèÏ
OptionalFromValue_3OptionalFromValue-dropout/random_uniform/RandomUniform:output:0*
Toutput_types
2*
_output_shapes
: :êèÒ
OptionalFromValue_4OptionalFromValuedropout/GreaterEqual/y:output:0*
Toutput_types
2*
_output_shapes
: :êèÒ
OptionalFromValue_5OptionalFromValuedropout/GreaterEqual:z:0*
Toutput_types
2
*
_output_shapes
: :êèÈ
OptionalFromValue_6OptionalFromValuedropout/Cast:y:0*
Toutput_types
2*
_output_shapes
: :êèÒ""
dropout_mul_1dropout/Mul_1:z:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0"5
optionalfromvalue_5OptionalFromValue_5:optional:0"5
optionalfromvalue_6OptionalFromValue_6:optional:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿè:. *
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
Ç"
Ø
C__inference_sequential_layer_call_and_return_conditional_losses_800
dense_input 
dense_300494:
Óè
dense_300496:	è"
dense_1_300499:
èè
dense_1_300501:	è"
dense_2_300504:
èè
dense_2_300506:	è"
dense_3_300510:
èè
dense_3_300512:	è!
dense_4_300516:	è}
dense_4_300518:}
identity¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢dense_3/StatefulPartitionedCall¢dense_4/StatefulPartitionedCall
dense/StatefulPartitionedCallStatefulPartitionedCalldense_inputdense_300494dense_300496*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8 *
executor_type *G
fBR@
>__inference_dense_layer_call_and_return_conditional_losses_455°
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_300499dense_1_300501*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8 *
executor_type *I
fDRB
@__inference_dense_1_layer_call_and_return_conditional_losses_721²
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_300504dense_2_300506*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8 *
executor_type *I
fDRB
@__inference_dense_2_layer_call_and_return_conditional_losses_338ü
dropout/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè* 
_read_only_resource_inputs
 *
config *0
config_proto 

CPU

GPU2*0J 8 *
executor_type *I
fDRB
@__inference_dropout_layer_call_and_return_conditional_losses_622ª
dense_3/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_3_300510dense_3_300512*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8 *
executor_type *I
fDRB
@__inference_dense_3_layer_call_and_return_conditional_losses_703
dropout_1/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè* 
_read_only_resource_inputs
 *
config *0
config_proto 

CPU

GPU2*0J 8 *
executor_type *K
fFRD
B__inference_dropout_1_layer_call_and_return_conditional_losses_687«
dense_4/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_4_300516dense_4_300518*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8 *
executor_type *I
fDRB
@__inference_dense_4_layer_call_and_return_conditional_losses_373î
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 w
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÓ: : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:U Q
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ
%
_user_specified_namedense_input
ì

ò
>__inference_dense_layer_call_and_return_conditional_losses_455

inputs2
matmul_readvariableop_resource:
Óè.
biasadd_readvariableop_resource:	è
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Óè*
dtype0
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
transpose_a( *
transpose_b( s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:è*
dtype0
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
data_formatNHWCW

re_lu/ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿèw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 h
IdentityIdentityre_lu/Relu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÓ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ
 
_user_specified_nameinputs
O

__inference__traced_save_860
file_prefix+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop4
0savev2_adam_dense_3_kernel_m_read_readvariableop2
.savev2_adam_dense_3_bias_m_read_readvariableop4
0savev2_adam_dense_4_kernel_m_read_readvariableop2
.savev2_adam_dense_4_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop4
0savev2_adam_dense_3_kernel_v_read_readvariableop2
.savev2_adam_dense_3_bias_v_read_readvariableop4
0savev2_adam_dense_4_kernel_v_read_readvariableop2
.savev2_adam_dense_4_bias_v_read_readvariableop
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
: w

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: *
	separator L

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
: µ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*Þ
valueÔBÑ'B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH»
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*a
valueXBV'B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ë
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop0savev2_adam_dense_3_kernel_m_read_readvariableop.savev2_adam_dense_3_bias_m_read_readvariableop0savev2_adam_dense_4_kernel_m_read_readvariableop.savev2_adam_dense_4_bias_m_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableop0savev2_adam_dense_3_kernel_v_read_readvariableop.savev2_adam_dense_3_bias_v_read_readvariableop0savev2_adam_dense_4_kernel_v_read_readvariableop.savev2_adam_dense_4_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *5
dtypes+
)2'	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:*

axis ¢
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 *
delete_old_dirs(f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0*À
_input_shapes®
«: :
Óè:è:
èè:è:
èè:è:
èè:è:	è}:}: : : : : : : : :
Óè:è:
èè:è:
èè:è:
èè:è:	è}:}:
Óè:è:
èè:è:
èè:è:
èè:è:	è}:}: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
Óè:!

_output_shapes	
:è:&"
 
_output_shapes
:
èè:!

_output_shapes	
:è:&"
 
_output_shapes
:
èè:!

_output_shapes	
:è:&"
 
_output_shapes
:
èè:!

_output_shapes	
:è:%	!

_output_shapes
:	è}: 


_output_shapes
:}:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :
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
: :&"
 
_output_shapes
:
Óè:!

_output_shapes	
:è:&"
 
_output_shapes
:
èè:!

_output_shapes	
:è:&"
 
_output_shapes
:
èè:!

_output_shapes	
:è:&"
 
_output_shapes
:
èè:!

_output_shapes	
:è:%!

_output_shapes
:	è}: 

_output_shapes
:}:&"
 
_output_shapes
:
Óè:!

_output_shapes	
:è:&"
 
_output_shapes
:
èè:! 

_output_shapes	
:è:&!"
 
_output_shapes
:
èè:!"

_output_shapes	
:è:&#"
 
_output_shapes
:
èè:!$

_output_shapes	
:è:%%!

_output_shapes
:	è}: &

_output_shapes
:}:'

_output_shapes
: 
ç

%__inference_dense_1_layer_call_fn_728

inputs
unknown:
èè
	unknown_0:	è
identity¢StatefulPartitionedCallü
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8 *
executor_type *I
fDRB
@__inference_dense_1_layer_call_and_return_conditional_losses_721`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿè: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
 
_user_specified_nameinputs
ç

%__inference_dense_2_layer_call_fn_345

inputs
unknown:
èè
	unknown_0:	è
identity¢StatefulPartitionedCallü
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8 *
executor_type *I
fDRB
@__inference_dense_2_layer_call_and_return_conditional_losses_338`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿè: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
 
_user_specified_nameinputs
Ã
x
default_policy_cond_1_true_1586"
default_policy_cond_identity_0	
placeholder	 
default_policy_cond_identity	">
default_policy_cond_identitydefault_policy_cond_identity_0*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:) %
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:)%
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ù
`
B__inference_dropout_1_layer_call_and_return_conditional_losses_687

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿè:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
 
_user_specified_nameinputs
ã

#__inference_dense_layer_call_fn_462

inputs
unknown:
Óè
	unknown_0:	è
identity¢StatefulPartitionedCallú
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8 *
executor_type *G
fBR@
>__inference_dense_layer_call_and_return_conditional_losses_455`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÓ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ
 
_user_specified_nameinputs
¨
k
 default_policy_cond_1_false_1587
placeholder	
default_policy_argmax_0	
default_policy_argmax	"0
default_policy_argmaxdefault_policy_argmax_0*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:) %
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:)%
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Õ


)__inference_sequential_layer_call_fn_1006
dense_input
unknown:
Óè
	unknown_0:	è
	unknown_1:
èè
	unknown_2:	è
	unknown_3:
èè
	unknown_4:	è
	unknown_5:
èè
	unknown_6:	è
	unknown_7:	è}
	unknown_8:}
identity¢StatefulPartitionedCallë
StatefulPartitionedCallStatefulPartitionedCalldense_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*,
_read_only_resource_inputs

	
*
config *0
config_proto 

CPU

GPU2*0J 8 *
executor_type *L
fGRE
C__inference_sequential_layer_call_and_return_conditional_losses_991`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÓ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ
%
_user_specified_namedense_input
î

ô
@__inference_dense_1_layer_call_and_return_conditional_losses_721

inputs2
matmul_readvariableop_resource:
èè.
biasadd_readvariableop_resource:	è
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
èè*
dtype0
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
transpose_a( *
transpose_b( s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:è*
dtype0
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
data_formatNHWCW

re_lu/ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿèw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 h
IdentityIdentityre_lu/Relu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿè: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
 
_user_specified_nameinputs
½

I
cond_true_1555 
shape_default_policy_truediv
random_uniform	a
ShapeShapeshape_default_policy_truediv*
T0*
_output_shapes
:*
out_type0]
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
valueB:
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_maskn
random_uniform/shapePackstrided_slice:output:0*
N*
T0*
_output_shapes
:*

axis T
random_uniform/minConst*
_output_shapes
: *
dtype0	*
value	B	 R T
random_uniform/maxConst*
_output_shapes
: *
dtype0	*
value	B	 R}«
random_uniform_0RandomUniformIntrandom_uniform/shape:output:0random_uniform/min:output:0random_uniform/max:output:0*
T0*

Tout0	*

seed *
seed2 "+
random_uniformrandom_uniform_0:output:0*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ}:- )
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
±%

C__inference_sequential_layer_call_and_return_conditional_losses_965
dense_input 
dense_300525:
Óè
dense_300527:	è"
dense_1_300530:
èè
dense_1_300532:	è"
dense_2_300535:
èè
dense_2_300537:	è"
dense_3_300541:
èè
dense_3_300543:	è!
dense_4_300547:	è}
dense_4_300549:}
identity¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢dense_3/StatefulPartitionedCall¢dense_4/StatefulPartitionedCall¢dropout/StatefulPartitionedCall¢!dropout_1/StatefulPartitionedCall
dense/StatefulPartitionedCallStatefulPartitionedCalldense_inputdense_300525dense_300527*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8 *
executor_type *G
fBR@
>__inference_dense_layer_call_and_return_conditional_losses_455°
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_300530dense_1_300532*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8 *
executor_type *I
fDRB
@__inference_dense_1_layer_call_and_return_conditional_losses_721²
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_300535dense_2_300537*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8 *
executor_type *I
fDRB
@__inference_dense_2_layer_call_and_return_conditional_losses_338
dropout/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè* 
_read_only_resource_inputs
 *
config *0
config_proto 

CPU

GPU2*0J 8 *
executor_type *I
fDRB
@__inference_dropout_layer_call_and_return_conditional_losses_944²
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_3_300541dense_3_300543*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8 *
executor_type *I
fDRB
@__inference_dense_3_layer_call_and_return_conditional_losses_703²
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè* 
_read_only_resource_inputs
 *
config *0
config_proto 

CPU

GPU2*0J 8 *
executor_type *K
fFRD
B__inference_dropout_1_layer_call_and_return_conditional_losses_357³
dense_4/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_4_300547dense_4_300549*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8 *
executor_type *I
fDRB
@__inference_dense_4_layer_call_and_return_conditional_losses_373´
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 w
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÓ: : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall:U Q
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ
%
_user_specified_namedense_input
î

ô
@__inference_dense_1_layer_call_and_return_conditional_losses_617

inputs2
matmul_readvariableop_resource:
èè.
biasadd_readvariableop_resource:	è
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
èè*
dtype0
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
transpose_a( *
transpose_b( s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:è*
dtype0
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
data_formatNHWCW

re_lu/ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿèw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 h
IdentityIdentityre_lu/Relu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿè: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
 
_user_specified_nameinputs
¸"
Ó
C__inference_sequential_layer_call_and_return_conditional_losses_749

inputs 
dense_300178:
Óè
dense_300180:	è"
dense_1_300195:
èè
dense_1_300197:	è"
dense_2_300212:
èè
dense_2_300214:	è"
dense_3_300236:
èè
dense_3_300238:	è!
dense_4_300260:	è}
dense_4_300262:}
identity¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢dense_3/StatefulPartitionedCall¢dense_4/StatefulPartitionedCall
dense/StatefulPartitionedCallStatefulPartitionedCallinputsdense_300178dense_300180*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8 *
executor_type *G
fBR@
>__inference_dense_layer_call_and_return_conditional_losses_455°
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_300195dense_1_300197*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8 *
executor_type *I
fDRB
@__inference_dense_1_layer_call_and_return_conditional_losses_721²
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_300212dense_2_300214*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8 *
executor_type *I
fDRB
@__inference_dense_2_layer_call_and_return_conditional_losses_338ü
dropout/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè* 
_read_only_resource_inputs
 *
config *0
config_proto 

CPU

GPU2*0J 8 *
executor_type *I
fDRB
@__inference_dropout_layer_call_and_return_conditional_losses_622ª
dense_3/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_3_300236dense_3_300238*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8 *
executor_type *I
fDRB
@__inference_dense_3_layer_call_and_return_conditional_losses_703
dropout_1/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè* 
_read_only_resource_inputs
 *
config *0
config_proto 

CPU

GPU2*0J 8 *
executor_type *K
fFRD
B__inference_dropout_1_layer_call_and_return_conditional_losses_687«
dense_4/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_4_300260dense_4_300262*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8 *
executor_type *I
fDRB
@__inference_dense_4_layer_call_and_return_conditional_losses_373î
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 w
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÓ: : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ
 
_user_specified_nameinputs
ã

%__inference_dense_4_layer_call_fn_380

inputs
unknown:	è}
	unknown_0:}
identity¢StatefulPartitionedCallû
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*$
_read_only_resource_inputs
*
config *0
config_proto 

CPU

GPU2*0J 8 *
executor_type *I
fDRB
@__inference_dense_4_layer_call_and_return_conditional_losses_373`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿè: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
 
_user_specified_nameinputs
Ù
`
B__inference_dropout_1_layer_call_and_return_conditional_losses_805

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿè:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
 
_user_specified_nameinputs
¬0
á
C__inference_sequential_layer_call_and_return_conditional_losses_444

inputs8
$dense_matmul_readvariableop_resource:
Óè4
%dense_biasadd_readvariableop_resource:	è:
&dense_1_matmul_readvariableop_resource:
èè6
'dense_1_biasadd_readvariableop_resource:	è:
&dense_2_matmul_readvariableop_resource:
èè6
'dense_2_biasadd_readvariableop_resource:	è:
&dense_3_matmul_readvariableop_resource:
èè6
'dense_3_biasadd_readvariableop_resource:	è9
&dense_4_matmul_readvariableop_resource:	è}5
'dense_4_biasadd_readvariableop_resource:}
identity¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOp¢dense_2/BiasAdd/ReadVariableOp¢dense_2/MatMul/ReadVariableOp¢dense_3/BiasAdd/ReadVariableOp¢dense_3/MatMul/ReadVariableOp¢dense_4/BiasAdd/ReadVariableOp¢dense_4/MatMul/ReadVariableOp
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
Óè*
dtype0
dense/MatMulMatMulinputs#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
transpose_a( *
transpose_b( 
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:è*
dtype0 
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
data_formatNHWCc
dense/re_lu/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
èè*
dtype0¸
dense_1/MatMulMatMuldense/re_lu/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
transpose_a( *
transpose_b( 
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:è*
dtype0¦
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
data_formatNHWCg
dense_1/re_lu/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource* 
_output_shapes
:
èè*
dtype0º
dense_2/MatMulMatMul dense_1/re_lu/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
transpose_a( *
transpose_b( 
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:è*
dtype0¦
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
data_formatNHWCg
dense_2/re_lu/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿèq
dropout/IdentityIdentity dense_2/re_lu/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource* 
_output_shapes
:
èè*
dtype0³
dense_3/MatMulMatMuldropout/Identity:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
transpose_a( *
transpose_b( 
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes	
:è*
dtype0¦
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
data_formatNHWCg
dense_3/re_lu/ReluReludense_3/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿès
dropout_1/IdentityIdentity dense_3/re_lu/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes
:	è}*
dtype0´
dense_4/MatMulMatMuldropout_1/Identity:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*
transpose_a( *
transpose_b( 
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:}*
dtype0¥
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*
data_formatNHWCf
dense_4/SoftmaxSoftmaxdense_4/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 h
IdentityIdentitydense_4/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÓ: : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ
 
_user_specified_nameinputs
Ã
C
'__inference_dropout_1_layer_call_fn_692

inputs
identityÔ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè* 
_read_only_resource_inputs
 *
config *0
config_proto 

CPU

GPU2*0J 8 *
executor_type *K
fFRD
B__inference_dropout_1_layer_call_and_return_conditional_losses_687a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿè:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
 
_user_specified_nameinputs
Å

ú
(__inference_sequential_layer_call_fn_779

inputs
unknown:
Óè
	unknown_0:	è
	unknown_1:
èè
	unknown_2:	è
	unknown_3:
èè
	unknown_4:	è
	unknown_5:
èè
	unknown_6:	è
	unknown_7:	è}
	unknown_8:}
identity¢StatefulPartitionedCallæ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*,
_read_only_resource_inputs

	
*
config *0
config_proto 

CPU

GPU2*0J 8 *
executor_type *L
fGRE
C__inference_sequential_layer_call_and_return_conditional_losses_749`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÓ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ
 
_user_specified_nameinputs
¿
A
%__inference_dropout_layer_call_fn_627

inputs
identityÒ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè* 
_read_only_resource_inputs
 *
config *0
config_proto 

CPU

GPU2*0J 8 *
executor_type *I
fDRB
@__inference_dropout_layer_call_and_return_conditional_losses_622a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿè:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
 
_user_specified_nameinputs"¿<
save/Const:0save/Identity:0save/restore_all (5 @F8"½
global_step­ª
§
default_policy/global_step:0!default_policy/global_step/Assign0default_policy/global_step/Read/ReadVariableOp:0(2.default_policy/global_step/Initializer/zeros:0H"#
train_op

default_policy/Adam"ø 
trainable_variablesà Ý 
³
default_policy/layer_1/kernel:0$default_policy/layer_1/kernel/Assign3default_policy/layer_1/kernel/Read/ReadVariableOp:0(21default_policy/layer_1/kernel/Initializer/mul_1:08
«
default_policy/layer_1/bias:0"default_policy/layer_1/bias/Assign1default_policy/layer_1/bias/Read/ReadVariableOp:0(2/default_policy/layer_1/bias/Initializer/zeros:08
³
default_policy/layer_2/kernel:0$default_policy/layer_2/kernel/Assign3default_policy/layer_2/kernel/Read/ReadVariableOp:0(21default_policy/layer_2/kernel/Initializer/mul_1:08
«
default_policy/layer_2/bias:0"default_policy/layer_2/bias/Assign1default_policy/layer_2/bias/Read/ReadVariableOp:0(2/default_policy/layer_2/bias/Initializer/zeros:08
³
default_policy/layer_3/kernel:0$default_policy/layer_3/kernel/Assign3default_policy/layer_3/kernel/Read/ReadVariableOp:0(21default_policy/layer_3/kernel/Initializer/mul_1:08
«
default_policy/layer_3/bias:0"default_policy/layer_3/bias/Assign1default_policy/layer_3/bias/Read/ReadVariableOp:0(2/default_policy/layer_3/bias/Initializer/zeros:08
³
default_policy/layer_4/kernel:0$default_policy/layer_4/kernel/Assign3default_policy/layer_4/kernel/Read/ReadVariableOp:0(21default_policy/layer_4/kernel/Initializer/mul_1:08
«
default_policy/layer_4/bias:0"default_policy/layer_4/bias/Assign1default_policy/layer_4/bias/Read/ReadVariableOp:0(2/default_policy/layer_4/bias/Initializer/zeros:08
¿
"default_policy/action_out/kernel:0'default_policy/action_out/kernel/Assign6default_policy/action_out/kernel/Read/ReadVariableOp:0(24default_policy/action_out/kernel/Initializer/mul_1:08
·
 default_policy/action_out/bias:0%default_policy/action_out/bias/Assign4default_policy/action_out/bias/Read/ReadVariableOp:0(22default_policy/action_out/bias/Initializer/zeros:08
×
(default_policy/layer_val_hidden/kernel:0-default_policy/layer_val_hidden/kernel/Assign<default_policy/layer_val_hidden/kernel/Read/ReadVariableOp:0(2:default_policy/layer_val_hidden/kernel/Initializer/mul_1:08
Ï
&default_policy/layer_val_hidden/bias:0+default_policy/layer_val_hidden/bias/Assign:default_policy/layer_val_hidden/bias/Read/ReadVariableOp:0(28default_policy/layer_val_hidden/bias/Initializer/zeros:08
»
!default_policy/value_out/kernel:0&default_policy/value_out/kernel/Assign5default_policy/value_out/kernel/Read/ReadVariableOp:0(23default_policy/value_out/kernel/Initializer/mul_1:08
³
default_policy/value_out/bias:0$default_policy/value_out/bias/Assign3default_policy/value_out/bias/Read/ReadVariableOp:0(21default_policy/value_out/bias/Initializer/zeros:08

default_policy/kernel:0!default_policy/AssignVariableOp_7+default_policy/kernel/Read/ReadVariableOp:0(2)default_policy/kernel/Initializer/mul_1:08

default_policy/bias:0!default_policy/AssignVariableOp_4)default_policy/bias/Read/ReadVariableOp:0(2'default_policy/bias/Initializer/zeros:08

default_policy/kernel_1:0"default_policy/AssignVariableOp_13-default_policy/kernel_1/Read/ReadVariableOp:0(2+default_policy/kernel_1/Initializer/mul_1:08

default_policy/bias_1:0"default_policy/AssignVariableOp_10+default_policy/bias_1/Read/ReadVariableOp:0(2)default_policy/bias_1/Initializer/zeros:08

default_policy/kernel_2:0"default_policy/AssignVariableOp_19-default_policy/kernel_2/Read/ReadVariableOp:0(2+default_policy/kernel_2/Initializer/mul_1:08

default_policy/bias_2:0"default_policy/AssignVariableOp_16+default_policy/bias_2/Read/ReadVariableOp:0(2)default_policy/bias_2/Initializer/zeros:08

default_policy/kernel_3:0"default_policy/AssignVariableOp_25-default_policy/kernel_3/Read/ReadVariableOp:0(2+default_policy/kernel_3/Initializer/mul_1:08

default_policy/bias_3:0"default_policy/AssignVariableOp_22+default_policy/bias_3/Read/ReadVariableOp:0(2)default_policy/bias_3/Initializer/zeros:08
¨
default_policy/kernel_4:0"default_policy/AssignVariableOp_31-default_policy/kernel_4/Read/ReadVariableOp:0(24default_policy/kernel_4/Initializer/random_uniform:08

default_policy/bias_4:0"default_policy/AssignVariableOp_28+default_policy/bias_4/Read/ReadVariableOp:0(2)default_policy/bias_4/Initializer/zeros:08"È
	variables¹µ
³
default_policy/layer_1/kernel:0$default_policy/layer_1/kernel/Assign3default_policy/layer_1/kernel/Read/ReadVariableOp:0(21default_policy/layer_1/kernel/Initializer/mul_1:08
«
default_policy/layer_1/bias:0"default_policy/layer_1/bias/Assign1default_policy/layer_1/bias/Read/ReadVariableOp:0(2/default_policy/layer_1/bias/Initializer/zeros:08
³
default_policy/layer_2/kernel:0$default_policy/layer_2/kernel/Assign3default_policy/layer_2/kernel/Read/ReadVariableOp:0(21default_policy/layer_2/kernel/Initializer/mul_1:08
«
default_policy/layer_2/bias:0"default_policy/layer_2/bias/Assign1default_policy/layer_2/bias/Read/ReadVariableOp:0(2/default_policy/layer_2/bias/Initializer/zeros:08
³
default_policy/layer_3/kernel:0$default_policy/layer_3/kernel/Assign3default_policy/layer_3/kernel/Read/ReadVariableOp:0(21default_policy/layer_3/kernel/Initializer/mul_1:08
«
default_policy/layer_3/bias:0"default_policy/layer_3/bias/Assign1default_policy/layer_3/bias/Read/ReadVariableOp:0(2/default_policy/layer_3/bias/Initializer/zeros:08
³
default_policy/layer_4/kernel:0$default_policy/layer_4/kernel/Assign3default_policy/layer_4/kernel/Read/ReadVariableOp:0(21default_policy/layer_4/kernel/Initializer/mul_1:08
«
default_policy/layer_4/bias:0"default_policy/layer_4/bias/Assign1default_policy/layer_4/bias/Read/ReadVariableOp:0(2/default_policy/layer_4/bias/Initializer/zeros:08
¿
"default_policy/action_out/kernel:0'default_policy/action_out/kernel/Assign6default_policy/action_out/kernel/Read/ReadVariableOp:0(24default_policy/action_out/kernel/Initializer/mul_1:08
·
 default_policy/action_out/bias:0%default_policy/action_out/bias/Assign4default_policy/action_out/bias/Read/ReadVariableOp:0(22default_policy/action_out/bias/Initializer/zeros:08
×
(default_policy/layer_val_hidden/kernel:0-default_policy/layer_val_hidden/kernel/Assign<default_policy/layer_val_hidden/kernel/Read/ReadVariableOp:0(2:default_policy/layer_val_hidden/kernel/Initializer/mul_1:08
Ï
&default_policy/layer_val_hidden/bias:0+default_policy/layer_val_hidden/bias/Assign:default_policy/layer_val_hidden/bias/Read/ReadVariableOp:0(28default_policy/layer_val_hidden/bias/Initializer/zeros:08
»
!default_policy/value_out/kernel:0&default_policy/value_out/kernel/Assign5default_policy/value_out/kernel/Read/ReadVariableOp:0(23default_policy/value_out/kernel/Initializer/mul_1:08
³
default_policy/value_out/bias:0$default_policy/value_out/bias/Assign3default_policy/value_out/bias/Read/ReadVariableOp:0(21default_policy/value_out/bias/Initializer/zeros:08

default_policy/kernel:0!default_policy/AssignVariableOp_7+default_policy/kernel/Read/ReadVariableOp:0(2)default_policy/kernel/Initializer/mul_1:08

default_policy/bias:0!default_policy/AssignVariableOp_4)default_policy/bias/Read/ReadVariableOp:0(2'default_policy/bias/Initializer/zeros:08

default_policy/kernel_1:0"default_policy/AssignVariableOp_13-default_policy/kernel_1/Read/ReadVariableOp:0(2+default_policy/kernel_1/Initializer/mul_1:08

default_policy/bias_1:0"default_policy/AssignVariableOp_10+default_policy/bias_1/Read/ReadVariableOp:0(2)default_policy/bias_1/Initializer/zeros:08

default_policy/kernel_2:0"default_policy/AssignVariableOp_19-default_policy/kernel_2/Read/ReadVariableOp:0(2+default_policy/kernel_2/Initializer/mul_1:08

default_policy/bias_2:0"default_policy/AssignVariableOp_16+default_policy/bias_2/Read/ReadVariableOp:0(2)default_policy/bias_2/Initializer/zeros:08

default_policy/kernel_3:0"default_policy/AssignVariableOp_25-default_policy/kernel_3/Read/ReadVariableOp:0(2+default_policy/kernel_3/Initializer/mul_1:08

default_policy/bias_3:0"default_policy/AssignVariableOp_22+default_policy/bias_3/Read/ReadVariableOp:0(2)default_policy/bias_3/Initializer/zeros:08
¨
default_policy/kernel_4:0"default_policy/AssignVariableOp_31-default_policy/kernel_4/Read/ReadVariableOp:0(24default_policy/kernel_4/Initializer/random_uniform:08

default_policy/bias_4:0"default_policy/AssignVariableOp_28+default_policy/bias_4/Read/ReadVariableOp:0(2)default_policy/bias_4/Initializer/zeros:08
®
default_policy/dense/kernel/m:0!default_policy/AssignVariableOp_83default_policy/dense/kernel/m/Read/ReadVariableOp:0(21default_policy/dense/kernel/m/Initializer/zeros:0
¨
default_policy/dense/bias/m:0!default_policy/AssignVariableOp_51default_policy/dense/bias/m/Read/ReadVariableOp:0(2/default_policy/dense/bias/m/Initializer/zeros:0
µ
!default_policy/dense_1/kernel/m:0"default_policy/AssignVariableOp_145default_policy/dense_1/kernel/m/Read/ReadVariableOp:0(23default_policy/dense_1/kernel/m/Initializer/zeros:0
¯
default_policy/dense_1/bias/m:0"default_policy/AssignVariableOp_113default_policy/dense_1/bias/m/Read/ReadVariableOp:0(21default_policy/dense_1/bias/m/Initializer/zeros:0
µ
!default_policy/dense_2/kernel/m:0"default_policy/AssignVariableOp_205default_policy/dense_2/kernel/m/Read/ReadVariableOp:0(23default_policy/dense_2/kernel/m/Initializer/zeros:0
¯
default_policy/dense_2/bias/m:0"default_policy/AssignVariableOp_173default_policy/dense_2/bias/m/Read/ReadVariableOp:0(21default_policy/dense_2/bias/m/Initializer/zeros:0
µ
!default_policy/dense_3/kernel/m:0"default_policy/AssignVariableOp_265default_policy/dense_3/kernel/m/Read/ReadVariableOp:0(23default_policy/dense_3/kernel/m/Initializer/zeros:0
¯
default_policy/dense_3/bias/m:0"default_policy/AssignVariableOp_233default_policy/dense_3/bias/m/Read/ReadVariableOp:0(21default_policy/dense_3/bias/m/Initializer/zeros:0
µ
!default_policy/dense_4/kernel/m:0"default_policy/AssignVariableOp_325default_policy/dense_4/kernel/m/Read/ReadVariableOp:0(23default_policy/dense_4/kernel/m/Initializer/zeros:0
¯
default_policy/dense_4/bias/m:0"default_policy/AssignVariableOp_293default_policy/dense_4/bias/m/Read/ReadVariableOp:0(21default_policy/dense_4/bias/m/Initializer/zeros:0
®
default_policy/dense/kernel/v:0!default_policy/AssignVariableOp_93default_policy/dense/kernel/v/Read/ReadVariableOp:0(21default_policy/dense/kernel/v/Initializer/zeros:0
¨
default_policy/dense/bias/v:0!default_policy/AssignVariableOp_61default_policy/dense/bias/v/Read/ReadVariableOp:0(2/default_policy/dense/bias/v/Initializer/zeros:0
µ
!default_policy/dense_1/kernel/v:0"default_policy/AssignVariableOp_155default_policy/dense_1/kernel/v/Read/ReadVariableOp:0(23default_policy/dense_1/kernel/v/Initializer/zeros:0
¯
default_policy/dense_1/bias/v:0"default_policy/AssignVariableOp_123default_policy/dense_1/bias/v/Read/ReadVariableOp:0(21default_policy/dense_1/bias/v/Initializer/zeros:0
µ
!default_policy/dense_2/kernel/v:0"default_policy/AssignVariableOp_215default_policy/dense_2/kernel/v/Read/ReadVariableOp:0(23default_policy/dense_2/kernel/v/Initializer/zeros:0
¯
default_policy/dense_2/bias/v:0"default_policy/AssignVariableOp_183default_policy/dense_2/bias/v/Read/ReadVariableOp:0(21default_policy/dense_2/bias/v/Initializer/zeros:0
µ
!default_policy/dense_3/kernel/v:0"default_policy/AssignVariableOp_275default_policy/dense_3/kernel/v/Read/ReadVariableOp:0(23default_policy/dense_3/kernel/v/Initializer/zeros:0
¯
default_policy/dense_3/bias/v:0"default_policy/AssignVariableOp_243default_policy/dense_3/bias/v/Read/ReadVariableOp:0(21default_policy/dense_3/bias/v/Initializer/zeros:0
µ
!default_policy/dense_4/kernel/v:0"default_policy/AssignVariableOp_335default_policy/dense_4/kernel/v/Read/ReadVariableOp:0(23default_policy/dense_4/kernel/v/Initializer/zeros:0
v
default_policy/Adam/decay:0"default_policy/AssignVariableOp_36/default_policy/Adam/decay/Read/ReadVariableOp:0(H
x
default_policy/Adam/beta_2:0"default_policy/AssignVariableOp_350default_policy/Adam/beta_2/Read/ReadVariableOp:0(H
x
default_policy/Adam/beta_1:0"default_policy/AssignVariableOp_340default_policy/Adam/beta_1/Read/ReadVariableOp:0(H
t
default_policy/Adam/iter:0"default_policy/AssignVariableOp_37.default_policy/Adam/iter/Read/ReadVariableOp:0(H
¯
default_policy/dense_4/bias/v:0"default_policy/AssignVariableOp_303default_policy/dense_4/bias/v/Read/ReadVariableOp:0(21default_policy/dense_4/bias/v/Initializer/zeros:0
©
default_policy/timestep_1:0 default_policy/timestep_1/Assign/default_policy/timestep_1/Read/ReadVariableOp:0(25default_policy/timestep_1/Initializer/initial_value:0
¡
default_policy/kl_coeff:0default_policy/kl_coeff/Assign-default_policy/kl_coeff/Read/ReadVariableOp:0(23default_policy/kl_coeff/Initializer/initial_value:0
µ
default_policy/entropy_coeff:0#default_policy/entropy_coeff/Assign2default_policy/entropy_coeff/Read/ReadVariableOp:0(28default_policy/entropy_coeff/Initializer/initial_value:0

default_policy/lr:0default_policy/lr/Assign'default_policy/lr/Read/ReadVariableOp:0(2-default_policy/lr/Initializer/initial_value:0
§
default_policy/global_step:0!default_policy/global_step/Assign0default_policy/global_step/Read/ReadVariableOp:0(2.default_policy/global_step/Initializer/zeros:0H
­
default_policy/beta1_power:0!default_policy/beta1_power/Assign0default_policy/beta1_power/Read/ReadVariableOp:0(26default_policy/beta1_power/Initializer/initial_value:0
­
default_policy/beta2_power:0!default_policy/beta2_power/Assign0default_policy/beta2_power/Read/ReadVariableOp:0(26default_policy/beta2_power/Initializer/initial_value:0

3default_policy/default_policy/layer_1/kernel/Adam:08default_policy/default_policy/layer_1/kernel/Adam/AssignGdefault_policy/default_policy/layer_1/kernel/Adam/Read/ReadVariableOp:0(2Edefault_policy/default_policy/layer_1/kernel/Adam/Initializer/zeros:0

5default_policy/default_policy/layer_1/kernel/Adam_1:0:default_policy/default_policy/layer_1/kernel/Adam_1/AssignIdefault_policy/default_policy/layer_1/kernel/Adam_1/Read/ReadVariableOp:0(2Gdefault_policy/default_policy/layer_1/kernel/Adam_1/Initializer/zeros:0
ù
1default_policy/default_policy/layer_1/bias/Adam:06default_policy/default_policy/layer_1/bias/Adam/AssignEdefault_policy/default_policy/layer_1/bias/Adam/Read/ReadVariableOp:0(2Cdefault_policy/default_policy/layer_1/bias/Adam/Initializer/zeros:0

3default_policy/default_policy/layer_1/bias/Adam_1:08default_policy/default_policy/layer_1/bias/Adam_1/AssignGdefault_policy/default_policy/layer_1/bias/Adam_1/Read/ReadVariableOp:0(2Edefault_policy/default_policy/layer_1/bias/Adam_1/Initializer/zeros:0

3default_policy/default_policy/layer_2/kernel/Adam:08default_policy/default_policy/layer_2/kernel/Adam/AssignGdefault_policy/default_policy/layer_2/kernel/Adam/Read/ReadVariableOp:0(2Edefault_policy/default_policy/layer_2/kernel/Adam/Initializer/zeros:0

5default_policy/default_policy/layer_2/kernel/Adam_1:0:default_policy/default_policy/layer_2/kernel/Adam_1/AssignIdefault_policy/default_policy/layer_2/kernel/Adam_1/Read/ReadVariableOp:0(2Gdefault_policy/default_policy/layer_2/kernel/Adam_1/Initializer/zeros:0
ù
1default_policy/default_policy/layer_2/bias/Adam:06default_policy/default_policy/layer_2/bias/Adam/AssignEdefault_policy/default_policy/layer_2/bias/Adam/Read/ReadVariableOp:0(2Cdefault_policy/default_policy/layer_2/bias/Adam/Initializer/zeros:0

3default_policy/default_policy/layer_2/bias/Adam_1:08default_policy/default_policy/layer_2/bias/Adam_1/AssignGdefault_policy/default_policy/layer_2/bias/Adam_1/Read/ReadVariableOp:0(2Edefault_policy/default_policy/layer_2/bias/Adam_1/Initializer/zeros:0

3default_policy/default_policy/layer_3/kernel/Adam:08default_policy/default_policy/layer_3/kernel/Adam/AssignGdefault_policy/default_policy/layer_3/kernel/Adam/Read/ReadVariableOp:0(2Edefault_policy/default_policy/layer_3/kernel/Adam/Initializer/zeros:0

5default_policy/default_policy/layer_3/kernel/Adam_1:0:default_policy/default_policy/layer_3/kernel/Adam_1/AssignIdefault_policy/default_policy/layer_3/kernel/Adam_1/Read/ReadVariableOp:0(2Gdefault_policy/default_policy/layer_3/kernel/Adam_1/Initializer/zeros:0
ù
1default_policy/default_policy/layer_3/bias/Adam:06default_policy/default_policy/layer_3/bias/Adam/AssignEdefault_policy/default_policy/layer_3/bias/Adam/Read/ReadVariableOp:0(2Cdefault_policy/default_policy/layer_3/bias/Adam/Initializer/zeros:0

3default_policy/default_policy/layer_3/bias/Adam_1:08default_policy/default_policy/layer_3/bias/Adam_1/AssignGdefault_policy/default_policy/layer_3/bias/Adam_1/Read/ReadVariableOp:0(2Edefault_policy/default_policy/layer_3/bias/Adam_1/Initializer/zeros:0

3default_policy/default_policy/layer_4/kernel/Adam:08default_policy/default_policy/layer_4/kernel/Adam/AssignGdefault_policy/default_policy/layer_4/kernel/Adam/Read/ReadVariableOp:0(2Edefault_policy/default_policy/layer_4/kernel/Adam/Initializer/zeros:0

5default_policy/default_policy/layer_4/kernel/Adam_1:0:default_policy/default_policy/layer_4/kernel/Adam_1/AssignIdefault_policy/default_policy/layer_4/kernel/Adam_1/Read/ReadVariableOp:0(2Gdefault_policy/default_policy/layer_4/kernel/Adam_1/Initializer/zeros:0
ù
1default_policy/default_policy/layer_4/bias/Adam:06default_policy/default_policy/layer_4/bias/Adam/AssignEdefault_policy/default_policy/layer_4/bias/Adam/Read/ReadVariableOp:0(2Cdefault_policy/default_policy/layer_4/bias/Adam/Initializer/zeros:0

3default_policy/default_policy/layer_4/bias/Adam_1:08default_policy/default_policy/layer_4/bias/Adam_1/AssignGdefault_policy/default_policy/layer_4/bias/Adam_1/Read/ReadVariableOp:0(2Edefault_policy/default_policy/layer_4/bias/Adam_1/Initializer/zeros:0
¥
<default_policy/default_policy/layer_val_hidden/kernel/Adam:0Adefault_policy/default_policy/layer_val_hidden/kernel/Adam/AssignPdefault_policy/default_policy/layer_val_hidden/kernel/Adam/Read/ReadVariableOp:0(2Ndefault_policy/default_policy/layer_val_hidden/kernel/Adam/Initializer/zeros:0
­
>default_policy/default_policy/layer_val_hidden/kernel/Adam_1:0Cdefault_policy/default_policy/layer_val_hidden/kernel/Adam_1/AssignRdefault_policy/default_policy/layer_val_hidden/kernel/Adam_1/Read/ReadVariableOp:0(2Pdefault_policy/default_policy/layer_val_hidden/kernel/Adam_1/Initializer/zeros:0

:default_policy/default_policy/layer_val_hidden/bias/Adam:0?default_policy/default_policy/layer_val_hidden/bias/Adam/AssignNdefault_policy/default_policy/layer_val_hidden/bias/Adam/Read/ReadVariableOp:0(2Ldefault_policy/default_policy/layer_val_hidden/bias/Adam/Initializer/zeros:0
¥
<default_policy/default_policy/layer_val_hidden/bias/Adam_1:0Adefault_policy/default_policy/layer_val_hidden/bias/Adam_1/AssignPdefault_policy/default_policy/layer_val_hidden/bias/Adam_1/Read/ReadVariableOp:0(2Ndefault_policy/default_policy/layer_val_hidden/bias/Adam_1/Initializer/zeros:0

6default_policy/default_policy/action_out/kernel/Adam:0;default_policy/default_policy/action_out/kernel/Adam/AssignJdefault_policy/default_policy/action_out/kernel/Adam/Read/ReadVariableOp:0(2Hdefault_policy/default_policy/action_out/kernel/Adam/Initializer/zeros:0

8default_policy/default_policy/action_out/kernel/Adam_1:0=default_policy/default_policy/action_out/kernel/Adam_1/AssignLdefault_policy/default_policy/action_out/kernel/Adam_1/Read/ReadVariableOp:0(2Jdefault_policy/default_policy/action_out/kernel/Adam_1/Initializer/zeros:0

4default_policy/default_policy/action_out/bias/Adam:09default_policy/default_policy/action_out/bias/Adam/AssignHdefault_policy/default_policy/action_out/bias/Adam/Read/ReadVariableOp:0(2Fdefault_policy/default_policy/action_out/bias/Adam/Initializer/zeros:0

6default_policy/default_policy/action_out/bias/Adam_1:0;default_policy/default_policy/action_out/bias/Adam_1/AssignJdefault_policy/default_policy/action_out/bias/Adam_1/Read/ReadVariableOp:0(2Hdefault_policy/default_policy/action_out/bias/Adam_1/Initializer/zeros:0

5default_policy/default_policy/value_out/kernel/Adam:0:default_policy/default_policy/value_out/kernel/Adam/AssignIdefault_policy/default_policy/value_out/kernel/Adam/Read/ReadVariableOp:0(2Gdefault_policy/default_policy/value_out/kernel/Adam/Initializer/zeros:0

7default_policy/default_policy/value_out/kernel/Adam_1:0<default_policy/default_policy/value_out/kernel/Adam_1/AssignKdefault_policy/default_policy/value_out/kernel/Adam_1/Read/ReadVariableOp:0(2Idefault_policy/default_policy/value_out/kernel/Adam_1/Initializer/zeros:0

3default_policy/default_policy/value_out/bias/Adam:08default_policy/default_policy/value_out/bias/Adam/AssignGdefault_policy/default_policy/value_out/bias/Adam/Read/ReadVariableOp:0(2Edefault_policy/default_policy/value_out/bias/Adam/Initializer/zeros:0

5default_policy/default_policy/value_out/bias/Adam_1:0:default_policy/default_policy/value_out/bias/Adam_1/AssignIdefault_policy/default_policy/value_out/bias/Adam_1/Read/ReadVariableOp:0(2Gdefault_policy/default_policy/value_out/bias/Adam_1/Initializer/zeros:0*
serving_default
1
is_training"
default_policy/is_training:0
 
<
observations,
default_policy/obs:0ÿÿÿÿÿÿÿÿÿÓ
+
timestep
default_policy/timestep:0	 V
action_dist_inputs@
)default_policy/model/action_out/BiasAdd:0ÿÿÿÿÿÿÿÿÿ}B
action_logp3
 default_policy/cond_2/Identity:0ÿÿÿÿÿÿÿÿÿ6
action_prob'
default_policy/Exp:0ÿÿÿÿÿÿÿÿÿ@
	actions_03
 default_policy/cond_1/Identity:0	ÿÿÿÿÿÿÿÿÿ7
vf_preds+
default_policy/Reshape:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict