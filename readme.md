Purpose
---

This is the Image I used for all of my LLVM related programming assignments. This image bundles llvm-3.9 and every other related package used for assignments related to program analysis (building llvm passes)

How to build image ? 
---

docker build -t indiansher/program_analysis:[version] .
docker push indiansher/program_analysis:[version]

How is this docker image meant to be used ?
---

I would recommend mounting your assignment files to the container and then work with them.

1. `docker pull indiansher/program_analysis`
2. Assuming there is a Assignment Folder on the host machine: `docker run --name llvmAssignment -v /home/yourUser/Desktop/PPA/Assignment/:/home/ubuntu/Assignment -d -it indiansher/program_analysis`
3. Login to Docker Container (Access via shell): `docker exec -it llvmAssignment /bin/bash`
4. Access assignment files: `cd /home/ubuntu/Assignment`
5. Whatever you generate here will be automatically written to the host machine as well