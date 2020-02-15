Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F6BE15FCB9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Feb 2020 06:23:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZaymCgeiuK0ElMbTaVbJaMyFob1lDxo9hxMedRbklFE=; b=NbBSMAjY1kb3AVNi0YKfMD3kLP
	M94OpsO+vZY50Zxhzo2MeRp2qLfXmYgHqN/AN/qjnMKnnaofsHrBpns8z2kr6vcKqdcYlSPGx8sfh
	mAgtZIW8FEz7bNWF6bAStJWBGpMtfcbtzYttmYeDyux90Auq1k1DfLoyQV0VWM8yb9B31OL/n0JiP
	twLZcUwSCzrgT9fCI4TzAZg2erdRLDyPkFtyqfSMumLKM0YrKMoBGDcmOcAwQgmDZhJhIw0rUZ76R
	pf4lT4e7pILG2EObvigscptdH0QN/vc2hDBClfeANUKQ/wGY9fo+3My9HaCkfrv1vXjsEOoa5+nmP
	oh53WfLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2pvG-0007Qq-Db; Sat, 15 Feb 2020 05:23:22 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2ptl-0005wX-7q
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Feb 2020 05:21:53 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 9933320676F;
 Sat, 15 Feb 2020 06:21:42 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 65DDF2067A7;
 Sat, 15 Feb 2020 06:21:36 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 4F82D402CF;
 Sat, 15 Feb 2020 13:21:29 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, u.kleine-koenig@pengutronix.de
