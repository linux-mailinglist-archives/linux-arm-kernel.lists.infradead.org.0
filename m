Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B9E31931C7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 21:19:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x593u6Stc623is6g3YXv/5t16Pw1qQOw1U4rAzvKTlQ=; b=UiMVZwWbK9BZr4
	bGVyB95WTPZYtg6tM+zkPUDWzgo0MlsXrPJQPBmqVW9MIco2gaXHeZJvwYvuPqL7cMFEkQoSk+jGc
	q3wnIjdsy1JnaYTnGP8OWYxpuABh92egnChh+OOf9szelVRHv6zhOIOlXKy/zIl5V++5psPj2egc2
	bP2z6k+wqbd8Wl9PdG34yQVhRTgrCVyPz4MxKo2CrhUc1VsG/WS0jTnpEuLFpCZ9o3ikicHKhJgzf
	Yojab7k6MDjujp5/+qADfakKyKKtwHfCFXEEM1C5T//5cnccZ05Q3nHkZhScCSgf/3s9n9nENyMgf
	OiGy2d+IsXKwh8XQ+/TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHCUR-00006C-3h; Wed, 25 Mar 2020 20:19:03 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHCUH-0008WM-Re
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 20:18:55 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02PKIj6j085839;
 Wed, 25 Mar 2020 15:18:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1585167525;
 bh=YWnbA9p3RGUrjpZGEuExQ7ejQ8cGZmK3O4zvWi+b1+8=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=d+RZYVj0RwSPPge/qLJk4R6+yDy3WaPygHYxDbfzOGyWaEidrnA2sSZImU8CRS1I4
 agwEpd5MguGvf8ARG05JShVCLXYZrCjEHIdTcsn+Q/ZCginBvn/h+h2WfT5q57z0mq
 4bn8Vz6HrmGCbkx/3Lr1iJpsSOjzLyMTN6zLKY3g=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02PKIjJN019777;
 Wed, 25 Mar 2020 15:18:45 -0500
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 25
 Mar 2020 15:18:45 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 25 Mar 2020 15:18:45 -0500
Received: from fllv0103.dal.design.ti.com (fllv0103.dal.design.ti.com
 [10.247.120.73])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02PKIjws098090;
 Wed, 25 Mar 2020 15:18:45 -0500
Received: from localhost ([10.250.35.147])
 by fllv0103.dal.design.ti.com (8.14.7/8.14.7) with ESMTP id 02PKIjHl090856;
 Wed, 25 Mar 2020 15:18:45 -0500
From: Suman Anna <s-anna@ti.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: [PATCH 1/3] dt-bindings: remoteproc: Add bindings for C66x DSPs on TI
 K3 SoCs
