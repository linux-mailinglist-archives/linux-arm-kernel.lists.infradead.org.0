Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26CC81F7F2E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 00:50:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=spJs7MIG4VmpfAWbbvRDWra3cWus+N2xW0fwge3ToZc=; b=COxom2U6gS6lD4
	YSGQxUdSuR71FaqpAn6lb44fE7vRSH/+y4M9yXfwwg8eYbuUyCpS3qfxGRHUu6LLghkqq5YgZMb5j
	ba3zyaxLeKE4HytWZVe3QS4fJ2ztTrE0MF+g7PWxXcsJs0Mho97O/DGUcli+0GECECpNQhjzStlxz
	FWcZhGWPBSRwx9JEhokCf+pwgaMiAV+lTXdQOAkM2KbmAWKY5SXHiXjIc3tgTQtEcBitDRw03RrLt
	6MeQZDIzIOrX5yyqSzJumn9qeISIB8oqKh1QjkPD0eDzM9Mx6hcpjAosSZwX+f0kTP+qzr0S94Wij
	9Q5QZTiWSIeaPVXOjMrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjsV1-0001kE-UG; Fri, 12 Jun 2020 22:50:11 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjsUO-0001bs-HL
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 22:49:34 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 05CMnU3e103490;
 Fri, 12 Jun 2020 17:49:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1592002170;
 bh=or5Y94/hVNDzY9xAF8kMc/vLk2IYUaANgfagMRDiMbA=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=B9tLRvhgT6QbcRaDeyZRpPInZ4YNbeS+qe44/kLwN4/jD/5B6TjLcazHupWY9eQKT
 x0epICEZ1CW0iQcykRJyxuoYdbGwxGfkZWqNfmOU+b/9y8cWijQ12c1vIQ+7uYppgD
 x4BycaY4VbDGdfKDKu/TUwY7pdyDdw6vhHnB5Fwc=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05CMnUQb046046;
 Fri, 12 Jun 2020 17:49:30 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 12
 Jun 2020 17:49:30 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 12 Jun 2020 17:49:30 -0500
Received: from fllv0103.dal.design.ti.com (fllv0103.dal.design.ti.com
 [10.247.120.73])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05CMnUMr089837;
 Fri, 12 Jun 2020 17:49:30 -0500
Received: from localhost ([10.250.48.148])
 by fllv0103.dal.design.ti.com (8.14.7/8.14.7) with ESMTP id 05CMnUPH062182;
 Fri, 12 Jun 2020 17:49:30 -0500
From: Suman Anna <s-anna@ti.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: [PATCH v3 4/6] dt-bindings: remoteproc: Add bindings for C66x DSPs on
 TI K3 SoCs
Date: Fri, 12 Jun 2020 17:49:12 -0500
Message-ID: <20200612224914.7634-5-s-anna@ti.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200612224914.7634-1-s-anna@ti.com>
References: <20200612224914.7634-1-s-anna@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_154932_650890_9786063A 
X-CRM114-Status: GOOD (  15.13  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org,
 Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>,
 Lokesh Vutla <lokeshvutla@ti.com>, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Suman Anna <s-anna@ti.com>,
 linux-arm-kernel@lists.infradead.org
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
v3:
 - Refactored the common ti-sci properties "ti,sci", "ti,sci-dev-id" and
   "ti,sci-proc-ids" into a separate binding ti,k3-sci-proc.yaml.
 - Dropped the general description and maxItems against reg and reg-names
 - Added items list under reg
 - Removed the other binding references from the description for resets
   and mboxes
 - Revised the memory-region description and listed the mandatory items
 - Updated example to drop reserved-memory nodes, unused node labels
v2: https://patchwork.kernel.org/patch/11561781/

 .../bindings/remoteproc/ti,k3-dsp-rproc.yaml  | 139 ++++++++++++++++++
 1 file changed, 139 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml

diff --git a/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml b/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
new file mode 100644
index 000000000000..f03e88c42a6e
--- /dev/null
+++ b/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
@@ -0,0 +1,139 @@
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
+allOf:
+  - $ref: "ti,k3-sci-proc.yaml#"
+
+properties:
+  compatible:
+    const: ti,j721e-c66-dsp
+    description:
+      Use "ti,j721e-c66-dsp" for C66x DSPs on K3 J721E SoCs
+
+  reg:
+    items:
+      - description: Address and Size of the L2 SRAM internal memory region
+      - description: Address and Size of the L1 PRAM internal memory region
+      - description: Address and Size of the L1 DRAM internal memory region
+
+  reg-names:
+    items:
+      - const: l2sram
+      - const: l1pram
+      - const: l1dram
+
+  resets:
+    description: |
+      Should contain the phandle to the reset controller node managing the
+      local resets for this device, and a reset specifier.
+    maxItems: 1
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
+      with the sub-mailbox node used in the firmware image.
+    maxItems: 1
+
+  memory-region:
+    minItems: 2
+    maxItems: 8
+    description: |
+      phandle to the reserved memory nodes to be associated with the remoteproc
+      device. There should be at least two reserved memory nodes defined. The
+      reserved memory nodes should be carveout nodes, and should be defined as
+      per the bindings in
+      Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt
+    items:
+      - description: region used for dynamic DMA allocations like vrings and
+                     vring buffers
+      - description: region reserved for firmware image sections
+    additionalItems: true
+
+# Optional properties:
+# --------------------
+
+  sram:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    minItems: 1
+    maxItems: 4
+    description: |
+      phandles to one or more reserved on-chip SRAM regions. The regions
+      should be defined as child nodes of the respective SRAM node, and
+      should be defined as per the generic bindings in,
+      Documentation/devicetree/bindings/sram/sram.yaml
+
+required:
+ - compatible
+ - reg
+ - reg-names
+ - resets
+ - firmware-name
+ - mboxes
+ - memory-region
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    / {
+        model = "Texas Instruments K3 J721E SoC";
+        compatible = "ti,j721e";
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        bus@100000 {
+            compatible = "simple-bus";
+            #address-cells = <2>;
+            #size-cells = <2>;
+            ranges = <0x00 0x00100000 0x00 0x00100000 0x00 0x00020000>, /* ctrl mmr */
+                     <0x4d 0x80800000 0x4d 0x80800000 0x00 0x00800000>, /* C66_0 */
+                     <0x4d 0x81800000 0x4d 0x81800000 0x00 0x00800000>; /* C66_1 */
+
+            /* J721E C66_0 DSP node */
+            dsp@4d80800000 {
+                compatible = "ti,j721e-c66-dsp";
+                reg = <0x4d 0x80800000 0x00 0x00048000>,
+                      <0x4d 0x80e00000 0x00 0x00008000>,
+                      <0x4d 0x80f00000 0x00 0x00008000>;
+                reg-names = "l2sram", "l1pram", "l1dram";
+                ti,sci = <&dmsc>;
+                ti,sci-dev-id = <142>;
+                ti,sci-proc-ids = <0x03 0xFF>;
+                resets = <&k3_reset 142 1>;
+                firmware-name = "j7-c66_0-fw";
+                memory-region = <&c66_0_dma_memory_region>,
+                                <&c66_0_memory_region>;
+                mboxes = <&mailbox0_cluster3 &mbox_c66_0>;
+            };
+        };
+    };
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
