Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D8B1FCA3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 00:47:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yerMnkvCWrIdctsnJcC3TIa/lCRKz4L3IjJfsx0SNtY=; b=THBitt52pjLuCe
	lxG/aOKjVl2yFVrJgr1paepIiOOMaphiX1+nn4Hfz0pOkoqLDKFKktiaxqwbRiUQxyec2lkaxKQeq
	vDIJzvEQA2HSU3AO1xgGrjYCbmrqdCy7aTexax1ApVGIRYxA3X8W0vdpnro4YLycXE3PIpKB2/ey0
	UzzSe6NB2PQsUKcJsxEVbVXxHFYkS/H2TvDYxC1uUkl8gX3qsWxFJLNm0VlZiM/89ZDTOBLXblvJo
	AVxeQoRztrUyswUYcksdQmynn7FFiJzTYREYCtXzCKBUZ9/oK/xUPTgRYEmqpUnm2p6WoUPpzM+Z5
	NlEw3WtcA6EZac+W+QpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR2gX-0007Cm-Lj; Wed, 15 May 2019 22:47:41 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR2fG-0005h9-RT
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 22:46:27 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 4548mY1DNJz1rFs6;
 Thu, 16 May 2019 00:46:21 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 4548mY13sDz1qqkW;
 Thu, 16 May 2019 00:46:21 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id 0fKKxDAhzUOc; Thu, 16 May 2019 00:46:20 +0200 (CEST)
