??
??
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
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
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
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718??
?
modele_11/conv_layer_one/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!modele_11/conv_layer_one/kernel
?
3modele_11/conv_layer_one/kernel/Read/ReadVariableOpReadVariableOpmodele_11/conv_layer_one/kernel*"
_output_shapes
:*
dtype0
?
modele_11/conv_layer_one/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namemodele_11/conv_layer_one/bias
?
1modele_11/conv_layer_one/bias/Read/ReadVariableOpReadVariableOpmodele_11/conv_layer_one/bias*
_output_shapes
:*
dtype0
?
modele_11/conv_layer_two/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!modele_11/conv_layer_two/kernel
?
3modele_11/conv_layer_two/kernel/Read/ReadVariableOpReadVariableOpmodele_11/conv_layer_two/kernel*"
_output_shapes
:*
dtype0
?
modele_11/conv_layer_two/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namemodele_11/conv_layer_two/bias
?
1modele_11/conv_layer_two/bias/Read/ReadVariableOpReadVariableOpmodele_11/conv_layer_two/bias*
_output_shapes
:*
dtype0
?
modele_11/input_layer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*-
shared_namemodele_11/input_layer/kernel
?
0modele_11/input_layer/kernel/Read/ReadVariableOpReadVariableOpmodele_11/input_layer/kernel*
_output_shapes

:*
dtype0
?
modele_11/input_layer/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namemodele_11/input_layer/bias
?
.modele_11/input_layer/bias/Read/ReadVariableOpReadVariableOpmodele_11/input_layer/bias*
_output_shapes
:*
dtype0
?
modele_11/output_layer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*.
shared_namemodele_11/output_layer/kernel
?
1modele_11/output_layer/kernel/Read/ReadVariableOpReadVariableOpmodele_11/output_layer/kernel*
_output_shapes

:*
dtype0
?
modele_11/output_layer/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namemodele_11/output_layer/bias
?
/modele_11/output_layer/bias/Read/ReadVariableOpReadVariableOpmodele_11/output_layer/bias*
_output_shapes
:*
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

NoOpNoOp
?
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B?
?
conv_layer_one
conv_layer_two
flatten_layer
input_layer
output_layer
	optimizer
trainable_variables
regularization_losses
		variables

	keras_api

signatures
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
R
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
 	variables
!	keras_api
h

"kernel
#bias
$trainable_variables
%regularization_losses
&	variables
'	keras_api
6
(iter
	)decay
*learning_rate
+momentum
8
0
1
2
3
4
5
"6
#7
 
8
0
1
2
3
4
5
"6
#7
?
,metrics
-non_trainable_variables
.layer_regularization_losses
/layer_metrics

0layers
trainable_variables
regularization_losses
		variables
 
ec
VARIABLE_VALUEmodele_11/conv_layer_one/kernel0conv_layer_one/kernel/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEmodele_11/conv_layer_one/bias.conv_layer_one/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
1metrics
2non_trainable_variables
3layer_regularization_losses
4layer_metrics

5layers
trainable_variables
regularization_losses
	variables
ec
VARIABLE_VALUEmodele_11/conv_layer_two/kernel0conv_layer_two/kernel/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEmodele_11/conv_layer_two/bias.conv_layer_two/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
6metrics
7non_trainable_variables
8layer_regularization_losses
9layer_metrics

:layers
trainable_variables
regularization_losses
	variables
 
 
 
?
;metrics
<non_trainable_variables
=layer_regularization_losses
>layer_metrics

?layers
trainable_variables
regularization_losses
	variables
_]
VARIABLE_VALUEmodele_11/input_layer/kernel-input_layer/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEmodele_11/input_layer/bias+input_layer/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
@metrics
Anon_trainable_variables
Blayer_regularization_losses
Clayer_metrics

Dlayers
trainable_variables
regularization_losses
 	variables
a_
VARIABLE_VALUEmodele_11/output_layer/kernel.output_layer/kernel/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEmodele_11/output_layer/bias,output_layer/bias/.ATTRIBUTES/VARIABLE_VALUE

