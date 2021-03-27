# Results

As of 3/27/2020, Antrea and Calico have the best NetworkPolicy conformance of any CNI's we've tested.  Cillium is catching up rapidly, and is working graciously with us to resolve discrepencies.  There are a couple of minor egress cases missed by calico around egress.

The table below tabulates the results for antrea 0.13.1, calico 3.18, and cillium 1.9.5, from left to right.  

![image](https://user-images.githubusercontent.com/826111/112733880-c5b96b80-8eff-11eb-9378-062b6d045316.png)

CNI Providers, please reach out if you want to help us curate this data, we are a volunteer project and would love more help around automation of the cyclonus artifacts jobs.  Big shoutout to Douglas Langford for helping us to collect this data.

# cyclonus-artifacts
Daily artifacts from [Cyclonus Project](https://github.com/mattfenwick/cyclonus). To see the logs/output from the cyclonus job, follow these steps:

  1. Select the artifact from the list below.
  2. Click on the workflow/job
  3. Go to Artifacts and download **logs.zip**. It will contain the output logs from cyclonus job.

[![Antrea v0.12.2 job to generate cyclonus artifacts](https://github.com/K8sbykeshed/cyclonus-artifacts/actions/workflows/antrea_v0.12.2_job.yml/badge.svg)](https://github.com/K8sbykeshed/cyclonus-artifacts/actions/workflows/antrea_v0.12.2_job.yml)  
[![Antrea v0.13.1 job to generate cyclonus artifacts](https://github.com/K8sbykeshed/cyclonus-artifacts/actions/workflows/antrea_v0.13.1_job.yml/badge.svg)](https://github.com/K8sbykeshed/cyclonus-artifacts/actions/workflows/antrea_v0.13.1_job.yml)  

[![Calico job to generate cyclonus artifacts](https://github.com/K8sbykeshed/cyclonus-artifacts/actions/workflows/calico.yml/badge.svg)](https://github.com/K8sbykeshed/cyclonus-artifacts/actions/workflows/calico.yml)  

[![Cilium v1.9.4 job to generate cyclonus artifacts](https://github.com/K8sbykeshed/cyclonus-artifacts/actions/workflows/cilium_v1.9.4_job.yml/badge.svg)](https://github.com/K8sbykeshed/cyclonus-artifacts/actions/workflows/cilium_v1.9.4_job.yml)  
[![Cilium v1.9.5 job to generate cyclonus artifacts](https://github.com/K8sbykeshed/cyclonus-artifacts/actions/workflows/cilium_v1.9.5_job.yml/badge.svg)](https://github.com/K8sbykeshed/cyclonus-artifacts/actions/workflows/cilium_v1.9.5_job.yml)  

[![ovn-kubernetes job to generate cyclonus artifacts](https://github.com/K8sbykeshed/cyclonus-artifacts/actions/workflows/ovn-kubernetes.yml/badge.svg)](https://github.com/K8sbykeshed/cyclonus-artifacts/actions/workflows/ovn-kubernetes.yml)  
