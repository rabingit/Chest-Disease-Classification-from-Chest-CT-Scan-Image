import numpy as np
from tensorflow.keras.models import load_model
from tensorflow.keras.preprocessing import image
import tensorflow as tf
import os
import sys



class PredictionPipeline:
    def __init__(self,filename):
        self.filename =filename


    
    def predict(self):
        ## load model
        
        # model = load_model(os.path.join("artifacts","training", "model.h5"))
        model = load_model(os.path.join("model", "model.h5"))

        imagename = self.filename
        test_image = image.load_img(imagename, target_size = (224,224))
        test_image = image.img_to_array(test_image)
        #test_image = test_image/255
        test_image = np.expand_dims(test_image, axis = 0)
        print(test_image,sys.stderr)
        print(model.predict(test_image),sys.stderr)
        result = np.argmax(model.predict(test_image), axis=1)
        #print(result)
        #result = model.predict(test_image, batch_size=1)
        #index = tf.argmax(result, axis=1)
        #print(index)

        

        if result[0] == 1:
            prediction = 'Normal'
            return [{ "image" : prediction}]
        else:
            prediction = 'Adenocarcinoma Cancer'
            return [{ "image" : prediction}]
