Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B6A1FCF5A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 21:13:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=m6OkYR46gIuI5C7Cd7EXOrx7u2NBhbzW1lxoXWI0bEE=; b=shB1VDwPXrlL6i0yU14AWLKLB8
	hHGkR9ro85xv8lSSW9fWjQ0WJ+94yA0m12SdQ+mT31ySdJkICV6NsTMc30MyEp+m4EejKW8/tF3tm
	k6ADGlezBOWjAUWS40rANUMny2YWLrlEm2sxb96/VB5HKh+y3anQ6lNc163BIG9tXue72ZimHvDW+
	f68t4c4LH8sE8BZJU5zLu0YrcUgrJ77+DJhxI0xuKQL+XaQwyMXcQ77zl6oQzC814YFgdq9VoP9Xs
	7m4g8/5ExBKdUtwCqaICgsjANel6YHu7p/9QXbtyLAwn1amiQPOuxRcXS9M1CCLXi82+/i40SeYSI
	XhcwgvWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVLUA-0001by-Qv; Thu, 14 Nov 2019 20:12:58 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVLS7-0008RA-Q5
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 20:10:54 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 7552B200497;
 Thu, 14 Nov 2019 21:10:50 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 629A8200079;
 Thu, 14 Nov 2019 21:10:50 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 50C3C2060A;
 Thu, 14 Nov 2019 21:10:49 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Georgi Djakov <georgi.djakov@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>
Subject: [PATCH RFC v6 9/9] arm64: dts: imx8m: Add interconnect provider
 properties
Date: Thu, 14 Nov 2019 22:09:56 +0200
Message-Id: <a8b8d1f916a9ba356fe1ce9c277516341853bf36.1573761527.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1573761527.git.leonard.crestez@nxp.com>
References: <cover.1573761527.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1573761527.git.leonard.crestez@nxp.com>
References: <cover.1573761527.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_121052_146705_B0CCD668 
X-CRM114-Status: UNSURE (   8.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Matthias Kaehlcke <mka@chromium.org>, linux-imx@nxp.com,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Martin Kepplinger <martink@posteo.de>,
 Silvano di Ninno <silvano.dininno@nxp.com>,
 linux-arm-kernel@lists.infradead.org, Dong Aisheng <aisheng.dong@nxp.com>,
 Saravana Kannan <saravanak@google.com>, Stephen Boyd <sboyd@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Alexandre Bailon <abailon@baylibre.com>
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
to banddwith request from other drivers.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 6 ++++++
 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 6 ++++++
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 6 ++++++
 3 files changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index a7eafaedeb40..0a833c188b37 100644
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
@@ -777,10 +778,15 @@
 		noc: interconnect@32700000 {
 			compatible = "fsl,imx8mm-noc", "fsl,imx8m-noc";
 			reg = <0x32700000 0x100000>;
 			clocks = <&clk IMX8MM_CLK_NOC>;
 			devfreq = <&ddrc>;
+			#interconnect-cells = <1>;
+			fsl,scalable-node-ids = <IMX8MM_ICN_NOC>,
+						<IMX8MM_ICS_DRAM>;
+			fsl,scalable-nodes = <&noc>,
+					     <&ddrc>;
 			operating-points-v2 = <&noc_opp_table>;
 
 			noc_opp_table: opp-table {
 				compatible = "operating-points-v2";
 
diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index fd47f4aef666..b36e8f052e1f 100644
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
@@ -673,10 +674,15 @@
 		noc: interconnect@32700000 {
 			compatible = "fsl,imx8mn-noc", "fsl,imx8m-noc";
 			reg = <0x32700000 0x100000>;
 			clocks = <&clk IMX8MN_CLK_NOC>;
 			devfreq = <&ddrc>;
+			#interconnect-cells = <1>;
+			fsl,scalable-node-ids = <IMX8MN_ICN_NOC>,
+						<IMX8MN_ICS_DRAM>;
+			fsl,scalable-nodes = <&noc>,
+					     <&ddrc>;
 			operating-points-v2 = <&noc_opp_table>;
 
 			noc_opp_table: opp-table {
 				compatible = "operating-points-v2";
 
diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index 55231ace5344..83e1a9a18c84 100644
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
 
@@ -936,10 +937,15 @@
 		noc: interconnect@32700000 {
 			compatible = "fsl,imx8mq-noc", "fsl,imx8m-noc";
 			reg = <0x32700000 0x100000>;
 			clocks = <&clk IMX8MQ_CLK_NOC>;
 			devfreq = <&ddrc>;
+			#interconnect-cells = <1>;
+			fsl,scalable-node-ids = <IMX8MQ_ICN_NOC>,
+						<IMX8MQ_ICS_DRAM>;
+			fsl,scalable-nodes = <&noc>,
+					     <&ddrc>;
 			operating-points-v2 = <&noc_opp_table>;
 
 			noc_opp_table: opp-table {
 				compatible = "operating-points-v2";
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
