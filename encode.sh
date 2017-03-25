mkdir -p flac
for i in *.wav;
  do name=`echo $i | cut -d'.' -f1`;
  echo $name;
  ffmpeg -y -i $i -sample_fmt:a s16 -c:a flac -ar:a 44100 -compression_level 12 -lpc_type cholesky -prediction_order_method log -exact_rice_parameters 1 flac/$name.flac;
done
