Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEB8419321A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 21:47:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g1fAXlfvtWkJDEdY7oxOeNBd56cliSxUx5MS3/wnD2w=; b=dccT0GpD4sozRB
	SMZWAQM31pwG5mDqx/gtRTrYn8XF5OMR3/OoHftRNhhxyA90uMEUhTkx7NmY1wEDJQkebrfEgUkQV
	y3WDh+s7f+YuC93390fiYX4wzCLrd6USL2Zswbc1wqK5KKC+lE+KtRQahthK8s1v/amGSlMgHwWyy
	mA/bhQ0eF2+Hvwn4fwxP9vyrm3P+qVZVZMXe1mm1ibMJwjEf2jMyYljYrzVdQNC6h26s5jJgBRibx
	Xhh8hKY/ReXVG/a5VglRSr3vGTyAED8NgWehh+HyJPVp4qBEf9QlybhOoZGF0uFwzgfAE7NlsI0rd
	8vMz/VYvjPExDpS2IUXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHCvy-0003rW-Va; Wed, 25 Mar 2020 20:47:30 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHCvq-0003pw-CV
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 20:47:23 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02PKl6n0060227;
 Wed, 25 Mar 2020 15:47:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1585169226;
 bh=GEKRmSESoMDG0lbS4ZyyT2Q80xiJh4SlP+/NplyuYdg=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=qwO8aTCjipPXRzfKqo0sUFVKAQ8sXcGXu/NgFXTKZxmX4wBjDc5uERdWtCSGTs6OF
 FzPC9e+TzR2GP03KFIFATEypLfSA7dbofZg6xYFPNOkesM7xdqKB+89rwoe5Ta8vBj
 iVMoCrqEoKYBmE7rSe4k2CUu0TJFYF8E0+5KQhF0=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 02PKl6Bh102565
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 25 Mar 2020 15:47:06 -0500
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 25
 Mar 2020 15:47:05 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 25 Mar 2020 15:47:05 -0500
Received: from lelv0597.itg.ti.com (lelv0597.itg.ti.com [10.181.64.32])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02PKl5fA018619;
 Wed, 25 Mar 2020 15:47:05 -0500
Received: from localhost ([10.250.35.147])
 by lelv0597.itg.ti.com (8.14.7/8.14.7) with ESMTP id 02PKl557063372;
 Wed, 25 Mar 2020 15:47:05 -0500
From: Suman Anna <s-anna@ti.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: [PATCH 1/4] dt-bindings: remoteproc: k3-dsp: Update bindings for C71x
 DSPs
Date: Wed, 25 Mar 2020 15:46:58 -0500
Message-ID: <20200325204701.16862-2-s-anna@ti.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200325204701.16862-1-s-anna@ti.com>
References: <20200325204701.16862-1-s-anna@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_134722_510799_D9FEF0DA 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Loic Pallardy <loic.pallardy@st.com>,
 Lokesh Vutla <lokeshvutla@ti.com>, Arnaud Pouliquen <arnaud.pouliquen@st.com>,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Clement Leger <cleger@kalray.eu>, Suman Anna <s-anna@ti.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some Texas Instruments K3 family of SoCs have one of more newer
generation TMS320C71x CorePac processor subsystem in addition to
the existing TMS320C66x CorePac processor subsystems. Update the
device tree bindings document for the C71x DSP devices.

The example is also updated to show the single C71 DSP present
on J721E SoCs.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
 .../bindings/remoteproc/ti,k3-dsp-rproc.yaml  | 78 ++++++++++++++++---
 1 file changed, 69 insertions(+), 9 deletions(-)

diff --git a/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml b/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
index 416e3abe7937..6b1536509c39 100644
--- a/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
@@ -27,9 +27,12 @@ description: |
 
 properties:
   compatible:
-    const: ti,j721e-c66-dsp
+    enum:
+      - ti,j721e-c66-dsp
+      - ti,j721e-c71-dsp
     description:
       Use "ti,j721e-c66-dsp" for C66x DSPs on K3 J721E SoCs
