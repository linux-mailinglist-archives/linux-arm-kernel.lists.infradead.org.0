Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C4B1F7F59
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 00:54:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aobwMOLKlzRWluxY2RgIyIuJm55Jr8e1x2BehsiX+ZU=; b=BGZs5++LyJwpbK
	jp0lXoO8tdbNbMvuYJ6MDg/cUChu3l+LQNqa7lu4RmksfTgnlvSkkQ0O6PZN75wos3rEqpjnuXpt/
	/ibdLLdzKehohMGSE57XrC/rKm68d3Qva9g3VQ664lNFSHLkixmn/iMOWvR51hHv0Hye73be84H/1
	hS7+paqDQNocCd1KItNoGxIUFYsaazRjzVu/nDvD7CNXp62IZw18MPTdKlG1OAt2iDiTQcOCIbDri
	2h7RsPmD+kFtgft6hQl2GtBuue/dIuZlp6XnXIcaHYl9TkKXtV2mnsOXXo42WfLScXCS9BfeVwvTK
	SmHfvAows3mPjRDxlVzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjsZS-0006Ov-D4; Fri, 12 Jun 2020 22:54:46 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjsYm-0005yg-Je
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 22:54:06 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 05CMs3Ck122151;
 Fri, 12 Jun 2020 17:54:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1592002443;
 bh=4EvBtK/rfun7TTazLD264i1an7pFcd5qtvhAx6gjSkc=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=Ao3O9O0Ua7PlhJ8u+T/QqOahciZ5iT6mNrnBK0bVpqBoGe9/nY/QJiCDwIDNPwKuM
 YYK5vKuiWlar0Bs11sy6khRZxEX7f6OJdG4EPZ5RuTsxCPqPTg7wM/xb3jhwxJ+qRQ
 LRtBUjuJcVHcQ23YvY11zdPmLe3eI1Lyah2UsBBE=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 05CMs2MG064443
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 12 Jun 2020 17:54:03 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 12
 Jun 2020 17:54:01 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 12 Jun 2020 17:54:01 -0500
Received: from fllv0103.dal.design.ti.com (fllv0103.dal.design.ti.com
 [10.247.120.73])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05CMs1VI119270;
 Fri, 12 Jun 2020 17:54:01 -0500
Received: from localhost ([10.250.48.148])
 by fllv0103.dal.design.ti.com (8.14.7/8.14.7) with ESMTP id 05CMs1vW063928;
 Fri, 12 Jun 2020 17:54:01 -0500
From: Suman Anna <s-anna@ti.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: [PATCH v3 1/2] dt-bindings: remoteproc: k3-dsp: Update bindings for
 C71x DSPs
Date: Fri, 12 Jun 2020 17:53:56 -0500
Message-ID: <20200612225357.8251-2-s-anna@ti.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200612225357.8251-1-s-anna@ti.com>
References: <20200612225357.8251-1-s-anna@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_155404_730348_7884CA6C 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [198.47.19.142 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

Some Texas Instruments K3 family of SoCs have one of more newer
generation TMS320C71x CorePac processor subsystem in addition to
the existing TMS320C66x CorePac processor subsystems. Update the
device tree bindings document for the C71x DSP devices.

The example is also updated to show the single C71 DSP present
on J721E SoCs.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
v3:
 - Dropped Rob's previous Reviewed-by tag due to decent changes in the
   patch
 - Replaced the minItems and maxItems from reg with actual items list
 - Dropped C71 reserved memory nodes from example
v2: https://patchwork.kernel.org/patch/11563231/

 .../bindings/remoteproc/ti,k3-dsp-rproc.yaml  | 68 +++++++++++++++----
 1 file changed, 55 insertions(+), 13 deletions(-)

diff --git a/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml b/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
index f03e88c42a6e..8eaf326b5a7f 100644
--- a/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
@@ -30,21 +30,12 @@ allOf:
 
 properties:
   compatible:
-    const: ti,j721e-c66-dsp
+    enum:
+      - ti,j721e-c66-dsp
+      - ti,j721e-c71-dsp
     description:
       Use "ti,j721e-c66-dsp" for C66x DSPs on K3 J721E SoCs
-
-  reg:
-    items:
-      - description: Address and Size of the L2 SRAM internal memory region
-      - description: Address and Size of the L1 PRAM internal memory region
-      - description: Address and Size of the L1 DRAM internal memory region
-
-  reg-names:
-    items:
-      - const: l2sram
-      - const: l1pram
-      - const: l1dram
+      Use "ti,j721e-c71-dsp" for C71x DSPs on K3 J721E SoCs
 
   resets:
     description: |
@@ -92,6 +83,40 @@ properties:
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
+      items:
+        - description: Address and Size of the L2 SRAM internal memory region
+        - description: Address and Size of the L1 PRAM internal memory region
+        - description: Address and Size of the L1 DRAM internal memory region
+    reg-names:
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
+        items:
+          - description: Address and Size of the L2 SRAM internal memory region
+          - description: Address and Size of the L1 DRAM internal memory region
+      reg-names:
+        items:
+          - const: l2sram
+          - const: l1dram
+
 required:
  - compatible
  - reg
@@ -116,6 +141,7 @@ examples:
             #address-cells = <2>;
             #size-cells = <2>;
             ranges = <0x00 0x00100000 0x00 0x00100000 0x00 0x00020000>, /* ctrl mmr */
+                     <0x00 0x64800000 0x00 0x64800000 0x00 0x00800000>, /* C71_0 */
                      <0x4d 0x80800000 0x4d 0x80800000 0x00 0x00800000>, /* C66_0 */
                      <0x4d 0x81800000 0x4d 0x81800000 0x00 0x00800000>; /* C66_1 */
 
@@ -135,5 +161,21 @@ examples:
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
