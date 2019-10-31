Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AFF9EBA15
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 23:55:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=r/y3GFPo899SxGRXk7kvgcnC6HKGTUMuJcaCoRLdmOE=; b=RyDwoyFJoqWg2PktGmVe5xBc6f
	rK0EZNeZP0sHoDb2QvBr0Bc2ERnisc2n3ULqmMyH62M/Jfuxvc4wLu97kdaiadLbfNwlt3zenFrHI
	+uvGoVArCIgai8V7hRwGuqRNO4WK0bxUSrEruFHI8ReOQGQFrCWEW/kuvN2OU8affC1FUXmTV/xSm
	/AhnBaB0iQBoCrN3fXAeK/rnx/O2Bw7V0IJTLMn9W5awYIHf9OXg8ZCiY6ui5sdENqTGevB2RQ//8
	WtTYPC0o04wtEfOzHJZedGOLv2avwRRuyBOobuBmJUOkfUIVz2ncIfKotBVd7KrZTHJyqANLEuN/n
	k9T4VMeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQJLp-00059n-OL; Thu, 31 Oct 2019 22:55:33 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQJIs-0001dK-HI
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 22:52:32 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 064B81A0033;
 Thu, 31 Oct 2019 23:52:29 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id E2F811A0212;
 Thu, 31 Oct 2019 23:52:28 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id DC7EB205E9;
 Thu, 31 Oct 2019 23:52:27 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Georgi Djakov <georgi.djakov@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>
Subject: [PATCH RFC v5 10/10] arm64: dts: imx8m: Add interconnect provider
 properties
Date: Fri,  1 Nov 2019 00:52:09 +0200
Message-Id: <0023fc7eb7ab2375af08bf0f38dd55c02bb075d2.1572562150.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572562150.git.leonard.crestez@nxp.com>
References: <cover.1572562150.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1572562150.git.leonard.crestez@nxp.com>
References: <cover.1572562150.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_155230_883239_C2E4B223 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Matthias Kaehlcke <mka@chromium.org>, linux-imx@nxp.com,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Martin Kepplinger <martink@posteo.de>, linux-arm-kernel@lists.infradead.org,
 Dong Aisheng <aisheng.dong@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Stephen Boyd <sboyd@kernel.org>, Kyungmin Park <kyungmin.park@samsung.com>,
 kernel@pengutronix.de, Fabio Estevam <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Alexandre Bailon <abailon@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add #interconnect-cells on main &noc so that it will probe the platform
interconnect providers. Other devices can request icc_paths like this:

	interconnects = <&noc BUS_MASTER_ID &noc BUS_SLAVE_ID>

And interconnect-node-id properties on &noc and &ddrc, the interconnect
provider will scan these and make PM QoS frequency requests in response
to bandwith request from other drivers.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 4 ++++
 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 4 ++++
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 4 ++++
 3 files changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index dc0ab49bbbd2..4a84db1bf6bd 100644
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
 	interrupt-parent = <&gic>;
@@ -791,10 +792,12 @@
 		noc: interconnect@32700000 {
 			compatible = "fsl,imx8mm-noc", "fsl,imx8m-noc";
 			reg = <0x32700000 0x100000>;
 			clocks = <&clk IMX8MM_CLK_NOC>;
 			devfreq = <&ddrc>;
+			#interconnect-cells = <1>;
+			interconnect-node-id = <IMX8MM_ICN_NOC>;
 			operating-points-v2 = <&noc_opp_table>;
 		};
 
 		aips4: bus@32c00000 {
 			compatible = "fsl,aips-bus", "simple-bus";
@@ -881,10 +884,11 @@
 		};
 
 		ddrc: dram-controller@3d400000 {
 			compatible = "fsl,imx8mm-ddrc", "fsl,imx8m-ddrc";
 			reg = <0x3d400000 0x400000>;
+			interconnect-node-id = <IMX8MM_ICS_DRAM>;
 			clock-names = "dram_core",
 				      "dram_pll",
 				      "dram_alt",
 				      "dram_apb";
 			clocks = <&clk IMX8MM_CLK_DRAM_CORE>,
diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index 6b4a9ba2a8a5..0fd96c976607 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -5,10 +5,11 @@
 
 #include <dt-bindings/clock/imx8mn-clock.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/interconnect/imx8mn.h>
 
 #include "imx8mn-pinfunc.h"
 
 / {
 	interrupt-parent = <&gic>;
@@ -687,10 +688,12 @@
 		noc: interconnect@32700000 {
 			compatible = "fsl,imx8mn-noc", "fsl,imx8m-noc";
 			reg = <0x32700000 0x100000>;
 			clocks = <&clk IMX8MN_CLK_NOC>;
 			devfreq = <&ddrc>;
+			#interconnect-cells = <1>;
+			interconnect-node-id = <IMX8MN_ICN_NOC>;
 			operating-points-v2 = <&noc_opp_table>;
 		};
 
 		aips4: bus@32c00000 {
 			compatible = "fsl,aips-bus", "simple-bus";
@@ -790,10 +793,11 @@
 				      "dram_apb";
 			clocks = <&clk IMX8MN_CLK_DRAM_CORE>,
 				 <&clk IMX8MN_DRAM_PLL>,
 				 <&clk IMX8MN_CLK_DRAM_ALT>,
 				 <&clk IMX8MN_CLK_DRAM_APB>;
+			interconnect-node-id = <IMX8MN_ICS_DRAM>;
 			devfreq-events = <&ddr_pmu>;
 		};
 
 		ddr_pmu: ddr-pmu@3d800000 {
 			compatible = "fsl,imx8mn-ddr-pmu", "fsl,imx8m-ddr-pmu";
diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index c42c67eb1d50..6ede02b44931 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -9,10 +9,11 @@
 #include <dt-bindings/reset/imx8mq-reset.h>
 #include <dt-bindings/gpio/gpio.h>
 #include "dt-bindings/input/input.h"
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/thermal/thermal.h>
+#include <dt-bindings/interconnect/imx8mq.h>
 #include "imx8mq-pinfunc.h"
 
 / {
 	interrupt-parent = <&gpc>;
 
@@ -950,10 +951,12 @@
 		noc: interconnect@32700000 {
 			compatible = "fsl,imx8mq-noc", "fsl,imx8m-noc";
 			reg = <0x32700000 0x100000>;
 			clocks = <&clk IMX8MQ_CLK_NOC>;
 			devfreq = <&ddrc>;
+			#interconnect-cells = <1>;
+			interconnect-node-id = <IMX8MQ_ICN_NOC>;
 			operating-points-v2 = <&noc_opp_table>;
 		};
 
 		bus@32c00000 { /* AIPS4 */
 			compatible = "fsl,imx8mq-aips-bus", "simple-bus";
@@ -1144,10 +1147,11 @@
 				      "dram_apb";
 			clocks = <&clk IMX8MQ_CLK_DRAM_CORE>,
 				 <&clk IMX8MQ_DRAM_PLL_OUT>,
 				 <&clk IMX8MQ_CLK_DRAM_ALT>,
 				 <&clk IMX8MQ_CLK_DRAM_APB>;
+			interconnect-node-id = <IMX8MQ_ICS_DRAM>;
 			devfreq-events = <&ddr_pmu>;
 		};
 
 		ddr_pmu: ddr-pmu@3d800000 {
 			compatible = "fsl,imx8mq-ddr-pmu", "fsl,imx8m-ddr-pmu";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
