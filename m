Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81662F1FBE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 21:24:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w/NmhDRWqVM5F+39nsPZ+4xcadsSQ8QBEh56aBGmqio=; b=mmpyQv6vyu/gEn
	Fi4gVXQngWUD+1r/HyqYLKqU2zT3S6qlE8sclFlJqY5fztevXlpdZsnUh3weMLbK38xMrq37GxuI6
	NHjxQE9dfeAM44g28/RPoQYUOgYTBZaZ7nt88CssWZ0fWrwPHxl1qjES+mn+l+4ku09VPi8JK+QOn
	u0vipq1N33c026o+vHurCryfWsAdjI3+nNIlQje3DcZVN7+FoM+t7MU+mSDMP2BeawMsHg+ijVrcc
	4400WJlZBwsuQTp7/VuvWeh5M+3WOgQRLDWqntdl1FEke6XNfU4T5vjXWt9/MDMUqjHU4o7DJTJkV
	cz+/eZhHph0diNYGCchA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSRqv-0004qQ-Jb; Wed, 06 Nov 2019 20:24:29 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSRqT-0004cR-Sl
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 20:24:03 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id xA6KNuxH060697;
 Wed, 6 Nov 2019 14:23:56 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573071836;
 bh=8802dADt23gudPuHuQTsQCUgEmLe/TiFogJEbCDwyNk=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=nljccjlzLsjZXd8a3hLstJfMDE9xoebWW6H1ad+cnxlqwHvH0MxO4+3aKKAD95Eqw
 UBngVtwyk4BDi0B5AuBW0X+zYcLihRqHfDDWEDtL4xuPq7kfvrh7TDweEqUdiNidAg
 wG9I1hBtmK4agCPhfMqv1km6i2QxRpVGhkB1hLJU=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xA6KNuch120447
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 6 Nov 2019 14:23:56 -0600
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 6 Nov
 2019 14:23:40 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 6 Nov 2019 14:23:40 -0600
Received: from uda0869644b.dal.design.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id xA6KNsis119124;
 Wed, 6 Nov 2019 14:23:55 -0600
From: Benoit Parrot <bparrot@ti.com>
To: Hans Verkuil <hverkuil@xs4all.nl>, Tony Lindgren <tony@atomide.com>, Tero
 Kristo <t-kristo@ti.com>
Subject: [Patch v3 1/5] dt-bindings: media: ti-vpe: Document VPE driver
Date: Wed, 6 Nov 2019 14:26:18 -0600
Message-ID: <20191106202622.2648-2-bparrot@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191106202622.2648-1-bparrot@ti.com>
References: <20191106202622.2648-1-bparrot@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_122402_006093_2AC2AD81 
X-CRM114-Status: GOOD (  13.83  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Benoit Parrot <bparrot@ti.com>, Rob Herring <robh+dt@kernel.org>,
 linux-omap@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Device Tree bindings for the Video Processing Engine (VPE).

Signed-off-by: Benoit Parrot <bparrot@ti.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/media/ti,vpe.yaml     | 64 +++++++++++++++++++
 MAINTAINERS                                   |  1 +
 2 files changed, 65 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/ti,vpe.yaml

diff --git a/Documentation/devicetree/bindings/media/ti,vpe.yaml b/Documentation/devicetree/bindings/media/ti,vpe.yaml
new file mode 100644
index 000000000000..f3a8a350e85f
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/ti,vpe.yaml
@@ -0,0 +1,64 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/ti,vpe.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Texas Instruments DRA7x Video Processing Engine (VPE) Device Tree Bindings
+
+maintainers:
+  - Benoit Parrot <bparrot@ti.com>
+
+description: |-
+  The Video Processing Engine (VPE) is a key component for image post
+  processing applications. VPE consist of a single memory to memory
+  path which can perform chroma up/down sampling, deinterlacing,
+  scaling and color space conversion.
+
+properties:
+  compatible:
+      const: ti,dra7-vpe
+
+  reg:
+    items:
+      - description: The VPE main register region
+      - description: Scaler (SC) register region
+      - description: Color Space Conversion (CSC) register region
+      - description: Video Port Direct Memory Access (VPDMA) register region
+
+  reg-names:
+    items:
+      - const: vpe_top
+      - const: sc
+      - const: csc
+      - const: vpdma
+
+  interrupts:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    vpe: vpe@489d0000 {
+        compatible = "ti,dra7-vpe";
+        reg = <0x489d0000 0x120>,
+              <0x489d0700 0x80>,
+              <0x489d5700 0x18>,
+              <0x489dd000 0x400>;
+        reg-names = "vpe_top",
+                    "sc",
+                    "csc",
+                    "vpdma";
+        interrupts = <GIC_SPI 354 IRQ_TYPE_LEVEL_HIGH>;
+    };
+
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index fb8e7d94492b..bb60674cf89d 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -16324,6 +16324,7 @@ Q:	http://patchwork.linuxtv.org/project/linux-media/list/
 S:	Maintained
 F:	drivers/media/platform/ti-vpe/
 F:	Documentation/devicetree/bindings/media/ti,cal.yaml
+F:	Documentation/devicetree/bindings/media/ti,vpe.yaml
 
 TI WILINK WIRELESS DRIVERS
 L:	linux-wireless@vger.kernel.org
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
