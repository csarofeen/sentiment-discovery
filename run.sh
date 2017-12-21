#!/bin/bash

EXE="python3 text_reconstruction.py"
OPTS="-experiment_dir ./experiments "
OPTS="$OPTS -experiment_name mlstm "
OPTS="$OPTS -model_dir model "
OPTS="$OPTS -cuda "
OPTS="$OPTS -embed_size 64 "
OPTS="$OPTS -rnn_size 4096 "
OPTS="$OPTS -layers 1 "
OPTS="$OPTS -rnn_type mlstm "
OPTS="$OPTS -dropout 0 "
OPTS="$OPTS -weight_norm "
OPTS="$OPTS -lstm_only "
OPTS="$OPTS -fuse_lstm "
OPTS="$OPTS -train data/imdb/train.json "
OPTS="$OPTS -lazy "
OPTS="$OPTS -data_set_type unsupervised "
OPTS="$OPTS -batch_size 32 "
OPTS="$OPTS -seq_length 256 "
OPTS="$OPTS -lr 1.25e-4 "
OPTS="$OPTS -optimizer_type Adam "
OPTS="$OPTS -lr_scheduler LinearLR "
OPTS="$OPTS -epochs 1 "
OPTS="$OPTS -num_shards 1002 "
OPTS="$OPTS -split 1000,1,1 "
OPTS="$OPTS -eval_batch_size 1 "
OPTS="$OPTS -eval_seq_length -1 "
OPTS="$OPTS -persist_state 1 "
OPTS="$OPTS -save_epochs 1 "
OPTS="$OPTS -save_iters 5000 "
#OPTS="$OPTS -fp16 "
$EXE $OPTS

#e0 0 / 3975 loss 5.54E+00 loss avg 5.54E-02 time 1.50E+00 time left 6.0E+03 ch/s avg 5.46E+03 grad_norm 9.6E-01
#e0 10 / 3975 loss 4.33E+00 loss avg 5.29E-01 time 1.06E+00 time left 4.2E+03 ch/s avg 7.76E+03 grad_norm 1.3E+00
#e0 20 / 3975 loss 2.73E+00 loss avg 7.80E-01 time 1.06E+00 time left 4.2E+03 ch/s avg 7.76E+03 grad_norm 2.6E+00
#e0 30 / 3975 loss 2.38E+00 loss avg 9.43E-01 time 1.06E+00 time left 4.2E+03 ch/s avg 7.76E+03 grad_norm 6.9E-01
#e0 40 / 3975 loss 2.31E+00 loss avg 1.07E+00 time 1.06E+00 time left 4.2E+03 ch/s avg 7.76E+03 grad_norm 5.8E-01
#e0 50 / 3975 loss 2.12E+00 loss avg 1.18E+00 time 1.06E+00 time left 4.1E+03 ch/s avg 7.76E+03 grad_norm 4.0E-01
#e0 60 / 3975 loss 2.09E+00 loss avg 1.27E+00 time 1.06E+00 time left 4.1E+03 ch/s avg 7.76E+03 grad_norm 4.7E-01
#e0 70 / 3975 loss 2.09E+00 loss avg 1.35E+00 time 1.06E+00 time left 4.1E+03 ch/s avg 7.75E+03 grad_norm 4.8E-01