X-Auth-Info: omK/zU17H7NA3zUnSszkc+tBgqlNcGOGL3s3hmskKpo=
Received: from kurokawa.lan (ip-86-49-110-70.net.upcbroadband.cz
 [86.49.110.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Thu, 16 May 2019 00:46:20 +0200 (CEST)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 8/8] ARM: dts: imx53: Update pinmux settings on M53Menlo
Date: Thu, 16 May 2019 00:46:01 +0200
Message-Id: <20190515224601.4527-8-marex@denx.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190515224601.4527-1-marex@denx.de>
References: <20190515224601.4527-1-marex@denx.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_154623_428686_05509ACE 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update pinmux settings according to hardware team input.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
To: linux-arm-kernel@lists.infradead.org
---
V2: No change
---
 arch/arm/boot/dts/imx53-m53menlo.dts | 87 ++++++++++++++++------------
 1 file changed, 49 insertions(+), 38 deletions(-)

diff --git a/arch/arm/boot/dts/imx53-m53menlo.dts b/arch/arm/boot/dts/imx53-m53menlo.dts
index a106233d1651..55c122a64ef0 100644
--- a/arch/arm/boot/dts/imx53-m53menlo.dts
+++ b/arch/arm/boot/dts/imx53-m53menlo.dts
@@ -235,27 +235,31 @@
 	imx53-m53evk {
 		hoggrp {
 			fsl,pins = <
-				MX53_PAD_GPIO_0__CCM_SSI_EXT1_CLK	0x1c4
-				MX53_PAD_EIM_EB3__GPIO2_31		0x1d5
-				MX53_PAD_PATA_DA_0__GPIO7_6		0x1d5
-				MX53_PAD_GPIO_19__CCM_CLKO		0x1d5
-				MX53_PAD_CSI0_MCLK__CCM_CSI0_MCLK	0x1d5
-				MX53_PAD_CSI0_DAT4__GPIO5_22		0x1d5
-				MX53_PAD_CSI0_DAT5__GPIO5_23		0x1d5
-				MX53_PAD_CSI0_DAT6__GPIO5_24		0x1d5
-				MX53_PAD_CSI0_DAT7__GPIO5_25		0x1d5
-				MX53_PAD_CSI0_DAT8__GPIO5_26		0x1d5
-				MX53_PAD_CSI0_DAT9__GPIO5_27		0x1d5
-				MX53_PAD_CSI0_DAT10__GPIO5_28		0x1d5
-				MX53_PAD_CSI0_DAT11__GPIO5_29		0x1d5
-				MX53_PAD_CSI0_DAT14__GPIO6_0		0x1d5
+				MX53_PAD_GPIO_19__CCM_CLKO		0x1e4
+				MX53_PAD_CSI0_DATA_EN__GPIO5_20		0x1e4
+				MX53_PAD_CSI0_DAT4__GPIO5_22		0x1e4
+				MX53_PAD_CSI0_DAT5__GPIO5_23		0x1c4
+				MX53_PAD_CSI0_DAT6__GPIO5_24		0x1e4
+				MX53_PAD_CSI0_DAT7__GPIO5_25		0x1e4
+				MX53_PAD_CSI0_DAT8__GPIO5_26		0x1e4
+				MX53_PAD_CSI0_DAT9__GPIO5_27		0x1c4
+				MX53_PAD_CSI0_DAT10__GPIO5_28		0x1e4
+				MX53_PAD_CSI0_DAT11__GPIO5_29		0x1e4
+				MX53_PAD_PATA_DATA11__GPIO2_11		0x1e4
+				MX53_PAD_EIM_D24__GPIO3_24		0x1e4
+				MX53_PAD_EIM_D25__GPIO3_25		0x1e4
+				MX53_PAD_EIM_D29__GPIO3_29		0x1e4
+				MX53_PAD_CSI0_PIXCLK__GPIO5_18		0x1e4
+				MX53_PAD_CSI0_VSYNC__GPIO5_21		0x1e4
+				MX53_PAD_CSI0_DAT18__GPIO6_4		0x1c4
+				MX53_PAD_PATA_DATA8__GPIO2_8		0x1e4
 			>;
 		};
 
 		pinctrl_led: ledgrp {
 			fsl,pins = <
-				MX53_PAD_CSI0_DAT15__GPIO6_1		0x1d5
-				MX53_PAD_CSI0_DAT16__GPIO6_2		0x1d5
+				MX53_PAD_CSI0_DAT15__GPIO6_1		0x1c4
+				MX53_PAD_CSI0_DAT16__GPIO6_2		0x1c4
 			>;
 		};
 
@@ -274,49 +278,56 @@
 
 		pinctrl_can2: can2grp {
 			fsl,pins = <
-				MX53_PAD_KEY_COL4__CAN2_TXCAN		0x1c4
+				MX53_PAD_KEY_COL4__CAN2_TXCAN		0x1e4
 				MX53_PAD_KEY_ROW4__CAN2_RXCAN		0x1c4
 			>;
 		};
 
 		pinctrl_display_gpio: display-gpiogrp {
 			fsl,pins = <
-				MX53_PAD_CSI0_DAT12__GPIO5_30		0x1d5 /* Reset */
-				MX53_PAD_CSI0_DAT13__GPIO5_31		0x1d5 /* Interrupt */
+				MX53_PAD_CSI0_DAT12__GPIO5_30		0x1c4 /* Reset */
+				MX53_PAD_CSI0_MCLK__GPIO5_19		0x1e4 /* Int-K */
+				MX53_PAD_CSI0_DAT13__GPIO5_31		0x1c4 /* Int-I */
+
+				MX53_PAD_CSI0_DAT14__GPIO6_0		0x1c4 /* Power down */
 			>;
 		};
 
 		pinctrl_edt_ft5x06: edt-ft5x06grp {
 			fsl,pins = <
-				MX53_PAD_PATA_DATA9__GPIO2_9		0x1d5 /* Reset */
-				MX53_PAD_CSI0_DAT19__GPIO6_5		0x1d5 /* Interrupt */
-				MX53_PAD_PATA_DATA10__GPIO2_10		0x1d5 /* Wake */
+				MX53_PAD_PATA_DATA9__GPIO2_9		0x1e4 /* Reset */
+				MX53_PAD_CSI0_DAT19__GPIO6_5		0x1c4 /* Interrupt */
+				MX53_PAD_PATA_DATA10__GPIO2_10		0x1e4 /* Wake */
 			>;
 		};
 
 		pinctrl_esdhc1: esdhc1grp {
 			fsl,pins = <
-				MX53_PAD_SD1_DATA0__ESDHC1_DAT0		0x1d5
-				MX53_PAD_SD1_DATA1__ESDHC1_DAT1		0x1d5
-				MX53_PAD_SD1_DATA2__ESDHC1_DAT2		0x1d5
-				MX53_PAD_SD1_DATA3__ESDHC1_DAT3		0x1d5
-				MX53_PAD_SD1_CMD__ESDHC1_CMD		0x1d5
-				MX53_PAD_SD1_CLK__ESDHC1_CLK		0x1d5
+				MX53_PAD_SD1_DATA0__ESDHC1_DAT0		0x1e4
+				MX53_PAD_SD1_DATA1__ESDHC1_DAT1		0x1e4
+				MX53_PAD_SD1_DATA2__ESDHC1_DAT2		0x1e4
+				MX53_PAD_SD1_DATA3__ESDHC1_DAT3		0x1e4
+				MX53_PAD_SD1_CMD__ESDHC1_CMD		0x1e4
+				MX53_PAD_SD1_CLK__ESDHC1_CLK		0x1e4
+				MX53_PAD_GPIO_1__GPIO1_1		0x1c4
+				MX53_PAD_GPIO_9__GPIO1_9		0x1e4
 			>;
 		};
 
 		pinctrl_fec: fecgrp {
 			fsl,pins = <
-				MX53_PAD_FEC_MDC__FEC_MDC		0x4
-				MX53_PAD_FEC_MDIO__FEC_MDIO		0x1fc
-				MX53_PAD_FEC_REF_CLK__FEC_TX_CLK	0x180
-				MX53_PAD_FEC_RX_ER__FEC_RX_ER		0x180
-				MX53_PAD_FEC_CRS_DV__FEC_RX_DV		0x180
-				MX53_PAD_FEC_RXD1__FEC_RDATA_1		0x180
-				MX53_PAD_FEC_RXD0__FEC_RDATA_0		0x180
-				MX53_PAD_FEC_TX_EN__FEC_TX_EN		0x4
-				MX53_PAD_FEC_TXD1__FEC_TDATA_1		0x4
-				MX53_PAD_FEC_TXD0__FEC_TDATA_0		0x4
+				MX53_PAD_FEC_MDC__FEC_MDC		0x1e4
+				MX53_PAD_FEC_MDIO__FEC_MDIO		0x1e4
+				MX53_PAD_FEC_REF_CLK__FEC_TX_CLK	0x1e4
+				MX53_PAD_FEC_RX_ER__FEC_RX_ER		0x1e4
+				MX53_PAD_FEC_CRS_DV__FEC_RX_DV		0x1e4
+				MX53_PAD_FEC_RXD1__FEC_RDATA_1		0x1e4
+				MX53_PAD_FEC_RXD0__FEC_RDATA_0		0x1e4
+				MX53_PAD_FEC_TX_EN__FEC_TX_EN		0x1c4
+				MX53_PAD_FEC_TXD1__FEC_TDATA_1		0x1e4
+				MX53_PAD_FEC_TXD0__FEC_TDATA_0		0x1e4
+				MX53_PAD_PATA_DA_1__GPIO7_7		0x1e4
+				MX53_PAD_EIM_EB3__GPIO2_31		0x1e4
 			>;
 		};
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
