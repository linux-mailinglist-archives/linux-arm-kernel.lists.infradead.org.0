Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A169B23F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 16:38:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zmTeqcurKVr38Ll73do7XXlOdiPpNcnSKeiLk2M3eTU=; b=M9MyGNdEcMKDRHEN5DA9jZ1KL9
	Biunt1XTGgpKAGtJiBIt8ThtMqRzz8rYYv7a2YUG+EeitUXkzTiuvbFsgwLrSvfK6XfgH4hl95rn5
	nuTrgjgm7SWXdacdiX4NsgJHQOrlZOmHBc6DIOGlBX3Y3msh39ygou/CHVyhrNBt3jxrSagp8OMyC
	1W85GxX/VHInMKGJCoGETiGE3A+8Itm3ql4olq5WgB8Z2fpgVfYbrjsHK6dFJFVGTesCHx8K619mR
	M+Cf4x6XMFquZAyuW3UAeDhQtGmPhNNlEo/Eso7n/PutYm77tQ5P+FTjyWmyYYaXWaaMDNbsw4XQV
	lXuDTN0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Ai8-0003jl-0m; Fri, 23 Aug 2019 14:38:40 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Agh-0001v4-M0
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 14:37:13 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 83E9D1A06DE;
 Fri, 23 Aug 2019 16:37:10 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 774DB1A06D9;
 Fri, 23 Aug 2019 16:37:10 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 98D90205D9;
 Fri, 23 Aug 2019 16:37:09 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Georgi Djakov <georgi.djakov@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>
Subject: [RFCv4 7/7] arm64: dts: imx8mm: Add interconnect properties
Date: Fri, 23 Aug 2019 17:37:00 +0300
Message-Id: <8c3fb831b3c146cf3267c05e4b1f6c88613dceed.1566570260.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1566570260.git.leonard.crestez@nxp.com>
References: <cover.1566570260.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1566570260.git.leonard.crestez@nxp.com>
References: <cover.1566570260.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_073711_868020_65633454 
X-CRM114-Status: UNSURE (   7.60  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Dong Aisheng <aisheng.dong@nxp.com>,
 linux-arm-kernel@lists.infradead.org, Saravana Kannan <saravanak@google.com>,
 linux-pm@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 devicetree@vger.kernel.org, linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add #interconnect-cells and interconnect-node-id properties on devfreq
nodes. The imx interconnect provider will scan these.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 5474c50784c2..8b5442d8b1b2 100644
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
@@ -806,10 +807,12 @@
 		noc: noc@32700000 {
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
@@ -896,10 +899,12 @@
 		};
 
 		ddrc: dram-controller@3d400000 {
 			compatible = "fsl,imx8mm-ddrc", "fsl,imx8m-ddrc";
 			reg = <0x3d400000 0x400000>;
+			#interconnect-cells = <1>;
+			interconnect-node-id = <IMX8MM_ICS_DRAM>;
 			clock-names = "dram_core",
 				      "dram_pll",
 				      "dram_alt",
 				      "dram_apb";
 			clocks = <&clk IMX8MM_CLK_DRAM_CORE>,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
