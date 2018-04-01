#!/usr/bin/env bash
cd ..
python3 train.py --model_dir model/bpe --source_vocabulary dataset/nlpcc_bpe/vocab.json --target_vocabulary dataset/nlpcc_bpe/vocab.json --source_train_data dataset/nlpcc_bpe/articles.train.txt --target_train_data dataset/nlpcc_bpe/summaries.train.txt --source_valid_data dataset/nlpcc_bpe/articles.eval.txt --target_valid_data dataset/nlpcc_bpe/summaries.eval.txt --num_encoder_symbols 21549 --num_decoder_symbols 21549 | tee logs/bpe.log