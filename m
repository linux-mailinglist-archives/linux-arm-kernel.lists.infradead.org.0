Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C049C59540
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 09:43:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XpA0IzVW8zwasFxphviafVHIfZEo14zZPYvDGLnMexk=; b=ZKsxRftYRjgangLYVtkRwVh7wn
	FdS+iIC+275F/i4IIDqC68/8r9K8dZUF/ZkfZU/Kt4rHPbongxIfa0iDh8Mjnipvd4rRVuPTeZtlH
	/Py9cmihpDS2Kgafk+Itn1M5itzIGetgeYkFSfovv0BxG4EN0LCmdh7LUwOYI98Yu8RHl3VGYaMNM
	aQ82UBxFSZPJLFpOY6Wt9gIJobAoCPFvAkPF77p2wLVCFM+bGXKLUyLaGchSxTIp0G3bxCtTlMDGv
	Wu6/iB99S6E9Ms9aoppRxM0mk06HvnWL+B1ehLlaw8vUFqvs4f73pwPnW11YqGAsYJfS+Rx4ZRdXN
	RegixSLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hglXT-0001Cy-Hu; Fri, 28 Jun 2019 07:43:19 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hglUQ-0007Ut-2S
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 07:40:14 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id AA7961A0DC4;
 Fri, 28 Jun 2019 09:40:08 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 9D9231A0346;
 Fri, 28 Jun 2019 09:40:08 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id B4496205D5;
 Fri, 28 Jun 2019 09:40:07 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Alexandre Bailon <abailon@baylibre.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Viresh Kumar <viresh.kumar@linaro.org>
Subject: [RFCv2 8/8] arm64: dts: imx8mm: Add devfreq-imx nodes
Date: Fri, 28 Jun 2019 10:39:56 +0300
Message-Id: <f5714b11a0f46b20cef3cad0cf615bc1093499de.1561707104.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1561707104.git.leonard.crestez@nxp.com>
References: <cover.1561707104.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1561707104.git.leonard.crestez@nxp.com>
References: <cover.1561707104.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_004010_474733_4F7EA2D1 
X-CRM114-Status: UNSURE (   9.13  )
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

The imx8mm has multiple buses which can be scaled with some degree of
independence. Expose them as devfreq devices for userspace scaling.

It shouldn't be possible to get the system in a non-working state this
way. It is primarily aimed at testing and fine performance tuning.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 54 +++++++++++++++++++++++
 1 file changed, 54 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 3b4b112814f7..aa9ed418652d 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -121,10 +121,32 @@
 			opp-supported-hw = <0x8>, <0x7>;
 			clock-latency-ns = <150000>;
 		};
 	};
 
+	ddrc_opp_table: ddrc-opp-table {
+		compatible = "operating-points-v2";
+
+		opp-25M {
+			opp-hz = /bits/ 64 <25000000>;
+		};
+		opp-750M {
+			opp-hz = /bits/ 64 <750000000>;
+		};
+	};
+
+	noc_opp_table: noc-opp-table {
+		compatible = "operating-points-v2";
+
+		opp-150M {
+			opp-hz = /bits/ 64 <150000000>;
+		};
+		opp-750M {
+			opp-hz = /bits/ 64 <750000000>;
+		};
+	};
+
 	memory@40000000 {
 		device_type = "memory";
 		reg = <0x0 0x40000000 0 0x80000000>;
 	};
 
@@ -748,10 +770,35 @@
 				status = "disabled";
 			};
 
 		};
 
+		pl301_main: nic@32000000 {
+			compatible = "fsl,imx8mm-nic";
+			reg = <0x32000000 0x100000>;
+			clocks = <&clk IMX8MM_CLK_MAIN_AXI>;
+		};
+
+		pl301_wakeup: nic@32100000 {
+			compatible = "fsl,imx8mm-nic";
+			reg = <0x32100000 0x100000>;
+			clocks = <&clk IMX8MM_CLK_AHB>;
+		};
+
+		pl301_enet: nic@32400000 {
+			compatible = "fsl,imx8mm-nic";
+			reg = <0x32400000 0x100000>;
+			clocks = <&clk IMX8MM_CLK_ENET_AXI>;
+		};
+
+		noc: noc@32700000 {
+			compatible = "fsl,imx8mm-noc";
+			reg = <0x32700000 0x100000>;
+			clocks = <&clk IMX8MM_CLK_NOC>;
+			operating-points-v2 = <&noc_opp_table>;
+		};
+
 		aips4: bus@32c00000 {
 			compatible = "fsl,aips-bus", "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0x32c00000 0x32c00000 0x400000>;
@@ -835,7 +882,14 @@
 			      <0x38880000 0xc0000>; /* GICR (RD_base + SGI_base) */
 			#interrupt-cells = <3>;
 			interrupt-controller;
 			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
 		};
+
+		ddrc: dram-controller@3d400000 {
+			compatible = "fsl,imx8mm-ddrc";
+			reg = <0x3d400000 0x400000>;
+			clocks = <&clk IMX8MM_CLK_DRAM>;
+			operating-points-v2 = <&ddrc_opp_table>;
+		};
 	};
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
