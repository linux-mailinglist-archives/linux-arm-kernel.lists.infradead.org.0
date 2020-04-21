Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 175E51B294A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 16:18:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AWw9md0c0Ohe/r8p7egqMzleiqUkj63d/GKZLx8ymUU=; b=AiFeyZTgmPMM58aXlN+ngiC3Kp
	IrdWmAjf4wqSdfO9gErjmqQ+NgHjD5tZQKhpio+1DPnigCrBEYp6dHi2Uu7gbmBOHlGKZxV8yREfM
	146pnxpe1MgyO+ayhaURW84APfkZqcRBLgpWmY/sdgr+hPPZxlY4v43t2pIGPtd3Jfe8Cs6fICacT
	71PkjCn8NyUUW7ZPJzPrLsQRCqm5+WfJbCJBc2pkqOVqp+Pt63mIns14jB0YD5061a0SpQvHbfWgs
	PYPPcppkGB3va217CTSbOvudbaiQgRF/KjWeCzQ0OsssEX658aJRyljDlNWVlD0ephPRfaii5BLKq
	x8Tas4Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQtja-0000sP-18; Tue, 21 Apr 2020 14:18:46 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQtj0-0000Pt-Cd
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 14:18:12 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 321F01A0D8A;
 Tue, 21 Apr 2020 16:18:09 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 021231A0DA4;
 Tue, 21 Apr 2020 16:18:05 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 9E149402ED;
 Tue, 21 Apr 2020 22:17:59 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: srinivas.kandagatla@linaro.org, robh+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH V2 3/3] dt-bindings: nvmem: Convert MXS OCOTP to json-schema
Date: Tue, 21 Apr 2020 22:09:41 +0800
Message-Id: <1587478181-21226-3-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1587478181-21226-1-git-send-email-Anson.Huang@nxp.com>
References: <1587478181-21226-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_071810_561438_C1C10663 
X-CRM114-Status: GOOD (  10.56  )
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

Convert the MXS OCOTP binding to DT schema format using json-schema.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V1:
	- drop clocks description.
---
 .../devicetree/bindings/nvmem/mxs-ocotp.txt        | 24 -----------
 .../devicetree/bindings/nvmem/mxs-ocotp.yaml       | 50 ++++++++++++++++++++++
 2 files changed, 50 insertions(+), 24 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/nvmem/mxs-ocotp.txt
 create mode 100644 Documentation/devicetree/bindings/nvmem/mxs-ocotp.yaml

diff --git a/Documentation/devicetree/bindings/nvmem/mxs-ocotp.txt b/Documentation/devicetree/bindings/nvmem/mxs-ocotp.txt
deleted file mode 100644
index 372c72f..0000000
--- a/Documentation/devicetree/bindings/nvmem/mxs-ocotp.txt
+++ /dev/null
@@ -1,24 +0,0 @@
-On-Chip OTP Memory for Freescale i.MX23/i.MX28
-
-Required properties :
-- compatible :
-  - "fsl,imx23-ocotp" for i.MX23
-  - "fsl,imx28-ocotp" for i.MX28
-- #address-cells : Should be 1
-- #size-cells : Should be 1
-- reg : Address and length of OTP controller registers
-- clocks : Should contain a reference to the hbus clock
-
-= Data cells =
-Are child nodes of mxs-ocotp, bindings of which as described in
-bindings/nvmem/nvmem.txt
-
-Example for i.MX28:
-
-	ocotp: ocotp@8002c000 {
-		compatible = "fsl,imx28-ocotp", "fsl,ocotp";
-		#address-cells = <1>;
-		#size-cells = <1>;
-		reg = <0x8002c000 0x2000>;
-		clocks = <&clks 25>;
-	};
diff --git a/Documentation/devicetree/bindings/nvmem/mxs-ocotp.yaml b/Documentation/devicetree/bindings/nvmem/mxs-ocotp.yaml
new file mode 100644
index 0000000..ff317fd
--- /dev/null
+++ b/Documentation/devicetree/bindings/nvmem/mxs-ocotp.yaml
@@ -0,0 +1,50 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/nvmem/mxs-ocotp.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: On-Chip OTP Memory for Freescale i.MX23/i.MX28
+
+maintainers:
+  - Anson Huang <Anson.Huang@nxp.com>
+
+allOf:
+  - $ref: "nvmem.yaml#"
+
+properties:
+  compatible:
+    enum:
+      - fsl,imx23-ocotp
+      - fsl,imx28-ocotp
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 1
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+
+additionalProperties: false
+
+examples:
+  - |
+    ocotp: efuse@8002c000 {
+        compatible = "fsl,imx28-ocotp";
+        #address-cells = <1>;
+        #size-cells = <1>;
+        reg = <0x8002c000 0x2000>;
+        clocks = <&clks 25>;
+    };
+
+...
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