Date: Wed, 25 Mar 2020 15:18:37 -0500
Message-ID: <20200325201839.15896-2-s-anna@ti.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200325201839.15896-1-s-anna@ti.com>
References: <20200325201839.15896-1-s-anna@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_131854_027661_46A313C3 
X-CRM114-Status: GOOD (  19.04  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Lokesh Vutla <lokeshvutla@ti.com>,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Suman Anna <s-anna@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some Texas Instruments K3 family of SoCs have one of more Digital Signal
Processor (DSP) subsystems that are comprised of either a TMS320C66x
CorePac and/or a next-generation TMS320C71x CorePac processor subsystem.
Add the device tree bindings document for the C66x DSP devices on these
SoCs. The added example illustrates the DT nodes for the first C66x DSP
device present on the K3 J721E family of SoCs.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
 .../bindings/remoteproc/ti,k3-dsp-rproc.yaml  | 180 ++++++++++++++++++
 1 file changed, 180 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml

diff --git a/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml b/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
new file mode 100644
index 000000000000..416e3abe7937
--- /dev/null
+++ b/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
@@ -0,0 +1,180 @@
+# SPDX-License-Identifier: (GPL-2.0-only or BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/remoteproc/ti,k3-dsp-rproc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: TI K3 DSP devices
+
+maintainers:
+  - Suman Anna <s-anna@ti.com>
+
+description: |
+  The TI K3 family of SoCs usually have one or more TI DSP Core sub-systems
+  that are used to offload some of the processor-intensive tasks or algorithms,
+  for achieving various system level goals.
+
+  These processor sub-systems usually contain additional sub-modules like
+  L1 and/or L2 caches/SRAMs, an Interrupt Controller, an external memory
+  controller, a dedicated local power/sleep controller etc. The DSP processor
+  cores in the K3 SoCs are usually either a TMS320C66x CorePac processor or a
+  TMS320C71x CorePac processor.
+
+  Each DSP Core sub-system is represented as a single DT node. Each node has a
+  number of required or optional properties that enable the OS running on the
+  host processor (Arm CorePac) to perform the device management of the remote
+  processor and to communicate with the remote processor.
+
+properties:
+  compatible:
+    const: ti,j721e-c66-dsp
+    description:
+      Use "ti,j721e-c66-dsp" for C66x DSPs on K3 J721E SoCs
+
+  reg:
+    description: |
+      Should contain an entry for each value in 'reg-names'.
+      Each entry should have the memory region's start address
+      and the size of the region, the representation matching
+      the parent node's '#address-cells' and '#size-cells' values.
+    minItems: 3
+    maxItems: 3
+
+  reg-names:
+    description: |
+      Should contain strings with the names of the specific internal
+      internal memory regions, and should be defined in this order
+    maxItems: 3
+    items:
+      - const: l2sram
+      - const: l1pram
+      - const: l1dram
+
+  ti,sci:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Should be a phandle to the TI-SCI System Controller node
+
+  ti,sci-dev-id:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      Should contain the TI-SCI device id corresponding to the DSP core.
+      Please refer to the corresponding System Controller documentation
+      for valid values for the DSP cores.
+
+  ti,sci-proc-ids:
+    description: Should contain a single tuple of <proc_id host_id>.
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32-matrix
+      - maxItems: 1
+        items:
+          items:
+            - description: TI-SCI processor id for the DSP core device
+            - description: TI-SCI host id to which processor control
+                           ownership should be transferred to
+
+  resets:
+    description: |
+      Should contain the phandle to the reset controller node
+      managing the resets for this device, and a reset
+      specifier. Please refer to the following reset bindings
+      for the reset argument specifier,
+      Documentation/devicetree/bindings/reset/ti,sci-reset.txt
+
+  firmware-name:
+    description: |
+      Should contain the name of the default firmware image
+      file located on the firmware search path
+
+  mboxes:
+    description: |
+      OMAP Mailbox specifier denoting the sub-mailbox, to be used for
+      communication with the remote processor. This property should match
+      with the sub-mailbox node used in the firmware image. The specifier
+      format is as per the bindings,
+      Documentation/devicetree/bindings/mailbox/omap-mailbox.txt
+
+  memory-region:
+    minItems: 2
+    description: |
+      phandle to the reserved memory nodes to be associated with the remoteproc
+      device. There should be atleast two reserved memory nodes defined - the
+      first one would be used for dynamic DMA allocations like vrings and vring
+      buffers, and the remaining ones used for the firmware image sections. The
+      reserved memory nodes should be carveout nodes, and should be defined as
+      per the bindings in
+      Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt
+
+# Optional properties:
+# --------------------
+
+  sram:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    minItems: 1
+    description: |
+      pHandles to one or more reserved on-chip SRAM regions. The regions
+      should be defined as child nodes of the respective SRAM node, and
+      should be defined as per the generic bindings in,
+      Documentation/devicetree/bindings/sram/sram.yaml
+
+required:
+ - compatible
+ - reg
+ - reg-names
+ - ti,sci
+ - ti,sci-dev-id
+ - ti,sci-proc-ids
+ - resets
+ - firmware-name
+ - mboxes
+ - memory-region
+
+additionalProperties: false
+
+examples:
+  - |
+
+    //Example: J721E SoC
+    /* DSP Carveout reserved memory nodes */
+    reserved-memory {
+        #address-cells = <2>;
+        #size-cells = <2>;
+        ranges;
+
+        c66_0_dma_memory_region: c66-dma-memory@a6000000 {
+            compatible = "shared-dma-pool";
+            reg = <0x00 0xa6000000 0x00 0x100000>;
+            no-map;
+        };
+
+        c66_0_memory_region: c66-memory@a6100000 {
+            compatible = "shared-dma-pool";
+            reg = <0x00 0xa6100000 0x00 0xf00000>;
+            no-map;
+        };
+    };
+
+    cbass_main: interconnect@100000 {
+        compatible = "simple-bus";
+        #address-cells = <2>;
+        #size-cells = <2>;
+        ranges = <0x4d 0x80800000 0x4d 0x80800000 0x00 0x00800000>, /* C66_0 */
+                 <0x4d 0x81800000 0x4d 0x81800000 0x00 0x00800000>; /* C66_1 */
+
+        /* J721E C66_0 DSP node */
+        c66_0: dsp@4d80800000 {
+            compatible = "ti,j721e-c66-dsp";
+            reg = <0x4d 0x80800000 0x00 0x00048000>,
+                  <0x4d 0x80e00000 0x00 0x00008000>,
+                  <0x4d 0x80f00000 0x00 0x00008000>;
+            reg-names = "l2sram", "l1pram", "l1dram";
+            ti,sci = <&dmsc>;
+            ti,sci-dev-id = <142>;
+            ti,sci-proc-ids = <0x03 0xFF>;
+            resets = <&k3_reset 142 1>;
+            firmware-name = "j7-c66_0-fw";
+            memory-region = <&c66_0_dma_memory_region>,
+                            <&c66_0_memory_region>;
+            mboxes = <&mailbox0_cluster3 &mbox_c66_0>;
+        };
+    };
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
