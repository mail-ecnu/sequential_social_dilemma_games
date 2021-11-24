# This can only be used for highway_env
# Proviede the support observation space in float32
sed -i '119s/tf.unint8/tf.float32/' ~/miniconda/envs/ssd/lib/python3.7/site-packages/ray/rllib/policy/dynamic_tf_policy.py # Hardcoded observation space return to float32.
sed -i '231s/np.zeros(self.shape)/np.zeros(self.shape, dtype=self.observation_space.dtype)/' ~/miniconda/envs/ssd/lib/python3.7/site-packages/ray/rllib/models/preprocessors.py # Change observation shape to what we actually provide