Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B1A138C35
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 08:14:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oOQxx56ClimpqzA57j+M8bIBq1ppaqEQSGWTvRNx8lo=; b=WvWV7COYySZ+QztfAz+U0Qg/sK
	CtFZJv40UrdrM+D0aWPe1tbK9Q5hQH58237Ixuo9gTpU8MK9qvTTmPt8dfaYn1jNhDvuimuev8T1G
	SMhCVFoKH3H60BEPSeNg+IVR5JwBLin9AcIkhKMxp//prbQv14G/ADr4HScH/tkdKe7uh3ZAppJ5V
	XUkdzIiYtqiybeF5uIIRjU9lnkPxtAtJMu4P5yhx8ES8g5V85yH0d+xTdPZ1QG2e6KcV2aaCPJ+o/
	zmaZzPPAQtF8GUnpYqtyS1FC9V8USOeyXWGX+VsDrRwYT1tN4XWfJkYAwykyxoPvNPIm36H0xh9p4
	wpJkG02A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqtv7-0000eR-9K; Mon, 13 Jan 2020 07:13:53 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqtuW-0000Bi-0D
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 07:13:18 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id DE7BA2001DD;
 Mon, 13 Jan 2020 08:13:11 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id E0F0D2000EB;
 Mon, 13 Jan 2020 08:13:05 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 5DAF4402A0;
 Mon, 13 Jan 2020 15:12:58 +0800 (SGT)
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: maz@kernel.org, jason@lakedaemon.net, tglx@linutronix.de,
 robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de
Subject: [PATCH V4 RESEND 1/2] dt-bindings/irq: add binding for NXP INTMUX
 interrupt multiplexer
Date: Mon, 13 Jan 2020 15:08:40 +0800
Message-Id: <1578899321-1365-2-git-send-email-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578899321-1365-1-git-send-email-qiangqing.zhang@nxp.com>
References: <1578899321-1365-1-git-send-email-qiangqing.zhang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_231316_698764_597B144B 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, fugang.duan@nxp.com,
 linux-kernel@vger.kernel.org, Joakim Zhang <qiangqing.zhang@nxp.com>,
 linux-imx@nxp.com, kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds the DT bindings for the NXP INTMUX interrupt multiplexer
for i.MX8 family SoCs.

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
 .../interrupt-controller/fsl,intmux.yaml      | 77 +++++++++++++++++++
 1 file changed, 77 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.yaml

diff --git a/Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.yaml b/Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.yaml
new file mode 100644
index 000000000000..4dba532fe0bd
--- /dev/null
+++ b/Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.yaml
@@ -0,0 +1,77 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/interrupt-controller/fsl,intmux.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale INTMUX interrupt multiplexer
+
+maintainers:
+  - Marc Zyngier <maz@kernel.org>
+
+properties:
+  compatible:
+    items:
+      const: fsl,imx-intmux
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    minItems: 1
+    maxItems: 8
+    description: |
+      Should contain the parent interrupt lines (up to 8) used to multiplex
+      the input interrupts.
+
+  interrupt-controller: true
+
+  '#interrupt-cells':
+    const: 2
+
+  clocks:
+    maxItems: 1
+    description: ipg clock.
+
+  clock-names:
+    items:
+      const: ipg
+
+  fsl,intmux_chans:
+    maxItems: 1
+    description: |
+      The number of channels used for interrupt source. The Maximum value is 8.
+      If this property is not set in DT then driver uses 1 channel by default.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - interrupt-controller
+  - '#interrupt-cells'
+  - clocks
+  - clock-name
+  - fsl,intmux_chans
+
+additionalProperties: false
+
+Example:
+
+	intmux@37400000 {
+		compatible = "fsl,imx-intmux";
+		reg = <0x37400000 0x1000>;
+		interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 20 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 21 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 22 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		clocks = <&clk IMX8QM_CM40_IPG_CLK>;
+		clock-names = "ipg";
+		fsl,intmux_chans = <8>;
+	};
+
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
