Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED5D954F59
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 14:51:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=amzc1qjkZ/tT2iy0iuuce0l7WWxX3ZyxlgC+keSX+GA=; b=FcV
	NoigGgv4tDyc7EZpMX3Tvo7RmOixO88Q9eFA2Esf7dOni/fmZ2fr7wqdHLf9pZShdcSinLnaWmLZV
	j4IuZRsLZp+UEw5b04DgIKDTy0ITz3k7H/os3mQtLkamYopikLuVKCcKA7nIDZrufBYYesSmd1M8q
	098LiHWLHvjlvx816bdf5Y1C1CIyqkDH6lsfXKDbNk5Jsv4NlySVu4futljsAvXbRyyqz3BLHr4Qv
	Lk8Aap0xeIIkJ288/DohZ/qhDJnTsvfNlet2fpPxBR1cUagZKSUjM7ekIX+O5PwhVBsi20D77Cg8Q
	MQVnv/hxrlHAHDSFHroJaGfEXEwMJOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkvF-0003rG-GS; Tue, 25 Jun 2019 12:51:41 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkv4-0003qM-B0
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 12:51:31 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 5663F1A07E6;
 Tue, 25 Jun 2019 14:51:25 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 48D291A07DC;
 Tue, 25 Jun 2019 14:51:25 +0200 (CEST)
Received: from fsr-ub1664-175.ea.freescale.net
 (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id BC1272061E;
 Tue, 25 Jun 2019 14:51:24 +0200 (CEST)
From: Abel Vesa <abel.vesa@nxp.com>
To: Rob Herring <robh@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Anson Huang <anson.huang@nxp.com>
Subject: [PATCH] arm64: dts: imx8mq: Init rates and parents configs for clocks
Date: Tue, 25 Jun 2019 15:51:21 +0300
Message-Id: <1561467081-25701-1-git-send-email-abel.vesa@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_055130_519484_733AD372 
X-CRM114-Status: UNSURE (   7.16  )
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
Cc: devicetree@vger.kernel.org, Abel Vesa <abel.vesa@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, linux-arm-kernel@lists.infradead.org,
 Lucas Stach <l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the initial configuration for clocks that need default parent and rate
setting. This is based on the vendor tree clock provider parents and rates
configuration except this is doing the setup in dts rather then using clock
consumer API in a clock provider driver.

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 34 +++++++++++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index d09b808..e0abe02 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -489,6 +489,40 @@
 				clock-names = "ckil", "osc_25m", "osc_27m",
 				              "clk_ext1", "clk_ext2",
 				              "clk_ext3", "clk_ext4";
+				assigned-clocks = <&clk IMX8MQ_VIDEO_PLL1>,
+					<&clk IMX8MQ_CLK_AHB>,
+					<&clk IMX8MQ_CLK_NAND_USDHC_BUS>,
+					<&clk IMX8MQ_CLK_AUDIO_AHB>,
+					<&clk IMX8MQ_VIDEO_PLL1_REF_SEL>,
+					<&clk IMX8MQ_CLK_NOC>,
+					<&clk IMX8MQ_CLK_PCIE1_CTRL>,
+					<&clk IMX8MQ_CLK_PCIE1_PHY>,
+					<&clk IMX8MQ_CLK_PCIE2_CTRL>,
+					<&clk IMX8MQ_CLK_PCIE2_PHY>,
+					<&clk IMX8MQ_CLK_CSI1_CORE>,
+					<&clk IMX8MQ_CLK_CSI1_PHY_REF>,
+					<&clk IMX8MQ_CLK_CSI1_ESC>,
+					<&clk IMX8MQ_CLK_CSI2_CORE>,
+					<&clk IMX8MQ_CLK_CSI2_PHY_REF>,
+					<&clk IMX8MQ_CLK_CSI2_ESC>;
+				assigned-clock-parents = <0>,
+						<&clk IMX8MQ_SYS1_PLL_133M>,
+						<&clk IMX8MQ_SYS1_PLL_266M>,
+						<&clk IMX8MQ_SYS2_PLL_500M>,
+						<&clk IMX8MQ_CLK_27M>,
+						<&clk IMX8MQ_SYS1_PLL_800M>,
+						<&clk IMX8MQ_SYS2_PLL_250M>,
+						<&clk IMX8MQ_SYS2_PLL_100M>,
+						<&clk IMX8MQ_SYS2_PLL_250M>,
+						<&clk IMX8MQ_SYS2_PLL_100M>,
+						<&clk IMX8MQ_SYS1_PLL_266M>,
+						<&clk IMX8MQ_SYS2_PLL_1000M>,
+						<&clk IMX8MQ_SYS1_PLL_800M>,
+						<&clk IMX8MQ_SYS1_PLL_266M>,
+						<&clk IMX8MQ_SYS2_PLL_1000M>,
+						<&clk IMX8MQ_SYS1_PLL_800M>;
+				assigned-clock-rates = <593999999>;
+
 			};
 
 			src: reset-controller@30390000 {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
