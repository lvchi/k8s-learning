<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1576722415080" ID="ID_1036854070" MODIFIED="1576809825468" TEXT="Kubernetes">
<edge COLOR="#6666ff"/>
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1576809423270" FOLDED="true" HGAP="33" ID="ID_244096065" MODIFIED="1576813558572" POSITION="right" TEXT="Node Workflow" VSHIFT="-32">
<node CREATED="1576809498252" HGAP="77" ID="ID_188697387" MODIFIED="1576809747607" VSHIFT="-38">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="workflow.PNG" />
  </body>
</html>
</richcontent>
</node>
<node CREATED="1576809615029" HGAP="87" ID="ID_270752658" MODIFIED="1576809750808" TEXT="Single Master Can manage ~5000 Worker Nodes." VSHIFT="-541"/>
</node>
<node CREATED="1576809875719" FOLDED="true" ID="ID_408667788" MODIFIED="1576811674667" POSITION="left" TEXT="Scaling" VSHIFT="-13">
<node CREATED="1576810009365" HGAP="15" ID="ID_1303679802" MODIFIED="1576811046556" TEXT="Replication Controller" VSHIFT="-27">
<node CREATED="1576810638515" ID="ID_81504436" MODIFIED="1576810671456" TEXT="Replication Controller manage multiple Pods on Single Node or Multiple Pods on multiple Nodes. "/>
<node CREATED="1576810754270" ID="ID_1357089293" MODIFIED="1576810756855" TEXT="kubectl create -f &lt;filename&gt; "/>
<node CREATED="1576810770805" ID="ID_1520308472" MODIFIED="1576810772899" TEXT="kubectl describe &lt;rs_name&gt; "/>
<node CREATED="1576810785517" ID="ID_965378951" MODIFIED="1576810787528" TEXT="kubectl describe &lt;pod_name&gt;"/>
<node CREATED="1576810809029" ID="ID_1154513567" MODIFIED="1576810810980" TEXT="kubectl get rc  "/>
<node CREATED="1576810824455" ID="ID_791252933" MODIFIED="1576810826662" TEXT="kubectl scale &#x2014;replicas=&lt;No. Of Replicas&gt; rc/ &lt;RS_Name&gt;"/>
<node CREATED="1576810842324" ID="ID_1669051367" MODIFIED="1576810844512" TEXT="kubectl delete rc/&lt;RS_Name&gt;"/>
</node>
<node CREATED="1576810046768" HGAP="46" ID="ID_951083459" MODIFIED="1576811049729" TEXT="Replica Set" VSHIFT="3">
<node CREATED="1576810898495" ID="ID_59048084" MODIFIED="1576810899776" TEXT="Replica Set is enhance version of Replication Controller. "/>
<node CREATED="1576810919611" ID="ID_459542538" MODIFIED="1576811079114" TEXT="The main difference between a Replica Set and a Replication Controller right now is the selector support">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1576810104804" ID="ID_950434427" MODIFIED="1576811104505" TEXT="Deployment" VSHIFT="55">
<node CREATED="1576810319891" ID="ID_550653465" MODIFIED="1576810323332" TEXT="declarative updates for Pods and ReplicaSets."/>
<node CREATED="1576810359073" ID="ID_278407579" MODIFIED="1576810361058" TEXT="more flexibility as compare to Replica Set and Replication Controller"/>
<node CREATED="1576810379353" ID="ID_630846826" MODIFIED="1576810413072" TEXT="Rolling Upgrade,Create,Update, RollBack, Rollout"/>
</node>
</node>
<node CREATED="1576811262079" FOLDED="true" HGAP="27" ID="ID_271508293" MODIFIED="1576813197200" POSITION="right" TEXT="Service" VSHIFT="6">
<node CREATED="1576811310865" HGAP="24" ID="ID_86313786" MODIFIED="1576812529440" TEXT="Define: service is used to Access the Application Running on Pods" VSHIFT="10"/>
<node CREATED="1576811352399" HGAP="24" ID="ID_1826556254" MODIFIED="1576811510606" TEXT="ClusterIP" VSHIFT="21">
<node CREATED="1576811361123" ID="ID_1303733669" MODIFIED="1576811362581" TEXT="Exposes the Service on a cluster-internal IP. Choosing this value makes the Service only reachable from within the cluster. "/>
</node>
<node CREATED="1576811395905" HGAP="27" ID="ID_657692178" MODIFIED="1576812502204" TEXT="NodePort" VSHIFT="-3">
<node CREATED="1576811416005" ID="ID_1675252000" MODIFIED="1576811417645" TEXT="Exposes the Service on each Node&#x2019;s IP at a static port. You&#x2019;ll be able to contact the NodePort Service, from outside the cluster, by requesting &lt;NodeID&gt;:&lt;NodePort&gt;"/>
</node>
<node CREATED="1576811438863" HGAP="28" ID="ID_389000527" MODIFIED="1576812478031" TEXT="Load Balancer" VSHIFT="-2">
<node CREATED="1576811451618" ID="ID_1817440197" MODIFIED="1576811452790" TEXT="Exposes the Service externally using a cloud provider&#x2019;s load balancer. NodePort and ClusterIP Services, to which the external load balancer routes, are automatically created"/>
</node>
<node CREATED="1576811474365" HGAP="24" ID="ID_1043717984" MODIFIED="1576812497663" TEXT="External Name" VSHIFT="8">
<node CREATED="1576811485040" ID="ID_10835296" MODIFIED="1576811486148" TEXT="Maps the Service to the contents of the external name field, by returning a CNAME record."/>
</node>
</node>
<node CREATED="1576811644487" FOLDED="true" ID="ID_733047346" MODIFIED="1576813548755" POSITION="left" TEXT="Health-Check" VSHIFT="7">
<node CREATED="1576811720902" FOLDED="true" ID="ID_1498353945" MODIFIED="1576813513835" TEXT="Liveness">
<node CREATED="1576813277619" ID="ID_699419693" MODIFIED="1576813278951" TEXT="will actually attempt to restart a container* if it fails"/>
<node CREATED="1576813337854" ID="ID_1508372958" MODIFIED="1576813340205" TEXT="2 types of LiveNess">
<node CREATED="1576813349241" ID="ID_1341106011" MODIFIED="1576813351398" TEXT="Running Command in Container Periodically"/>
<node CREATED="1576813362907" ID="ID_1351072681" MODIFIED="1576813365331" TEXT=" Check on HTTP Request"/>
</node>
</node>
<node CREATED="1576811751520" FOLDED="true" HGAP="24" ID="ID_1709546290" MODIFIED="1576813511643" TEXT="Readiness" VSHIFT="20">
<node CREATED="1576813421047" HGAP="16" ID="ID_64206514" MODIFIED="1576813497723" TEXT="If the Readiness check fails, the container will not be restarted, but the Pod IP address will be removed from the service(load Balancer)." VSHIFT="-15"/>
<node CREATED="1576813479885" ID="ID_791100622" MODIFIED="1576813482092" TEXT="Readiness and liveness probes can be used in parallel for the same container"/>
</node>
</node>
<node CREATED="1576811897067" FOLDED="true" HGAP="27" ID="ID_1313844909" MODIFIED="1576813562871" POSITION="right" TEXT="Lifecycle Hooks" VSHIFT="12">
<node CREATED="1576812767136" HGAP="19" ID="ID_1085640534" MODIFIED="1576812851599" TEXT="Define: allows the user to run specific code during specific events of a containers lifecycle" VSHIFT="-2"/>
<node CREATED="1576812808335" ID="ID_760536546" MODIFIED="1576812815370" TEXT="PostStart">
<node CREATED="1576812866861" ID="ID_371885480" MODIFIED="1576812868572" TEXT="This hook gets executed upon container creation but there is no guarantee that it will run after the container ENTRYPOINT."/>
</node>
<node CREATED="1576812821325" HGAP="21" ID="ID_569377489" MODIFIED="1576812852917" TEXT="PreStop" VSHIFT="8">
<node CREATED="1576812881816" ID="ID_684568860" MODIFIED="1576812883089" TEXT="This hook gets executed just before a container is terminated. This is a blocking call which means the hook execution must complete before the call to delete a container can be sent"/>
</node>
<node CREATED="1576812893525" ID="ID_205185618" MODIFIED="1576812996560" TEXT="handlers" VSHIFT="16">
<node CREATED="1576812916709" ID="ID_179517668" MODIFIED="1576812917619" TEXT="Exec">
<node CREATED="1576812938522" HGAP="31" ID="ID_39093039" MODIFIED="1576812982962" TEXT=" runs a specific command inside the container and the resources consumed by the command are counted against the container." VSHIFT="-14"/>
</node>
<node CREATED="1576812919441" ID="ID_1456815981" MODIFIED="1576812928953" TEXT="HTTP">
<node CREATED="1576812957429" HGAP="27" ID="ID_1733506133" MODIFIED="1576812984790" TEXT="executes an HTTP request against a specific endpoint on the container" VSHIFT="11"/>
</node>
</node>
</node>
<node CREATED="1576811917937" FOLDED="true" ID="ID_478452363" MODIFIED="1576813745507" POSITION="left" TEXT="Secrets">
<node CREATED="1576813633660" ID="ID_1702710003" MODIFIED="1576813640055" TEXT="Define: used to manage sensitive Data in Kubernetes. Like, Password, credentials, keys, authentication tokens etc."/>
<node CREATED="1576813722215" ID="ID_703125080" MODIFIED="1576813723480" TEXT="can be used with a pod in two ways">
<node CREATED="1576813725827" ID="ID_1507178121" MODIFIED="1576813733228" TEXT="As files in a Volume mounted on one or more of its containers"/>
<node CREATED="1576813739907" ID="ID_1537670457" MODIFIED="1576813740655" TEXT="Used by kubelet when pulling images for the pod"/>
</node>
</node>
</node>
</map>
