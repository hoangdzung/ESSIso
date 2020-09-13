epoch=50
for dataset in yeast human cora citeseer pubmed wordnet
do
    for dim in 4 8 16 32 64 128 512
    do 
        python3 create_stream.py --prefix dataspace/graph/${dataset}/${dataset}  --epochs ${epoch} --pretrained_model  model_dim/${dataset}_sup_${epoch}_dim${dim}.pt --save_model  model_dim/${dataset}_sup_${epoch}_dim${dim}.pt  --cuda --num_subgraphs 20 --embedding_model ../data/ --rate 100 --dim ${dim}
    done
done