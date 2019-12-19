Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B605125ED7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 11:25:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KcAIvjZ4alqfItB52jSG74PhnBk002jXyj0/NA8hJPc=; b=ov92BnP4l3ly4bkbCnxl1FDZR4
	WuA/0VASXEylL2tC3yLJm/DhqT0BpIpDDY8nkIsxDSOlLAB0U8iLDzxt4bQ4wqG7vqew451AqR6b7
	NqrWezxZMsmV3z74YrBrqvB6INldZeRIrBVmsqmbWxCygQJCOXY10w6P+FQdvtUm8ZNL6EYupVXKg
	gb9v5WC2Ot/kc8y7oKPk+j637C8HtpNGLKaTRjyPv7MbWkT37r4Do+cSphzAaBLGyKdrrhv4HRwo8
	Az24Dbb6MUyhyBztxJ2hJ8zvoXlwIkcvgLDfssOh4IOmMWIjUCaii5P7fmiG9HKCdOUyNuprCDNi3
	DmNxuPKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihszO-0008VO-3j; Thu, 19 Dec 2019 10:25:02 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihsyr-0008Dm-QH
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 10:24:31 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 9E6B11A0ABE;
 Thu, 19 Dec 2019 11:24:26 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id EDE541A0426;
 Thu, 19 Dec 2019 11:24:20 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id BD466402DF;
 Thu, 19 Dec 2019 18:24:13 +0800 (SGT)
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: tglx@linutronix.de, maz@kernel.org, jason@lakedaemon.net,
 robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de
Subject: [PATCH V2 1/2] dt-bindings/irq: add binding for NXP INTMUX interrupt
 multiplexer
Date: Thu, 19 Dec 2019 18:21:04 +0800
Message-Id: <1576750865-14442-2-git-send-email-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1576750865-14442-1-git-send-email-qiangqing.zhang@nxp.com>
References: <1576750865-14442-1-git-send-email-qiangqing.zhang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_022429_987071_553AE655 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: fugang.duan@nxp.com, Joakim Zhang <qiangqing.zhang@nxp.com>,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds the DT bindings for the NXP INTMUX interrupt multiplexer
found in the i.MX8 family SoCs.

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
 .../interrupt-controller/fsl,intmux.txt       | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.txt

diff --git a/Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.txt b/Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.txt
new file mode 100644
index 000000000000..a9a16b5046c5
--- /dev/null
+++ b/Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.txt
@@ -0,0 +1,28 @@
+Freescale INTMUX interrupt multiplexer
+
+Required properties:
+
+- compatible: Should be:
+	- "fsl,imx-intmux"
+- reg: Physical base address and size of registers.
+- interrupts: Should contain one parent interrupt line used to multiplex the
+  input interrupt sources.
+- clocks: Should contain one clock for entry in clock-names.
+- clock-names:
+   - "ipg": main logic clock
+- interrupt-controller: Identifies the node as an interrupt controller.
+- #interrupt-cells: Specifies the number of cells needed to encode an
+  interrupt source. The value must be 1.
+
+Example:
+
+	intmux@37400000 {
+		compatible = "fsl,imx-intmux";
+		reg = <0x37400000 0x1000>;
+		interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&clk IMX8QM_CM40_IPG_CLK>;
+		clock-names = "ipg";
+		interrupt-controller;
+		#interrupt-cells = <1>;
+	};
+
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
