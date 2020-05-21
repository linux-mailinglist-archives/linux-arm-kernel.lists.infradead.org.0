Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01A0B1DD0FA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 17:17:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tBTbXsmfJWx0rEdKJtBJWB6mq78fgUa7kCW6rYqwHA0=; b=s60cJSpyjCoj6u
	Ffyhf/MXUEhE/yzWDGIyjJq9xct0ductNpKZQEG1Rq0gtlRxr21s3VKzp9gbItxpUOj0todUkgvkA
	BdyTEzeBm1q6gkwvk3jGeK8YOXKJeZUAj06fl31jz43Ar5pR/xNV4srlzpgZE+1LcodPyIJ0L2SuQ
	iXhQyhShse3j+1vRNpgD6uWWPjhkdN+A7WXs3pXTNi01FSSPfsxqMNn4g7znTkVH2QpPKwtg2ngPD
	7esLxTkpnEobpCQeo/dxcu1ifbn4Zz2XRc7LrUMXX3IKbzmWfAMB1BGlU45X5GzSgqszPcjUef3Qs
	Sp7aHJ/MnHn4VcL+9ajw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbmwG-0008JW-Rz; Thu, 21 May 2020 15:16:52 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbmw7-0008Ig-I0
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 15:16:45 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04LFGe34107365;
 Thu, 21 May 2020 10:16:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1590074200;
 bh=LLXDK/X4fW4hsCWDc/19skeMLPMtI4byaWU8XJQ91EQ=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=iRP6+LyWbZyTgJ9g0f8YLWf+6+uE+3nrSDKMkU5slICeGxw6PmjptuUZWApqaMS6w
 VALOmKnr+e0dCkEp5ADDggUT7flC1IRZt2afmVoNyKHXaaplSIEn3QkmVoLuGIwN9X
 v0YyxzSzz++M19xfogq9dfnwvk7sZED89845hORU=
Received: from DFLE108.ent.ti.com (dfle108.ent.ti.com [10.64.6.29])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04LFGehm035521;
 Thu, 21 May 2020 10:16:40 -0500
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 21
 May 2020 10:16:40 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 21 May 2020 10:16:40 -0500
Received: from lelv0597.itg.ti.com (lelv0597.itg.ti.com [10.181.64.32])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04LFGeur028962;
 Thu, 21 May 2020 10:16:40 -0500
Received: from localhost ([10.250.48.148])
 by lelv0597.itg.ti.com (8.14.7/8.14.7) with ESMTP id 04LFGehK076178;
 Thu, 21 May 2020 10:16:40 -0500
From: Suman Anna <s-anna@ti.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: [PATCH v2 1/2] dt-bindings: remoteproc: k3-dsp: Update bindings for
 C71x DSPs
Date: Thu, 21 May 2020 10:16:35 -0500
Message-ID: <20200521151636.28260-2-s-anna@ti.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200521151636.28260-1-s-anna@ti.com>
References: <20200521151636.28260-1-s-anna@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_081643_675728_913C0989 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
 Lokesh Vutla <lokeshvutla@ti.com>, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Suman Anna <s-anna@ti.com>,
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
Reviewed-by: Rob Herring <robh@kernel.org>
---
v2: 
 - Rebased patch, no changes to binding properties
 - Example additions indented one level to right as part of rebase and
   changes done in updated C66x bindings patch
 - Added Rob's Reviewed-by
v1: https://patchwork.kernel.org/patch/11458601/

 .../bindings/remoteproc/ti,k3-dsp-rproc.yaml  | 76 +++++++++++++++++--
 1 file changed, 68 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml b/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
index cdf649655838..47642015c884 100644
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
       memory regions, and should be defined in this order
-    maxItems: 3
-    items:
-      - const: l2sram
-      - const: l1pram
-      - const: l1dram
 
   ti,sci:
     $ref: /schemas/types.yaml#/definitions/phandle
@@ -121,6 +117,41 @@ properties:
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
@@ -160,6 +191,18 @@ examples:
                 reg = <0x00 0xa6100000 0x00 0xf00000>;
                 no-map;
             };
+
+            c71_0_dma_memory_region: c71-dma-memory@a8000000 {
+                compatible = "shared-dma-pool";
+                reg = <0x00 0xa8000000 0x00 0x100000>;
+                no-map;
+            };
+
+            c71_0_memory_region: c71-memory@a8100000 {
+                compatible = "shared-dma-pool";
+                reg = <0x00 0xa8100000 0x00 0xf00000>;
+                no-map;
+            };
         };
 
         cbass_main: bus@100000 {
@@ -167,6 +210,7 @@ examples:
             #address-cells = <2>;
             #size-cells = <2>;
             ranges = <0x00 0x00100000 0x00 0x00100000 0x00 0x00020000>, /* ctrl mmr */
+                     <0x00 0x64800000 0x00 0x64800000 0x00 0x00800000>, /* C71_0 */
                      <0x4d 0x80800000 0x4d 0x80800000 0x00 0x00800000>, /* C66_0 */
                      <0x4d 0x81800000 0x4d 0x81800000 0x00 0x00800000>; /* C66_1 */
 
@@ -186,5 +230,21 @@ examples:
                                 <&c66_0_memory_region>;
                 mboxes = <&mailbox0_cluster3 &mbox_c66_0>;
             };
+
+            /* J721E C71_0 DSP node */
+            c71_0: dsp@64800000 {
+                compatible = "ti,j721e-c71-dsp";
+                reg = <0x00 0x64800000 0x00 0x00080000>,
+                      <0x00 0x64e00000 0x00 0x0000c000>;
+                reg-names = "l2sram", "l1dram";
+                ti,sci = <&dmsc>;
+                ti,sci-dev-id = <15>;
+                ti,sci-proc-ids = <0x30 0xFF>;
+                resets = <&k3_reset 15 1>;
+                firmware-name = "j7-c71_0-fw";
+                memory-region = <&c71_0_dma_memory_region>,
+                                <&c71_0_memory_region>;
+                mboxes = <&mailbox0_cluster4 &mbox_c71_0>;
+            };
         };
     };
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
