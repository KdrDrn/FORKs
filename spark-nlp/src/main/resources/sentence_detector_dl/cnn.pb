
@
inputsPlaceholder*
dtype0*
shape:?????????
A
targetsPlaceholder*
dtype0*
shape:?????????
2
ConstConst*
valueB
 *o?:*
dtype0
H
learning_ratePlaceholderWithDefaultConst*
dtype0*
shape: 
B
ones/shape_as_tensorConst*
valueB:*
dtype0
7

ones/ConstConst*
dtype0*
valueB
 *  ??
I
onesFillones/shape_as_tensor
ones/Const*

index_type0*
T0
K
class_weightsPlaceholderWithDefaultones*
dtype0*
shape:
4
Const_1Const*
valueB
 *    *
dtype0
D
dropoutPlaceholderWithDefaultConst_1*
dtype0*
shape: 
?
5embedding/embeddings/Initializer/random_uniform/shapeConst*'
_class
loc:@embedding/embeddings*
valueB",  ?   *
dtype0
?
3embedding/embeddings/Initializer/random_uniform/minConst*'
_class
loc:@embedding/embeddings*
valueB
 *??L?*
dtype0
?
3embedding/embeddings/Initializer/random_uniform/maxConst*'
_class
loc:@embedding/embeddings*
valueB
 *??L=*
dtype0
?
=embedding/embeddings/Initializer/random_uniform/RandomUniformRandomUniform5embedding/embeddings/Initializer/random_uniform/shape*
seed2 *

seed *
T0*'
_class
loc:@embedding/embeddings*
dtype0
?
3embedding/embeddings/Initializer/random_uniform/subSub3embedding/embeddings/Initializer/random_uniform/max3embedding/embeddings/Initializer/random_uniform/min*
T0*'
_class
loc:@embedding/embeddings
?
3embedding/embeddings/Initializer/random_uniform/mulMul=embedding/embeddings/Initializer/random_uniform/RandomUniform3embedding/embeddings/Initializer/random_uniform/sub*
T0*'
_class
loc:@embedding/embeddings
?
/embedding/embeddings/Initializer/random_uniformAdd3embedding/embeddings/Initializer/random_uniform/mul3embedding/embeddings/Initializer/random_uniform/min*
T0*'
_class
loc:@embedding/embeddings
?
embedding/embeddingsVarHandleOp*
shape:
??*%
shared_nameembedding/embeddings*'
_class
loc:@embedding/embeddings*
dtype0*
	container 
