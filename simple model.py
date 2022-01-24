import tensorflow as tf
import os
model = tf.keras.Sequential([tf.keras.layers.Dense(1)])

version = '1'  #版本号
model_name = 'sequential_model_2'
saved_path = os.path.join('models',model_name)
data = tf.ones((2, 10))
model(data)
model.save(os.path.join(saved_path,version))   # models/sequential_model/1