"0
#1
 

"0
#1
?
Emetrics
Fnon_trainable_variables
Glayer_regularization_losses
Hlayer_metrics

Ilayers
$trainable_variables
%regularization_losses
&	variables
GE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUE	SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUESGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUESGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE

J0
K1
 
 
 
#
0
1
2
3
4
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
4
	Ltotal
	Mcount
N	variables
O	keras_api
D
	Ptotal
	Qcount
R
_fn_kwargs
S	variables
T	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

L0
M1

N	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

P0
Q1

S	variables
?
serving_default_input_1Placeholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1modele_11/conv_layer_one/kernelmodele_11/conv_layer_one/biasmodele_11/conv_layer_two/kernelmodele_11/conv_layer_two/biasmodele_11/input_layer/kernelmodele_11/input_layer/biasmodele_11/output_layer/kernelmodele_11/output_layer/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_16093
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename3modele_11/conv_layer_one/kernel/Read/ReadVariableOp1modele_11/conv_layer_one/bias/Read/ReadVariableOp3modele_11/conv_layer_two/kernel/Read/ReadVariableOp1modele_11/conv_layer_two/bias/Read/ReadVariableOp0modele_11/input_layer/kernel/Read/ReadVariableOp.modele_11/input_layer/bias/Read/ReadVariableOp1modele_11/output_layer/kernel/Read/ReadVariableOp/modele_11/output_layer/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*
Tin
2	*
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
GPU 2J 8? *'
f"R 
__inference__traced_save_16265
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamemodele_11/conv_layer_one/kernelmodele_11/conv_layer_one/biasmodele_11/conv_layer_two/kernelmodele_11/conv_layer_two/biasmodele_11/input_layer/kernelmodele_11/input_layer/biasmodele_11/output_layer/kernelmodele_11/output_layer/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotalcounttotal_1count_1*
Tin
2*
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
GPU 2J 8? **
f%R#
!__inference__traced_restore_16323??
?
?
I__inference_conv_layer_one_layer_call_and_return_conditional_losses_16109

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:?????????*
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
#__inference_signature_wrapper_16093
input_1
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_159072
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_1
?
?
I__inference_conv_layer_one_layer_call_and_return_conditional_losses_15927

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:?????????*
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
.__inference_conv_layer_one_layer_call_fn_16118

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_conv_layer_one_layer_call_and_return_conditional_losses_159272
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
D__inference_modele_11_layer_call_and_return_conditional_losses_15998
input_1*
conv_layer_one_15928:"
conv_layer_one_15930:*
conv_layer_two_15950:"
conv_layer_two_15952:#
input_layer_15975:
input_layer_15977:$
output_layer_15992: 
output_layer_15994:
identity??&conv_layer_one/StatefulPartitionedCall?&conv_layer_two/StatefulPartitionedCall?#input_layer/StatefulPartitionedCall?$output_layer/StatefulPartitionedCall?
&conv_layer_one/StatefulPartitionedCallStatefulPartitionedCallinput_1conv_layer_one_15928conv_layer_one_15930*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_conv_layer_one_layer_call_and_return_conditional_losses_159272(
&conv_layer_one/StatefulPartitionedCall?
&conv_layer_two/StatefulPartitionedCallStatefulPartitionedCall/conv_layer_one/StatefulPartitionedCall:output:0conv_layer_two_15950conv_layer_two_15952*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_conv_layer_two_layer_call_and_return_conditional_losses_159492(
&conv_layer_two/StatefulPartitionedCall?
flatten_layer/PartitionedCallPartitionedCall/conv_layer_two/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_flatten_layer_layer_call_and_return_conditional_losses_159612
flatten_layer/PartitionedCall?
#input_layer/StatefulPartitionedCallStatefulPartitionedCall&flatten_layer/PartitionedCall:output:0input_layer_15975input_layer_15977*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_input_layer_layer_call_and_return_conditional_losses_159742%
#input_layer/StatefulPartitionedCall?
$output_layer/StatefulPartitionedCallStatefulPartitionedCall,input_layer/StatefulPartitionedCall:output:0output_layer_15992output_layer_15994*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_output_layer_layer_call_and_return_conditional_losses_159912&
$output_layer/StatefulPartitionedCall?
IdentityIdentity-output_layer/StatefulPartitionedCall:output:0'^conv_layer_one/StatefulPartitionedCall'^conv_layer_two/StatefulPartitionedCall$^input_layer/StatefulPartitionedCall%^output_layer/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : 2P
&conv_layer_one/StatefulPartitionedCall&conv_layer_one/StatefulPartitionedCall2P
&conv_layer_two/StatefulPartitionedCall&conv_layer_two/StatefulPartitionedCall2J
#input_layer/StatefulPartitionedCall#input_layer/StatefulPartitionedCall2L
$output_layer/StatefulPartitionedCall$output_layer/StatefulPartitionedCall:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_1
?
I
-__inference_flatten_layer_layer_call_fn_16154

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
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_flatten_layer_layer_call_and_return_conditional_losses_159612
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
+__inference_input_layer_layer_call_fn_16174

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_input_layer_layer_call_and_return_conditional_losses_159742
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
G__inference_output_layer_layer_call_and_return_conditional_losses_16185

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
)__inference_modele_11_layer_call_fn_16020
input_1
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_modele_11_layer_call_and_return_conditional_losses_159982
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_1
?

?
F__inference_input_layer_layer_call_and_return_conditional_losses_15974

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
,__inference_output_layer_layer_call_fn_16194

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_output_layer_layer_call_and_return_conditional_losses_159912
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?F
?	
!__inference__traced_restore_16323
file_prefixF
0assignvariableop_modele_11_conv_layer_one_kernel:>
0assignvariableop_1_modele_11_conv_layer_one_bias:H
2assignvariableop_2_modele_11_conv_layer_two_kernel:>
0assignvariableop_3_modele_11_conv_layer_two_bias:A
/assignvariableop_4_modele_11_input_layer_kernel:;
-assignvariableop_5_modele_11_input_layer_bias:B
0assignvariableop_6_modele_11_output_layer_kernel:<
.assignvariableop_7_modele_11_output_layer_bias:%
assignvariableop_8_sgd_iter:	 &
assignvariableop_9_sgd_decay: /
%assignvariableop_10_sgd_learning_rate: *
 assignvariableop_11_sgd_momentum: #
assignvariableop_12_total: #
assignvariableop_13_count: %
assignvariableop_14_total_1: %
assignvariableop_15_count_1: 
identity_17??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B0conv_layer_one/kernel/.ATTRIBUTES/VARIABLE_VALUEB.conv_layer_one/bias/.ATTRIBUTES/VARIABLE_VALUEB0conv_layer_two/kernel/.ATTRIBUTES/VARIABLE_VALUEB.conv_layer_two/bias/.ATTRIBUTES/VARIABLE_VALUEB-input_layer/kernel/.ATTRIBUTES/VARIABLE_VALUEB+input_layer/bias/.ATTRIBUTES/VARIABLE_VALUEB.output_layer/kernel/.ATTRIBUTES/VARIABLE_VALUEB,output_layer/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*X
_output_shapesF
D:::::::::::::::::*
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp0assignvariableop_modele_11_conv_layer_one_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp0assignvariableop_1_modele_11_conv_layer_one_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp2assignvariableop_2_modele_11_conv_layer_two_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp0assignvariableop_3_modele_11_conv_layer_two_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp/assignvariableop_4_modele_11_input_layer_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp-assignvariableop_5_modele_11_input_layer_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp0assignvariableop_6_modele_11_output_layer_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp.assignvariableop_7_modele_11_output_layer_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_sgd_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_sgd_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp%assignvariableop_10_sgd_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp assignvariableop_11_sgd_momentumIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_totalIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_countIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_total_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_count_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_159
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_16Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_16?
Identity_17IdentityIdentity_16:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_17"#
identity_17Identity_17:output:0*5
_input_shapes$
": : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152(
AssignVariableOp_2AssignVariableOp_22(
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
?
d
H__inference_flatten_layer_layer_call_and_return_conditional_losses_16149

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
I__inference_conv_layer_two_layer_call_and_return_conditional_losses_15949

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:?????????*
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
F__inference_input_layer_layer_call_and_return_conditional_losses_16165

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
 __inference__wrapped_model_15907
input_1Z
Dmodele_11_conv_layer_one_conv1d_expanddims_1_readvariableop_resource:F
8modele_11_conv_layer_one_biasadd_readvariableop_resource:Z
Dmodele_11_conv_layer_two_conv1d_expanddims_1_readvariableop_resource:F
8modele_11_conv_layer_two_biasadd_readvariableop_resource:F
4modele_11_input_layer_matmul_readvariableop_resource:C
5modele_11_input_layer_biasadd_readvariableop_resource:G
5modele_11_output_layer_matmul_readvariableop_resource:D
6modele_11_output_layer_biasadd_readvariableop_resource:
identity??/modele_11/conv_layer_one/BiasAdd/ReadVariableOp?;modele_11/conv_layer_one/conv1d/ExpandDims_1/ReadVariableOp?/modele_11/conv_layer_two/BiasAdd/ReadVariableOp?;modele_11/conv_layer_two/conv1d/ExpandDims_1/ReadVariableOp?,modele_11/input_layer/BiasAdd/ReadVariableOp?+modele_11/input_layer/MatMul/ReadVariableOp?-modele_11/output_layer/BiasAdd/ReadVariableOp?,modele_11/output_layer/MatMul/ReadVariableOp?
.modele_11/conv_layer_one/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????20
.modele_11/conv_layer_one/conv1d/ExpandDims/dim?
*modele_11/conv_layer_one/conv1d/ExpandDims
ExpandDimsinput_17modele_11/conv_layer_one/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????2,
*modele_11/conv_layer_one/conv1d/ExpandDims?
;modele_11/conv_layer_one/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpDmodele_11_conv_layer_one_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02=
;modele_11/conv_layer_one/conv1d/ExpandDims_1/ReadVariableOp?
0modele_11/conv_layer_one/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 22
0modele_11/conv_layer_one/conv1d/ExpandDims_1/dim?
,modele_11/conv_layer_one/conv1d/ExpandDims_1
ExpandDimsCmodele_11/conv_layer_one/conv1d/ExpandDims_1/ReadVariableOp:value:09modele_11/conv_layer_one/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2.
,modele_11/conv_layer_one/conv1d/ExpandDims_1?
modele_11/conv_layer_one/conv1dConv2D3modele_11/conv_layer_one/conv1d/ExpandDims:output:05modele_11/conv_layer_one/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2!
modele_11/conv_layer_one/conv1d?
'modele_11/conv_layer_one/conv1d/SqueezeSqueeze(modele_11/conv_layer_one/conv1d:output:0*
T0*+
_output_shapes
:?????????*
squeeze_dims

?????????2)
'modele_11/conv_layer_one/conv1d/Squeeze?
/modele_11/conv_layer_one/BiasAdd/ReadVariableOpReadVariableOp8modele_11_conv_layer_one_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/modele_11/conv_layer_one/BiasAdd/ReadVariableOp?
 modele_11/conv_layer_one/BiasAddBiasAdd0modele_11/conv_layer_one/conv1d/Squeeze:output:07modele_11/conv_layer_one/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2"
 modele_11/conv_layer_one/BiasAdd?
modele_11/conv_layer_one/ReluRelu)modele_11/conv_layer_one/BiasAdd:output:0*
T0*+
_output_shapes
:?????????2
modele_11/conv_layer_one/Relu?
.modele_11/conv_layer_two/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????20
.modele_11/conv_layer_two/conv1d/ExpandDims/dim?
*modele_11/conv_layer_two/conv1d/ExpandDims
ExpandDims+modele_11/conv_layer_one/Relu:activations:07modele_11/conv_layer_two/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????2,
*modele_11/conv_layer_two/conv1d/ExpandDims?
;modele_11/conv_layer_two/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpDmodele_11_conv_layer_two_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02=
;modele_11/conv_layer_two/conv1d/ExpandDims_1/ReadVariableOp?
0modele_11/conv_layer_two/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 22
0modele_11/conv_layer_two/conv1d/ExpandDims_1/dim?
,modele_11/conv_layer_two/conv1d/ExpandDims_1
ExpandDimsCmodele_11/conv_layer_two/conv1d/ExpandDims_1/ReadVariableOp:value:09modele_11/conv_layer_two/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2.
,modele_11/conv_layer_two/conv1d/ExpandDims_1?
modele_11/conv_layer_two/conv1dConv2D3modele_11/conv_layer_two/conv1d/ExpandDims:output:05modele_11/conv_layer_two/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2!
modele_11/conv_layer_two/conv1d?
'modele_11/conv_layer_two/conv1d/SqueezeSqueeze(modele_11/conv_layer_two/conv1d:output:0*
T0*+
_output_shapes
:?????????*
squeeze_dims

