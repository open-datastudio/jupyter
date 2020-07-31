FROM jupyter/minimal-notebook

USER 0
# RUN apt-get update && apt-get install -y openssh-client && \
#    rm -rf /var/lib/apt/lists/*

USER 1000

ADD requirements.txt /home/jovyan/.requirements.txt
RUN pip --no-cache-dir install -r /home/jovyan/.requirements.txt

# mlflow creates new conda environment for run (i.e. mlflow run ...) and some dependencies need to be added.
# for example, pysftp is required to access artifact storage.
#
# .condarc is not working with --file flag (i.e. conda env create --file ... see https://github.com/conda/conda/issues/9580)
# there should be other way to add additional dependencies.
#
# as a workaround, adding a pip install command to at the end of activate function in,
#   - /opt/conda/etc/profiles.d/conda.sh
#   - /opt/conda/lib/python3.x/site-packages/conda/shell/etc/profile.d/conda.sh (conda init bash command will rewrite /opt/conda/etc/profiles.d/conda.sh using this)
# while mlflow 'source' this file to run 'conda activate'
# (see https://github.com/mlflow/mlflow/blob/6ef63a7f33ebfe3481ea57cacd94a8a32fc7efd8/mlflow/projects/__init__.py#L493)
RUN find /opt/conda -name conda.sh | xargs sed -i 's/__conda_hashr$/&\n    pip install -q -r \/home\/jovyan\/\.requirements\.txt/'
