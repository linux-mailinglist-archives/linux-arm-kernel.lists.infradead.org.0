Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32CCA1D2874
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 09:04:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=E1dU5LXiJ1ZQzVFsUa/0gO4Ac/dCBecmd2Cyv5G5hWg=; b=payYuFfCEAggEKtbybOjUUd9DN
	QaL90SF+m1HXxGgn0cnT5n9eN1CFee1I/HX0/iDScerwzJrvQE9sjE7vJDHhdl+OaMv+ItE1DXq0f
	wkzoAiprT3Ag70udQ+Tt5TTDdNGnEQXFw+gH9HnEO+r7iZfEOJCwM7ZUxb5cHDqLnABQSuFEVPEfF
	mRBOgJu7ibMg7ZTVp3GYPMsiMeGniAkHruQo5ll6vabtHLoD5rUe21+o4Jcw6xN+vt58FKH1kqdPo
	ZHNABtUOKwYTspKnl51LWG057sSYoKrnZTRhTtHkHrNSRiRGeAOHRZe/YJ2GnGYV3P02NdekoLnuM
	LP+fTpwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ7um-00037l-MP; Thu, 14 May 2020 07:04:20 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ7uM-0002tF-Ny
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 07:03:56 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id E0DAA2016FC;
 Thu, 14 May 2020 09:03:52 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id A651520178E;
 Thu, 14 May 2020 09:03:47 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id E883B402BB;
 Thu, 14 May 2020 15:03:40 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de,
 robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, p.zabel@pengutronix.de,
 linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] dt-bindings: pwm: Convert imx tpm pwm to json-schema
Date: Thu, 14 May 2020 14:54:19 +0800
Message-Id: <1589439259-28510-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589439259-28510-1-git-send-email-Anson.Huang@nxp.com>
References: <1589439259-28510-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_000355_051146_B5683772 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Convert the imx tpm pwm binding to DT schema format using json-schema.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 .../devicetree/bindings/pwm/imx-tpm-pwm.txt        | 22 ---------
 .../devicetree/bindings/pwm/imx-tpm-pwm.yaml       | 55 ++++++++++++++++++++++
 2 files changed, 55 insertions(+), 22 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/pwm/imx-tpm-pwm.txt
 create mode 100644 Documentation/devicetree/bindings/pwm/imx-tpm-pwm.yaml

diff --git a/Documentation/devicetree/bindings/pwm/imx-tpm-pwm.txt b/Documentation/devicetree/bindings/pwm/imx-tpm-pwm.txt
deleted file mode 100644
index 5bf2095..0000000
--- a/Documentation/devicetree/bindings/pwm/imx-tpm-pwm.txt
+++ /dev/null
@@ -1,22 +0,0 @@
-Freescale i.MX TPM PWM controller
-
-Required properties:
-- compatible : Should be "fsl,imx7ulp-pwm".
-- reg: Physical base address and length of the controller's registers.
-- #pwm-cells: Should be 3. See pwm.yaml in this directory for a description of the cells format.
-- clocks : The clock provided by the SoC to drive the PWM.
-- interrupts: The interrupt for the PWM controller.
-
-Note: The TPM counter and period counter are shared between multiple channels, so all channels
-should use same period setting.
-
-Example:
-
-tpm4: pwm@40250000 {
-	compatible = "fsl,imx7ulp-pwm";
-	reg = <0x40250000 0x1000>;
-	assigned-clocks = <&pcc2 IMX7ULP_CLK_LPTPM4>;
-	assigned-clock-parents = <&scg1 IMX7ULP_CLK_SOSC_BUS_CLK>;
-	clocks = <&pcc2 IMX7ULP_CLK_LPTPM4>;
-	#pwm-cells = <3>;
-};
diff --git a/Documentation/devicetree/bindings/pwm/imx-tpm-pwm.yaml b/Documentation/devicetree/bindings/pwm/imx-tpm-pwm.yaml
new file mode 100644
index 0000000..fe9ef42
--- /dev/null
+++ b/Documentation/devicetree/bindings/pwm/imx-tpm-pwm.yaml
@@ -0,0 +1,55 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pwm/imx-tpm-pwm.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale i.MX TPM PWM controller
+
+maintainers:
+  - Anson Huang <anson.huang@nxp.com>
+
+description: |
+  The TPM counter and period counter are shared between multiple
+  channels, so all channels should use same period setting.
+
+properties:
+  "#pwm-cells":
+    const: 3
+
+  compatible:
+    enum:
+      - fsl,imx7ulp-pwm
+
+  reg:
+    maxItems: 1
+
+  assigned-clocks:
+    maxItems: 1
+
+  assigned-clock-parents:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+required:
+  - "#pwm-cells"
+  - compatible
+  - reg
+  - clocks
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx7ulp-clock.h>
+
+    pwm@40250000 {
+        compatible = "fsl,imx7ulp-pwm";
+        reg = <0x40250000 0x1000>;
+        assigned-clocks = <&pcc2 IMX7ULP_CLK_LPTPM4>;
+        assigned-clock-parents = <&scg1 IMX7ULP_CLK_SOSC_BUS_CLK>;
+        clocks = <&pcc2 IMX7ULP_CLK_LPTPM4>;
+        #pwm-cells = <3>;
+    };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