?????????2)
'modele_11/conv_layer_two/conv1d/Squeeze?
/modele_11/conv_layer_two/BiasAdd/ReadVariableOpReadVariableOp8modele_11_conv_layer_two_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/modele_11/conv_layer_two/BiasAdd/ReadVariableOp?
 modele_11/conv_layer_two/BiasAddBiasAdd0modele_11/conv_layer_two/conv1d/Squeeze:output:07modele_11/conv_layer_two/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2"
 modele_11/conv_layer_two/BiasAdd?
modele_11/conv_layer_two/ReluRelu)modele_11/conv_layer_two/BiasAdd:output:0*
T0*+
_output_shapes
:?????????2
modele_11/conv_layer_two/Relu?
modele_11/flatten_layer/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
modele_11/flatten_layer/Const?
modele_11/flatten_layer/ReshapeReshape+modele_11/conv_layer_two/Relu:activations:0&modele_11/flatten_layer/Const:output:0*
T0*'
_output_shapes
:?????????2!
modele_11/flatten_layer/Reshape?
+modele_11/input_layer/MatMul/ReadVariableOpReadVariableOp4modele_11_input_layer_matmul_readvariableop_resource*
_output_shapes

:*
dtype02-
+modele_11/input_layer/MatMul/ReadVariableOp?
modele_11/input_layer/MatMulMatMul(modele_11/flatten_layer/Reshape:output:03modele_11/input_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
modele_11/input_layer/MatMul?
,modele_11/input_layer/BiasAdd/ReadVariableOpReadVariableOp5modele_11_input_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,modele_11/input_layer/BiasAdd/ReadVariableOp?
modele_11/input_layer/BiasAddBiasAdd&modele_11/input_layer/MatMul:product:04modele_11/input_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
modele_11/input_layer/BiasAdd?
modele_11/input_layer/ReluRelu&modele_11/input_layer/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
modele_11/input_layer/Relu?
,modele_11/output_layer/MatMul/ReadVariableOpReadVariableOp5modele_11_output_layer_matmul_readvariableop_resource*
_output_shapes

:*
dtype02.
,modele_11/output_layer/MatMul/ReadVariableOp?
modele_11/output_layer/MatMulMatMul(modele_11/input_layer/Relu:activations:04modele_11/output_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
modele_11/output_layer/MatMul?
-modele_11/output_layer/BiasAdd/ReadVariableOpReadVariableOp6modele_11_output_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-modele_11/output_layer/BiasAdd/ReadVariableOp?
modele_11/output_layer/BiasAddBiasAdd'modele_11/output_layer/MatMul:product:05modele_11/output_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
modele_11/output_layer/BiasAdd?
modele_11/output_layer/SoftmaxSoftmax'modele_11/output_layer/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2 
modele_11/output_layer/Softmax?
IdentityIdentity(modele_11/output_layer/Softmax:softmax:00^modele_11/conv_layer_one/BiasAdd/ReadVariableOp<^modele_11/conv_layer_one/conv1d/ExpandDims_1/ReadVariableOp0^modele_11/conv_layer_two/BiasAdd/ReadVariableOp<^modele_11/conv_layer_two/conv1d/ExpandDims_1/ReadVariableOp-^modele_11/input_layer/BiasAdd/ReadVariableOp,^modele_11/input_layer/MatMul/ReadVariableOp.^modele_11/output_layer/BiasAdd/ReadVariableOp-^modele_11/output_layer/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : 2b
/modele_11/conv_layer_one/BiasAdd/ReadVariableOp/modele_11/conv_layer_one/BiasAdd/ReadVariableOp2z
;modele_11/conv_layer_one/conv1d/ExpandDims_1/ReadVariableOp;modele_11/conv_layer_one/conv1d/ExpandDims_1/ReadVariableOp2b
/modele_11/conv_layer_two/BiasAdd/ReadVariableOp/modele_11/conv_layer_two/BiasAdd/ReadVariableOp2z
;modele_11/conv_layer_two/conv1d/ExpandDims_1/ReadVariableOp;modele_11/conv_layer_two/conv1d/ExpandDims_1/ReadVariableOp2\
,modele_11/input_layer/BiasAdd/ReadVariableOp,modele_11/input_layer/BiasAdd/ReadVariableOp2Z
+modele_11/input_layer/MatMul/ReadVariableOp+modele_11/input_layer/MatMul/ReadVariableOp2^
-modele_11/output_layer/BiasAdd/ReadVariableOp-modele_11/output_layer/BiasAdd/ReadVariableOp2\
,modele_11/output_layer/MatMul/ReadVariableOp,modele_11/output_layer/MatMul/ReadVariableOp:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_1
?
?
.__inference_conv_layer_two_layer_call_fn_16143

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_conv_layer_two_layer_call_and_return_conditional_losses_159492
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?*
?
__inference__traced_save_16265
file_prefix>
:savev2_modele_11_conv_layer_one_kernel_read_readvariableop<
8savev2_modele_11_conv_layer_one_bias_read_readvariableop>
:savev2_modele_11_conv_layer_two_kernel_read_readvariableop<
8savev2_modele_11_conv_layer_two_bias_read_readvariableop;
7savev2_modele_11_input_layer_kernel_read_readvariableop9
5savev2_modele_11_input_layer_bias_read_readvariableop<
8savev2_modele_11_output_layer_kernel_read_readvariableop:
6savev2_modele_11_output_layer_bias_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B0conv_layer_one/kernel/.ATTRIBUTES/VARIABLE_VALUEB.conv_layer_one/bias/.ATTRIBUTES/VARIABLE_VALUEB0conv_layer_two/kernel/.ATTRIBUTES/VARIABLE_VALUEB.conv_layer_two/bias/.ATTRIBUTES/VARIABLE_VALUEB-input_layer/kernel/.ATTRIBUTES/VARIABLE_VALUEB+input_layer/bias/.ATTRIBUTES/VARIABLE_VALUEB.output_layer/kernel/.ATTRIBUTES/VARIABLE_VALUEB,output_layer/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0:savev2_modele_11_conv_layer_one_kernel_read_readvariableop8savev2_modele_11_conv_layer_one_bias_read_readvariableop:savev2_modele_11_conv_layer_two_kernel_read_readvariableop8savev2_modele_11_conv_layer_two_bias_read_readvariableop7savev2_modele_11_input_layer_kernel_read_readvariableop5savev2_modele_11_input_layer_bias_read_readvariableop8savev2_modele_11_output_layer_kernel_read_readvariableop6savev2_modele_11_output_layer_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	2
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

identity_1Identity_1:output:0*o
_input_shapes^
\: ::::::::: : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:($
"
_output_shapes
:: 

_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::	

_output_shapes
: :


_output_shapes
: :
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
: 
?
?
I__inference_conv_layer_two_layer_call_and_return_conditional_losses_16134

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:?????????*
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
G__inference_output_layer_layer_call_and_return_conditional_losses_15991

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
d
H__inference_flatten_layer_layer_call_and_return_conditional_losses_15961

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
?
input_14
serving_default_input_1:0?????????<
output_10
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?	
conv_layer_one
conv_layer_two
flatten_layer
input_layer
output_layer
	optimizer
trainable_variables
regularization_losses
		variables

	keras_api

signatures
U_default_save_signature
*V&call_and_return_all_conditional_losses
W__call__"?
_tf_keras_model?{"name": "modele_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Modele", "config": {"layer was saved without config": true}, "is_graph_network": false, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 3, 11]}, "float32", "input_1"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Modele"}, "training_config": {"loss": "sparse_categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 0}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "SGD", "config": {"name": "SGD", "learning_rate": 0.009999999776482582, "decay": 0.0, "momentum": 0.0, "nesterov": false}}}}
?


kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
*X&call_and_return_all_conditional_losses
Y__call__"?	
_tf_keras_layer?	{"name": "conv_layer_one", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv1D", "config": {"name": "conv_layer_one", "trainable": true, "dtype": "float32", "filters": 11, "kernel_size": {"class_name": "__tuple__", "items": [1]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 11}}, "shared_object_id": 4}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 3, 11]}}
?


kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
*Z&call_and_return_all_conditional_losses
[__call__"?	
_tf_keras_layer?	{"name": "conv_layer_two", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv1D", "config": {"name": "conv_layer_two", "trainable": true, "dtype": "float32", "filters": 11, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [3]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 7, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 11}}, "shared_object_id": 8}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 3, 11]}}
?
trainable_variables
regularization_losses
	variables
	keras_api
*\&call_and_return_all_conditional_losses
]__call__"?
_tf_keras_layer?{"name": "flatten_layer", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_layer", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 9, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 10}}
?

kernel
bias
trainable_variables
regularization_losses
 	variables
!	keras_api
*^&call_and_return_all_conditional_losses
___call__"?
_tf_keras_layer?{"name": "input_layer", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "input_layer", "trainable": true, "dtype": "float32", "units": 11, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 13, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 11}}, "shared_object_id": 14}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 11]}}
?

