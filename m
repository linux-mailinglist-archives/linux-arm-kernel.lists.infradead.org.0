Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD3231B2948
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 16:18:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=t+rp5hz8E3Ypb6HQRt8W3O3FhUnvXQmeCs5mWDNZOUc=; b=UJqWvSFNwRVXrXNBjpMqxACprX
	1Yct1S6RHLbFKfsta/yIpACuu2ZIHUIc/KsQqUxjw2DaQ2rGoSsTRHtY5vIZD5r2XGm1eTaLS4IYC
	jY4/TNq/2H8bcLQJkFgdcYHcw2BkhnoQpWgyRcrSHsssiT3kGru7GXgbrS3OsyUWZq4BpdGgIPH1k
	FhjEl+hln7PExF++x4cLyfWjuNe4sYTsrQ1znbiO5UOZXoIaE2WgHvVI5DQTYoD9L/xYW5+NRtSGL
	2Uao8hIbb8ESTUVqp3bZdopdeQ1g0vzAuYOjwBWldXZoAYA9NLKmMKuMqPepqx/OdAEG09IDqdBfO
	lbOZOByQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQtjP-0000bU-BQ; Tue, 21 Apr 2020 14:18:35 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQtiz-0000PS-Gh
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 14:18:11 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 51B8E1A0D8B;
 Tue, 21 Apr 2020 16:18:08 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 208891A0D94;
 Tue, 21 Apr 2020 16:18:04 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id BD112402E8;
 Tue, 21 Apr 2020 22:17:58 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: srinivas.kandagatla@linaro.org, robh+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH V2 2/3] dt-bindings: nvmem: Convert i.MX IIM to json-schema
Date: Tue, 21 Apr 2020 22:09:40 +0800
Message-Id: <1587478181-21226-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1587478181-21226-1-git-send-email-Anson.Huang@nxp.com>
References: <1587478181-21226-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_071809_825336_2805CC26 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the i.MX IIM binding to DT schema format using json-schema.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V1:
	- drop clocks description.
---
 .../devicetree/bindings/nvmem/imx-iim.txt          | 22 ---------
 .../devicetree/bindings/nvmem/imx-iim.yaml         | 57 ++++++++++++++++++++++
 2 files changed, 57 insertions(+), 22 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/nvmem/imx-iim.txt
 create mode 100644 Documentation/devicetree/bindings/nvmem/imx-iim.yaml

diff --git a/Documentation/devicetree/bindings/nvmem/imx-iim.txt b/Documentation/devicetree/bindings/nvmem/imx-iim.txt
deleted file mode 100644
index 1978c5b..0000000
--- a/Documentation/devicetree/bindings/nvmem/imx-iim.txt
+++ /dev/null
@@ -1,22 +0,0 @@
-Freescale i.MX IC Identification Module (IIM) device tree bindings
-
-This binding represents the IC Identification Module (IIM) found on
-i.MX25, i.MX27, i.MX31, i.MX35, i.MX51 and i.MX53 SoCs.
-
-Required properties:
-- compatible: should be one of
-	"fsl,imx25-iim", "fsl,imx27-iim",
-	"fsl,imx31-iim", "fsl,imx35-iim",
-	"fsl,imx51-iim", "fsl,imx53-iim",
-- reg: Should contain the register base and length.
-- interrupts: Should contain the interrupt for the IIM
-- clocks: Should contain a phandle pointing to the gated peripheral clock.
-
-Example:
-
-	iim: iim@63f98000 {
-		compatible = "fsl,imx53-iim", "fsl,imx27-iim";
-		reg = <0x63f98000 0x4000>;
-		interrupts = <69>;
-                clocks = <&clks IMX5_CLK_IIM_GATE>;
-	};
diff --git a/Documentation/devicetree/bindings/nvmem/imx-iim.yaml b/Documentation/devicetree/bindings/nvmem/imx-iim.yaml
new file mode 100644
index 0000000..9cc43e7
--- /dev/null
+++ b/Documentation/devicetree/bindings/nvmem/imx-iim.yaml
@@ -0,0 +1,57 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/nvmem/imx-iim.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale i.MX IC Identification Module (IIM) device tree bindings
+
+maintainers:
+  - Anson Huang <Anson.Huang@nxp.com>
+
+description: |
+  This binding represents the IC Identification Module (IIM) found on
+  i.MX25, i.MX27, i.MX31, i.MX35, i.MX51 and i.MX53 SoCs.
+
+allOf:
+  - $ref: "nvmem.yaml#"
+
+properties:
+  compatible:
+    enum:
+      - fsl,imx25-iim
+      - fsl,imx27-iim
+      - fsl,imx31-iim
+      - fsl,imx35-iim
+      - fsl,imx51-iim
+      - fsl,imx53-iim
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx5-clock.h>
+
+    iim: efuse@63f98000 {
+        compatible = "fsl,imx53-iim";
+        reg = <0x63f98000 0x4000>;
+        interrupts = <69>;
+        clocks = <&clks IMX5_CLK_IIM_GATE>;
+    };
+
+...
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