+      Use "ti,j721e-c71-dsp" for C71x DSPs on K3 J721E SoCs
 
   reg:
     description: |
@@ -37,18 +40,11 @@ properties:
       Each entry should have the memory region's start address
       and the size of the region, the representation matching
       the parent node's '#address-cells' and '#size-cells' values.
-    minItems: 3
-    maxItems: 3
 
   reg-names:
     description: |
       Should contain strings with the names of the specific internal
       internal memory regions, and should be defined in this order
-    maxItems: 3
-    items:
-      - const: l2sram
-      - const: l1pram
-      - const: l1dram
 
   ti,sci:
     $ref: /schemas/types.yaml#/definitions/phandle
@@ -117,6 +113,41 @@ properties:
       should be defined as per the generic bindings in,
       Documentation/devicetree/bindings/sram/sram.yaml
 
+if:
+  properties:
+    compatible:
+      enum:
+        - ti,j721e-c66-dsp
+then:
+  properties:
+    reg:
+      minItems: 3
+      maxItems: 3
+    reg-names:
+      minItems: 3
+      maxItems: 3
+      items:
+        - const: l2sram
+        - const: l1pram
+        - const: l1dram
+else:
+  if:
+    properties:
+      compatible:
+        enum:
+          - ti,j721e-c71-dsp
+  then:
+    properties:
+      reg:
+        minItems: 2
+        maxItems: 2
+      reg-names:
+        minItems: 2
+        maxItems: 2
+        items:
+          - const: l2sram
+          - const: l1dram
+
 required:
  - compatible
  - reg
@@ -152,13 +183,26 @@ examples:
             reg = <0x00 0xa6100000 0x00 0xf00000>;
             no-map;
         };
+
+        c71_0_dma_memory_region: c71-dma-memory@a8000000 {
+            compatible = "shared-dma-pool";
+            reg = <0x00 0xa8000000 0x00 0x100000>;
+            no-map;
+        };
+
+        c71_0_memory_region: c71-memory@a8100000 {
+            compatible = "shared-dma-pool";
+            reg = <0x00 0xa8100000 0x00 0xf00000>;
+            no-map;
+        };
     };
 
     cbass_main: interconnect@100000 {
         compatible = "simple-bus";
         #address-cells = <2>;
         #size-cells = <2>;
-        ranges = <0x4d 0x80800000 0x4d 0x80800000 0x00 0x00800000>, /* C66_0 */
+        ranges = <0x00 0x64800000 0x00 0x64800000 0x00 0x00800000>, /* C71_0 */
+                 <0x4d 0x80800000 0x4d 0x80800000 0x00 0x00800000>, /* C66_0 */
                  <0x4d 0x81800000 0x4d 0x81800000 0x00 0x00800000>; /* C66_1 */
 
         /* J721E C66_0 DSP node */
@@ -177,4 +221,20 @@ examples:
                             <&c66_0_memory_region>;
             mboxes = <&mailbox0_cluster3 &mbox_c66_0>;
         };
+
+        /* J721E C71_0 DSP node */
+        c71_0: dsp@64800000 {
+            compatible = "ti,j721e-c71-dsp";
+            reg = <0x00 0x64800000 0x00 0x00080000>,
+                  <0x00 0x64e00000 0x00 0x0000c000>;
+            reg-names = "l2sram", "l1dram";
+            ti,sci = <&dmsc>;
+            ti,sci-dev-id = <15>;
+            ti,sci-proc-ids = <0x30 0xFF>;
+            resets = <&k3_reset 15 1>;
+            firmware-name = "j7-c71_0-fw";
+            memory-region = <&c71_0_dma_memory_region>,
+                            <&c71_0_memory_region>;
+            mboxes = <&mailbox0_cluster4 &mbox_c71_0>;
+        };
     };
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
