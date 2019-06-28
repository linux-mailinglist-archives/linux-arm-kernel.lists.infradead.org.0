Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 616AC59544
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 09:43:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ypqtLmFaL5rlROWcyaPyx4X16JDU9Af9I7yxuy+z4BY=; b=j2VdmMLguZiItqDJVQ3irAjrl/
	b47r54f1EuCZ5Cp87RKWCO2NS9ZzuNyUy3H7nHyGIObZBq0gqwkja5gqe1MITRW7QqpKNSW1f3RYk
	XjDbiMLDIg/j3tHIBp6EC88fey76a4j+y5k2wXojybJXQUzBQfVQCtPvVAp5kacEHGco/FxYz1T0P
	VmW7YRwrxUpsjoaUML9tcLEwdef6SqqvaN9S6wdE3+FM+UQSKuIWmJFusAnUm4mUFOuVE1XBDvopf
	4cwhSGvxZFQyq45UKhJzU10tr5Mw2aMHPglsYYvjSga8Ys6FVCnX4N2do6XqQA0K56y00qfwTo3Za
	tUZjDpyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hglY3-0001i2-M8; Fri, 28 Jun 2019 07:43:55 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hglUP-0007Q8-Ad
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 07:40:14 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id B0A57200D4A;
 Fri, 28 Jun 2019 09:40:07 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id A3A86200372;
 Fri, 28 Jun 2019 09:40:07 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id BCC94205D5;
 Fri, 28 Jun 2019 09:40:06 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Alexandre Bailon <abailon@baylibre.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Viresh Kumar <viresh.kumar@linaro.org>
Subject: [RFCv2 7/8] arm64: dts: imx8mm: Add interconnect node
Date: Fri, 28 Jun 2019 10:39:55 +0300
Message-Id: <5bb33047e7ac6fbb3a414c1c2fa764076b17792c.1561707104.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1561707104.git.leonard.crestez@nxp.com>
References: <cover.1561707104.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1561707104.git.leonard.crestez@nxp.com>
References: <cover.1561707104.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_004009_601215_7C74B8A4 
X-CRM114-Status: UNSURE (   7.60  )
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, linux-pm@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Saravana Kannan <saravanak@google.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-imx@nxp.com,
 kernel@pengutronix.de, Fabio Estevam <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Abel Vesa <abel.vesa@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 5da905c257ad..3b4b112814f7 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -6,10 +6,11 @@
 #include <dt-bindings/clock/imx8mm-clock.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/thermal/thermal.h>
+#include <dt-bindings/interconnect/imx8mm.h>
 
 #include "imx8mm-pinfunc.h"
 
 / {
 	compatible = "fsl,imx8mm";
@@ -179,10 +180,20 @@
 		interrupts = <GIC_PPI 7
 			     (GIC_CPU_MASK_SIMPLE(6) | IRQ_TYPE_LEVEL_HIGH)>;
 		interrupt-affinity = <&A53_0>, <&A53_1>, <&A53_2>, <&A53_3>;
 	};
 
+	icc: interconnect {
+		compatible = "fsl,imx8mm-interconnect";
+		#interconnect-cells = <1>;
+		clocks = <&clk IMX8MM_CLK_DRAM>,
+			 <&clk IMX8MM_CLK_NOC>,
+			 <&clk IMX8MM_CLK_AHB>,
+			 <&clk IMX8MM_CLK_MAIN_AXI>;
+		clock-names = "dram", "noc", "ahb", "axi";
+	};
+
 	timer {
 		compatible = "arm,armv8-timer";
 		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(6) | IRQ_TYPE_LEVEL_LOW)>, /* Physical Secure */
 			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(6) | IRQ_TYPE_LEVEL_LOW)>, /* Physical Non-Secure */
 			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(6) | IRQ_TYPE_LEVEL_LOW)>, /* Virtual */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
