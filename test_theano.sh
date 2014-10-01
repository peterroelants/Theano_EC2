# test the theano installation
# http://deeplearning.net/software/theano/tutorial/using_gpu.html
echo
echo '------------------'
echo 'Test Theano on CPU'
echo '------------------'
THEANO_FLAGS=mode=FAST_RUN,device=cpu,floatX=float32 python check1.py

echo
echo '------------------'
echo 'Test Theano on GPU'
echo '------------------'
THEANO_FLAGS=mode=FAST_RUN,device=gpu,floatX=float32 python check1.py

echo