"kernel
#bias
$trainable_variables
%regularization_losses
&	variables
'	keras_api
*`&call_and_return_all_conditional_losses
a__call__"?
_tf_keras_layer?{"name": "output_layer", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "output_layer", "trainable": true, "dtype": "float32", "units": 2, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 17, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 11}}, "shared_object_id": 18}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 11]}}
I
(iter
	)decay
*learning_rate
+momentum"
	optimizer
X
0
1
2
3
4
5
"6
#7"
trackable_list_wrapper
 "
trackable_list_wrapper
X
0
1
2
3
4
5
"6
#7"
trackable_list_wrapper
?
,metrics
-non_trainable_variables
.layer_regularization_losses
/layer_metrics

0layers
trainable_variables
regularization_losses
		variables
W__call__
U_default_save_signature
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
,
bserving_default"
signature_map
5:32modele_11/conv_layer_one/kernel
+:)2modele_11/conv_layer_one/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
1metrics
2non_trainable_variables
3layer_regularization_losses
4layer_metrics

5layers
trainable_variables
regularization_losses
	variables
Y__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
5:32modele_11/conv_layer_two/kernel
+:)2modele_11/conv_layer_two/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
6metrics
7non_trainable_variables
8layer_regularization_losses
9layer_metrics

:layers
trainable_variables
regularization_losses
	variables
[__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
;metrics
<non_trainable_variables
=layer_regularization_losses
>layer_metrics

?layers
trainable_variables
regularization_losses
	variables
]__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
.:,2modele_11/input_layer/kernel
(:&2modele_11/input_layer/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
@metrics
Anon_trainable_variables
Blayer_regularization_losses
Clayer_metrics

Dlayers
trainable_variables
regularization_losses
 	variables
___call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
/:-2modele_11/output_layer/kernel
):'2modele_11/output_layer/bias
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
?
Emetrics
Fnon_trainable_variables
Glayer_regularization_losses
Hlayer_metrics

Ilayers
$trainable_variables
%regularization_losses
&	variables
a__call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
C
0
1
2
3
4"
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
?
	Ltotal
	Mcount
N	variables
O	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 19}
?
	Ptotal
	Qcount
R
_fn_kwargs
S	variables
T	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 0}
:  (2total
:  (2count
.
L0
M1"
trackable_list_wrapper
-
N	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
P0
Q1"
trackable_list_wrapper
-
S	variables"
_generic_user_object
?2?
 __inference__wrapped_model_15907?
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
annotations? **?'
%?"
input_1?????????
?2?
D__inference_modele_11_layer_call_and_return_conditional_losses_15998?
???
FullArgSpec
args?
jself
jnotes
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? **?'
%?"
input_1?????????
?2?
)__inference_modele_11_layer_call_fn_16020?
???
FullArgSpec
args?
jself
jnotes
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? **?'
%?"
input_1?????????
?2?
I__inference_conv_layer_one_layer_call_and_return_conditional_losses_16109?
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
.__inference_conv_layer_one_layer_call_fn_16118?
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
I__inference_conv_layer_two_layer_call_and_return_conditional_losses_16134?
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
.__inference_conv_layer_two_layer_call_fn_16143?
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
H__inference_flatten_layer_layer_call_and_return_conditional_losses_16149?
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
-__inference_flatten_layer_layer_call_fn_16154?
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
F__inference_input_layer_layer_call_and_return_conditional_losses_16165?
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
+__inference_input_layer_layer_call_fn_16174?
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
G__inference_output_layer_layer_call_and_return_conditional_losses_16185?
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
,__inference_output_layer_layer_call_fn_16194?
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
#__inference_signature_wrapper_16093input_1"?
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
 __inference__wrapped_model_15907u"#4?1
*?'
%?"
input_1?????????
? "3?0
.
output_1"?
output_1??????????
I__inference_conv_layer_one_layer_call_and_return_conditional_losses_16109d3?0
)?&
$?!
inputs?????????
? ")?&
?
0?????????
? ?
.__inference_conv_layer_one_layer_call_fn_16118W3?0
)?&
$?!
inputs?????????
? "???????????
I__inference_conv_layer_two_layer_call_and_return_conditional_losses_16134d3?0
)?&
$?!
inputs?????????
? ")?&
?
0?????????
? ?
.__inference_conv_layer_two_layer_call_fn_16143W3?0
)?&
$?!
inputs?????????
? "???????????
H__inference_flatten_layer_layer_call_and_return_conditional_losses_16149\3?0
)?&
$?!
inputs?????????
? "%?"
?
0?????????
? ?
-__inference_flatten_layer_layer_call_fn_16154O3?0
)?&
$?!
inputs?????????
? "???????????
F__inference_input_layer_layer_call_and_return_conditional_losses_16165\/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? ~
+__inference_input_layer_layer_call_fn_16174O/?,
%?"
 ?
inputs?????????
? "???????????
D__inference_modele_11_layer_call_and_return_conditional_losses_15998g"#4?1
*?'
%?"
input_1?????????
? "%?"
?
0?????????
? ?
)__inference_modele_11_layer_call_fn_16020Z"#4?1
*?'
%?"
input_1?????????
? "???????????
G__inference_output_layer_layer_call_and_return_conditional_losses_16185\"#/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? 
,__inference_output_layer_layer_call_fn_16194O"#/?,
%?"
 ?
inputs?????????
? "???????????
#__inference_signature_wrapper_16093?"#??<
? 
5?2
0
input_1%?"
input_1?????????"3?0
.
output_1"?
output_1?????????