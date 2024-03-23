FROM fedora
RUN dnf install -y unzip wget curl which bzip2 pip patch mesa-libGL rocm-hip rocm-opencl rocm-clinfo
WORKDIR /app
CMD if [ -z "$(ls -A /app/easy-diffusion)" ]; \
	then echo "Installing!"; \
	wget https://github.com/cmdr2/stable-diffusion-ui/releases/latest/download/Easy-Diffusion-Linux.zip; \
	unzip Easy-Diffusion-Linux.zip; \
	/app/easy-diffusion/start.sh; \
	else echo "Already installed!"; \
	/app/easy-diffusion/start.sh; \
	fi
