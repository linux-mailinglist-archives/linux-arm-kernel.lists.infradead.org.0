Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF8B1D8E7F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 06:06:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XGERhduvf+B3NIHHc4DkYYbSIqggQMMJiw04R7//76w=; b=VsfAPtms1QDU6WMr8Kqrk8kQvk
	PuHTm9wAnKWvvjsgfXXHM0FeF2evL0w+89EUF1RSCl5SqKeO8EhCNwfDrU7/8yhkj7QJ/1X2RQcqe
	aq3guJc0eFdNXvSDpM4bbIhICo07eMLhMhVSRmE3ee10ckd/1NlFL9N0jHF813ukeFE2Q9yTgGw3k
	Hx68W35SrtlocqnteS734EDnGnK1ttJUxPckX4Z/xuWGIEfM0x2jKNIQ7+D6Gjv9TKmBkAxVhGQMB
	ov7DrQGnKTFfyUeWFXqHIMILXikcCRkGptGApx/Rpirgbb9QQqBIcletWnBCQWVtrHqj7uQBYkMtg
	F/lyzxqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jatWU-0001Qi-BL; Tue, 19 May 2020 04:06:34 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jatVf-0000pc-FX
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 04:05:46 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 1F8ED1A0067;
 Tue, 19 May 2020 06:05:42 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 9F6661A00A9;
 Tue, 19 May 2020 06:05:36 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 1A5FB402E7;
 Tue, 19 May 2020 12:05:24 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: daniel.lezcano@linaro.org, tglx@linutronix.de, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, ping.bai@nxp.com, aisheng.dong@nxp.com,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 2/3] dt-bindings: timer: Convert i.MX TPM to json-schema
Date: Tue, 19 May 2020 11:55:46 +0800
Message-Id: <1589860547-3207-3-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589860547-3207-1-git-send-email-Anson.Huang@nxp.com>
References: <1589860547-3207-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_210543_829880_05A86EC5 
X-CRM114-Status: GOOD (  11.89  )
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

Convert the i.MX TPM binding to DT schema format using json-schema.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
---
Changes since V1:
	- remove unnecessary maxItems for clocks/clock-names.
---
 .../devicetree/bindings/timer/nxp,tpm-timer.txt    | 28 ----------
 .../devicetree/bindings/timer/nxp,tpm-timer.yaml   | 61 ++++++++++++++++++++++
 2 files changed, 61 insertions(+), 28 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/timer/nxp,tpm-timer.txt
 create mode 100644 Documentation/devicetree/bindings/timer/nxp,tpm-timer.yaml

diff --git a/Documentation/devicetree/bindings/timer/nxp,tpm-timer.txt b/Documentation/devicetree/bindings/timer/nxp,tpm-timer.txt
deleted file mode 100644
index f82087b..0000000
--- a/Documentation/devicetree/bindings/timer/nxp,tpm-timer.txt
+++ /dev/null
@@ -1,28 +0,0 @@
-NXP Low Power Timer/Pulse Width Modulation Module (TPM)
-
-The Timer/PWM Module (TPM) supports input capture, output compare,
-and the generation of PWM signals to control electric motor and power
-management applications. The counter, compare and capture registers
-are clocked by an asynchronous clock that can remain enabled in low
-power modes. TPM can support global counter bus where one TPM drives
-the counter bus for the others, provided bit width is the same.
-
-Required properties:
-
-- compatible :	should be "fsl,imx7ulp-tpm"
-- reg :		Specifies base physical address and size of the register sets
-		for the clock event device and clock source device.
-- interrupts :	Should be the clock event device interrupt.
-- clocks :	The clocks provided by the SoC to drive the timer, must contain
-		an entry for each entry in clock-names.
-- clock-names : Must include the following entries: "ipg" and "per".
-
-Example:
-tpm5: tpm@40260000 {
-	compatible = "fsl,imx7ulp-tpm";
-	reg = <0x40260000 0x1000>;
-	interrupts = <GIC_SPI 22 IRQ_TYPE_LEVEL_HIGH>;
-	clocks = <&clks IMX7ULP_CLK_NIC1_BUS_DIV>,
-		 <&clks IMX7ULP_CLK_LPTPM5>;
-	clock-names = "ipg", "per";
-};
diff --git a/Documentation/devicetree/bindings/timer/nxp,tpm-timer.yaml b/Documentation/devicetree/bindings/timer/nxp,tpm-timer.yaml
new file mode 100644
index 0000000..edd9585
--- /dev/null
+++ b/Documentation/devicetree/bindings/timer/nxp,tpm-timer.yaml
@@ -0,0 +1,61 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/timer/nxp,tpm-timer.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP Low Power Timer/Pulse Width Modulation Module (TPM)
+
+maintainers:
+  - Dong Aisheng <aisheng.dong@nxp.com>
+
+description: |
+  The Timer/PWM Module (TPM) supports input capture, output compare,
+  and the generation of PWM signals to control electric motor and power
+  management applications. The counter, compare and capture registers
+  are clocked by an asynchronous clock that can remain enabled in low
+  power modes. TPM can support global counter bus where one TPM drives
+  the counter bus for the others, provided bit width is the same.
+
+properties:
+  compatible:
+    const: fsl,imx7ulp-tpm
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: SoC TPM ipg clock
+      - description: SoC TPM per clock
+
+  clock-names:
+    items:
+      - const: ipg
+      - const: per
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx7ulp-clock.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    timer@40260000 {
+        compatible = "fsl,imx7ulp-tpm";
+        reg = <0x40260000 0x1000>;
+        interrupts = <GIC_SPI 22 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&scg1 IMX7ULP_CLK_NIC1_BUS_DIV>,
+                 <&pcc2 IMX7ULP_CLK_LPTPM5>;
+        clock-names = "ipg", "per";
+    };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
