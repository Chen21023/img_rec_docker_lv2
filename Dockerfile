FROM  tensorflow/tensorflow:latest-py3
COPY . /app
WORKDIR /app
RUN pip install --upgrade pip
RUN pip install -i https://pypi.tuna.tsinghua.edu.cn/simple/ -r requirements.txt

COPY nari_base_data-0.0.2-py3-none-any.whl /tmp
RUN pip3 install /tmp/nari_base_data-0.0.2-py3-none-any.whl

COPY nari_bdp_vmodeling-0.0.2-py3-none-any.whl /tmp
RUN pip3 install /tmp/nari_bdp_vmodeling-0.0.2-py3-none-any.whl

