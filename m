Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B2921EC723
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 04:10:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pTWIyedVXTJVjbCQ96TWP/7kNugSvhXmiQR2hG5HqaI=; b=RClfdpgSNhV1Dq/d5CcrMHNc+F
	IHDLThNJKFK5EsWxbv3M4KObAnOjYAukkAZgNfN5cDZiGPcf79SQqeumuInlBrSf55iPLtEjGr5Gd
	6+G2+vuixtkSCyGpc1iMZ0DxiP31ctI4yKz5ufUuvfDZPS5PlX4a+0GjN7NvS04p/fyF7lBWnvEGg
	0njnvlZJHCwszrXUzGk9hO3aTrGkrk1fCFgN8t/GRViNPnFAhstuyFlgHsuadBP6sqU8wVk+dSdtr
	0y8ZzujdL567vg0kw1/488mCwpF6SXipFPIfuLm9T8ToCcWy68Ea8At67OOj+7TKWXwnwo2X47D8h
	JNPAijCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgIrE-00066M-3i; Wed, 03 Jun 2020 02:10:20 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgIqP-0005Qx-Ee
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 02:09:31 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 1CEE7200025;
 Wed,  3 Jun 2020 04:09:28 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 7C0EB200CAF;
 Wed,  3 Jun 2020 04:09:22 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 56C5B402B1;
 Wed,  3 Jun 2020 10:09:15 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: aisheng.dong@nxp.com, robh+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux@rempel-privat.de, pandy.gao@nxp.com, wolfram@the-dreams.de,
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] dt-bindings: i2c: Convert mxs i2c to json-schema
Date: Wed,  3 Jun 2020 09:58:54 +0800
Message-Id: <1591149535-342-3-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591149535-342-1-git-send-email-Anson.Huang@nxp.com>
References: <1591149535-342-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_190929_764956_5E918E7D 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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

Convert the MXS I2C binding to DT schema format using json-schema

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 Documentation/devicetree/bindings/i2c/i2c-mxs.txt  | 25 ----------
 Documentation/devicetree/bindings/i2c/i2c-mxs.yaml | 55 ++++++++++++++++++++++
 2 files changed, 55 insertions(+), 25 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-mxs.txt
 create mode 100644 Documentation/devicetree/bindings/i2c/i2c-mxs.yaml

diff --git a/Documentation/devicetree/bindings/i2c/i2c-mxs.txt b/Documentation/devicetree/bindings/i2c/i2c-mxs.txt
deleted file mode 100644
index 4e1c8ac..0000000
--- a/Documentation/devicetree/bindings/i2c/i2c-mxs.txt
+++ /dev/null
@@ -1,25 +0,0 @@
-* Freescale MXS Inter IC (I2C) Controller
-
-Required properties:
-- compatible: Should be "fsl,<chip>-i2c"
-- reg: Should contain registers location and length
-- interrupts: Should contain ERROR interrupt number
-- clock-frequency: Desired I2C bus clock frequency in Hz.
-                   Only 100000Hz and 400000Hz modes are supported.
-- dmas: DMA specifier, consisting of a phandle to DMA controller node
-  and I2C DMA channel ID.
-  Refer to dma.txt and fsl-mxs-dma.txt for details.
-- dma-names: Must be "rx-tx".
-
-Examples:
-
-i2c0: i2c@80058000 {
-	#address-cells = <1>;
-	#size-cells = <0>;
-	compatible = "fsl,imx28-i2c";
-	reg = <0x80058000 2000>;
-	interrupts = <111>;
-	clock-frequency = <100000>;
-	dmas = <&dma_apbx 6>;
-	dma-names = "rx-tx";
-};
diff --git a/Documentation/devicetree/bindings/i2c/i2c-mxs.yaml b/Documentation/devicetree/bindings/i2c/i2c-mxs.yaml
new file mode 100644
index 0000000..7adcba3
--- /dev/null
+++ b/Documentation/devicetree/bindings/i2c/i2c-mxs.yaml
@@ -0,0 +1,55 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/i2c/i2c-mxs.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale MXS Inter IC (I2C) Controller
+
+maintainers:
+  - Shawn Guo <shawn.guo@linaro.org>
+
+properties:
+  compatible:
+    enum:
+      - fsl,imx23-i2c
+      - fsl,imx28-i2c
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clock-frequency:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      Desired I2C bus clock frequency in Hz, only 100000Hz and 400000Hz
+      modes are supported.
+    default: 100000
+
+  dmas:
+    maxItems: 1
+
+  dma-names:
+    const: rx-tx
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - dmas
+  - dma-names
+
+examples:
+  - |
+    i2c@80058000 {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        compatible = "fsl,imx28-i2c";
+        reg = <0x80058000 2000>;
+        interrupts = <111>;
+        clock-frequency = <100000>;
+        dmas = <&dma_apbx 6>;
+        dma-names = "rx-tx";
+    };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
