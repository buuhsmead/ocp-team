import io.fabric8.kubernetes.api.model.KubernetesList
import io.fabric8.kubernetes.api.model.KubernetesListBuilder
import io.fabric8.kubernetes.generator.annotation.KubernetesProvider

//// https://mvnrepository.com/artifact/io.fabric8/kubernetes-generator
@Grapes(
        @Grab(group = 'io.fabric8', module = 'kubernetes-generator', version = '3.0.1')
)



@KubernetesProvider("bla.yaml")
public KubernetesList create() {
    return new KubernetesListBuilder()
            .addNewReplicationControllerItem()
            .withNewMetadata()
            .withName("Hello-Controller")
            .endMetadata()
            .withNewSpec()
            .withReplicas(1)
            .addToSelector("component", "my-component")
            .withNewTemplate()
            .withNewSpec()
            .addNewContainer()
            .withName("my-container")
            .withImage("my/image")
            .endContainer()
            .endSpec()
            .endTemplate()
            .endSpec()
            .endReplicationControllerItem()
            .build();
}

@KubernetesProvider("pv.yaml")
public Kubernetes


println createPV()