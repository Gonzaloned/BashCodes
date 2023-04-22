#!/bin/bash

minusculas=`echo GoNNZA | tr [:upper:] 1`
min_done=`echo $minusculas | tr [:lower:] [:upper:]`
may_done=`echo GoNNZA | tr [:upper:] [:lower:]`
echo $min_done | tr 1 $may_done