a
5embedding/embeddings/IsInitialized/VarIsInitializedOpVarIsInitializedOpembedding/embeddings
?
embedding/embeddings/AssignAssignVariableOpembedding/embeddings/embedding/embeddings/Initializer/random_uniform*
dtype0
]
(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings*
dtype0
F
embedding/CastCastinputs*
Truncate( *

DstT0*

SrcT0
?
embedding/embedding_lookupResourceGatherembedding/embeddingsembedding/Cast*

batch_dims *
Tindices0*
validate_indices(*'
_class
loc:@embedding/embeddings*
dtype0
}
#embedding/embedding_lookup/IdentityIdentityembedding/embedding_lookup*
T0*'
_class
loc:@embedding/embeddings
_
%embedding/embedding_lookup/Identity_1Identity#embedding/embedding_lookup/Identity*
T0
2
mul/yConst*
valueB
 *  ??*
dtype0
A
mulMul%embedding/embedding_lookup/Identity_1mul/y*
T0
6
	Minimum/xConst*
valueB
 *  ??*
dtype0
6
	Minimum/yConst*
valueB
 *    *
dtype0
1
MinimumMinimum	Minimum/x	Minimum/y*
T0
8
Minimum_1/xConst*
valueB
 *  ??*
dtype0
3
	Minimum_1MinimumMinimum_1/xMinimum*
T0
6
dropout_1/ShapeShapemul*
T0*
out_type0
I
dropout_1/random_uniform/minConst*
valueB
 *    *
dtype0
I
dropout_1/random_uniform/maxConst*
valueB
 *  ??*
dtype0
w
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape*
seed2 *

seed *
T0*
dtype0
h
dropout_1/random_uniform/subSubdropout_1/random_uniform/maxdropout_1/random_uniform/min*
T0
r
dropout_1/random_uniform/mulMul&dropout_1/random_uniform/RandomUniformdropout_1/random_uniform/sub*
T0
d
dropout_1/random_uniformAdddropout_1/random_uniform/muldropout_1/random_uniform/min*
T0
<
dropout_1/sub/xConst*
valueB
 *  ??*
dtype0
9
dropout_1/subSubdropout_1/sub/x	Minimum_1*
T0
@
dropout_1/truediv/xConst*
valueB
 *  ??*
dtype0
I
dropout_1/truedivRealDivdropout_1/truediv/xdropout_1/sub*
T0
T
dropout_1/GreaterEqualGreaterEqualdropout_1/random_uniform	Minimum_1*
T0
5
dropout_1/mulMulmuldropout_1/truediv*
T0
V
dropout_1/CastCastdropout_1/GreaterEqual*

SrcT0
*
Truncate( *

DstT0
>
dropout_1/mul_1Muldropout_1/muldropout_1/Cast*
T0
?
.conv1d/kernel/Initializer/random_uniform/shapeConst* 
_class
loc:@conv1d/kernel*!
valueB"   ?      *
dtype0
{
,conv1d/kernel/Initializer/random_uniform/minConst* 
_class
loc:@conv1d/kernel*
valueB
 *?7??*
dtype0
{
,conv1d/kernel/Initializer/random_uniform/maxConst* 
_class
loc:@conv1d/kernel*
valueB
 *?7?=*
dtype0
?
6conv1d/kernel/Initializer/random_uniform/RandomUniformRandomUniform.conv1d/kernel/Initializer/random_uniform/shape*

seed *
T0* 
_class
loc:@conv1d/kernel*
dtype0*
seed2 
?
,conv1d/kernel/Initializer/random_uniform/subSub,conv1d/kernel/Initializer/random_uniform/max,conv1d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv1d/kernel
?
,conv1d/kernel/Initializer/random_uniform/mulMul6conv1d/kernel/Initializer/random_uniform/RandomUniform,conv1d/kernel/Initializer/random_uniform/sub*
T0* 
_class
loc:@conv1d/kernel
?
(conv1d/kernel/Initializer/random_uniformAdd,conv1d/kernel/Initializer/random_uniform/mul,conv1d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv1d/kernel
?
conv1d/kernelVarHandleOp*
shared_nameconv1d/kernel* 
_class
loc:@conv1d/kernel*
dtype0*
	container *
shape:?
S
.conv1d/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv1d/kernel
n
conv1d/kernel/AssignAssignVariableOpconv1d/kernel(conv1d/kernel/Initializer/random_uniform*
dtype0
O
!conv1d/kernel/Read/ReadVariableOpReadVariableOpconv1d/kernel*
dtype0
n
conv1d/bias/Initializer/zerosConst*
_class
loc:@conv1d/bias*
valueB*    *
dtype0
?
conv1d/biasVarHandleOp*
_class
loc:@conv1d/bias*
dtype0*
	container *
shape:*
shared_nameconv1d/bias
O
,conv1d/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv1d/bias
_
conv1d/bias/AssignAssignVariableOpconv1d/biasconv1d/bias/Initializer/zeros*
dtype0
K
conv1d/bias/Read/ReadVariableOpReadVariableOpconv1d/bias*
dtype0
B
conv1d/dilation_rateConst*
valueB:*
dtype0
F
conv1d/conv1d/ExpandDims/dimConst*
value	B :*
dtype0
j
conv1d/conv1d/ExpandDims
ExpandDimsdropout_1/mul_1conv1d/conv1d/ExpandDims/dim*
T0*

Tdim0
W
)conv1d/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpconv1d/kernel*
dtype0
H
conv1d/conv1d/ExpandDims_1/dimConst*
dtype0*
value	B : 
?
conv1d/conv1d/ExpandDims_1
ExpandDims)conv1d/conv1d/ExpandDims_1/ReadVariableOpconv1d/conv1d/ExpandDims_1/dim*
T0*

Tdim0
?
conv1d/conv1dConv2Dconv1d/conv1d/ExpandDimsconv1d/conv1d/ExpandDims_1*
paddingVALID*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
explicit_paddings
 
O
conv1d/conv1d/SqueezeSqueezeconv1d/conv1d*
T0*
squeeze_dims

I
conv1d/BiasAdd/ReadVariableOpReadVariableOpconv1d/bias*
dtype0
o
conv1d/BiasAddBiasAddconv1d/conv1d/Squeezeconv1d/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC
,
conv1d/ReluReluconv1d/BiasAdd*
T0
T
*global_max_pooling1d/Max/reduction_indicesConst*
value	B :*
dtype0
~
global_max_pooling1d/MaxMaxconv1d/Relu*global_max_pooling1d/Max/reduction_indices*
T0*

Tidx0*
	keep_dims( 
?
-dense/kernel/Initializer/random_uniform/shapeConst*
_class
loc:@dense/kernel*
valueB"   ?   *
dtype0
y
+dense/kernel/Initializer/random_uniform/minConst*
_class
loc:@dense/kernel*
valueB
 *q??*
dtype0
y
+dense/kernel/Initializer/random_uniform/maxConst*
_class
loc:@dense/kernel*
valueB
 *q?>*
dtype0
?
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*

seed *
T0*
_class
loc:@dense/kernel*
dtype0*
seed2 
?
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel
?
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
_class
loc:@dense/kernel*
T0
?
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
_class
loc:@dense/kernel*
T0
?
dense/kernelVarHandleOp*
	container *
shape:	?*
shared_namedense/kernel*
_class
loc:@dense/kernel*
dtype0
Q
-dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense/kernel
k
dense/kernel/AssignAssignVariableOpdense/kernel'dense/kernel/Initializer/random_uniform*
dtype0
M
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
dtype0
m
dense/bias/Initializer/zerosConst*
_class
loc:@dense/bias*
valueB?*    *
dtype0
?

dense/biasVarHandleOp*
shared_name
dense/bias*
_class
loc:@dense/bias*
dtype0*
	container *
shape:?
M
+dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp
dense/bias
\
dense/bias/AssignAssignVariableOp
dense/biasdense/bias/Initializer/zeros*
dtype0
I
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
dtype0
H
dense/MatMul/ReadVariableOpReadVariableOpdense/kernel*
dtype0
|
dense/MatMulMatMulglobal_max_pooling1d/Maxdense/MatMul/ReadVariableOp*
transpose_a( *
transpose_b( *
T0
G
dense/BiasAdd/ReadVariableOpReadVariableOp
dense/bias*
dtype0
d
dense/BiasAddBiasAdddense/MatMuldense/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC
4
mul_1/yConst*
valueB
 *  ??*
dtype0
-
mul_1Muldense/BiasAddmul_1/y*
T0
8
Minimum_2/xConst*
valueB
 *  ??*
dtype0
8
Minimum_2/yConst*
valueB
 *    *
dtype0
7
	Minimum_2MinimumMinimum_2/xMinimum_2/y*
T0
8
Minimum_3/xConst*
valueB
 *  ??*
dtype0
5
	Minimum_3MinimumMinimum_3/x	Minimum_2*
T0
8
dropout_2/ShapeShapemul_1*
T0*
out_type0
I
dropout_2/random_uniform/minConst*
valueB
 *    *
dtype0
I
dropout_2/random_uniform/maxConst*
valueB
 *  ??*
dtype0
w
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape*
dtype0*
seed2 *

seed *
T0
h
dropout_2/random_uniform/subSubdropout_2/random_uniform/maxdropout_2/random_uniform/min*
T0
r
dropout_2/random_uniform/mulMul&dropout_2/random_uniform/RandomUniformdropout_2/random_uniform/sub*
T0
d
dropout_2/random_uniformAdddropout_2/random_uniform/muldropout_2/random_uniform/min*
T0
<
dropout_2/sub/xConst*
valueB
 *  ??*
dtype0
9
dropout_2/subSubdropout_2/sub/x	Minimum_3*
T0
@
dropout_2/truediv/xConst*
valueB
 *  ??*
dtype0
I
dropout_2/truedivRealDivdropout_2/truediv/xdropout_2/sub*
T0
T
dropout_2/GreaterEqualGreaterEqualdropout_2/random_uniform	Minimum_3*
T0
7
dropout_2/mulMulmul_1dropout_2/truediv*
T0
V
dropout_2/CastCastdropout_2/GreaterEqual*

SrcT0
*
Truncate( *

DstT0
>
dropout_2/mul_1Muldropout_2/muldropout_2/Cast*
T0
1
activation/ReluReludropout_2/mul_1*
T0
?
/dense_1/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_1/kernel*
valueB"?      *
dtype0
}
-dense_1/kernel/Initializer/random_uniform/minConst*!
_class
loc:@dense_1/kernel*
valueB
 *2R?*
dtype0
}
-dense_1/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_1/kernel*
valueB
 *2R>*
dtype0
?
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*

seed *
T0*!
_class
loc:@dense_1/kernel*
dtype0*
seed2 
?
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel
?
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_1/kernel
?
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel
?
dense_1/kernelVarHandleOp*
shared_namedense_1/kernel*!
_class
loc:@dense_1/kernel*
dtype0*
	container *
shape:	?
U
/dense_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/kernel
q
dense_1/kernel/AssignAssignVariableOpdense_1/kernel)dense_1/kernel/Initializer/random_uniform*
dtype0
Q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
dtype0
p
dense_1/bias/Initializer/zerosConst*
_class
loc:@dense_1/bias*
valueB*    *
dtype0
?
dense_1/biasVarHandleOp*
	container *
shape:*
shared_namedense_1/bias*
_class
loc:@dense_1/bias*
dtype0
Q
-dense_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/bias
b
dense_1/bias/AssignAssignVariableOpdense_1/biasdense_1/bias/Initializer/zeros*
dtype0
M
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
dtype0
L
dense_1/MatMul/ReadVariableOpReadVariableOpdense_1/kernel*
dtype0
w
dense_1/MatMulMatMulactivation/Reludense_1/MatMul/ReadVariableOp*
transpose_a( *
transpose_b( *
T0
K
dense_1/BiasAdd/ReadVariableOpReadVariableOpdense_1/bias*
dtype0
j
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC
,
outputsSigmoiddense_1/BiasAdd*
T0
4
Const_2Const*
valueB
 *    *
dtype0
?
logistic_loss/zeros_like	ZerosLikedense_1/BiasAdd*
T0
^
logistic_loss/GreaterEqualGreaterEqualdense_1/BiasAddlogistic_loss/zeros_like*
T0
n
logistic_loss/SelectSelectlogistic_loss/GreaterEqualdense_1/BiasAddlogistic_loss/zeros_like*
T0
2
logistic_loss/NegNegdense_1/BiasAdd*
T0
i
logistic_loss/Select_1Selectlogistic_loss/GreaterEquallogistic_loss/Negdense_1/BiasAdd*
T0
;
logistic_loss/mulMuldense_1/BiasAddtargets*
T0
J
logistic_loss/subSublogistic_loss/Selectlogistic_loss/mul*
T0
9
logistic_loss/ExpExplogistic_loss/Select_1*
T0
8
logistic_loss/Log1pLog1plogistic_loss/Exp*
T0
E
logistic_lossAddlogistic_loss/sublogistic_loss/Log1p*
T0
I
Mean/reduction_indicesConst*
valueB :
?????????*
dtype0
Y
MeanMeanlogistic_lossMean/reduction_indices*

Tidx0*
	keep_dims( *
T0
5
Const_3Const*
valueB: *
dtype0
A
lossMeanMeanConst_3*
T0*

Tidx0*
	keep_dims( 
8
gradients/ShapeConst*
valueB *
dtype0
@
gradients/grad_ys_0Const*
valueB
 *  ??*
dtype0
W
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0
O
!gradients/loss_grad/Reshape/shapeConst*
dtype0*
valueB:
p
gradients/loss_grad/ReshapeReshapegradients/Fill!gradients/loss_grad/Reshape/shape*
Tshape0*
T0
A
gradients/loss_grad/ShapeShapeMean*
out_type0*
T0
s
gradients/loss_grad/TileTilegradients/loss_grad/Reshapegradients/loss_grad/Shape*
T0*

Tmultiples0
C
gradients/loss_grad/Shape_1ShapeMean*
T0*
out_type0
D
gradients/loss_grad/Shape_2Const*
valueB *
dtype0
G
gradients/loss_grad/ConstConst*
valueB: *
dtype0
~
gradients/loss_grad/ProdProdgradients/loss_grad/Shape_1gradients/loss_grad/Const*
T0*

Tidx0*
	keep_dims( 
I
gradients/loss_grad/Const_1Const*
valueB: *
dtype0
?
gradients/loss_grad/Prod_1Prodgradients/loss_grad/Shape_2gradients/loss_grad/Const_1*
T0*

Tidx0*
	keep_dims( 
G
gradients/loss_grad/Maximum/yConst*
value	B :*
dtype0
j
gradients/loss_grad/MaximumMaximumgradients/loss_grad/Prod_1gradients/loss_grad/Maximum/y*
T0
h
gradients/loss_grad/floordivFloorDivgradients/loss_grad/Prodgradients/loss_grad/Maximum*
T0
f
gradients/loss_grad/CastCastgradients/loss_grad/floordiv*

SrcT0*
Truncate( *

DstT0
c
gradients/loss_grad/truedivRealDivgradients/loss_grad/Tilegradients/loss_grad/Cast*
T0
J
gradients/Mean_grad/ShapeShapelogistic_loss*
T0*
out_type0
p
gradients/Mean_grad/SizeConst*,
_class"
 loc:@gradients/Mean_grad/Shape*
value	B :*
dtype0
?
gradients/Mean_grad/addAddV2Mean/reduction_indicesgradients/Mean_grad/Size*
T0*,
_class"
 loc:@gradients/Mean_grad/Shape
?
gradients/Mean_grad/modFloorModgradients/Mean_grad/addgradients/Mean_grad/Size*
T0*,
_class"
 loc:@gradients/Mean_grad/Shape
r
gradients/Mean_grad/Shape_1Const*,
_class"
 loc:@gradients/Mean_grad/Shape*
valueB *
dtype0
w
gradients/Mean_grad/range/startConst*,
_class"
 loc:@gradients/Mean_grad/Shape*
value	B : *
dtype0
w
gradients/Mean_grad/range/deltaConst*,
_class"
 loc:@gradients/Mean_grad/Shape*
value	B :*
dtype0
?
gradients/Mean_grad/rangeRangegradients/Mean_grad/range/startgradients/Mean_grad/Sizegradients/Mean_grad/range/delta*

Tidx0*,
_class"
 loc:@gradients/Mean_grad/Shape
v
gradients/Mean_grad/Fill/valueConst*,
_class"
 loc:@gradients/Mean_grad/Shape*
value	B :*
dtype0
?
gradients/Mean_grad/FillFillgradients/Mean_grad/Shape_1gradients/Mean_grad/Fill/value*
T0*,
_class"
 loc:@gradients/Mean_grad/Shape*

index_type0
?
!gradients/Mean_grad/DynamicStitchDynamicStitchgradients/Mean_grad/rangegradients/Mean_grad/modgradients/Mean_grad/Shapegradients/Mean_grad/Fill*
T0*,
_class"
 loc:@gradients/Mean_grad/Shape*
N
u
gradients/Mean_grad/Maximum/yConst*,
_class"
 loc:@gradients/Mean_grad/Shape*
value	B :*
dtype0
?
gradients/Mean_grad/MaximumMaximum!gradients/Mean_grad/DynamicStitchgradients/Mean_grad/Maximum/y*,
_class"
 loc:@gradients/Mean_grad/Shape*
T0
?
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Shapegradients/Mean_grad/Maximum*
T0*,
_class"
 loc:@gradients/Mean_grad/Shape
}
gradients/Mean_grad/ReshapeReshapegradients/loss_grad/truediv!gradients/Mean_grad/DynamicStitch*
T0*
Tshape0
v
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/floordiv*

Tmultiples0*
T0
L
gradients/Mean_grad/Shape_2Shapelogistic_loss*
T0*
out_type0
C
gradients/Mean_grad/Shape_3ShapeMean*
T0*
out_type0
G
gradients/Mean_grad/ConstConst*
valueB: *
dtype0
~
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_2gradients/Mean_grad/Const*

Tidx0*
	keep_dims( *
T0
I
gradients/Mean_grad/Const_1Const*
valueB: *
dtype0
?
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_3gradients/Mean_grad/Const_1*

Tidx0*
	keep_dims( *
T0
I
gradients/Mean_grad/Maximum_1/yConst*
value	B :*
dtype0
n
gradients/Mean_grad/Maximum_1Maximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum_1/y*
T0
l
gradients/Mean_grad/floordiv_1FloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum_1*
T0
h
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv_1*

SrcT0*
Truncate( *

DstT0
c
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0
W
"gradients/logistic_loss_grad/ShapeShapelogistic_loss/sub*
T0*
out_type0
[
$gradients/logistic_loss_grad/Shape_1Shapelogistic_loss/Log1p*
T0*
out_type0
?
2gradients/logistic_loss_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/logistic_loss_grad/Shape$gradients/logistic_loss_grad/Shape_1*
T0
?
 gradients/logistic_loss_grad/SumSumgradients/Mean_grad/truediv2gradients/logistic_loss_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
?
$gradients/logistic_loss_grad/ReshapeReshape gradients/logistic_loss_grad/Sum"gradients/logistic_loss_grad/Shape*
T0*
Tshape0
?
"gradients/logistic_loss_grad/Sum_1Sumgradients/Mean_grad/truediv4gradients/logistic_loss_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
?
&gradients/logistic_loss_grad/Reshape_1Reshape"gradients/logistic_loss_grad/Sum_1$gradients/logistic_loss_grad/Shape_1*
Tshape0*
T0
?
-gradients/logistic_loss_grad/tuple/group_depsNoOp%^gradients/logistic_loss_grad/Reshape'^gradients/logistic_loss_grad/Reshape_1
?
5gradients/logistic_loss_grad/tuple/control_dependencyIdentity$gradients/logistic_loss_grad/Reshape.^gradients/logistic_loss_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/logistic_loss_grad/Reshape
?
7gradients/logistic_loss_grad/tuple/control_dependency_1Identity&gradients/logistic_loss_grad/Reshape_1.^gradients/logistic_loss_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/logistic_loss_grad/Reshape_1
^
&gradients/logistic_loss/sub_grad/ShapeShapelogistic_loss/Select*
T0*
out_type0
]
(gradients/logistic_loss/sub_grad/Shape_1Shapelogistic_loss/mul*
T0*
out_type0
?
6gradients/logistic_loss/sub_grad/BroadcastGradientArgsBroadcastGradientArgs&gradients/logistic_loss/sub_grad/Shape(gradients/logistic_loss/sub_grad/Shape_1*
T0
?
$gradients/logistic_loss/sub_grad/SumSum5gradients/logistic_loss_grad/tuple/control_dependency6gradients/logistic_loss/sub_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
?
(gradients/logistic_loss/sub_grad/ReshapeReshape$gradients/logistic_loss/sub_grad/Sum&gradients/logistic_loss/sub_grad/Shape*
T0*
Tshape0
k
$gradients/logistic_loss/sub_grad/NegNeg5gradients/logistic_loss_grad/tuple/control_dependency*
T0
?
&gradients/logistic_loss/sub_grad/Sum_1Sum$gradients/logistic_loss/sub_grad/Neg8gradients/logistic_loss/sub_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
?
*gradients/logistic_loss/sub_grad/Reshape_1Reshape&gradients/logistic_loss/sub_grad/Sum_1(gradients/logistic_loss/sub_grad/Shape_1*
T0*
Tshape0
?
1gradients/logistic_loss/sub_grad/tuple/group_depsNoOp)^gradients/logistic_loss/sub_grad/Reshape+^gradients/logistic_loss/sub_grad/Reshape_1
?
9gradients/logistic_loss/sub_grad/tuple/control_dependencyIdentity(gradients/logistic_loss/sub_grad/Reshape2^gradients/logistic_loss/sub_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/logistic_loss/sub_grad/Reshape
?
;gradients/logistic_loss/sub_grad/tuple/control_dependency_1Identity*gradients/logistic_loss/sub_grad/Reshape_12^gradients/logistic_loss/sub_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/logistic_loss/sub_grad/Reshape_1
?
(gradients/logistic_loss/Log1p_grad/add/xConst8^gradients/logistic_loss_grad/tuple/control_dependency_1*
valueB
 *  ??*
dtype0
u
&gradients/logistic_loss/Log1p_grad/addAddV2(gradients/logistic_loss/Log1p_grad/add/xlogistic_loss/Exp*
T0
l
-gradients/logistic_loss/Log1p_grad/Reciprocal
Reciprocal&gradients/logistic_loss/Log1p_grad/add*
T0
?
&gradients/logistic_loss/Log1p_grad/mulMul7gradients/logistic_loss_grad/tuple/control_dependency_1-gradients/logistic_loss/Log1p_grad/Reciprocal*
T0
U
.gradients/logistic_loss/Select_grad/zeros_like	ZerosLikedense_1/BiasAdd*
T0
?
*gradients/logistic_loss/Select_grad/SelectSelectlogistic_loss/GreaterEqual9gradients/logistic_loss/sub_grad/tuple/control_dependency.gradients/logistic_loss/Select_grad/zeros_like*
T0
?
,gradients/logistic_loss/Select_grad/Select_1Selectlogistic_loss/GreaterEqual.gradients/logistic_loss/Select_grad/zeros_like9gradients/logistic_loss/sub_grad/tuple/control_dependency*
T0
?
4gradients/logistic_loss/Select_grad/tuple/group_depsNoOp+^gradients/logistic_loss/Select_grad/Select-^gradients/logistic_loss/Select_grad/Select_1
?
<gradients/logistic_loss/Select_grad/tuple/control_dependencyIdentity*gradients/logistic_loss/Select_grad/Select5^gradients/logistic_loss/Select_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/logistic_loss/Select_grad/Select
?
>gradients/logistic_loss/Select_grad/tuple/control_dependency_1Identity,gradients/logistic_loss/Select_grad/Select_15^gradients/logistic_loss/Select_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/logistic_loss/Select_grad/Select_1
Y
&gradients/logistic_loss/mul_grad/ShapeShapedense_1/BiasAdd*
T0*
out_type0
S
(gradients/logistic_loss/mul_grad/Shape_1Shapetargets*
T0*
out_type0
?
6gradients/logistic_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgs&gradients/logistic_loss/mul_grad/Shape(gradients/logistic_loss/mul_grad/Shape_1*
T0
z
$gradients/logistic_loss/mul_grad/MulMul;gradients/logistic_loss/sub_grad/tuple/control_dependency_1targets*
T0
?
$gradients/logistic_loss/mul_grad/SumSum$gradients/logistic_loss/mul_grad/Mul6gradients/logistic_loss/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
?
(gradients/logistic_loss/mul_grad/ReshapeReshape$gradients/logistic_loss/mul_grad/Sum&gradients/logistic_loss/mul_grad/Shape*
T0*
Tshape0
?
&gradients/logistic_loss/mul_grad/Mul_1Muldense_1/BiasAdd;gradients/logistic_loss/sub_grad/tuple/control_dependency_1*
T0
?
&gradients/logistic_loss/mul_grad/Sum_1Sum&gradients/logistic_loss/mul_grad/Mul_18gradients/logistic_loss/mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
?
*gradients/logistic_loss/mul_grad/Reshape_1Reshape&gradients/logistic_loss/mul_grad/Sum_1(gradients/logistic_loss/mul_grad/Shape_1*
Tshape0*
T0
?
1gradients/logistic_loss/mul_grad/tuple/group_depsNoOp)^gradients/logistic_loss/mul_grad/Reshape+^gradients/logistic_loss/mul_grad/Reshape_1
?
9gradients/logistic_loss/mul_grad/tuple/control_dependencyIdentity(gradients/logistic_loss/mul_grad/Reshape2^gradients/logistic_loss/mul_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/logistic_loss/mul_grad/Reshape
?
;gradients/logistic_loss/mul_grad/tuple/control_dependency_1Identity*gradients/logistic_loss/mul_grad/Reshape_12^gradients/logistic_loss/mul_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/logistic_loss/mul_grad/Reshape_1
o
$gradients/logistic_loss/Exp_grad/mulMul&gradients/logistic_loss/Log1p_grad/mullogistic_loss/Exp*
T0
Y
0gradients/logistic_loss/Select_1_grad/zeros_like	ZerosLikelogistic_loss/Neg*
T0
?
,gradients/logistic_loss/Select_1_grad/SelectSelectlogistic_loss/GreaterEqual$gradients/logistic_loss/Exp_grad/mul0gradients/logistic_loss/Select_1_grad/zeros_like*
T0
?
.gradients/logistic_loss/Select_1_grad/Select_1Selectlogistic_loss/GreaterEqual0gradients/logistic_loss/Select_1_grad/zeros_like$gradients/logistic_loss/Exp_grad/mul*
T0
?
6gradients/logistic_loss/Select_1_grad/tuple/group_depsNoOp-^gradients/logistic_loss/Select_1_grad/Select/^gradients/logistic_loss/Select_1_grad/Select_1
?
>gradients/logistic_loss/Select_1_grad/tuple/control_dependencyIdentity,gradients/logistic_loss/Select_1_grad/Select7^gradients/logistic_loss/Select_1_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/logistic_loss/Select_1_grad/Select
?
@gradients/logistic_loss/Select_1_grad/tuple/control_dependency_1Identity.gradients/logistic_loss/Select_1_grad/Select_17^gradients/logistic_loss/Select_1_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/logistic_loss/Select_1_grad/Select_1
t
$gradients/logistic_loss/Neg_grad/NegNeg>gradients/logistic_loss/Select_1_grad/tuple/control_dependency*
T0
?
gradients/AddNAddN<gradients/logistic_loss/Select_grad/tuple/control_dependency9gradients/logistic_loss/mul_grad/tuple/control_dependency@gradients/logistic_loss/Select_1_grad/tuple/control_dependency_1$gradients/logistic_loss/Neg_grad/Neg*
T0*=
_class3
1/loc:@gradients/logistic_loss/Select_grad/Select*
N
i
*gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN*
T0*
data_formatNHWC
u
/gradients/dense_1/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN+^gradients/dense_1/BiasAdd_grad/BiasAddGrad
?
7gradients/dense_1/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN0^gradients/dense_1/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/logistic_loss/Select_grad/Select
?
9gradients/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_1/BiasAdd_grad/BiasAddGrad0^gradients/dense_1/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/dense_1/BiasAdd_grad/BiasAddGrad
?
$gradients/dense_1/MatMul_grad/MatMulMatMul7gradients/dense_1/BiasAdd_grad/tuple/control_dependencydense_1/MatMul/ReadVariableOp*
T0*
transpose_a( *
transpose_b(
?
&gradients/dense_1/MatMul_grad/MatMul_1MatMulactivation/Relu7gradients/dense_1/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0
?
.gradients/dense_1/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_1/MatMul_grad/MatMul'^gradients/dense_1/MatMul_grad/MatMul_1
?
6gradients/dense_1/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_1/MatMul_grad/MatMul/^gradients/dense_1/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_1/MatMul_grad/MatMul
?
8gradients/dense_1/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_1/MatMul_grad/MatMul_1/^gradients/dense_1/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_1/MatMul_grad/MatMul_1
?
'gradients/activation/Relu_grad/ReluGradReluGrad6gradients/dense_1/MatMul_grad/tuple/control_dependencyactivation/Relu*
T0
U
$gradients/dropout_2/mul_1_grad/ShapeShapedropout_2/mul*
T0*
out_type0
X
&gradients/dropout_2/mul_1_grad/Shape_1Shapedropout_2/Cast*
T0*
out_type0
?
4gradients/dropout_2/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs$gradients/dropout_2/mul_1_grad/Shape&gradients/dropout_2/mul_1_grad/Shape_1*
T0
k
"gradients/dropout_2/mul_1_grad/MulMul'gradients/activation/Relu_grad/ReluGraddropout_2/Cast*
T0
?
"gradients/dropout_2/mul_1_grad/SumSum"gradients/dropout_2/mul_1_grad/Mul4gradients/dropout_2/mul_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
?
&gradients/dropout_2/mul_1_grad/ReshapeReshape"gradients/dropout_2/mul_1_grad/Sum$gradients/dropout_2/mul_1_grad/Shape*
T0*
Tshape0
l
$gradients/dropout_2/mul_1_grad/Mul_1Muldropout_2/mul'gradients/activation/Relu_grad/ReluGrad*
T0
?
$gradients/dropout_2/mul_1_grad/Sum_1Sum$gradients/dropout_2/mul_1_grad/Mul_16gradients/dropout_2/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
?
(gradients/dropout_2/mul_1_grad/Reshape_1Reshape$gradients/dropout_2/mul_1_grad/Sum_1&gradients/dropout_2/mul_1_grad/Shape_1*
T0*
Tshape0
?
/gradients/dropout_2/mul_1_grad/tuple/group_depsNoOp'^gradients/dropout_2/mul_1_grad/Reshape)^gradients/dropout_2/mul_1_grad/Reshape_1
?
7gradients/dropout_2/mul_1_grad/tuple/control_dependencyIdentity&gradients/dropout_2/mul_1_grad/Reshape0^gradients/dropout_2/mul_1_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dropout_2/mul_1_grad/Reshape
?
9gradients/dropout_2/mul_1_grad/tuple/control_dependency_1Identity(gradients/dropout_2/mul_1_grad/Reshape_10^gradients/dropout_2/mul_1_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/dropout_2/mul_1_grad/Reshape_1
K
"gradients/dropout_2/mul_grad/ShapeShapemul_1*
T0*
out_type0
Y
$gradients/dropout_2/mul_grad/Shape_1Shapedropout_2/truediv*
T0*
out_type0
?
2gradients/dropout_2/mul_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/dropout_2/mul_grad/Shape$gradients/dropout_2/mul_grad/Shape_1*
T0
|
 gradients/dropout_2/mul_grad/MulMul7gradients/dropout_2/mul_1_grad/tuple/control_dependencydropout_2/truediv*
T0
?
 gradients/dropout_2/mul_grad/SumSum gradients/dropout_2/mul_grad/Mul2gradients/dropout_2/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
?
$gradients/dropout_2/mul_grad/ReshapeReshape gradients/dropout_2/mul_grad/Sum"gradients/dropout_2/mul_grad/Shape*
T0*
Tshape0
r
"gradients/dropout_2/mul_grad/Mul_1Mulmul_17gradients/dropout_2/mul_1_grad/tuple/control_dependency*
T0
?
"gradients/dropout_2/mul_grad/Sum_1Sum"gradients/dropout_2/mul_grad/Mul_14gradients/dropout_2/mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
?
&gradients/dropout_2/mul_grad/Reshape_1Reshape"gradients/dropout_2/mul_grad/Sum_1$gradients/dropout_2/mul_grad/Shape_1*
Tshape0*
T0
?
-gradients/dropout_2/mul_grad/tuple/group_depsNoOp%^gradients/dropout_2/mul_grad/Reshape'^gradients/dropout_2/mul_grad/Reshape_1
?
5gradients/dropout_2/mul_grad/tuple/control_dependencyIdentity$gradients/dropout_2/mul_grad/Reshape.^gradients/dropout_2/mul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dropout_2/mul_grad/Reshape
?
7gradients/dropout_2/mul_grad/tuple/control_dependency_1Identity&gradients/dropout_2/mul_grad/Reshape_1.^gradients/dropout_2/mul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dropout_2/mul_grad/Reshape_1
K
gradients/mul_1_grad/ShapeShapedense/BiasAdd*
T0*
out_type0
G
gradients/mul_1_grad/Shape_1Shapemul_1/y*
T0*
out_type0
?
*gradients/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_1_grad/Shapegradients/mul_1_grad/Shape_1*
T0
h
gradients/mul_1_grad/MulMul5gradients/dropout_2/mul_grad/tuple/control_dependencymul_1/y*
T0
?
gradients/mul_1_grad/SumSumgradients/mul_1_grad/Mul*gradients/mul_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/mul_1_grad/ReshapeReshapegradients/mul_1_grad/Sumgradients/mul_1_grad/Shape*
T0*
Tshape0
p
gradients/mul_1_grad/Mul_1Muldense/BiasAdd5gradients/dropout_2/mul_grad/tuple/control_dependency*
T0
?
gradients/mul_1_grad/Sum_1Sumgradients/mul_1_grad/Mul_1,gradients/mul_1_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
z
gradients/mul_1_grad/Reshape_1Reshapegradients/mul_1_grad/Sum_1gradients/mul_1_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_1_grad/tuple/group_depsNoOp^gradients/mul_1_grad/Reshape^gradients/mul_1_grad/Reshape_1
?
-gradients/mul_1_grad/tuple/control_dependencyIdentitygradients/mul_1_grad/Reshape&^gradients/mul_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_1_grad/Reshape
?
/gradients/mul_1_grad/tuple/control_dependency_1Identitygradients/mul_1_grad/Reshape_1&^gradients/mul_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_1_grad/Reshape_1
?
(gradients/dense/BiasAdd_grad/BiasAddGradBiasAddGrad-gradients/mul_1_grad/tuple/control_dependency*
T0*
data_formatNHWC
?
-gradients/dense/BiasAdd_grad/tuple/group_depsNoOp)^gradients/dense/BiasAdd_grad/BiasAddGrad.^gradients/mul_1_grad/tuple/control_dependency
?
5gradients/dense/BiasAdd_grad/tuple/control_dependencyIdentity-gradients/mul_1_grad/tuple/control_dependency.^gradients/dense/BiasAdd_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_1_grad/Reshape
?
7gradients/dense/BiasAdd_grad/tuple/control_dependency_1Identity(gradients/dense/BiasAdd_grad/BiasAddGrad.^gradients/dense/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/dense/BiasAdd_grad/BiasAddGrad
?
"gradients/dense/MatMul_grad/MatMulMatMul5gradients/dense/BiasAdd_grad/tuple/control_dependencydense/MatMul/ReadVariableOp*
T0*
transpose_a( *
transpose_b(
?
$gradients/dense/MatMul_grad/MatMul_1MatMulglobal_max_pooling1d/Max5gradients/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
?
,gradients/dense/MatMul_grad/tuple/group_depsNoOp#^gradients/dense/MatMul_grad/MatMul%^gradients/dense/MatMul_grad/MatMul_1
?
4gradients/dense/MatMul_grad/tuple/control_dependencyIdentity"gradients/dense/MatMul_grad/MatMul-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dense/MatMul_grad/MatMul
?
6gradients/dense/MatMul_grad/tuple/control_dependency_1Identity$gradients/dense/MatMul_grad/MatMul_1-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense/MatMul_grad/MatMul_1
\
-gradients/global_max_pooling1d/Max_grad/ShapeShapeconv1d/Relu*
T0*
out_type0
V
,gradients/global_max_pooling1d/Max_grad/SizeConst*
value	B :*
dtype0
?
+gradients/global_max_pooling1d/Max_grad/addAddV2*global_max_pooling1d/Max/reduction_indices,gradients/global_max_pooling1d/Max_grad/Size*
T0
?
+gradients/global_max_pooling1d/Max_grad/modFloorMod+gradients/global_max_pooling1d/Max_grad/add,gradients/global_max_pooling1d/Max_grad/Size*
T0
X
/gradients/global_max_pooling1d/Max_grad/Shape_1Const*
valueB *
dtype0
]
3gradients/global_max_pooling1d/Max_grad/range/startConst*
value	B : *
dtype0
]
3gradients/global_max_pooling1d/Max_grad/range/deltaConst*
value	B :*
dtype0
?
-gradients/global_max_pooling1d/Max_grad/rangeRange3gradients/global_max_pooling1d/Max_grad/range/start,gradients/global_max_pooling1d/Max_grad/Size3gradients/global_max_pooling1d/Max_grad/range/delta*

Tidx0
\
2gradients/global_max_pooling1d/Max_grad/Fill/valueConst*
value	B :*
dtype0
?
,gradients/global_max_pooling1d/Max_grad/FillFill/gradients/global_max_pooling1d/Max_grad/Shape_12gradients/global_max_pooling1d/Max_grad/Fill/value*
T0*

index_type0
?
5gradients/global_max_pooling1d/Max_grad/DynamicStitchDynamicStitch-gradients/global_max_pooling1d/Max_grad/range+gradients/global_max_pooling1d/Max_grad/mod-gradients/global_max_pooling1d/Max_grad/Shape,gradients/global_max_pooling1d/Max_grad/Fill*
T0*
N
?
/gradients/global_max_pooling1d/Max_grad/ReshapeReshapeglobal_max_pooling1d/Max5gradients/global_max_pooling1d/Max_grad/DynamicStitch*
T0*
Tshape0
?
1gradients/global_max_pooling1d/Max_grad/Reshape_1Reshape4gradients/dense/MatMul_grad/tuple/control_dependency5gradients/global_max_pooling1d/Max_grad/DynamicStitch*
T0*
Tshape0
?
-gradients/global_max_pooling1d/Max_grad/EqualEqual/gradients/global_max_pooling1d/Max_grad/Reshapeconv1d/Relu*
incompatible_shape_error(*
T0
?
,gradients/global_max_pooling1d/Max_grad/CastCast-gradients/global_max_pooling1d/Max_grad/Equal*

SrcT0
*
Truncate( *

DstT0
?
+gradients/global_max_pooling1d/Max_grad/SumSum,gradients/global_max_pooling1d/Max_grad/Cast*global_max_pooling1d/Max/reduction_indices*

Tidx0*
	keep_dims( *
T0
?
1gradients/global_max_pooling1d/Max_grad/Reshape_2Reshape+gradients/global_max_pooling1d/Max_grad/Sum5gradients/global_max_pooling1d/Max_grad/DynamicStitch*
T0*
Tshape0
?
/gradients/global_max_pooling1d/Max_grad/truedivRealDiv,gradients/global_max_pooling1d/Max_grad/Cast1gradients/global_max_pooling1d/Max_grad/Reshape_2*
T0
?
+gradients/global_max_pooling1d/Max_grad/mulMul/gradients/global_max_pooling1d/Max_grad/truediv1gradients/global_max_pooling1d/Max_grad/Reshape_1*
T0
r
#gradients/conv1d/Relu_grad/ReluGradReluGrad+gradients/global_max_pooling1d/Max_grad/mulconv1d/Relu*
T0
}
)gradients/conv1d/BiasAdd_grad/BiasAddGradBiasAddGrad#gradients/conv1d/Relu_grad/ReluGrad*
T0*
data_formatNHWC
?
.gradients/conv1d/BiasAdd_grad/tuple/group_depsNoOp*^gradients/conv1d/BiasAdd_grad/BiasAddGrad$^gradients/conv1d/Relu_grad/ReluGrad
?
6gradients/conv1d/BiasAdd_grad/tuple/control_dependencyIdentity#gradients/conv1d/Relu_grad/ReluGrad/^gradients/conv1d/BiasAdd_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/conv1d/Relu_grad/ReluGrad
?
8gradients/conv1d/BiasAdd_grad/tuple/control_dependency_1Identity)gradients/conv1d/BiasAdd_grad/BiasAddGrad/^gradients/conv1d/BiasAdd_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/conv1d/BiasAdd_grad/BiasAddGrad
[
*gradients/conv1d/conv1d/Squeeze_grad/ShapeShapeconv1d/conv1d*
T0*
out_type0
?
,gradients/conv1d/conv1d/Squeeze_grad/ReshapeReshape6gradients/conv1d/BiasAdd_grad/tuple/control_dependency*gradients/conv1d/conv1d/Squeeze_grad/Shape*
T0*
Tshape0
?
#gradients/conv1d/conv1d_grad/ShapeNShapeNconv1d/conv1d/ExpandDimsconv1d/conv1d/ExpandDims_1*
T0*
out_type0*
N
?
0gradients/conv1d/conv1d_grad/Conv2DBackpropInputConv2DBackpropInput#gradients/conv1d/conv1d_grad/ShapeNconv1d/conv1d/ExpandDims_1,gradients/conv1d/conv1d/Squeeze_grad/Reshape*
strides
*
data_formatNHWC*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingVALID*
	dilations
*
T0
?
1gradients/conv1d/conv1d_grad/Conv2DBackpropFilterConv2DBackpropFilterconv1d/conv1d/ExpandDims%gradients/conv1d/conv1d_grad/ShapeN:1,gradients/conv1d/conv1d/Squeeze_grad/Reshape*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingVALID
?
-gradients/conv1d/conv1d_grad/tuple/group_depsNoOp2^gradients/conv1d/conv1d_grad/Conv2DBackpropFilter1^gradients/conv1d/conv1d_grad/Conv2DBackpropInput
?
5gradients/conv1d/conv1d_grad/tuple/control_dependencyIdentity0gradients/conv1d/conv1d_grad/Conv2DBackpropInput.^gradients/conv1d/conv1d_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/conv1d/conv1d_grad/Conv2DBackpropInput
?
7gradients/conv1d/conv1d_grad/tuple/control_dependency_1Identity1gradients/conv1d/conv1d_grad/Conv2DBackpropFilter.^gradients/conv1d/conv1d_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/conv1d/conv1d_grad/Conv2DBackpropFilter
`
-gradients/conv1d/conv1d/ExpandDims_grad/ShapeShapedropout_1/mul_1*
T0*
out_type0
?
/gradients/conv1d/conv1d/ExpandDims_grad/ReshapeReshape5gradients/conv1d/conv1d_grad/tuple/control_dependency-gradients/conv1d/conv1d/ExpandDims_grad/Shape*
Tshape0*
T0
h
/gradients/conv1d/conv1d/ExpandDims_1_grad/ShapeConst*!
valueB"   ?      *
dtype0
?
1gradients/conv1d/conv1d/ExpandDims_1_grad/ReshapeReshape7gradients/conv1d/conv1d_grad/tuple/control_dependency_1/gradients/conv1d/conv1d/ExpandDims_1_grad/Shape*
T0*
Tshape0
U
$gradients/dropout_1/mul_1_grad/ShapeShapedropout_1/mul*
T0*
out_type0
X
&gradients/dropout_1/mul_1_grad/Shape_1Shapedropout_1/Cast*
T0*
out_type0
?
4gradients/dropout_1/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs$gradients/dropout_1/mul_1_grad/Shape&gradients/dropout_1/mul_1_grad/Shape_1*
T0
s
"gradients/dropout_1/mul_1_grad/MulMul/gradients/conv1d/conv1d/ExpandDims_grad/Reshapedropout_1/Cast*
T0
?
"gradients/dropout_1/mul_1_grad/SumSum"gradients/dropout_1/mul_1_grad/Mul4gradients/dropout_1/mul_1_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
?
&gradients/dropout_1/mul_1_grad/ReshapeReshape"gradients/dropout_1/mul_1_grad/Sum$gradients/dropout_1/mul_1_grad/Shape*
T0*
Tshape0
t
$gradients/dropout_1/mul_1_grad/Mul_1Muldropout_1/mul/gradients/conv1d/conv1d/ExpandDims_grad/Reshape*
T0
?
$gradients/dropout_1/mul_1_grad/Sum_1Sum$gradients/dropout_1/mul_1_grad/Mul_16gradients/dropout_1/mul_1_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
?
(gradients/dropout_1/mul_1_grad/Reshape_1Reshape$gradients/dropout_1/mul_1_grad/Sum_1&gradients/dropout_1/mul_1_grad/Shape_1*
T0*
Tshape0
?
/gradients/dropout_1/mul_1_grad/tuple/group_depsNoOp'^gradients/dropout_1/mul_1_grad/Reshape)^gradients/dropout_1/mul_1_grad/Reshape_1
?
7gradients/dropout_1/mul_1_grad/tuple/control_dependencyIdentity&gradients/dropout_1/mul_1_grad/Reshape0^gradients/dropout_1/mul_1_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dropout_1/mul_1_grad/Reshape
?
9gradients/dropout_1/mul_1_grad/tuple/control_dependency_1Identity(gradients/dropout_1/mul_1_grad/Reshape_10^gradients/dropout_1/mul_1_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/dropout_1/mul_1_grad/Reshape_1
I
"gradients/dropout_1/mul_grad/ShapeShapemul*
T0*
out_type0
Y
$gradients/dropout_1/mul_grad/Shape_1Shapedropout_1/truediv*
out_type0*
T0
?
2gradients/dropout_1/mul_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/dropout_1/mul_grad/Shape$gradients/dropout_1/mul_grad/Shape_1*
T0
|
 gradients/dropout_1/mul_grad/MulMul7gradients/dropout_1/mul_1_grad/tuple/control_dependencydropout_1/truediv*
T0
?
 gradients/dropout_1/mul_grad/SumSum gradients/dropout_1/mul_grad/Mul2gradients/dropout_1/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
?
$gradients/dropout_1/mul_grad/ReshapeReshape gradients/dropout_1/mul_grad/Sum"gradients/dropout_1/mul_grad/Shape*
Tshape0*
T0
p
"gradients/dropout_1/mul_grad/Mul_1Mulmul7gradients/dropout_1/mul_1_grad/tuple/control_dependency*
T0
?
"gradients/dropout_1/mul_grad/Sum_1Sum"gradients/dropout_1/mul_grad/Mul_14gradients/dropout_1/mul_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
?
&gradients/dropout_1/mul_grad/Reshape_1Reshape"gradients/dropout_1/mul_grad/Sum_1$gradients/dropout_1/mul_grad/Shape_1*
T0*
Tshape0
?
-gradients/dropout_1/mul_grad/tuple/group_depsNoOp%^gradients/dropout_1/mul_grad/Reshape'^gradients/dropout_1/mul_grad/Reshape_1
?
5gradients/dropout_1/mul_grad/tuple/control_dependencyIdentity$gradients/dropout_1/mul_grad/Reshape.^gradients/dropout_1/mul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dropout_1/mul_grad/Reshape
?
7gradients/dropout_1/mul_grad/tuple/control_dependency_1Identity&gradients/dropout_1/mul_grad/Reshape_1.^gradients/dropout_1/mul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dropout_1/mul_grad/Reshape_1
a
gradients/mul_grad/ShapeShape%embedding/embedding_lookup/Identity_1*
T0*
out_type0
C
gradients/mul_grad/Shape_1Shapemul/y*
T0*
out_type0
?
(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_grad/Shapegradients/mul_grad/Shape_1*
T0
d
gradients/mul_grad/MulMul5gradients/dropout_1/mul_grad/tuple/control_dependencymul/y*
T0
?
gradients/mul_grad/SumSumgradients/mul_grad/Mul(gradients/mul_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
n
gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sumgradients/mul_grad/Shape*
T0*
Tshape0
?
gradients/mul_grad/Mul_1Mul%embedding/embedding_lookup/Identity_15gradients/dropout_1/mul_grad/tuple/control_dependency*
T0
?
gradients/mul_grad/Sum_1Sumgradients/mul_grad/Mul_1*gradients/mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
t
gradients/mul_grad/Reshape_1Reshapegradients/mul_grad/Sum_1gradients/mul_grad/Shape_1*
T0*
Tshape0
g
#gradients/mul_grad/tuple/group_depsNoOp^gradients/mul_grad/Reshape^gradients/mul_grad/Reshape_1
?
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Reshape$^gradients/mul_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_grad/Reshape
?
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Reshape_1$^gradients/mul_grad/tuple/group_deps*/
_class%
#!loc:@gradients/mul_grad/Reshape_1*
T0
d
/gradients/embedding/embedding_lookup_grad/ConstConst*
dtype0*
valueB",  ?   
_
.gradients/embedding/embedding_lookup_grad/SizeSizeembedding/Cast*
T0*
out_type0
b
8gradients/embedding/embedding_lookup_grad/ExpandDims/dimConst*
value	B : *
dtype0
?
4gradients/embedding/embedding_lookup_grad/ExpandDims
ExpandDims.gradients/embedding/embedding_lookup_grad/Size8gradients/embedding/embedding_lookup_grad/ExpandDims/dim*

Tdim0*
T0
k
=gradients/embedding/embedding_lookup_grad/strided_slice/stackConst*
dtype0*
valueB:
m
?gradients/embedding/embedding_lookup_grad/strided_slice/stack_1Const*
valueB: *
dtype0
m
?gradients/embedding/embedding_lookup_grad/strided_slice/stack_2Const*
dtype0*
valueB:
?
7gradients/embedding/embedding_lookup_grad/strided_sliceStridedSlice/gradients/embedding/embedding_lookup_grad/Const=gradients/embedding/embedding_lookup_grad/strided_slice/stack?gradients/embedding/embedding_lookup_grad/strided_slice/stack_1?gradients/embedding/embedding_lookup_grad/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
Index0*
T0*
shrink_axis_mask 
_
5gradients/embedding/embedding_lookup_grad/concat/axisConst*
value	B : *
dtype0
?
0gradients/embedding/embedding_lookup_grad/concatConcatV24gradients/embedding/embedding_lookup_grad/ExpandDims7gradients/embedding/embedding_lookup_grad/strided_slice5gradients/embedding/embedding_lookup_grad/concat/axis*
N*

Tidx0*
T0
?
1gradients/embedding/embedding_lookup_grad/ReshapeReshape+gradients/mul_grad/tuple/control_dependency0gradients/embedding/embedding_lookup_grad/concat*
T0*
Tshape0
?
3gradients/embedding/embedding_lookup_grad/Reshape_1Reshapeembedding/Cast4gradients/embedding/embedding_lookup_grad/ExpandDims*
T0*
Tshape0
r
%beta1_power/Initializer/initial_valueConst*
valueB
 *fff?*
_class
loc:@conv1d/bias*
dtype0
?
beta1_powerVarHandleOp*
shared_namebeta1_power*
_class
loc:@conv1d/bias*
dtype0*
	container *
shape: 
o
,beta1_power/IsInitialized/VarIsInitializedOpVarIsInitializedOpbeta1_power*
_class
loc:@conv1d/bias
g
beta1_power/AssignAssignVariableOpbeta1_power%beta1_power/Initializer/initial_value*
dtype0
k
beta1_power/Read/ReadVariableOpReadVariableOpbeta1_power*
_class
loc:@conv1d/bias*
dtype0
r
%beta2_power/Initializer/initial_valueConst*
valueB
 *w??*
_class
loc:@conv1d/bias*
dtype0
?
beta2_powerVarHandleOp*
shape: *
shared_namebeta2_power*
_class
loc:@conv1d/bias*
dtype0*
	container 
o
,beta2_power/IsInitialized/VarIsInitializedOpVarIsInitializedOpbeta2_power*
_class
loc:@conv1d/bias
g
beta2_power/AssignAssignVariableOpbeta2_power%beta2_power/Initializer/initial_value*
dtype0
k
beta2_power/Read/ReadVariableOpReadVariableOpbeta2_power*
_class
loc:@conv1d/bias*
dtype0
?
@embedding/embeddings/optimizer/Initializer/zeros/shape_as_tensorConst*
dtype0*
valueB",  ?   *'
_class
loc:@embedding/embeddings
?
6embedding/embeddings/optimizer/Initializer/zeros/ConstConst*
dtype0*
valueB
 *    *'
_class
loc:@embedding/embeddings
?
0embedding/embeddings/optimizer/Initializer/zerosFill@embedding/embeddings/optimizer/Initializer/zeros/shape_as_tensor6embedding/embeddings/optimizer/Initializer/zeros/Const*
T0*

index_type0*'
_class
loc:@embedding/embeddings
?
embedding/embeddings/optimizerVarHandleOp*'
_class
loc:@embedding/embeddings*
dtype0*
	container *
shape:
??*/
shared_name embedding/embeddings/optimizer
?
?embedding/embeddings/optimizer/IsInitialized/VarIsInitializedOpVarIsInitializedOpembedding/embeddings/optimizer*'
_class
loc:@embedding/embeddings
?
%embedding/embeddings/optimizer/AssignAssignVariableOpembedding/embeddings/optimizer0embedding/embeddings/optimizer/Initializer/zeros*
dtype0
?
2embedding/embeddings/optimizer/Read/ReadVariableOpReadVariableOpembedding/embeddings/optimizer*
dtype0*'
_class
loc:@embedding/embeddings
?
Bembedding/embeddings/optimizer_1/Initializer/zeros/shape_as_tensorConst*
valueB",  ?   *'
_class
loc:@embedding/embeddings*
dtype0
?
8embedding/embeddings/optimizer_1/Initializer/zeros/ConstConst*
valueB
 *    *'
_class
loc:@embedding/embeddings*
dtype0
?
2embedding/embeddings/optimizer_1/Initializer/zerosFillBembedding/embeddings/optimizer_1/Initializer/zeros/shape_as_tensor8embedding/embeddings/optimizer_1/Initializer/zeros/Const*
T0*

index_type0*'
_class
loc:@embedding/embeddings
?
 embedding/embeddings/optimizer_1VarHandleOp*1
shared_name" embedding/embeddings/optimizer_1*'
_class
loc:@embedding/embeddings*
dtype0*
	container *
shape:
??
?
Aembedding/embeddings/optimizer_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp embedding/embeddings/optimizer_1*'
_class
loc:@embedding/embeddings
?
'embedding/embeddings/optimizer_1/AssignAssignVariableOp embedding/embeddings/optimizer_12embedding/embeddings/optimizer_1/Initializer/zeros*
dtype0
?
4embedding/embeddings/optimizer_1/Read/ReadVariableOpReadVariableOp embedding/embeddings/optimizer_1*
dtype0*'
_class
loc:@embedding/embeddings
?
9conv1d/kernel/optimizer/Initializer/zeros/shape_as_tensorConst*
dtype0*!
valueB"   ?      * 
_class
loc:@conv1d/kernel
~
/conv1d/kernel/optimizer/Initializer/zeros/ConstConst*
valueB
 *    * 
_class
loc:@conv1d/kernel*
dtype0
?
)conv1d/kernel/optimizer/Initializer/zerosFill9conv1d/kernel/optimizer/Initializer/zeros/shape_as_tensor/conv1d/kernel/optimizer/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@conv1d/kernel
?
conv1d/kernel/optimizerVarHandleOp*
shape:?*(
shared_nameconv1d/kernel/optimizer* 
_class
loc:@conv1d/kernel*
dtype0*
	container 
?
8conv1d/kernel/optimizer/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv1d/kernel/optimizer* 
_class
loc:@conv1d/kernel
?
conv1d/kernel/optimizer/AssignAssignVariableOpconv1d/kernel/optimizer)conv1d/kernel/optimizer/Initializer/zeros*
dtype0
?
+conv1d/kernel/optimizer/Read/ReadVariableOpReadVariableOpconv1d/kernel/optimizer* 
_class
loc:@conv1d/kernel*
dtype0
?
;conv1d/kernel/optimizer_1/Initializer/zeros/shape_as_tensorConst*!
valueB"   ?      * 
_class
loc:@conv1d/kernel*
dtype0
?
1conv1d/kernel/optimizer_1/Initializer/zeros/ConstConst*
valueB
 *    * 
_class
loc:@conv1d/kernel*
dtype0
?
+conv1d/kernel/optimizer_1/Initializer/zerosFill;conv1d/kernel/optimizer_1/Initializer/zeros/shape_as_tensor1conv1d/kernel/optimizer_1/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@conv1d/kernel
?
conv1d/kernel/optimizer_1VarHandleOp* 
_class
loc:@conv1d/kernel*
dtype0*
	container *
shape:?**
shared_nameconv1d/kernel/optimizer_1
?
:conv1d/kernel/optimizer_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv1d/kernel/optimizer_1* 
_class
loc:@conv1d/kernel
?
 conv1d/kernel/optimizer_1/AssignAssignVariableOpconv1d/kernel/optimizer_1+conv1d/kernel/optimizer_1/Initializer/zeros*
dtype0
?
-conv1d/kernel/optimizer_1/Read/ReadVariableOpReadVariableOpconv1d/kernel/optimizer_1* 
_class
loc:@conv1d/kernel*
dtype0
x
'conv1d/bias/optimizer/Initializer/zerosConst*
valueB*    *
_class
loc:@conv1d/bias*
dtype0
?
conv1d/bias/optimizerVarHandleOp*
shape:*&
shared_nameconv1d/bias/optimizer*
_class
loc:@conv1d/bias*
dtype0*
	container 
?
6conv1d/bias/optimizer/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv1d/bias/optimizer*
_class
loc:@conv1d/bias
}
conv1d/bias/optimizer/AssignAssignVariableOpconv1d/bias/optimizer'conv1d/bias/optimizer/Initializer/zeros*
dtype0

)conv1d/bias/optimizer/Read/ReadVariableOpReadVariableOpconv1d/bias/optimizer*
_class
loc:@conv1d/bias*
dtype0
z
)conv1d/bias/optimizer_1/Initializer/zerosConst*
valueB*    *
_class
loc:@conv1d/bias*
dtype0
?
conv1d/bias/optimizer_1VarHandleOp*(
shared_nameconv1d/bias/optimizer_1*
_class
loc:@conv1d/bias*
dtype0*
	container *
shape:
?
8conv1d/bias/optimizer_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv1d/bias/optimizer_1*
_class
loc:@conv1d/bias
?
conv1d/bias/optimizer_1/AssignAssignVariableOpconv1d/bias/optimizer_1)conv1d/bias/optimizer_1/Initializer/zeros*
dtype0
?
+conv1d/bias/optimizer_1/Read/ReadVariableOpReadVariableOpconv1d/bias/optimizer_1*
_class
loc:@conv1d/bias*
dtype0
?
8dense/kernel/optimizer/Initializer/zeros/shape_as_tensorConst*
valueB"   ?   *
_class
loc:@dense/kernel*
dtype0
|
.dense/kernel/optimizer/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@dense/kernel*
dtype0
?
(dense/kernel/optimizer/Initializer/zerosFill8dense/kernel/optimizer/Initializer/zeros/shape_as_tensor.dense/kernel/optimizer/Initializer/zeros/Const*

index_type0*
_class
loc:@dense/kernel*
T0
?
dense/kernel/optimizerVarHandleOp*
_class
loc:@dense/kernel*
dtype0*
	container *
shape:	?*'
shared_namedense/kernel/optimizer
?
7dense/kernel/optimizer/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense/kernel/optimizer*
_class
loc:@dense/kernel
?
dense/kernel/optimizer/AssignAssignVariableOpdense/kernel/optimizer(dense/kernel/optimizer/Initializer/zeros*
dtype0
?
*dense/kernel/optimizer/Read/ReadVariableOpReadVariableOpdense/kernel/optimizer*
_class
loc:@dense/kernel*
dtype0
?
:dense/kernel/optimizer_1/Initializer/zeros/shape_as_tensorConst*
valueB"   ?   *
_class
loc:@dense/kernel*
dtype0
~
0dense/kernel/optimizer_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@dense/kernel*
dtype0
?
*dense/kernel/optimizer_1/Initializer/zerosFill:dense/kernel/optimizer_1/Initializer/zeros/shape_as_tensor0dense/kernel/optimizer_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense/kernel
?
dense/kernel/optimizer_1VarHandleOp*
shape:	?*)
shared_namedense/kernel/optimizer_1*
_class
loc:@dense/kernel*
dtype0*
	container 
?
9dense/kernel/optimizer_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense/kernel/optimizer_1*
_class
loc:@dense/kernel
?
dense/kernel/optimizer_1/AssignAssignVariableOpdense/kernel/optimizer_1*dense/kernel/optimizer_1/Initializer/zeros*
dtype0
?
,dense/kernel/optimizer_1/Read/ReadVariableOpReadVariableOpdense/kernel/optimizer_1*
_class
loc:@dense/kernel*
dtype0
w
&dense/bias/optimizer/Initializer/zerosConst*
valueB?*    *
_class
loc:@dense/bias*
dtype0
?
dense/bias/optimizerVarHandleOp*%
shared_namedense/bias/optimizer*
_class
loc:@dense/bias*
dtype0*
	container *
shape:?
?
5dense/bias/optimizer/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense/bias/optimizer*
_class
loc:@dense/bias
z
dense/bias/optimizer/AssignAssignVariableOpdense/bias/optimizer&dense/bias/optimizer/Initializer/zeros*
dtype0
|
(dense/bias/optimizer/Read/ReadVariableOpReadVariableOpdense/bias/optimizer*
dtype0*
_class
loc:@dense/bias
y
(dense/bias/optimizer_1/Initializer/zerosConst*
valueB?*    *
_class
loc:@dense/bias*
dtype0
?
dense/bias/optimizer_1VarHandleOp*
dtype0*
	container *
shape:?*'
shared_namedense/bias/optimizer_1*
_class
loc:@dense/bias
?
7dense/bias/optimizer_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense/bias/optimizer_1*
_class
loc:@dense/bias
?
dense/bias/optimizer_1/AssignAssignVariableOpdense/bias/optimizer_1(dense/bias/optimizer_1/Initializer/zeros*
dtype0
?
*dense/bias/optimizer_1/Read/ReadVariableOpReadVariableOpdense/bias/optimizer_1*
_class
loc:@dense/bias*
dtype0
?
*dense_1/kernel/optimizer/Initializer/zerosConst*
valueB	?*    *!
_class
loc:@dense_1/kernel*
dtype0
?
dense_1/kernel/optimizerVarHandleOp*!
_class
loc:@dense_1/kernel*
dtype0*
	container *
shape:	?*)
shared_namedense_1/kernel/optimizer
?
9dense_1/kernel/optimizer/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/kernel/optimizer*!
_class
loc:@dense_1/kernel
?
dense_1/kernel/optimizer/AssignAssignVariableOpdense_1/kernel/optimizer*dense_1/kernel/optimizer/Initializer/zeros*
dtype0
?
,dense_1/kernel/optimizer/Read/ReadVariableOpReadVariableOpdense_1/kernel/optimizer*!
_class
loc:@dense_1/kernel*
dtype0
?
,dense_1/kernel/optimizer_1/Initializer/zerosConst*
valueB	?*    *!
_class
loc:@dense_1/kernel*
dtype0
?
dense_1/kernel/optimizer_1VarHandleOp*+
shared_namedense_1/kernel/optimizer_1*!
_class
loc:@dense_1/kernel*
dtype0*
	container *
shape:	?
?
;dense_1/kernel/optimizer_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/kernel/optimizer_1*!
_class
loc:@dense_1/kernel
?
!dense_1/kernel/optimizer_1/AssignAssignVariableOpdense_1/kernel/optimizer_1,dense_1/kernel/optimizer_1/Initializer/zeros*
dtype0
?
.dense_1/kernel/optimizer_1/Read/ReadVariableOpReadVariableOpdense_1/kernel/optimizer_1*!
_class
loc:@dense_1/kernel*
dtype0
z
(dense_1/bias/optimizer/Initializer/zerosConst*
dtype0*
valueB*    *
_class
loc:@dense_1/bias
?
dense_1/bias/optimizerVarHandleOp*
shape:*'
shared_namedense_1/bias/optimizer*
_class
loc:@dense_1/bias*
dtype0*
	container 
?
7dense_1/bias/optimizer/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/bias/optimizer*
_class
loc:@dense_1/bias
?
dense_1/bias/optimizer/AssignAssignVariableOpdense_1/bias/optimizer(dense_1/bias/optimizer/Initializer/zeros*
dtype0
?
*dense_1/bias/optimizer/Read/ReadVariableOpReadVariableOpdense_1/bias/optimizer*
dtype0*
_class
loc:@dense_1/bias
|
*dense_1/bias/optimizer_1/Initializer/zerosConst*
valueB*    *
_class
loc:@dense_1/bias*
dtype0
?
dense_1/bias/optimizer_1VarHandleOp*
_class
loc:@dense_1/bias*
dtype0*
	container *
shape:*)
shared_namedense_1/bias/optimizer_1
?
9dense_1/bias/optimizer_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/bias/optimizer_1*
_class
loc:@dense_1/bias
?
dense_1/bias/optimizer_1/AssignAssignVariableOpdense_1/bias/optimizer_1*dense_1/bias/optimizer_1/Initializer/zeros*
dtype0
?
,dense_1/bias/optimizer_1/Read/ReadVariableOpReadVariableOpdense_1/bias/optimizer_1*
_class
loc:@dense_1/bias*
dtype0
<
optimizer/beta1Const*
valueB
 *fff?*
dtype0
<
optimizer/beta2Const*
valueB
 *w??*
dtype0
>
optimizer/epsilonConst*
dtype0*
valueB
 *w?+2
?
,optimizer/update_embedding/embeddings/UniqueUnique3gradients/embedding/embedding_lookup_grad/Reshape_1*
out_idx0*
T0*'
_class
loc:@embedding/embeddings
?
+optimizer/update_embedding/embeddings/ShapeShape,optimizer/update_embedding/embeddings/Unique*
T0*'
_class
loc:@embedding/embeddings*
out_type0
?
9optimizer/update_embedding/embeddings/strided_slice/stackConst*'
_class
loc:@embedding/embeddings*
valueB: *
dtype0
?
;optimizer/update_embedding/embeddings/strided_slice/stack_1Const*'
_class
loc:@embedding/embeddings*
valueB:*
dtype0
?
;optimizer/update_embedding/embeddings/strided_slice/stack_2Const*'
_class
loc:@embedding/embeddings*
valueB:*
dtype0
?
3optimizer/update_embedding/embeddings/strided_sliceStridedSlice+optimizer/update_embedding/embeddings/Shape9optimizer/update_embedding/embeddings/strided_slice/stack;optimizer/update_embedding/embeddings/strided_slice/stack_1;optimizer/update_embedding/embeddings/strided_slice/stack_2*
Index0*
T0*'
_class
loc:@embedding/embeddings*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 
?
8optimizer/update_embedding/embeddings/UnsortedSegmentSumUnsortedSegmentSum1gradients/embedding/embedding_lookup_grad/Reshape.optimizer/update_embedding/embeddings/Unique:13optimizer/update_embedding/embeddings/strided_slice*
Tnumsegments0*
Tindices0*
T0*'
_class
loc:@embedding/embeddings
`
4optimizer/update_embedding/embeddings/ReadVariableOpReadVariableOpbeta2_power*
dtype0
?
+optimizer/update_embedding/embeddings/sub/xConst*'
_class
loc:@embedding/embeddings*
valueB
 *  ??*
dtype0
?
)optimizer/update_embedding/embeddings/subSub+optimizer/update_embedding/embeddings/sub/x4optimizer/update_embedding/embeddings/ReadVariableOp*
T0*'
_class
loc:@embedding/embeddings
?
*optimizer/update_embedding/embeddings/SqrtSqrt)optimizer/update_embedding/embeddings/sub*
T0*'
_class
loc:@embedding/embeddings
?
)optimizer/update_embedding/embeddings/mulMullearning_rate*optimizer/update_embedding/embeddings/Sqrt*'
_class
loc:@embedding/embeddings*
T0
b
6optimizer/update_embedding/embeddings/ReadVariableOp_1ReadVariableOpbeta1_power*
dtype0
?
-optimizer/update_embedding/embeddings/sub_1/xConst*'
_class
loc:@embedding/embeddings*
valueB
 *  ??*
dtype0
?
+optimizer/update_embedding/embeddings/sub_1Sub-optimizer/update_embedding/embeddings/sub_1/x6optimizer/update_embedding/embeddings/ReadVariableOp_1*
T0*'
_class
loc:@embedding/embeddings
?
-optimizer/update_embedding/embeddings/truedivRealDiv)optimizer/update_embedding/embeddings/mul+optimizer/update_embedding/embeddings/sub_1*
T0*'
_class
loc:@embedding/embeddings
?
-optimizer/update_embedding/embeddings/sub_2/xConst*'
_class
loc:@embedding/embeddings*
valueB
 *  ??*
dtype0
?
+optimizer/update_embedding/embeddings/sub_2Sub-optimizer/update_embedding/embeddings/sub_2/xoptimizer/beta1*
T0*'
_class
loc:@embedding/embeddings
?
+optimizer/update_embedding/embeddings/mul_1Mul8optimizer/update_embedding/embeddings/UnsortedSegmentSum+optimizer/update_embedding/embeddings/sub_2*
T0*'
_class
loc:@embedding/embeddings
u
6optimizer/update_embedding/embeddings/ReadVariableOp_2ReadVariableOpembedding/embeddings/optimizer*
dtype0
?
+optimizer/update_embedding/embeddings/mul_2Mul6optimizer/update_embedding/embeddings/ReadVariableOp_2optimizer/beta1*
T0*'
_class
loc:@embedding/embeddings
?
6optimizer/update_embedding/embeddings/AssignVariableOpAssignVariableOpembedding/embeddings/optimizer+optimizer/update_embedding/embeddings/mul_2*'
_class
loc:@embedding/embeddings*
dtype0
?
6optimizer/update_embedding/embeddings/ReadVariableOp_3ReadVariableOpembedding/embeddings/optimizer7^optimizer/update_embedding/embeddings/AssignVariableOp*'
_class
loc:@embedding/embeddings*
dtype0
?
8optimizer/update_embedding/embeddings/ResourceScatterAddResourceScatterAddembedding/embeddings/optimizer,optimizer/update_embedding/embeddings/Unique+optimizer/update_embedding/embeddings/mul_17^optimizer/update_embedding/embeddings/AssignVariableOp*
Tindices0*'
_class
loc:@embedding/embeddings*
dtype0
?
6optimizer/update_embedding/embeddings/ReadVariableOp_4ReadVariableOpembedding/embeddings/optimizer7^optimizer/update_embedding/embeddings/AssignVariableOp9^optimizer/update_embedding/embeddings/ResourceScatterAdd*
dtype0
?
+optimizer/update_embedding/embeddings/mul_3Mul8optimizer/update_embedding/embeddings/UnsortedSegmentSum8optimizer/update_embedding/embeddings/UnsortedSegmentSum*'
_class
loc:@embedding/embeddings*
T0
?
-optimizer/update_embedding/embeddings/sub_3/xConst*
dtype0*'
_class
loc:@embedding/embeddings*
valueB
 *  ??
?
+optimizer/update_embedding/embeddings/sub_3Sub-optimizer/update_embedding/embeddings/sub_3/xoptimizer/beta2*
T0*'
_class
loc:@embedding/embeddings
?
+optimizer/update_embedding/embeddings/mul_4Mul+optimizer/update_embedding/embeddings/mul_3+optimizer/update_embedding/embeddings/sub_3*
T0*'
_class
loc:@embedding/embeddings
w
6optimizer/update_embedding/embeddings/ReadVariableOp_5ReadVariableOp embedding/embeddings/optimizer_1*
dtype0
?
+optimizer/update_embedding/embeddings/mul_5Mul6optimizer/update_embedding/embeddings/ReadVariableOp_5optimizer/beta2*
T0*'
_class
loc:@embedding/embeddings
?
8optimizer/update_embedding/embeddings/AssignVariableOp_1AssignVariableOp embedding/embeddings/optimizer_1+optimizer/update_embedding/embeddings/mul_5*'
_class
loc:@embedding/embeddings*
dtype0
?
6optimizer/update_embedding/embeddings/ReadVariableOp_6ReadVariableOp embedding/embeddings/optimizer_19^optimizer/update_embedding/embeddings/AssignVariableOp_1*'
_class
loc:@embedding/embeddings*
dtype0
?
:optimizer/update_embedding/embeddings/ResourceScatterAdd_1ResourceScatterAdd embedding/embeddings/optimizer_1,optimizer/update_embedding/embeddings/Unique+optimizer/update_embedding/embeddings/mul_49^optimizer/update_embedding/embeddings/AssignVariableOp_1*
Tindices0*'
_class
loc:@embedding/embeddings*
dtype0
?
6optimizer/update_embedding/embeddings/ReadVariableOp_7ReadVariableOp embedding/embeddings/optimizer_19^optimizer/update_embedding/embeddings/AssignVariableOp_1;^optimizer/update_embedding/embeddings/ResourceScatterAdd_1*
dtype0
?
,optimizer/update_embedding/embeddings/Sqrt_1Sqrt6optimizer/update_embedding/embeddings/ReadVariableOp_7*
T0*'
_class
loc:@embedding/embeddings
?
+optimizer/update_embedding/embeddings/mul_6Mul-optimizer/update_embedding/embeddings/truediv6optimizer/update_embedding/embeddings/ReadVariableOp_4*
T0*'
_class
loc:@embedding/embeddings
?
)optimizer/update_embedding/embeddings/addAddV2,optimizer/update_embedding/embeddings/Sqrt_1optimizer/epsilon*
T0*'
_class
loc:@embedding/embeddings
?
/optimizer/update_embedding/embeddings/truediv_1RealDiv+optimizer/update_embedding/embeddings/mul_6)optimizer/update_embedding/embeddings/add*'
_class
loc:@embedding/embeddings*
T0
?
9optimizer/update_embedding/embeddings/AssignSubVariableOpAssignSubVariableOpembedding/embeddings/optimizer/update_embedding/embeddings/truediv_1*'
_class
loc:@embedding/embeddings*
dtype0
?
6optimizer/update_embedding/embeddings/ReadVariableOp_8ReadVariableOpembedding/embeddings:^optimizer/update_embedding/embeddings/AssignSubVariableOp*'
_class
loc:@embedding/embeddings*
dtype0
?
0optimizer/update_embedding/embeddings/group_depsNoOp:^optimizer/update_embedding/embeddings/AssignSubVariableOp7^optimizer/update_embedding/embeddings/ReadVariableOp_47^optimizer/update_embedding/embeddings/ReadVariableOp_7*'
_class
loc:@embedding/embeddings
k
?optimizer/update_conv1d/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
dtype0
m
Aoptimizer/update_conv1d/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0
?
0optimizer/update_conv1d/kernel/ResourceApplyAdamResourceApplyAdamconv1d/kernelconv1d/kernel/optimizerconv1d/kernel/optimizer_1?optimizer/update_conv1d/kernel/ResourceApplyAdam/ReadVariableOpAoptimizer/update_conv1d/kernel/ResourceApplyAdam/ReadVariableOp_1learning_rateoptimizer/beta1optimizer/beta2optimizer/epsilon1gradients/conv1d/conv1d/ExpandDims_1_grad/Reshape*
use_locking( *
T0* 
_class
loc:@conv1d/kernel*
use_nesterov( 
i
=optimizer/update_conv1d/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
dtype0
k
?optimizer/update_conv1d/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0
?
.optimizer/update_conv1d/bias/ResourceApplyAdamResourceApplyAdamconv1d/biasconv1d/bias/optimizerconv1d/bias/optimizer_1=optimizer/update_conv1d/bias/ResourceApplyAdam/ReadVariableOp?optimizer/update_conv1d/bias/ResourceApplyAdam/ReadVariableOp_1learning_rateoptimizer/beta1optimizer/beta2optimizer/epsilon8gradients/conv1d/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@conv1d/bias*
use_nesterov( 
j
>optimizer/update_dense/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
dtype0
l
@optimizer/update_dense/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0
?
/optimizer/update_dense/kernel/ResourceApplyAdamResourceApplyAdamdense/kerneldense/kernel/optimizerdense/kernel/optimizer_1>optimizer/update_dense/kernel/ResourceApplyAdam/ReadVariableOp@optimizer/update_dense/kernel/ResourceApplyAdam/ReadVariableOp_1learning_rateoptimizer/beta1optimizer/beta2optimizer/epsilon6gradients/dense/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@dense/kernel*
use_nesterov( 
h
<optimizer/update_dense/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
dtype0
j
>optimizer/update_dense/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0
?
-optimizer/update_dense/bias/ResourceApplyAdamResourceApplyAdam
dense/biasdense/bias/optimizerdense/bias/optimizer_1<optimizer/update_dense/bias/ResourceApplyAdam/ReadVariableOp>optimizer/update_dense/bias/ResourceApplyAdam/ReadVariableOp_1learning_rateoptimizer/beta1optimizer/beta2optimizer/epsilon7gradients/dense/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@dense/bias*
use_nesterov( 
l
@optimizer/update_dense_1/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
dtype0
n
Boptimizer/update_dense_1/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0
?
1optimizer/update_dense_1/kernel/ResourceApplyAdamResourceApplyAdamdense_1/kerneldense_1/kernel/optimizerdense_1/kernel/optimizer_1@optimizer/update_dense_1/kernel/ResourceApplyAdam/ReadVariableOpBoptimizer/update_dense_1/kernel/ResourceApplyAdam/ReadVariableOp_1learning_rateoptimizer/beta1optimizer/beta2optimizer/epsilon8gradients/dense_1/MatMul_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*!
_class
loc:@dense_1/kernel
j
>optimizer/update_dense_1/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
dtype0
l
@optimizer/update_dense_1/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0
?
/optimizer/update_dense_1/bias/ResourceApplyAdamResourceApplyAdamdense_1/biasdense_1/bias/optimizerdense_1/bias/optimizer_1>optimizer/update_dense_1/bias/ResourceApplyAdam/ReadVariableOp@optimizer/update_dense_1/bias/ResourceApplyAdam/ReadVariableOp_1learning_rateoptimizer/beta1optimizer/beta2optimizer/epsilon9gradients/dense_1/BiasAdd_grad/tuple/control_dependency_1*
_class
loc:@dense_1/bias*
use_nesterov( *
use_locking( *
T0
?
optimizer/ReadVariableOpReadVariableOpbeta1_power/^optimizer/update_conv1d/bias/ResourceApplyAdam1^optimizer/update_conv1d/kernel/ResourceApplyAdam.^optimizer/update_dense/bias/ResourceApplyAdam0^optimizer/update_dense/kernel/ResourceApplyAdam0^optimizer/update_dense_1/bias/ResourceApplyAdam2^optimizer/update_dense_1/kernel/ResourceApplyAdam1^optimizer/update_embedding/embeddings/group_deps*
dtype0
h
optimizer/mulMuloptimizer/ReadVariableOpoptimizer/beta1*
T0*
_class
loc:@conv1d/bias
w
optimizer/AssignVariableOpAssignVariableOpbeta1_poweroptimizer/mul*
_class
loc:@conv1d/bias*
dtype0
?
optimizer/ReadVariableOp_1ReadVariableOpbeta1_power^optimizer/AssignVariableOp/^optimizer/update_conv1d/bias/ResourceApplyAdam1^optimizer/update_conv1d/kernel/ResourceApplyAdam.^optimizer/update_dense/bias/ResourceApplyAdam0^optimizer/update_dense/kernel/ResourceApplyAdam0^optimizer/update_dense_1/bias/ResourceApplyAdam2^optimizer/update_dense_1/kernel/ResourceApplyAdam1^optimizer/update_embedding/embeddings/group_deps*
_class
loc:@conv1d/bias*
dtype0
?
optimizer/ReadVariableOp_2ReadVariableOpbeta2_power/^optimizer/update_conv1d/bias/ResourceApplyAdam1^optimizer/update_conv1d/kernel/ResourceApplyAdam.^optimizer/update_dense/bias/ResourceApplyAdam0^optimizer/update_dense/kernel/ResourceApplyAdam0^optimizer/update_dense_1/bias/ResourceApplyAdam2^optimizer/update_dense_1/kernel/ResourceApplyAdam1^optimizer/update_embedding/embeddings/group_deps*
dtype0
l
optimizer/mul_1Muloptimizer/ReadVariableOp_2optimizer/beta2*
T0*
_class
loc:@conv1d/bias
{
optimizer/AssignVariableOp_1AssignVariableOpbeta2_poweroptimizer/mul_1*
_class
loc:@conv1d/bias*
dtype0
?
optimizer/ReadVariableOp_3ReadVariableOpbeta2_power^optimizer/AssignVariableOp_1/^optimizer/update_conv1d/bias/ResourceApplyAdam1^optimizer/update_conv1d/kernel/ResourceApplyAdam.^optimizer/update_dense/bias/ResourceApplyAdam0^optimizer/update_dense/kernel/ResourceApplyAdam0^optimizer/update_dense_1/bias/ResourceApplyAdam2^optimizer/update_dense_1/kernel/ResourceApplyAdam1^optimizer/update_embedding/embeddings/group_deps*
dtype0*
_class
loc:@conv1d/bias
?
	optimizerNoOp^optimizer/AssignVariableOp^optimizer/AssignVariableOp_1/^optimizer/update_conv1d/bias/ResourceApplyAdam1^optimizer/update_conv1d/kernel/ResourceApplyAdam.^optimizer/update_dense/bias/ResourceApplyAdam0^optimizer/update_dense/kernel/ResourceApplyAdam0^optimizer/update_dense_1/bias/ResourceApplyAdam2^optimizer/update_dense_1/kernel/ResourceApplyAdam1^optimizer/update_embedding/embeddings/group_deps
?
Sum/reduction_indicesConst*
value	B :*
dtype0
X
SumSumdense_1/BiasAddSum/reduction_indices*

Tidx0*
	keep_dims( *
T0
6
	Greater/yConst*
valueB
 *   ?*
dtype0
+
GreaterGreaterSum	Greater/y*
T0
A
Sum_1/reduction_indicesConst*
value	B :*
dtype0
T
Sum_1SumtargetsSum_1/reduction_indices*

Tidx0*
	keep_dims( *
T0
8
Greater_1/yConst*
dtype0*
valueB
 *   ?
1
	Greater_1GreaterSum_1Greater_1/y*
T0
X
correct_predictionEqualGreater	Greater_1*
T0
*
incompatible_shape_error(
H
CastCastcorrect_prediction*

SrcT0
*
Truncate( *

DstT0
5
Const_4Const*
dtype0*
valueB: 
E
accuracyMeanCastConst_4*
T0*

Tidx0*
	keep_dims( 
?
predictions/dimensionConst*
value	B :*
dtype0
e
predictionsArgMaxdense_1/BiasAddpredictions/dimension*
output_type0	*

Tidx0*
T0
?
initNoOp^beta1_power/Assign^beta2_power/Assign^conv1d/bias/Assign^conv1d/bias/optimizer/Assign^conv1d/bias/optimizer_1/Assign^conv1d/kernel/Assign^conv1d/kernel/optimizer/Assign!^conv1d/kernel/optimizer_1/Assign^dense/bias/Assign^dense/bias/optimizer/Assign^dense/bias/optimizer_1/Assign^dense/kernel/Assign^dense/kernel/optimizer/Assign ^dense/kernel/optimizer_1/Assign^dense_1/bias/Assign^dense_1/bias/optimizer/Assign ^dense_1/bias/optimizer_1/Assign^dense_1/kernel/Assign ^dense_1/kernel/optimizer/Assign"^dense_1/kernel/optimizer_1/Assign^embedding/embeddings/Assign&^embedding/embeddings/optimizer/Assign(^embedding/embeddings/optimizer_1/Assign
A
save/filename/inputConst*
valueB Bmodel*
dtype0
V
save/filenamePlaceholderWithDefaultsave/filename/input*
shape: *
dtype0
M

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
dtype0
?
save/SaveV2/tensor_namesConst*
dtype0*?
value?B?Bbeta1_powerBbeta2_powerBconv1d/biasBconv1d/bias/optimizerBconv1d/bias/optimizer_1Bconv1d/kernelBconv1d/kernel/optimizerBconv1d/kernel/optimizer_1B
dense/biasBdense/bias/optimizerBdense/bias/optimizer_1Bdense/kernelBdense/kernel/optimizerBdense/kernel/optimizer_1Bdense_1/biasBdense_1/bias/optimizerBdense_1/bias/optimizer_1Bdense_1/kernelBdense_1/kernel/optimizerBdense_1/kernel/optimizer_1Bembedding/embeddingsBembedding/embeddings/optimizerB embedding/embeddings/optimizer_1
u
save/SaveV2/shape_and_slicesConst*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B 
?
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_power/Read/ReadVariableOpbeta2_power/Read/ReadVariableOpconv1d/bias/Read/ReadVariableOp)conv1d/bias/optimizer/Read/ReadVariableOp+conv1d/bias/optimizer_1/Read/ReadVariableOp!conv1d/kernel/Read/ReadVariableOp+conv1d/kernel/optimizer/Read/ReadVariableOp-conv1d/kernel/optimizer_1/Read/ReadVariableOpdense/bias/Read/ReadVariableOp(dense/bias/optimizer/Read/ReadVariableOp*dense/bias/optimizer_1/Read/ReadVariableOp dense/kernel/Read/ReadVariableOp*dense/kernel/optimizer/Read/ReadVariableOp,dense/kernel/optimizer_1/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp*dense_1/bias/optimizer/Read/ReadVariableOp,dense_1/bias/optimizer_1/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp,dense_1/kernel/optimizer/Read/ReadVariableOp.dense_1/kernel/optimizer_1/Read/ReadVariableOp(embedding/embeddings/Read/ReadVariableOp2embedding/embeddings/optimizer/Read/ReadVariableOp4embedding/embeddings/optimizer_1/Read/ReadVariableOp*%
dtypes
2
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const
?
save/RestoreV2/tensor_namesConst"/device:CPU:0*?
value?B?Bbeta1_powerBbeta2_powerBconv1d/biasBconv1d/bias/optimizerBconv1d/bias/optimizer_1Bconv1d/kernelBconv1d/kernel/optimizerBconv1d/kernel/optimizer_1B
dense/biasBdense/bias/optimizerBdense/bias/optimizer_1Bdense/kernelBdense/kernel/optimizerBdense/kernel/optimizer_1Bdense_1/biasBdense_1/bias/optimizerBdense_1/bias/optimizer_1Bdense_1/kernelBdense_1/kernel/optimizerBdense_1/kernel/optimizer_1Bembedding/embeddingsBembedding/embeddings/optimizerB embedding/embeddings/optimizer_1*
dtype0
?
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*%
dtypes
2
2
save/IdentityIdentitysave/RestoreV2*
T0
R
save/AssignVariableOpAssignVariableOpbeta1_powersave/Identity*
dtype0
6
save/Identity_1Identitysave/RestoreV2:1*
T0
V
save/AssignVariableOp_1AssignVariableOpbeta2_powersave/Identity_1*
dtype0
6
save/Identity_2Identitysave/RestoreV2:2*
T0
V
save/AssignVariableOp_2AssignVariableOpconv1d/biassave/Identity_2*
dtype0
6
save/Identity_3Identitysave/RestoreV2:3*
T0
`
save/AssignVariableOp_3AssignVariableOpconv1d/bias/optimizersave/Identity_3*
dtype0
6
save/Identity_4Identitysave/RestoreV2:4*
T0
b
save/AssignVariableOp_4AssignVariableOpconv1d/bias/optimizer_1save/Identity_4*
dtype0
6
save/Identity_5Identitysave/RestoreV2:5*
T0
X
save/AssignVariableOp_5AssignVariableOpconv1d/kernelsave/Identity_5*
dtype0
6
save/Identity_6Identitysave/RestoreV2:6*
T0
b
save/AssignVariableOp_6AssignVariableOpconv1d/kernel/optimizersave/Identity_6*
dtype0
6
save/Identity_7Identitysave/RestoreV2:7*
T0
d
save/AssignVariableOp_7AssignVariableOpconv1d/kernel/optimizer_1save/Identity_7*
dtype0
6
save/Identity_8Identitysave/RestoreV2:8*
T0
U
save/AssignVariableOp_8AssignVariableOp
dense/biassave/Identity_8*
dtype0
6
save/Identity_9Identitysave/RestoreV2:9*
T0
_
save/AssignVariableOp_9AssignVariableOpdense/bias/optimizersave/Identity_9*
dtype0
8
save/Identity_10Identitysave/RestoreV2:10*
T0
c
save/AssignVariableOp_10AssignVariableOpdense/bias/optimizer_1save/Identity_10*
dtype0
8
save/Identity_11Identitysave/RestoreV2:11*
T0
Y
save/AssignVariableOp_11AssignVariableOpdense/kernelsave/Identity_11*
dtype0
8
save/Identity_12Identitysave/RestoreV2:12*
T0
c
save/AssignVariableOp_12AssignVariableOpdense/kernel/optimizersave/Identity_12*
dtype0
8
save/Identity_13Identitysave/RestoreV2:13*
T0
e
save/AssignVariableOp_13AssignVariableOpdense/kernel/optimizer_1save/Identity_13*
dtype0
8
save/Identity_14Identitysave/RestoreV2:14*
T0
Y
save/AssignVariableOp_14AssignVariableOpdense_1/biassave/Identity_14*
dtype0
8
save/Identity_15Identitysave/RestoreV2:15*
T0
c
save/AssignVariableOp_15AssignVariableOpdense_1/bias/optimizersave/Identity_15*
dtype0
8
save/Identity_16Identitysave/RestoreV2:16*
T0
e
save/AssignVariableOp_16AssignVariableOpdense_1/bias/optimizer_1save/Identity_16*
dtype0
8
save/Identity_17Identitysave/RestoreV2:17*
T0
[
save/AssignVariableOp_17AssignVariableOpdense_1/kernelsave/Identity_17*
dtype0
8
save/Identity_18Identitysave/RestoreV2:18*
T0
e
save/AssignVariableOp_18AssignVariableOpdense_1/kernel/optimizersave/Identity_18*
dtype0
8
save/Identity_19Identitysave/RestoreV2:19*
T0
g
save/AssignVariableOp_19AssignVariableOpdense_1/kernel/optimizer_1save/Identity_19*
dtype0
8
save/Identity_20Identitysave/RestoreV2:20*
T0
a
save/AssignVariableOp_20AssignVariableOpembedding/embeddingssave/Identity_20*
dtype0
8
save/Identity_21Identitysave/RestoreV2:21*
T0
k
save/AssignVariableOp_21AssignVariableOpembedding/embeddings/optimizersave/Identity_21*
dtype0
8
save/Identity_22Identitysave/RestoreV2:22*
T0
m
save/AssignVariableOp_22AssignVariableOp embedding/embeddings/optimizer_1save/Identity_22*
dtype0
?
save/restore_allNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_21^save/AssignVariableOp_22^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9"?