Subject: [PATCH V2 2/7] ARM: dts: imx6sx: Add missing UART RTS/CTS pins mux
Date: Sat, 15 Feb 2020 13:15:53 +0800
Message-Id: <1581743758-4475-3-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1581743758-4475-1-git-send-email-Anson.Huang@nxp.com>
References: <1581743758-4475-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_212149_557625_3B2B57E6 
X-CRM114-Status: UNSURE (   6.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some of UART RTS/CTS pins' DCE/DTE mux function are missing,
add them.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm/boot/dts/imx6sx-pinfunc.h | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm/boot/dts/imx6sx-pinfunc.h b/arch/arm/boot/dts/imx6sx-pinfunc.h
index 738a000..d77593c 100644
--- a/arch/arm/boot/dts/imx6sx-pinfunc.h
+++ b/arch/arm/boot/dts/imx6sx-pinfunc.h
@@ -66,6 +66,7 @@
 #define MX6SX_PAD_GPIO1_IO06__ENET2_MDC                           0x002C 0x0374 0x0000 0x2 0x0
 #define MX6SX_PAD_GPIO1_IO06__CSI1_MCLK                           0x002C 0x0374 0x0000 0x3 0x0
 #define MX6SX_PAD_GPIO1_IO06__UART1_DCE_RTS                       0x002C 0x0374 0x082C 0x4 0x0
+#define MX6SX_PAD_GPIO1_IO06__UART1_DTE_CTS                       0x002C 0x0374 0x0000 0x4 0x0
 #define MX6SX_PAD_GPIO1_IO06__GPIO1_IO_6                          0x002C 0x0374 0x0000 0x5 0x0
 #define MX6SX_PAD_GPIO1_IO06__SRC_ANY_PU_RESET                    0x002C 0x0374 0x0000 0x6 0x0
 #define MX6SX_PAD_GPIO1_IO06__OCOTP_CTRL_WRAPPER_FUSE_LATCHED     0x002C 0x0374 0x0000 0x7 0x0
@@ -75,6 +76,7 @@
 #define MX6SX_PAD_GPIO1_IO07__ENET2_MDIO                          0x0030 0x0378 0x0770 0x2 0x0
 #define MX6SX_PAD_GPIO1_IO07__AUDMUX_MCLK                         0x0030 0x0378 0x0000 0x3 0x0
 #define MX6SX_PAD_GPIO1_IO07__UART1_DCE_CTS                       0x0030 0x0378 0x0000 0x4 0x0
+#define MX6SX_PAD_GPIO1_IO07__UART1_DTE_RTS                       0x0030 0x0378 0x082C 0x4 0x1
 #define MX6SX_PAD_GPIO1_IO07__GPIO1_IO_7                          0x0030 0x0378 0x0000 0x5 0x0
 #define MX6SX_PAD_GPIO1_IO07__SRC_EARLY_RESET                     0x0030 0x0378 0x0000 0x6 0x0
 #define MX6SX_PAD_GPIO1_IO07__DCIC2_OUT                           0x0030 0x0378 0x0000 0x7 0x0
@@ -84,6 +86,7 @@
 #define MX6SX_PAD_GPIO1_IO08__SDMA_EXT_EVENT_0                    0x0034 0x037C 0x081C 0x2 0x0
 #define MX6SX_PAD_GPIO1_IO08__CCM_PMIC_RDY                        0x0034 0x037C 0x069C 0x3 0x1
 #define MX6SX_PAD_GPIO1_IO08__UART2_DCE_RTS                       0x0034 0x037C 0x0834 0x4 0x0
+#define MX6SX_PAD_GPIO1_IO08__UART2_DTE_CTS                       0x0034 0x037C 0x0000 0x4 0x0
 #define MX6SX_PAD_GPIO1_IO08__GPIO1_IO_8                          0x0034 0x037C 0x0000 0x5 0x0
 #define MX6SX_PAD_GPIO1_IO08__SRC_SYSTEM_RESET                    0x0034 0x037C 0x0000 0x6 0x0
 #define MX6SX_PAD_GPIO1_IO08__DCIC1_OUT                           0x0034 0x037C 0x0000 0x7 0x0
@@ -93,6 +96,7 @@
 #define MX6SX_PAD_GPIO1_IO09__SDMA_EXT_EVENT_1                    0x0038 0x0380 0x0820 0x2 0x0
 #define MX6SX_PAD_GPIO1_IO09__CCM_OUT0                            0x0038 0x0380 0x0000 0x3 0x0
 #define MX6SX_PAD_GPIO1_IO09__UART2_DCE_CTS                       0x0038 0x0380 0x0000 0x4 0x0
+#define MX6SX_PAD_GPIO1_IO09__UART2_DTE_RTS                       0x0038 0x0380 0x0834 0x4 0x1
 #define MX6SX_PAD_GPIO1_IO09__GPIO1_IO_9                          0x0038 0x0380 0x0000 0x5 0x0
 #define MX6SX_PAD_GPIO1_IO09__SRC_INT_BOOT                        0x0038 0x0380 0x0000 0x6 0x0
 #define MX6SX_PAD_GPIO1_IO09__OBSERVE_MUX_OUT_4                   0x0038 0x0380 0x0000 0x7 0x0
@@ -200,6 +204,7 @@
 #define MX6SX_PAD_CSI_DATA06__I2C4_SCL                            0x0064 0x03AC 0x07C0 0x2 0x2
 #define MX6SX_PAD_CSI_DATA06__KPP_COL_7                           0x0064 0x03AC 0x07D0 0x3 0x0
 #define MX6SX_PAD_CSI_DATA06__UART6_DCE_RTS                       0x0064 0x03AC 0x0854 0x4 0x0
+#define MX6SX_PAD_CSI_DATA06__UART6_DTE_CTS                       0x0064 0x03AC 0x0000 0x4 0x0
 #define MX6SX_PAD_CSI_DATA06__GPIO1_IO_20                         0x0064 0x03AC 0x0000 0x5 0x0
 #define MX6SX_PAD_CSI_DATA06__WEIM_DATA_17                        0x0064 0x03AC 0x0000 0x6 0x0
 #define MX6SX_PAD_CSI_DATA06__DCIC2_OUT                           0x0064 0x03AC 0x0000 0x7 0x0
@@ -210,6 +215,7 @@
 #define MX6SX_PAD_CSI_DATA07__I2C4_SDA                            0x0068 0x03B0 0x07C4 0x2 0x2
 #define MX6SX_PAD_CSI_DATA07__KPP_ROW_7                           0x0068 0x03B0 0x07DC 0x3 0x0
 #define MX6SX_PAD_CSI_DATA07__UART6_DCE_CTS                       0x0068 0x03B0 0x0000 0x4 0x0
+#define MX6SX_PAD_CSI_DATA07__UART6_DTE_RTS                       0x0068 0x03B0 0x0854 0x4 0x1
 #define MX6SX_PAD_CSI_DATA07__GPIO1_IO_21                         0x0068 0x03B0 0x0000 0x5 0x0
 #define MX6SX_PAD_CSI_DATA07__WEIM_DATA_16                        0x0068 0x03B0 0x0000 0x6 0x0
 #define MX6SX_PAD_CSI_DATA07__DCIC1_OUT                           0x0068 0x03B0 0x0000 0x7 0x0
@@ -219,6 +225,7 @@
 #define MX6SX_PAD_CSI_HSYNC__ESAI_TX0                             0x006C 0x03B4 0x0790 0x1 0x1
 #define MX6SX_PAD_CSI_HSYNC__AUDMUX_AUD6_TXD                      0x006C 0x03B4 0x0678 0x2 0x1
 #define MX6SX_PAD_CSI_HSYNC__UART4_DCE_RTS                        0x006C 0x03B4 0x0844 0x3 0x2
+#define MX6SX_PAD_CSI_HSYNC__UART4_DTE_CTS                        0x006C 0x03B4 0x0000 0x3 0x0
 #define MX6SX_PAD_CSI_HSYNC__MQS_LEFT                             0x006C 0x03B4 0x0000 0x4 0x0
 #define MX6SX_PAD_CSI_HSYNC__GPIO1_IO_22                          0x006C 0x03B4 0x0000 0x5 0x0
 #define MX6SX_PAD_CSI_HSYNC__WEIM_DATA_25                         0x006C 0x03B4 0x0000 0x6 0x0
@@ -251,6 +258,7 @@
 #define MX6SX_PAD_CSI_VSYNC__ESAI_TX5_RX0                         0x0078 0x03C0 0x07A4 0x1 0x1
 #define MX6SX_PAD_CSI_VSYNC__AUDMUX_AUD6_RXD                      0x0078 0x03C0 0x0674 0x2 0x1
 #define MX6SX_PAD_CSI_VSYNC__UART4_DCE_CTS                        0x0078 0x03C0 0x0000 0x3 0x0
+#define MX6SX_PAD_CSI_VSYNC__UART4_DTE_RTS                        0x0078 0x03C0 0x0844 0x3 0x3
 #define MX6SX_PAD_CSI_VSYNC__MQS_RIGHT                            0x0078 0x03C0 0x0000 0x4 0x0
 #define MX6SX_PAD_CSI_VSYNC__GPIO1_IO_25                          0x0078 0x03C0 0x0000 0x5 0x0
 #define MX6SX_PAD_CSI_VSYNC__WEIM_DATA_24                         0x0078 0x03C0 0x0000 0x6 0x0
@@ -353,6 +361,7 @@
 #define MX6SX_PAD_ENET2_RX_CLK__ENET2_REF_CLK_25M                 0x009C 0x03E4 0x0000 0x1 0x0
 #define MX6SX_PAD_ENET2_RX_CLK__I2C3_SCL                          0x009C 0x03E4 0x07B8 0x2 0x1
 #define MX6SX_PAD_ENET2_RX_CLK__UART1_DCE_RTS                     0x009C 0x03E4 0x082C 0x3 0x2
+#define MX6SX_PAD_ENET2_RX_CLK__UART1_DTE_CTS                     0x009C 0x03E4 0x0000 0x3 0x0
 #define MX6SX_PAD_ENET2_RX_CLK__MLB_DATA                          0x009C 0x03E4 0x07EC 0x4 0x1
 #define MX6SX_PAD_ENET2_RX_CLK__GPIO2_IO_8                        0x009C 0x03E4 0x0000 0x5 0x0
 #define MX6SX_PAD_ENET2_RX_CLK__USB_OTG2_OC                       0x009C 0x03E4 0x085C 0x6 0x1
@@ -363,6 +372,7 @@
 #define MX6SX_PAD_ENET2_TX_CLK__ENET2_REF_CLK2                    0x00A0 0x03E8 0x076C 0x1 0x1
 #define MX6SX_PAD_ENET2_TX_CLK__I2C3_SDA                          0x00A0 0x03E8 0x07BC 0x2 0x1
 #define MX6SX_PAD_ENET2_TX_CLK__UART1_DCE_CTS                     0x00A0 0x03E8 0x0000 0x3 0x0
+#define MX6SX_PAD_ENET2_TX_CLK__UART1_DTE_RTS                     0x00A0 0x03E8 0x082C 0x3 0x3
 #define MX6SX_PAD_ENET2_TX_CLK__MLB_CLK                           0x00A0 0x03E8 0x07E8 0x4 0x1
 #define MX6SX_PAD_ENET2_TX_CLK__GPIO2_IO_9                        0x00A0 0x03E8 0x0000 0x5 0x0
 #define MX6SX_PAD_ENET2_TX_CLK__USB_OTG2_PWR                      0x00A0 0x03E8 0x0000 0x6 0x0
@@ -372,6 +382,7 @@
 #define MX6SX_PAD_KEY_COL0__KPP_COL_0                             0x00A4 0x03EC 0x0000 0x0 0x0
 #define MX6SX_PAD_KEY_COL0__USDHC3_CD_B                           0x00A4 0x03EC 0x0000 0x1 0x0
 #define MX6SX_PAD_KEY_COL0__UART6_DCE_RTS                         0x00A4 0x03EC 0x0854 0x2 0x2
+#define MX6SX_PAD_KEY_COL0__UART6_DTE_CTS                         0x00A4 0x03EC 0x0000 0x2 0x0
 #define MX6SX_PAD_KEY_COL0__ECSPI1_SCLK                           0x00A4 0x03EC 0x0710 0x3 0x0
 #define MX6SX_PAD_KEY_COL0__AUDMUX_AUD5_TXC                       0x00A4 0x03EC 0x066C 0x4 0x0
 #define MX6SX_PAD_KEY_COL0__GPIO2_IO_10                           0x00A4 0x03EC 0x0000 0x5 0x0
@@ -390,6 +401,7 @@
 #define MX6SX_PAD_KEY_COL2__KPP_COL_2                             0x00AC 0x03F4 0x0000 0x0 0x0
 #define MX6SX_PAD_KEY_COL2__USDHC4_CD_B                           0x00AC 0x03F4 0x0874 0x1 0x1
 #define MX6SX_PAD_KEY_COL2__UART5_DCE_RTS                         0x00AC 0x03F4 0x084C 0x2 0x2
+#define MX6SX_PAD_KEY_COL2__UART5_DTE_CTS                         0x00AC 0x03F4 0x0000 0x2 0x0
 #define MX6SX_PAD_KEY_COL2__CAN1_TX                               0x00AC 0x03F4 0x0000 0x3 0x0
 #define MX6SX_PAD_KEY_COL2__CANFD_TX1                             0x00AC 0x03F4 0x0000 0x4 0x0
 #define MX6SX_PAD_KEY_COL2__GPIO2_IO_12                           0x00AC 0x03F4 0x0000 0x5 0x0
@@ -415,6 +427,7 @@
 #define MX6SX_PAD_KEY_ROW0__KPP_ROW_0                             0x00B8 0x0400 0x0000 0x0 0x0
 #define MX6SX_PAD_KEY_ROW0__USDHC3_WP                             0x00B8 0x0400 0x0000 0x1 0x0
 #define MX6SX_PAD_KEY_ROW0__UART6_DCE_CTS                         0x00B8 0x0400 0x0000 0x2 0x0
+#define MX6SX_PAD_KEY_ROW0__UART6_DTE_RTS                         0x00B8 0x0400 0x0854 0x2 0x3
 #define MX6SX_PAD_KEY_ROW0__ECSPI1_MOSI                           0x00B8 0x0400 0x0718 0x3 0x0
 #define MX6SX_PAD_KEY_ROW0__AUDMUX_AUD5_TXD                       0x00B8 0x0400 0x0660 0x4 0x0
 #define MX6SX_PAD_KEY_ROW0__GPIO2_IO_15                           0x00B8 0x0400 0x0000 0x5 0x0
@@ -434,6 +447,7 @@
 #define MX6SX_PAD_KEY_ROW2__KPP_ROW_2                             0x00C0 0x0408 0x0000 0x0 0x0
 #define MX6SX_PAD_KEY_ROW2__USDHC4_WP                             0x00C0 0x0408 0x0878 0x1 0x1
 #define MX6SX_PAD_KEY_ROW2__UART5_DCE_CTS                         0x00C0 0x0408 0x0000 0x2 0x0
+#define MX6SX_PAD_KEY_ROW2__UART5_DTE_RTS                         0x00C0 0x0408 0x084C 0x2 0x3
 #define MX6SX_PAD_KEY_ROW2__CAN1_RX                               0x00C0 0x0408 0x068C 0x3 0x1
 #define MX6SX_PAD_KEY_ROW2__CANFD_RX1                             0x00C0 0x0408 0x0694 0x4 0x1
 #define MX6SX_PAD_KEY_ROW2__GPIO2_IO_17                           0x00C0 0x0408 0x0000 0x5 0x0
@@ -816,6 +830,7 @@
 #define MX6SX_PAD_NAND_DATA04__USDHC2_DATA4                       0x0160 0x04A8 0x0000 0x1 0x0
 #define MX6SX_PAD_NAND_DATA04__QSPI2_B_SS1_B                      0x0160 0x04A8 0x0000 0x2 0x0
 #define MX6SX_PAD_NAND_DATA04__UART3_DCE_RTS                      0x0160 0x04A8 0x083C 0x3 0x0
+#define MX6SX_PAD_NAND_DATA04__UART3_DTE_CTS                      0x0160 0x04A8 0x0000 0x3 0x0
 #define MX6SX_PAD_NAND_DATA04__AUDMUX_AUD4_RXFS                   0x0160 0x04A8 0x0650 0x4 0x0
 #define MX6SX_PAD_NAND_DATA04__GPIO4_IO_8                         0x0160 0x04A8 0x0000 0x5 0x0
 #define MX6SX_PAD_NAND_DATA04__WEIM_AD_4                          0x0160 0x04A8 0x0000 0x6 0x0
@@ -826,6 +841,7 @@
 #define MX6SX_PAD_NAND_DATA05__USDHC2_DATA5                       0x0164 0x04AC 0x0000 0x1 0x0
 #define MX6SX_PAD_NAND_DATA05__QSPI2_B_DQS                        0x0164 0x04AC 0x0000 0x2 0x0
 #define MX6SX_PAD_NAND_DATA05__UART3_DCE_CTS                      0x0164 0x04AC 0x0000 0x3 0x0
+#define MX6SX_PAD_NAND_DATA05__UART3_DTE_RTS                      0x0164 0x04AC 0x083C 0x3 0x1
 #define MX6SX_PAD_NAND_DATA05__AUDMUX_AUD4_RXC                    0x0164 0x04AC 0x064C 0x4 0x0
 #define MX6SX_PAD_NAND_DATA05__GPIO4_IO_9                         0x0164 0x04AC 0x0000 0x5 0x0
 #define MX6SX_PAD_NAND_DATA05__WEIM_AD_5                          0x0164 0x04AC 0x0000 0x6 0x0
@@ -968,6 +984,7 @@
 #define MX6SX_PAD_QSPI1A_SS1_B__SDMA_DEBUG_PC_3                   0x019C 0x04E4 0x0000 0x9 0x0
 #define MX6SX_PAD_QSPI1B_DATA0__QSPI1_B_DATA_0                    0x01A0 0x04E8 0x0000 0x0 0x0
 #define MX6SX_PAD_QSPI1B_DATA0__UART3_DCE_CTS                     0x01A0 0x04E8 0x0000 0x1 0x0
+#define MX6SX_PAD_QSPI1B_DATA0__UART3_DTE_RTS                     0x01A0 0x04E8 0x083C 0x1 0x4
 #define MX6SX_PAD_QSPI1B_DATA0__ECSPI3_MOSI                       0x01A0 0x04E8 0x0738 0x2 0x1
 #define MX6SX_PAD_QSPI1B_DATA0__ESAI_RX_FS                        0x01A0 0x04E8 0x0778 0x3 0x2
 #define MX6SX_PAD_QSPI1B_DATA0__CSI1_DATA_22                      0x01A0 0x04E8 0x06F4 0x4 0x1
@@ -976,6 +993,7 @@
 #define MX6SX_PAD_QSPI1B_DATA0__SIM_M_HADDR_9                     0x01A0 0x04E8 0x0000 0x7 0x0
 #define MX6SX_PAD_QSPI1B_DATA1__QSPI1_B_DATA_1                    0x01A4 0x04EC 0x0000 0x0 0x0
 #define MX6SX_PAD_QSPI1B_DATA1__UART3_DCE_RTS                     0x01A4 0x04EC 0x083C 0x1 0x5
+#define MX6SX_PAD_QSPI1B_DATA1__UART3_DTE_CTS                     0x01A4 0x04EC 0x0000 0x1 0x0
 #define MX6SX_PAD_QSPI1B_DATA1__ECSPI3_MISO                       0x01A4 0x04EC 0x0734 0x2 0x1
 #define MX6SX_PAD_QSPI1B_DATA1__ESAI_RX_CLK                       0x01A4 0x04EC 0x0788 0x3 0x2
 #define MX6SX_PAD_QSPI1B_DATA1__CSI1_DATA_21                      0x01A4 0x04EC 0x06F0 0x4 0x1
@@ -1247,6 +1265,7 @@
 #define MX6SX_PAD_SD1_DATA2__PWM3_OUT                             0x0230 0x0578 0x0000 0x2 0x0
 #define MX6SX_PAD_SD1_DATA2__GPT_COMPARE2                         0x0230 0x0578 0x0000 0x3 0x0
 #define MX6SX_PAD_SD1_DATA2__UART2_DCE_CTS                        0x0230 0x0578 0x0000 0x4 0x0
+#define MX6SX_PAD_SD1_DATA2__UART2_DTE_RTS                        0x0230 0x0578 0x0834 0x4 0x2
 #define MX6SX_PAD_SD1_DATA2__GPIO6_IO_4                           0x0230 0x0578 0x0000 0x5 0x0
 #define MX6SX_PAD_SD1_DATA2__ECSPI4_RDY                           0x0230 0x0578 0x0000 0x6 0x0
 #define MX6SX_PAD_SD1_DATA2__CCM_OUT0                             0x0230 0x0578 0x0000 0x7 0x0
@@ -1256,6 +1275,7 @@
 #define MX6SX_PAD_SD1_DATA3__AUDMUX_AUD5_RXD                      0x0234 0x057C 0x065C 0x2 0x2
 #define MX6SX_PAD_SD1_DATA3__GPT_COMPARE3                         0x0234 0x057C 0x0000 0x3 0x0
 #define MX6SX_PAD_SD1_DATA3__UART2_DCE_RTS                        0x0234 0x057C 0x0834 0x4 0x3
+#define MX6SX_PAD_SD1_DATA3__UART2_DTE_CTS                        0x0234 0x057C 0x0000 0x4 0x0
 #define MX6SX_PAD_SD1_DATA3__GPIO6_IO_5                           0x0234 0x057C 0x0000 0x5 0x0
 #define MX6SX_PAD_SD1_DATA3__ECSPI4_SS1                           0x0234 0x057C 0x0000 0x6 0x0
 #define MX6SX_PAD_SD1_DATA3__CCM_PMIC_RDY                         0x0234 0x057C 0x069C 0x7 0x2
@@ -1326,6 +1346,7 @@
 #define MX6SX_PAD_SD2_DATA3__MMDC_DEBUG_31                        0x024C 0x0594 0x0000 0x9 0x0
 #define MX6SX_PAD_SD3_CLK__USDHC3_CLK                             0x0250 0x0598 0x0000 0x0 0x0
 #define MX6SX_PAD_SD3_CLK__UART4_DCE_CTS                          0x0250 0x0598 0x0000 0x1 0x0
+#define MX6SX_PAD_SD3_CLK__UART4_DTE_RTS                          0x0250 0x0598 0x0844 0x1 0x0
 #define MX6SX_PAD_SD3_CLK__ECSPI4_SCLK                            0x0250 0x0598 0x0740 0x2 0x0
 #define MX6SX_PAD_SD3_CLK__AUDMUX_AUD6_RXFS                       0x0250 0x0598 0x0680 0x3 0x0
 #define MX6SX_PAD_SD3_CLK__LCDIF2_VSYNC                           0x0250 0x0598 0x0000 0x4 0x0
@@ -1365,6 +1386,7 @@
 #define MX6SX_PAD_SD3_DATA1__SDMA_DEBUG_EVT_CHN_LINES_1           0x025C 0x05A4 0x0000 0x9 0x0
 #define MX6SX_PAD_SD3_DATA2__USDHC3_DATA2                         0x0260 0x05A8 0x0000 0x0 0x0
 #define MX6SX_PAD_SD3_DATA2__UART4_DCE_RTS                        0x0260 0x05A8 0x0844 0x1 0x1
+#define MX6SX_PAD_SD3_DATA2__UART4_DTE_CTS                        0x0260 0x05A8 0x0000 0x1 0x0
 #define MX6SX_PAD_SD3_DATA2__ECSPI4_SS0                           0x0260 0x05A8 0x074C 0x2 0x0
 #define MX6SX_PAD_SD3_DATA2__AUDMUX_AUD6_TXFS                     0x0260 0x05A8 0x0688 0x3 0x0
 #define MX6SX_PAD_SD3_DATA2__LCDIF2_CLK                           0x0260 0x05A8 0x0000 0x4 0x0
@@ -1410,6 +1432,7 @@
 #define MX6SX_PAD_SD3_DATA6__CAN2_TX                              0x0270 0x05B8 0x0000 0x1 0x0
 #define MX6SX_PAD_SD3_DATA6__CANFD_TX2                            0x0270 0x05B8 0x0000 0x2 0x0
 #define MX6SX_PAD_SD3_DATA6__UART3_DCE_RTS                        0x0270 0x05B8 0x083C 0x3 0x2
+#define MX6SX_PAD_SD3_DATA6__UART3_DTE_CTS                        0x0270 0x05B8 0x0000 0x3 0x0
 #define MX6SX_PAD_SD3_DATA6__LCDIF2_DATA_4                        0x0270 0x05B8 0x0000 0x4 0x0
 #define MX6SX_PAD_SD3_DATA6__GPIO7_IO_8                           0x0270 0x05B8 0x0000 0x5 0x0
 #define MX6SX_PAD_SD3_DATA6__ENET1_1588_EVENT0_OUT                0x0270 0x05B8 0x0000 0x6 0x0
@@ -1420,6 +1443,7 @@
 #define MX6SX_PAD_SD3_DATA7__CAN1_RX                              0x0274 0x05BC 0x068C 0x1 0x0
 #define MX6SX_PAD_SD3_DATA7__CANFD_RX1                            0x0274 0x05BC 0x0694 0x2 0x0
 #define MX6SX_PAD_SD3_DATA7__UART3_DCE_CTS                        0x0274 0x05BC 0x0000 0x3 0x0
+#define MX6SX_PAD_SD3_DATA7__UART3_DTE_RTS                        0x0274 0x05BC 0x083C 0x3 0x3
 #define MX6SX_PAD_SD3_DATA7__LCDIF2_DATA_5                        0x0274 0x05BC 0x0000 0x4 0x0
 #define MX6SX_PAD_SD3_DATA7__GPIO7_IO_9                           0x0274 0x05BC 0x0000 0x5 0x0
 #define MX6SX_PAD_SD3_DATA7__ENET1_1588_EVENT0_IN                 0x0274 0x05BC 0x0000 0x6 0x0
@@ -1511,6 +1535,7 @@
 #define MX6SX_PAD_SD4_DATA6__USDHC4_DATA6                         0x0298 0x05E0 0x0000 0x0 0x0
 #define MX6SX_PAD_SD4_DATA6__RAWNAND_CE3_B                        0x0298 0x05E0 0x0000 0x1 0x0
 #define MX6SX_PAD_SD4_DATA6__UART5_DCE_RTS                        0x0298 0x05E0 0x084C 0x2 0x0
+#define MX6SX_PAD_SD4_DATA6__UART5_DTE_CTS                        0x0298 0x05E0 0x0000 0x2 0x0
 #define MX6SX_PAD_SD4_DATA6__ECSPI3_MISO                          0x0298 0x05E0 0x0734 0x3 0x0
 #define MX6SX_PAD_SD4_DATA6__LCDIF2_DATA_6                        0x0298 0x05E0 0x0000 0x4 0x0
 #define MX6SX_PAD_SD4_DATA6__GPIO6_IO_20                          0x0298 0x05E0 0x0000 0x5 0x0
@@ -1521,6 +1546,7 @@
 #define MX6SX_PAD_SD4_DATA7__USDHC4_DATA7                         0x029C 0x05E4 0x0000 0x0 0x0
 #define MX6SX_PAD_SD4_DATA7__RAWNAND_DATA08                       0x029C 0x05E4 0x0000 0x1 0x0
 #define MX6SX_PAD_SD4_DATA7__UART5_DCE_CTS                        0x029C 0x05E4 0x0000 0x2 0x0
+#define MX6SX_PAD_SD4_DATA7__UART5_DTE_RTS                        0x029C 0x05E4 0x084C 0x2 0x1
 #define MX6SX_PAD_SD4_DATA7__ECSPI3_SS0                           0x029C 0x05E4 0x073C 0x3 0x0
 #define MX6SX_PAD_SD4_DATA7__LCDIF2_DATA_15                       0x029C 0x05E4 0x0000 0x4 0x0
 #define MX6SX_PAD_SD4_DATA7__GPIO6_IO_21                          0x029C 0x05E4 0x0000 0x5 0x0
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
