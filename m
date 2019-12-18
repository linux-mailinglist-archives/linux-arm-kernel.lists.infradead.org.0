Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15ACC124047
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 08:24:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IG0ZQdcJ3fobL0H6UShPzo7mZ8wncDG4Z9cxaIBHnfo=; b=YetSDZvmUnsuTuPRYTSOgRi4Hs
	b0sW4Lr8d/14nkBdQXj+EVkZFp0e/ERuKrxAME0Tf/SzQu7cQbzgpD/RYm/B6KZ9gYS/j8ok3STLd
	uHBAZy0mTK9f9uqrgxqY7KVoUnS9fYluApgHxXNuBn3ydT/o0buKRbMk+Hau0AC+lwkFe5r804EPX
	JPm32GhRoJ7ccefn7NGhoEACgjrZlUuX/UIvrsdnIG4Vo+ozMwq5X6KTwxGx3rOSIyZUsZhaZqqjC
	Gq/6bpdao6l4wUnHLFAyHuJ+A12TtuIzWrMWei9ceNW3KUfr4X5JUPtvBZKjUGnS78YQV0jIjzDd/
	onGvaf+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihTgh-0005lm-6m; Wed, 18 Dec 2019 07:24:03 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihTg2-0005LI-Bl
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 07:23:24 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 2FE53200A58;
 Wed, 18 Dec 2019 08:23:19 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id E9B22200184;
 Wed, 18 Dec 2019 08:23:11 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id E2018402F3;
 Wed, 18 Dec 2019 15:23:02 +0800 (SGT)
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: tglx@linutronix.de, jason@lakedaemon.net, maz@kernel.org,
 robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, shengjiu.wang@nxp.com
Subject: [PATCH 1/3] dt-bindings/irq: add binding for NXP INTMUX interrupt
 multiplexer
Date: Wed, 18 Dec 2019 15:20:13 +0800
Message-Id: <1576653615-27954-2-git-send-email-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1576653615-27954-1-git-send-email-qiangqing.zhang@nxp.com>
References: <1576653615-27954-1-git-send-email-qiangqing.zhang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_232322_541383_2C65D2CF 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
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
Cc: aisheng.dong@nxp.com, devicetree@vger.kernel.org, fugang.duan@nxp.com,
 linux-kernel@vger.kernel.org, Joakim Zhang <qiangqing.zhang@nxp.com>,
 linux-imx@nxp.com, kernel@pengutronix.de, festevam@gmail.com,
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
 .../interrupt-controller/fsl,intmux.txt       | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.txt

diff --git a/Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.txt b/Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.txt
new file mode 100644
index 000000000000..be3c6848f36c
--- /dev/null
+++ b/Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.txt
@@ -0,0 +1,34 @@
+Freescale INTMUX interrupt multiplexer
+
+Required properties:
+
+- compatible: Should be:
+	- "fsl,imx-intmux"
+- reg: Physical base address and size of registers.
+- interrupts: Should contain the parent interrupt lines (up to 8) used to
+  multiplex the input interrupts.
+- clocks: Should contain one clock for entry in clock-names.
+- clock-names:
+   - "ipg": main logic clock
+- interrupt-controller: Identifies the node as an interrupt controller.
+- #interrupt-cells: Specifies the number of cells needed to encode an
+  interrupt source. The value must be 1.
+
+Optional properties:
+
+- fsl,intmux_chans: The number of channels used for interrupt source. The
+  Maximum value is 8.
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
+		fsl,intmux_chans = <1>;
+	};
+
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
