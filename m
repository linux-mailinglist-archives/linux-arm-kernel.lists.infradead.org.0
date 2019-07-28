Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 122A678017
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Jul 2019 17:21:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=UecINOWDFotjcF6spby6/6dz4QNZSdO1LK5jn3Sd1Lk=; b=GXN
	DPJpDKcLZDGwjVtxF0iLzUAOtlg+3WmWYkipEXys9HoNXWXOgCMoEGNu+Jt4KPsbg25PKK9XcVApc
	1F7IVexAsy2C2RoWyi2ViW94boxOXp+1RhuVXIDHzL4f8mPFrzX9Axlf7SGdfx7XlO3Fsid6IJMDX
	G73Stagh8px2HSdTPXVhhm2qWnTGlFwuSAPft5IkOnqcTTc4uwuO152tpUhFmQpSHgdysPcFHWmDe
	5Am6SpQ+AGQgDeqpPPM1Jon5R1BOG6LpcLqOPcCCeLsFa6E6ZAJjpl9UUmj5lCcipkAYXuexEcvBV
	BLoPQvOAVfOp1WifUsQUTHZxdiifnpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrkyp-0006kc-Rn; Sun, 28 Jul 2019 15:21:00 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrkyd-0006jv-E1
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 15:20:48 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id D7C042011E2;
 Sun, 28 Jul 2019 17:20:44 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id C90682011D4;
 Sun, 28 Jul 2019 17:20:44 +0200 (CEST)
Received: from fsr-ub1864-103.ea.freescale.net
 (fsr-ub1864-103.ea.freescale.net [10.171.82.17])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 1B2C52060A;
 Sun, 28 Jul 2019 17:20:44 +0200 (CEST)
From: Daniel Baluta <daniel.baluta@nxp.com>
To: shawnguo@kernel.org
Subject: [PATCH v4] arm64: dts: imx8mq: Init rates and parents configs for
 clocks
Date: Sun, 28 Jul 2019 18:20:40 +0300
Message-Id: <20190728152040.15323-1-daniel.baluta@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_082047_614726_4D3C6E36 
X-CRM114-Status: UNSURE (   7.39  )
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
Cc: devicetree@vger.kernel.org, baruch@tkos.co.il, abel.vesa@nxp.com,
 Anson.Huang@nxp.com, ccaione@baylibre.com, andrew.smirnov@gmail.com,
 Daniel Baluta <daniel.baluta@nxp.com>, s.hauer@pengutronix.de, angus@akkea.ca,
 linux-kernel@vger.kernel.org, agx@sigxcpu.org, linux-imx@nxp.com,
 festevam@gmail.com, shengjiu.wang@nxp.com,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Abel Vesa <abel.vesa@nxp.com>

Add the initial configuration for clocks that need default parent and rate
setting. This is based on the vendor tree clock provider parents and rates
configuration except this is doing the setup in dts rather then using clock
consumer API in a clock provider driver.

Note that by adding the initial rate setting for audio_pll1/audio_pll
setting we need to remove it from imx8mq-librem5-devkit.dts

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
Tested-by: Angus Ainslie (Purism) <angus@akkea.ca>
---
Changes since v3:
	- fix extra new lines

 .../dts/freescale/imx8mq-librem5-devkit.dts   |  5 -----
 arch/arm64/boot/dts/freescale/imx8mq.dtsi     | 19 +++++++++++++++++++
 2 files changed, 19 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
index 683a11035643..c702ccc82867 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
@@ -169,11 +169,6 @@
 	};
 };
 
-&clk {
-	assigned-clocks = <&clk IMX8MQ_AUDIO_PLL1>, <&clk IMX8MQ_AUDIO_PLL2>;
-	assigned-clock-rates = <786432000>, <722534400>;
-};
-
 &dphy {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index 02fbd0625318..a55d72ba2e05 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -494,6 +494,25 @@
 				clock-names = "ckil", "osc_25m", "osc_27m",
 				              "clk_ext1", "clk_ext2",
 				              "clk_ext3", "clk_ext4";
+				assigned-clocks = <&clk IMX8MQ_VIDEO_PLL1>,
+					<&clk IMX8MQ_AUDIO_PLL1>,
+					<&clk IMX8MQ_AUDIO_PLL2>,
+					<&clk IMX8MQ_CLK_AHB>,
+					<&clk IMX8MQ_CLK_NAND_USDHC_BUS>,
+					<&clk IMX8MQ_CLK_AUDIO_AHB>,
+					<&clk IMX8MQ_VIDEO_PLL1_REF_SEL>,
+					<&clk IMX8MQ_CLK_NOC>;
+				assigned-clock-parents = <0>,
+						<0>,
+						<0>,
+						<&clk IMX8MQ_SYS1_PLL_133M>,
+						<&clk IMX8MQ_SYS1_PLL_266M>,
+						<&clk IMX8MQ_SYS2_PLL_500M>,
+						<&clk IMX8MQ_CLK_27M>,
+						<&clk IMX8MQ_SYS1_PLL_800M>;
+				assigned-clock-rates = <593999999>,
+						<786432000>,
+						<722534400>;
 			};
 
 			src: reset-controller@30390000 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
