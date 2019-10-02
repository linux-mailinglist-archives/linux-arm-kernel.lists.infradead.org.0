Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72447C8A8D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 16:06:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lTJKwb39x7cLSGbQgvM3nN5AhSgPGiVrj/AP2gwNxRk=; b=DKJ+OChHpq3wZMjTnwKTjIuJRN
	9xL+8i+ZM4SRzhsGKMkyveGkr6MVcyQO/3a+QOXsOIs5e9zsuMWwJQHVgRHwLQX5FYNWSMIksv3+o
	ME5TD7uz5A1OE26fnW9VoCmsAQd0kiJ82syosfHo4zBpGhl2S/f8stNJwMOxnnMVOEUmQUnGqPfQY
	nb7ARvewMDEF/tU95fnOc8wgUJkveZKVRkxrpBYAYFH0GSgbDhCPvW5fRR3IBbHWZG5BlHk/nXUVc
	ZPOBHWOtwa92SxpemOQSPf+2a4Li5PECMek7GuDA+kWxE53lzEESWaMnaU0SN/TnlPJISp3GZHCrs
	/FUdG1qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFfH3-0006RV-Dw; Wed, 02 Oct 2019 14:06:37 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFfGH-0005fs-VN
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 14:05:53 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 83119200141;
 Wed,  2 Oct 2019 16:05:48 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 750192000AF;
 Wed,  2 Oct 2019 16:05:48 +0200 (CEST)
Received: from fsr-ub1664-121.ea.freescale.net
 (fsr-ub1664-121.ea.freescale.net [10.171.82.171])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id F2A0B2060C;
 Wed,  2 Oct 2019 16:05:47 +0200 (CEST)
From: Laurentiu Palcu <laurentiu.palcu@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH v2 5/5] arm64: dts: imx8mq: add DCSS node
Date: Wed,  2 Oct 2019 17:04:57 +0300
Message-Id: <1570025100-5634-6-git-send-email-laurentiu.palcu@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1570025100-5634-1-git-send-email-laurentiu.palcu@nxp.com>
References: <1570025100-5634-1-git-send-email-laurentiu.palcu@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_070550_186156_7DF397BB 
X-CRM114-Status: UNSURE (   8.31  )
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
Cc: devicetree@vger.kernel.org, agx@sigxcpu.org, linux-kernel@vger.kernel.org,
 Laurentiu Palcu <laurentiu.palcu@nxp.com>,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds the node for iMX8MQ Display Controller Subsystem.

Signed-off-by: Laurentiu Palcu <laurentiu.palcu@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index 04115ca..7f4bfb4 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -938,6 +938,31 @@
 				interrupt-controller;
 				#interrupt-cells = <1>;
 			};
+
+			dcss: display-controller@32e00000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				compatible = "nxp,imx8mq-dcss";
+				reg = <0x32e00000 0x2d000>, <0x32e2f000 0x1000>;
+				interrupts = <6>, <8>, <9>;
+				interrupt-names = "ctx_ld", "ctxld_kick", "vblank";
+				interrupt-parent = <&irqsteer>;
+				clocks = <&clk IMX8MQ_CLK_DISP_APB_ROOT>,
+					 <&clk IMX8MQ_CLK_DISP_AXI_ROOT>,
+					 <&clk IMX8MQ_CLK_DISP_RTRM_ROOT>,
+					 <&clk IMX8MQ_VIDEO2_PLL_OUT>,
+					 <&clk IMX8MQ_CLK_DISP_DTRC>;
+				clock-names = "apb", "axi", "rtrm", "pix", "dtrc";
+				assigned-clocks = <&clk IMX8MQ_CLK_DISP_AXI>,
+						  <&clk IMX8MQ_CLK_DISP_RTRM>,
+						  <&clk IMX8MQ_VIDEO2_PLL1_REF_SEL>;
+				assigned-clock-parents = <&clk IMX8MQ_SYS1_PLL_800M>,
+							 <&clk IMX8MQ_SYS1_PLL_800M>,
+							 <&clk IMX8MQ_CLK_27M>;
+				assigned-clock-rates = <800000000>,
+							   <400000000>;
+				status = "disabled";
+			};
 		};
 
 		gpu: gpu@38000000 {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
