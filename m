Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAB3315FCBA
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Feb 2020 06:23:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=V92IM/pvxbjKuLi0BI1EUHIP2rplS0gk2Pfe/6TBtTA=; b=bs8fatjX4JDnmAJQVkd2iD5qtT
	j9uD9L6i3Crb19uz+KdYtFsaFSq3xNgEqESwLBp85uBTunzTzEGjz3NaXJvRaF/0cdEAHm3p2Vm5B
	P+IPhmGN9mdzmWypuV4WJ6Niw74+tYix1GVjYci9Ru3UFTsVMNfuMsJEJfDcGIUSqjV+GW1Ne1x4P
	N5hh03tO574d8KUpNqw5oTjkBqWgc3zTm1MMiXvIshQ56Hd/wlspUoW/kpbuNLy+ct4i94eFWIOni
	KRL3yLTbwpuWW6+ltn3o5irtQuuHnb+jrUwvoC0mY4Z1b3EIFVIWNZDStXWM63Bj17r3ug5xxWG3L
	DWn+IIjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2pvR-0007ei-Sc; Sat, 15 Feb 2020 05:23:33 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2ptl-0005wU-7r
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Feb 2020 05:21:55 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id E68F62067B8;
 Sat, 15 Feb 2020 06:21:41 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 7329920676F;
 Sat, 15 Feb 2020 06:21:35 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 3DD51402A0;
 Sat, 15 Feb 2020 13:21:28 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, u.kleine-koenig@pengutronix.de
Subject: [PATCH V2 1/7] ARM: dts: imx6sx: Improve UART pins macro defines
Date: Sat, 15 Feb 2020 13:15:52 +0800
Message-Id: <1581743758-4475-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1581743758-4475-1-git-send-email-Anson.Huang@nxp.com>
References: <1581743758-4475-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_212149_709266_7599B73B 
X-CRM114-Status: UNSURE (   7.66  )
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

Add DCE/DTE to UART pins macro defines to distinguish the
DCE and DTE functions, keep old defines at the end of file
for some time to make it backward compatible.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm/boot/dts/imx6sx-pinfunc.h | 262 +++++++++++++++++++++++++------------
 1 file changed, 175 insertions(+), 87 deletions(-)

diff --git a/arch/arm/boot/dts/imx6sx-pinfunc.h b/arch/arm/boot/dts/imx6sx-pinfunc.h
index aa194a2..738a000 100644
--- a/arch/arm/boot/dts/imx6sx-pinfunc.h
+++ b/arch/arm/boot/dts/imx6sx-pinfunc.h
@@ -42,8 +42,8 @@
 #define MX6SX_PAD_GPIO1_IO03__GPIO1_IO_3                          0x0020 0x0368 0x0000 0x5 0x0
 #define MX6SX_PAD_GPIO1_IO03__CCM_PLL3_BYP                        0x0020 0x0368 0x0000 0x6 0x0
 #define MX6SX_PAD_GPIO1_IO03__PHY_TCK                             0x0020 0x0368 0x0000 0x7 0x0
-#define MX6SX_PAD_GPIO1_IO04__UART1_RX                            0x0024 0x036C 0x0830 0x0 0x0
-#define MX6SX_PAD_GPIO1_IO04__UART1_TX                            0x0024 0x036C 0x0000 0x0 0x0
+#define MX6SX_PAD_GPIO1_IO04__UART1_DCE_TX                        0x0024 0x036C 0x0000 0x0 0x0
+#define MX6SX_PAD_GPIO1_IO04__UART1_DTE_RX                        0x0024 0x036C 0x0830 0x0 0x0
 #define MX6SX_PAD_GPIO1_IO04__USDHC2_RESET_B                      0x0024 0x036C 0x0000 0x1 0x0
 #define MX6SX_PAD_GPIO1_IO04__ENET1_MDC                           0x0024 0x036C 0x0000 0x2 0x0
 #define MX6SX_PAD_GPIO1_IO04__OSC32K_32K_OUT                      0x0024 0x036C 0x0000 0x3 0x0
@@ -51,8 +51,8 @@
 #define MX6SX_PAD_GPIO1_IO04__GPIO1_IO_4                          0x0024 0x036C 0x0000 0x5 0x0
 #define MX6SX_PAD_GPIO1_IO04__CCM_PLL2_BYP                        0x0024 0x036C 0x0000 0x6 0x0
 #define MX6SX_PAD_GPIO1_IO04__PHY_TMS                             0x0024 0x036C 0x0000 0x7 0x0
-#define MX6SX_PAD_GPIO1_IO05__UART1_RX                            0x0028 0x0370 0x0830 0x0 0x1
-#define MX6SX_PAD_GPIO1_IO05__UART1_TX                            0x0028 0x0370 0x0000 0x0 0x0
+#define MX6SX_PAD_GPIO1_IO05__UART1_DCE_RX                        0x0028 0x0370 0x0830 0x0 0x1
+#define MX6SX_PAD_GPIO1_IO05__UART1_DTE_TX                        0x0028 0x0370 0x0000 0x0 0x0
 #define MX6SX_PAD_GPIO1_IO05__USDHC2_VSELECT                      0x0028 0x0370 0x0000 0x1 0x0
 #define MX6SX_PAD_GPIO1_IO05__ENET1_MDIO                          0x0028 0x0370 0x0764 0x2 0x0
 #define MX6SX_PAD_GPIO1_IO05__ASRC_ASRC_EXT_CLK                   0x0028 0x0370 0x0000 0x3 0x0
@@ -60,21 +60,21 @@
 #define MX6SX_PAD_GPIO1_IO05__GPIO1_IO_5                          0x0028 0x0370 0x0000 0x5 0x0
 #define MX6SX_PAD_GPIO1_IO05__SRC_TESTER_ACK                      0x0028 0x0370 0x0000 0x6 0x0
 #define MX6SX_PAD_GPIO1_IO05__PHY_TDO                             0x0028 0x0370 0x0000 0x7 0x0
-#define MX6SX_PAD_GPIO1_IO06__UART2_RX                            0x002C 0x0374 0x0838 0x0 0x0
-#define MX6SX_PAD_GPIO1_IO06__UART2_TX                            0x002C 0x0374 0x0000 0x0 0x0
+#define MX6SX_PAD_GPIO1_IO06__UART2_DCE_TX                        0x002C 0x0374 0x0000 0x0 0x0
+#define MX6SX_PAD_GPIO1_IO06__UART2_DTE_RX                        0x002C 0x0374 0x0838 0x0 0x0
 #define MX6SX_PAD_GPIO1_IO06__USDHC2_CD_B                         0x002C 0x0374 0x086C 0x1 0x1
 #define MX6SX_PAD_GPIO1_IO06__ENET2_MDC                           0x002C 0x0374 0x0000 0x2 0x0
 #define MX6SX_PAD_GPIO1_IO06__CSI1_MCLK                           0x002C 0x0374 0x0000 0x3 0x0
-#define MX6SX_PAD_GPIO1_IO06__UART1_RTS_B                         0x002C 0x0374 0x082C 0x4 0x0
+#define MX6SX_PAD_GPIO1_IO06__UART1_DCE_RTS                       0x002C 0x0374 0x082C 0x4 0x0
 #define MX6SX_PAD_GPIO1_IO06__GPIO1_IO_6                          0x002C 0x0374 0x0000 0x5 0x0
 #define MX6SX_PAD_GPIO1_IO06__SRC_ANY_PU_RESET                    0x002C 0x0374 0x0000 0x6 0x0
 #define MX6SX_PAD_GPIO1_IO06__OCOTP_CTRL_WRAPPER_FUSE_LATCHED     0x002C 0x0374 0x0000 0x7 0x0
-#define MX6SX_PAD_GPIO1_IO07__UART2_RX                            0x0030 0x0378 0x0838 0x0 0x1
-#define MX6SX_PAD_GPIO1_IO07__UART2_TX                            0x0030 0x0378 0x0000 0x0 0x0
+#define MX6SX_PAD_GPIO1_IO07__UART2_DCE_RX                        0x0030 0x0378 0x0838 0x0 0x1
+#define MX6SX_PAD_GPIO1_IO07__UART2_DTE_TX                        0x0030 0x0378 0x0000 0x0 0x0
 #define MX6SX_PAD_GPIO1_IO07__USDHC2_WP                           0x0030 0x0378 0x0870 0x1 0x1
 #define MX6SX_PAD_GPIO1_IO07__ENET2_MDIO                          0x0030 0x0378 0x0770 0x2 0x0
 #define MX6SX_PAD_GPIO1_IO07__AUDMUX_MCLK                         0x0030 0x0378 0x0000 0x3 0x0
-#define MX6SX_PAD_GPIO1_IO07__UART1_CTS_B                         0x0030 0x0378 0x0000 0x4 0x0
+#define MX6SX_PAD_GPIO1_IO07__UART1_DCE_CTS                       0x0030 0x0378 0x0000 0x4 0x0
 #define MX6SX_PAD_GPIO1_IO07__GPIO1_IO_7                          0x0030 0x0378 0x0000 0x5 0x0
 #define MX6SX_PAD_GPIO1_IO07__SRC_EARLY_RESET                     0x0030 0x0378 0x0000 0x6 0x0
 #define MX6SX_PAD_GPIO1_IO07__DCIC2_OUT                           0x0030 0x0378 0x0000 0x7 0x0
@@ -83,7 +83,7 @@
 #define MX6SX_PAD_GPIO1_IO08__WDOG1_WDOG_B                        0x0034 0x037C 0x0000 0x1 0x0
 #define MX6SX_PAD_GPIO1_IO08__SDMA_EXT_EVENT_0                    0x0034 0x037C 0x081C 0x2 0x0
 #define MX6SX_PAD_GPIO1_IO08__CCM_PMIC_RDY                        0x0034 0x037C 0x069C 0x3 0x1
-#define MX6SX_PAD_GPIO1_IO08__UART2_RTS_B                         0x0034 0x037C 0x0834 0x4 0x0
+#define MX6SX_PAD_GPIO1_IO08__UART2_DCE_RTS                       0x0034 0x037C 0x0834 0x4 0x0
 #define MX6SX_PAD_GPIO1_IO08__GPIO1_IO_8                          0x0034 0x037C 0x0000 0x5 0x0
 #define MX6SX_PAD_GPIO1_IO08__SRC_SYSTEM_RESET                    0x0034 0x037C 0x0000 0x6 0x0
 #define MX6SX_PAD_GPIO1_IO08__DCIC1_OUT                           0x0034 0x037C 0x0000 0x7 0x0
@@ -92,7 +92,7 @@
 #define MX6SX_PAD_GPIO1_IO09__WDOG2_WDOG_B                        0x0038 0x0380 0x0000 0x1 0x0
 #define MX6SX_PAD_GPIO1_IO09__SDMA_EXT_EVENT_1                    0x0038 0x0380 0x0820 0x2 0x0
 #define MX6SX_PAD_GPIO1_IO09__CCM_OUT0                            0x0038 0x0380 0x0000 0x3 0x0
-#define MX6SX_PAD_GPIO1_IO09__UART2_CTS_B                         0x0038 0x0380 0x0000 0x4 0x0
+#define MX6SX_PAD_GPIO1_IO09__UART2_DCE_CTS                       0x0038 0x0380 0x0000 0x4 0x0
 #define MX6SX_PAD_GPIO1_IO09__GPIO1_IO_9                          0x0038 0x0380 0x0000 0x5 0x0
 #define MX6SX_PAD_GPIO1_IO09__SRC_INT_BOOT                        0x0038 0x0380 0x0000 0x6 0x0
 #define MX6SX_PAD_GPIO1_IO09__OBSERVE_MUX_OUT_4                   0x0038 0x0380 0x0000 0x7 0x0
@@ -177,8 +177,8 @@
 #define MX6SX_PAD_CSI_DATA04__ESAI_TX1                            0x005C 0x03A4 0x0794 0x1 0x1
 #define MX6SX_PAD_CSI_DATA04__SPDIF_OUT                           0x005C 0x03A4 0x0000 0x2 0x0
 #define MX6SX_PAD_CSI_DATA04__KPP_COL_6                           0x005C 0x03A4 0x07CC 0x3 0x0
-#define MX6SX_PAD_CSI_DATA04__UART6_RX                            0x005C 0x03A4 0x0858 0x4 0x0
-#define MX6SX_PAD_CSI_DATA04__UART6_TX                            0x005C 0x03A4 0x0000 0x4 0x0
+#define MX6SX_PAD_CSI_DATA04__UART6_DCE_RX                        0x005C 0x03A4 0x0858 0x4 0x0
+#define MX6SX_PAD_CSI_DATA04__UART6_DTE_TX                        0x005C 0x03A4 0x0000 0x4 0x0
 #define MX6SX_PAD_CSI_DATA04__GPIO1_IO_18                         0x005C 0x03A4 0x0000 0x5 0x0
 #define MX6SX_PAD_CSI_DATA04__WEIM_DATA_19                        0x005C 0x03A4 0x0000 0x6 0x0
 #define MX6SX_PAD_CSI_DATA04__PWM5_OUT                            0x005C 0x03A4 0x0000 0x7 0x0
@@ -188,8 +188,8 @@
 #define MX6SX_PAD_CSI_DATA05__ESAI_TX4_RX1                        0x0060 0x03A8 0x07A0 0x1 0x1
 #define MX6SX_PAD_CSI_DATA05__SPDIF_IN                            0x0060 0x03A8 0x0824 0x2 0x1
 #define MX6SX_PAD_CSI_DATA05__KPP_ROW_6                           0x0060 0x03A8 0x07D8 0x3 0x0
-#define MX6SX_PAD_CSI_DATA05__UART6_RX                            0x0060 0x03A8 0x0858 0x4 0x1
-#define MX6SX_PAD_CSI_DATA05__UART6_TX                            0x0060 0x03A8 0x0000 0x4 0x0
+#define MX6SX_PAD_CSI_DATA05__UART6_DCE_TX                        0x0060 0x03A8 0x0000 0x4 0x0
+#define MX6SX_PAD_CSI_DATA05__UART6_DTE_RX                        0x0060 0x03A8 0x0858 0x4 0x1
 #define MX6SX_PAD_CSI_DATA05__GPIO1_IO_19                         0x0060 0x03A8 0x0000 0x5 0x0
 #define MX6SX_PAD_CSI_DATA05__WEIM_DATA_18                        0x0060 0x03A8 0x0000 0x6 0x0
 #define MX6SX_PAD_CSI_DATA05__PWM6_OUT                            0x0060 0x03A8 0x0000 0x7 0x0
@@ -199,7 +199,7 @@
 #define MX6SX_PAD_CSI_DATA06__ESAI_TX2_RX3                        0x0064 0x03AC 0x0798 0x1 0x1
 #define MX6SX_PAD_CSI_DATA06__I2C4_SCL                            0x0064 0x03AC 0x07C0 0x2 0x2
 #define MX6SX_PAD_CSI_DATA06__KPP_COL_7                           0x0064 0x03AC 0x07D0 0x3 0x0
-#define MX6SX_PAD_CSI_DATA06__UART6_RTS_B                         0x0064 0x03AC 0x0854 0x4 0x0
+#define MX6SX_PAD_CSI_DATA06__UART6_DCE_RTS                       0x0064 0x03AC 0x0854 0x4 0x0
 #define MX6SX_PAD_CSI_DATA06__GPIO1_IO_20                         0x0064 0x03AC 0x0000 0x5 0x0
 #define MX6SX_PAD_CSI_DATA06__WEIM_DATA_17                        0x0064 0x03AC 0x0000 0x6 0x0
 #define MX6SX_PAD_CSI_DATA06__DCIC2_OUT                           0x0064 0x03AC 0x0000 0x7 0x0
@@ -209,7 +209,7 @@
 #define MX6SX_PAD_CSI_DATA07__ESAI_TX3_RX2                        0x0068 0x03B0 0x079C 0x1 0x1
 #define MX6SX_PAD_CSI_DATA07__I2C4_SDA                            0x0068 0x03B0 0x07C4 0x2 0x2
 #define MX6SX_PAD_CSI_DATA07__KPP_ROW_7                           0x0068 0x03B0 0x07DC 0x3 0x0
-#define MX6SX_PAD_CSI_DATA07__UART6_CTS_B                         0x0068 0x03B0 0x0000 0x4 0x0
+#define MX6SX_PAD_CSI_DATA07__UART6_DCE_CTS                       0x0068 0x03B0 0x0000 0x4 0x0
 #define MX6SX_PAD_CSI_DATA07__GPIO1_IO_21                         0x0068 0x03B0 0x0000 0x5 0x0
 #define MX6SX_PAD_CSI_DATA07__WEIM_DATA_16                        0x0068 0x03B0 0x0000 0x6 0x0
 #define MX6SX_PAD_CSI_DATA07__DCIC1_OUT                           0x0068 0x03B0 0x0000 0x7 0x0
@@ -218,7 +218,7 @@
 #define MX6SX_PAD_CSI_HSYNC__CSI1_HSYNC                           0x006C 0x03B4 0x0700 0x0 0x0
 #define MX6SX_PAD_CSI_HSYNC__ESAI_TX0                             0x006C 0x03B4 0x0790 0x1 0x1
 #define MX6SX_PAD_CSI_HSYNC__AUDMUX_AUD6_TXD                      0x006C 0x03B4 0x0678 0x2 0x1
-#define MX6SX_PAD_CSI_HSYNC__UART4_RTS_B                          0x006C 0x03B4 0x0844 0x3 0x2
+#define MX6SX_PAD_CSI_HSYNC__UART4_DCE_RTS                        0x006C 0x03B4 0x0844 0x3 0x2
 #define MX6SX_PAD_CSI_HSYNC__MQS_LEFT                             0x006C 0x03B4 0x0000 0x4 0x0
 #define MX6SX_PAD_CSI_HSYNC__GPIO1_IO_22                          0x006C 0x03B4 0x0000 0x5 0x0
 #define MX6SX_PAD_CSI_HSYNC__WEIM_DATA_25                         0x006C 0x03B4 0x0000 0x6 0x0
@@ -228,8 +228,8 @@
 #define MX6SX_PAD_CSI_MCLK__CSI1_MCLK                             0x0070 0x03B8 0x0000 0x0 0x0
 #define MX6SX_PAD_CSI_MCLK__ESAI_TX_HF_CLK                        0x0070 0x03B8 0x0784 0x1 0x1
 #define MX6SX_PAD_CSI_MCLK__OSC32K_32K_OUT                        0x0070 0x03B8 0x0000 0x2 0x0
-#define MX6SX_PAD_CSI_MCLK__UART4_RX                              0x0070 0x03B8 0x0848 0x3 0x2
-#define MX6SX_PAD_CSI_MCLK__UART4_TX                              0x0070 0x03B8 0x0000 0x3 0x0
+#define MX6SX_PAD_CSI_MCLK__UART4_DCE_RX                          0x0070 0x03B8 0x0848 0x3 0x2
+#define MX6SX_PAD_CSI_MCLK__UART4_DTE_TX                          0x0070 0x03B8 0x0000 0x3 0x0
 #define MX6SX_PAD_CSI_MCLK__ANATOP_32K_OUT                        0x0070 0x03B8 0x0000 0x4 0x0
 #define MX6SX_PAD_CSI_MCLK__GPIO1_IO_23                           0x0070 0x03B8 0x0000 0x5 0x0
 #define MX6SX_PAD_CSI_MCLK__WEIM_DATA_26                          0x0070 0x03B8 0x0000 0x6 0x0
@@ -239,8 +239,8 @@
 #define MX6SX_PAD_CSI_PIXCLK__CSI1_PIXCLK                         0x0074 0x03BC 0x0704 0x0 0x0
 #define MX6SX_PAD_CSI_PIXCLK__ESAI_RX_HF_CLK                      0x0074 0x03BC 0x0780 0x1 0x1
 #define MX6SX_PAD_CSI_PIXCLK__AUDMUX_MCLK                         0x0074 0x03BC 0x0000 0x2 0x0
-#define MX6SX_PAD_CSI_PIXCLK__UART4_RX                            0x0074 0x03BC 0x0848 0x3 0x3
-#define MX6SX_PAD_CSI_PIXCLK__UART4_TX                            0x0074 0x03BC 0x0000 0x3 0x0
+#define MX6SX_PAD_CSI_PIXCLK__UART4_DCE_TX                        0x0074 0x03BC 0x0000 0x3 0x0
+#define MX6SX_PAD_CSI_PIXCLK__UART4_DTE_RX                        0x0074 0x03BC 0x0848 0x3 0x3
 #define MX6SX_PAD_CSI_PIXCLK__ANATOP_24M_OUT                      0x0074 0x03BC 0x0000 0x4 0x0
 #define MX6SX_PAD_CSI_PIXCLK__GPIO1_IO_24                         0x0074 0x03BC 0x0000 0x5 0x0
 #define MX6SX_PAD_CSI_PIXCLK__WEIM_DATA_27                        0x0074 0x03BC 0x0000 0x6 0x0
@@ -250,7 +250,7 @@
 #define MX6SX_PAD_CSI_VSYNC__CSI1_VSYNC                           0x0078 0x03C0 0x0708 0x0 0x0
 #define MX6SX_PAD_CSI_VSYNC__ESAI_TX5_RX0                         0x0078 0x03C0 0x07A4 0x1 0x1
 #define MX6SX_PAD_CSI_VSYNC__AUDMUX_AUD6_RXD                      0x0078 0x03C0 0x0674 0x2 0x1
-#define MX6SX_PAD_CSI_VSYNC__UART4_CTS_B                          0x0078 0x03C0 0x0000 0x3 0x0
+#define MX6SX_PAD_CSI_VSYNC__UART4_DCE_CTS                        0x0078 0x03C0 0x0000 0x3 0x0
 #define MX6SX_PAD_CSI_VSYNC__MQS_RIGHT                            0x0078 0x03C0 0x0000 0x4 0x0
 #define MX6SX_PAD_CSI_VSYNC__GPIO1_IO_25                          0x0078 0x03C0 0x0000 0x5 0x0
 #define MX6SX_PAD_CSI_VSYNC__WEIM_DATA_24                         0x0078 0x03C0 0x0000 0x6 0x0
@@ -330,8 +330,8 @@
 #define MX6SX_PAD_ENET2_COL__ENET2_COL                            0x0094 0x03DC 0x0000 0x0 0x0
 #define MX6SX_PAD_ENET2_COL__ENET1_MDC                            0x0094 0x03DC 0x0000 0x1 0x0
 #define MX6SX_PAD_ENET2_COL__AUDMUX_AUD4_RXC                      0x0094 0x03DC 0x064C 0x2 0x1
-#define MX6SX_PAD_ENET2_COL__UART1_RX                             0x0094 0x03DC 0x0830 0x3 0x2
-#define MX6SX_PAD_ENET2_COL__UART1_TX                             0x0094 0x03DC 0x0000 0x3 0x0
+#define MX6SX_PAD_ENET2_COL__UART1_DCE_RX                         0x0094 0x03DC 0x0830 0x3 0x2
+#define MX6SX_PAD_ENET2_COL__UART1_DTE_TX                         0x0094 0x03DC 0x0000 0x3 0x0
 #define MX6SX_PAD_ENET2_COL__SPDIF_IN                             0x0094 0x03DC 0x0824 0x4 0x3
 #define MX6SX_PAD_ENET2_COL__GPIO2_IO_6                           0x0094 0x03DC 0x0000 0x5 0x0
 #define MX6SX_PAD_ENET2_COL__ANATOP_OTG1_ID                       0x0094 0x03DC 0x0624 0x6 0x1
@@ -341,8 +341,8 @@
 #define MX6SX_PAD_ENET2_CRS__ENET2_CRS                            0x0098 0x03E0 0x0000 0x0 0x0
 #define MX6SX_PAD_ENET2_CRS__ENET1_MDIO                           0x0098 0x03E0 0x0764 0x1 0x2
 #define MX6SX_PAD_ENET2_CRS__AUDMUX_AUD4_RXFS                     0x0098 0x03E0 0x0650 0x2 0x1
-#define MX6SX_PAD_ENET2_CRS__UART1_RX                             0x0098 0x03E0 0x0830 0x3 0x3
-#define MX6SX_PAD_ENET2_CRS__UART1_TX                             0x0098 0x03E0 0x0000 0x3 0x0
+#define MX6SX_PAD_ENET2_CRS__UART1_DCE_TX                         0x0098 0x03E0 0x0000 0x3 0x0
+#define MX6SX_PAD_ENET2_CRS__UART1_DTE_RX                         0x0098 0x03E0 0x0830 0x3 0x3
 #define MX6SX_PAD_ENET2_CRS__MLB_SIG                              0x0098 0x03E0 0x07F0 0x4 0x1
 #define MX6SX_PAD_ENET2_CRS__GPIO2_IO_7                           0x0098 0x03E0 0x0000 0x5 0x0
 #define MX6SX_PAD_ENET2_CRS__ANATOP_OTG2_ID                       0x0098 0x03E0 0x0628 0x6 0x1
@@ -352,7 +352,7 @@
 #define MX6SX_PAD_ENET2_RX_CLK__ENET2_RX_CLK                      0x009C 0x03E4 0x0774 0x0 0x0
 #define MX6SX_PAD_ENET2_RX_CLK__ENET2_REF_CLK_25M                 0x009C 0x03E4 0x0000 0x1 0x0
 #define MX6SX_PAD_ENET2_RX_CLK__I2C3_SCL                          0x009C 0x03E4 0x07B8 0x2 0x1
-#define MX6SX_PAD_ENET2_RX_CLK__UART1_RTS_B                       0x009C 0x03E4 0x082C 0x3 0x2
+#define MX6SX_PAD_ENET2_RX_CLK__UART1_DCE_RTS                     0x009C 0x03E4 0x082C 0x3 0x2
 #define MX6SX_PAD_ENET2_RX_CLK__MLB_DATA                          0x009C 0x03E4 0x07EC 0x4 0x1
 #define MX6SX_PAD_ENET2_RX_CLK__GPIO2_IO_8                        0x009C 0x03E4 0x0000 0x5 0x0
 #define MX6SX_PAD_ENET2_RX_CLK__USB_OTG2_OC                       0x009C 0x03E4 0x085C 0x6 0x1
@@ -362,7 +362,7 @@
 #define MX6SX_PAD_ENET2_TX_CLK__ENET2_TX_CLK                      0x00A0 0x03E8 0x0000 0x0 0x0
 #define MX6SX_PAD_ENET2_TX_CLK__ENET2_REF_CLK2                    0x00A0 0x03E8 0x076C 0x1 0x1
 #define MX6SX_PAD_ENET2_TX_CLK__I2C3_SDA                          0x00A0 0x03E8 0x07BC 0x2 0x1
-#define MX6SX_PAD_ENET2_TX_CLK__UART1_CTS_B                       0x00A0 0x03E8 0x0000 0x3 0x0
+#define MX6SX_PAD_ENET2_TX_CLK__UART1_DCE_CTS                     0x00A0 0x03E8 0x0000 0x3 0x0
 #define MX6SX_PAD_ENET2_TX_CLK__MLB_CLK                           0x00A0 0x03E8 0x07E8 0x4 0x1
 #define MX6SX_PAD_ENET2_TX_CLK__GPIO2_IO_9                        0x00A0 0x03E8 0x0000 0x5 0x0
 #define MX6SX_PAD_ENET2_TX_CLK__USB_OTG2_PWR                      0x00A0 0x03E8 0x0000 0x6 0x0
@@ -371,7 +371,7 @@
 #define MX6SX_PAD_ENET2_TX_CLK__PCIE_CTRL_DEBUG_24                0x00A0 0x03E8 0x0000 0x9 0x0
 #define MX6SX_PAD_KEY_COL0__KPP_COL_0                             0x00A4 0x03EC 0x0000 0x0 0x0
 #define MX6SX_PAD_KEY_COL0__USDHC3_CD_B                           0x00A4 0x03EC 0x0000 0x1 0x0
-#define MX6SX_PAD_KEY_COL0__UART6_RTS_B                           0x00A4 0x03EC 0x0854 0x2 0x2
+#define MX6SX_PAD_KEY_COL0__UART6_DCE_RTS                         0x00A4 0x03EC 0x0854 0x2 0x2
 #define MX6SX_PAD_KEY_COL0__ECSPI1_SCLK                           0x00A4 0x03EC 0x0710 0x3 0x0
 #define MX6SX_PAD_KEY_COL0__AUDMUX_AUD5_TXC                       0x00A4 0x03EC 0x066C 0x4 0x0
 #define MX6SX_PAD_KEY_COL0__GPIO2_IO_10                           0x00A4 0x03EC 0x0000 0x5 0x0
@@ -380,8 +380,8 @@
 #define MX6SX_PAD_KEY_COL0__VADC_DATA_0                           0x00A4 0x03EC 0x0000 0x8 0x0
 #define MX6SX_PAD_KEY_COL1__KPP_COL_1                             0x00A8 0x03F0 0x0000 0x0 0x0
 #define MX6SX_PAD_KEY_COL1__USDHC3_RESET_B                        0x00A8 0x03F0 0x0000 0x1 0x0
-#define MX6SX_PAD_KEY_COL1__UART6_RX                              0x00A8 0x03F0 0x0858 0x2 0x2
-#define MX6SX_PAD_KEY_COL1__UART6_TX                              0x00A8 0x03F0 0x0000 0x2 0x0
+#define MX6SX_PAD_KEY_COL1__UART6_DCE_TX                          0x00A8 0x03F0 0x0000 0x2 0x0
+#define MX6SX_PAD_KEY_COL1__UART6_DTE_RX                          0x00A8 0x03F0 0x0858 0x2 0x2
 #define MX6SX_PAD_KEY_COL1__ECSPI1_MISO                           0x00A8 0x03F0 0x0714 0x3 0x0
 #define MX6SX_PAD_KEY_COL1__AUDMUX_AUD5_TXFS                      0x00A8 0x03F0 0x0670 0x4 0x0
 #define MX6SX_PAD_KEY_COL1__GPIO2_IO_11                           0x00A8 0x03F0 0x0000 0x5 0x0
@@ -389,7 +389,7 @@
 #define MX6SX_PAD_KEY_COL1__SAI2_TX_SYNC                          0x00A8 0x03F0 0x0818 0x7 0x0
 #define MX6SX_PAD_KEY_COL2__KPP_COL_2                             0x00AC 0x03F4 0x0000 0x0 0x0
 #define MX6SX_PAD_KEY_COL2__USDHC4_CD_B                           0x00AC 0x03F4 0x0874 0x1 0x1
-#define MX6SX_PAD_KEY_COL2__UART5_RTS_B                           0x00AC 0x03F4 0x084C 0x2 0x2
+#define MX6SX_PAD_KEY_COL2__UART5_DCE_RTS                         0x00AC 0x03F4 0x084C 0x2 0x2
 #define MX6SX_PAD_KEY_COL2__CAN1_TX                               0x00AC 0x03F4 0x0000 0x3 0x0
 #define MX6SX_PAD_KEY_COL2__CANFD_TX1                             0x00AC 0x03F4 0x0000 0x4 0x0
 #define MX6SX_PAD_KEY_COL2__GPIO2_IO_12                           0x00AC 0x03F4 0x0000 0x5 0x0
@@ -397,8 +397,8 @@
 #define MX6SX_PAD_KEY_COL2__ECSPI1_RDY                            0x00AC 0x03F4 0x0000 0x7 0x0
 #define MX6SX_PAD_KEY_COL3__KPP_COL_3                             0x00B0 0x03F8 0x0000 0x0 0x0
 #define MX6SX_PAD_KEY_COL3__USDHC4_LCTL                           0x00B0 0x03F8 0x0000 0x1 0x0
-#define MX6SX_PAD_KEY_COL3__UART5_RX                              0x00B0 0x03F8 0x0850 0x2 0x2
-#define MX6SX_PAD_KEY_COL3__UART5_TX                              0x00B0 0x03F8 0x0000 0x2 0x0
+#define MX6SX_PAD_KEY_COL3__UART5_DCE_TX                          0x00B0 0x03F8 0x0000 0x2 0x0
+#define MX6SX_PAD_KEY_COL3__UART5_DTE_RX                          0x00B0 0x03F8 0x0850 0x2 0x2
 #define MX6SX_PAD_KEY_COL3__CAN2_TX                               0x00B0 0x03F8 0x0000 0x3 0x0
 #define MX6SX_PAD_KEY_COL3__CANFD_TX2                             0x00B0 0x03F8 0x0000 0x4 0x0
 #define MX6SX_PAD_KEY_COL3__GPIO2_IO_13                           0x00B0 0x03F8 0x0000 0x5 0x0
@@ -414,7 +414,7 @@
 #define MX6SX_PAD_KEY_COL4__SAI2_RX_BCLK                          0x00B4 0x03FC 0x0808 0x7 0x0
 #define MX6SX_PAD_KEY_ROW0__KPP_ROW_0                             0x00B8 0x0400 0x0000 0x0 0x0
 #define MX6SX_PAD_KEY_ROW0__USDHC3_WP                             0x00B8 0x0400 0x0000 0x1 0x0
-#define MX6SX_PAD_KEY_ROW0__UART6_CTS_B                           0x00B8 0x0400 0x0000 0x2 0x0
+#define MX6SX_PAD_KEY_ROW0__UART6_DCE_CTS                         0x00B8 0x0400 0x0000 0x2 0x0
 #define MX6SX_PAD_KEY_ROW0__ECSPI1_MOSI                           0x00B8 0x0400 0x0718 0x3 0x0
 #define MX6SX_PAD_KEY_ROW0__AUDMUX_AUD5_TXD                       0x00B8 0x0400 0x0660 0x4 0x0
 #define MX6SX_PAD_KEY_ROW0__GPIO2_IO_15                           0x00B8 0x0400 0x0000 0x5 0x0
@@ -423,8 +423,8 @@
 #define MX6SX_PAD_KEY_ROW0__GPU_IDLE                              0x00B8 0x0400 0x0000 0x8 0x0
 #define MX6SX_PAD_KEY_ROW1__KPP_ROW_1                             0x00BC 0x0404 0x0000 0x0 0x0
 #define MX6SX_PAD_KEY_ROW1__USDHC4_VSELECT                        0x00BC 0x0404 0x0000 0x1 0x0
-#define MX6SX_PAD_KEY_ROW1__UART6_RX                              0x00BC 0x0404 0x0858 0x2 0x3
-#define MX6SX_PAD_KEY_ROW1__UART6_TX                              0x00BC 0x0404 0x0000 0x2 0x0
+#define MX6SX_PAD_KEY_ROW1__UART6_DCE_RX                          0x00BC 0x0404 0x0858 0x2 0x3
+#define MX6SX_PAD_KEY_ROW1__UART6_DTE_TX                          0x00BC 0x0404 0x0000 0x2 0x0
 #define MX6SX_PAD_KEY_ROW1__ECSPI1_SS0                            0x00BC 0x0404 0x071C 0x3 0x0
 #define MX6SX_PAD_KEY_ROW1__AUDMUX_AUD5_RXD                       0x00BC 0x0404 0x065C 0x4 0x0
 #define MX6SX_PAD_KEY_ROW1__GPIO2_IO_16                           0x00BC 0x0404 0x0000 0x5 0x0
@@ -433,7 +433,7 @@
 #define MX6SX_PAD_KEY_ROW1__M4_NMI                                0x00BC 0x0404 0x0000 0x8 0x0
 #define MX6SX_PAD_KEY_ROW2__KPP_ROW_2                             0x00C0 0x0408 0x0000 0x0 0x0
 #define MX6SX_PAD_KEY_ROW2__USDHC4_WP                             0x00C0 0x0408 0x0878 0x1 0x1
-#define MX6SX_PAD_KEY_ROW2__UART5_CTS_B                           0x00C0 0x0408 0x0000 0x2 0x0
+#define MX6SX_PAD_KEY_ROW2__UART5_DCE_CTS                         0x00C0 0x0408 0x0000 0x2 0x0
 #define MX6SX_PAD_KEY_ROW2__CAN1_RX                               0x00C0 0x0408 0x068C 0x3 0x1
 #define MX6SX_PAD_KEY_ROW2__CANFD_RX1                             0x00C0 0x0408 0x0694 0x4 0x1
 #define MX6SX_PAD_KEY_ROW2__GPIO2_IO_17                           0x00C0 0x0408 0x0000 0x5 0x0
@@ -441,8 +441,8 @@
 #define MX6SX_PAD_KEY_ROW2__ECSPI1_SS3                            0x00C0 0x0408 0x0000 0x7 0x0
 #define MX6SX_PAD_KEY_ROW3__KPP_ROW_3                             0x00C4 0x040C 0x0000 0x0 0x0
 #define MX6SX_PAD_KEY_ROW3__USDHC3_LCTL                           0x00C4 0x040C 0x0000 0x1 0x0
-#define MX6SX_PAD_KEY_ROW3__UART5_RX                              0x00C4 0x040C 0x0850 0x2 0x3
-#define MX6SX_PAD_KEY_ROW3__UART5_TX                              0x00C4 0x040C 0x0000 0x2 0x0
+#define MX6SX_PAD_KEY_ROW3__UART5_DCE_RX                          0x00C4 0x040C 0x0850 0x2 0x3
+#define MX6SX_PAD_KEY_ROW3__UART5_DTE_TX                          0x00C4 0x040C 0x0000 0x2 0x0
 #define MX6SX_PAD_KEY_ROW3__CAN2_RX                               0x00C4 0x040C 0x0690 0x3 0x1
 #define MX6SX_PAD_KEY_ROW3__CANFD_RX2                             0x00C4 0x040C 0x0698 0x4 0x1
 #define MX6SX_PAD_KEY_ROW3__GPIO2_IO_18                           0x00C4 0x040C 0x0000 0x5 0x0
@@ -815,7 +815,7 @@
 #define MX6SX_PAD_NAND_DATA04__RAWNAND_DATA04                     0x0160 0x04A8 0x0000 0x0 0x0
 #define MX6SX_PAD_NAND_DATA04__USDHC2_DATA4                       0x0160 0x04A8 0x0000 0x1 0x0
 #define MX6SX_PAD_NAND_DATA04__QSPI2_B_SS1_B                      0x0160 0x04A8 0x0000 0x2 0x0
-#define MX6SX_PAD_NAND_DATA04__UART3_RTS_B                        0x0160 0x04A8 0x083C 0x3 0x0
+#define MX6SX_PAD_NAND_DATA04__UART3_DCE_RTS                      0x0160 0x04A8 0x083C 0x3 0x0
 #define MX6SX_PAD_NAND_DATA04__AUDMUX_AUD4_RXFS                   0x0160 0x04A8 0x0650 0x4 0x0
 #define MX6SX_PAD_NAND_DATA04__GPIO4_IO_8                         0x0160 0x04A8 0x0000 0x5 0x0
 #define MX6SX_PAD_NAND_DATA04__WEIM_AD_4                          0x0160 0x04A8 0x0000 0x6 0x0
@@ -825,7 +825,7 @@
 #define MX6SX_PAD_NAND_DATA05__RAWNAND_DATA05                     0x0164 0x04AC 0x0000 0x0 0x0
 #define MX6SX_PAD_NAND_DATA05__USDHC2_DATA5                       0x0164 0x04AC 0x0000 0x1 0x0
 #define MX6SX_PAD_NAND_DATA05__QSPI2_B_DQS                        0x0164 0x04AC 0x0000 0x2 0x0
-#define MX6SX_PAD_NAND_DATA05__UART3_CTS_B                        0x0164 0x04AC 0x0000 0x3 0x0
+#define MX6SX_PAD_NAND_DATA05__UART3_DCE_CTS                      0x0164 0x04AC 0x0000 0x3 0x0
 #define MX6SX_PAD_NAND_DATA05__AUDMUX_AUD4_RXC                    0x0164 0x04AC 0x064C 0x4 0x0
 #define MX6SX_PAD_NAND_DATA05__GPIO4_IO_9                         0x0164 0x04AC 0x0000 0x5 0x0
 #define MX6SX_PAD_NAND_DATA05__WEIM_AD_5                          0x0164 0x04AC 0x0000 0x6 0x0
@@ -835,8 +835,8 @@
 #define MX6SX_PAD_NAND_DATA06__RAWNAND_DATA06                     0x0168 0x04B0 0x0000 0x0 0x0
 #define MX6SX_PAD_NAND_DATA06__USDHC2_DATA6                       0x0168 0x04B0 0x0000 0x1 0x0
 #define MX6SX_PAD_NAND_DATA06__QSPI2_A_SS1_B                      0x0168 0x04B0 0x0000 0x2 0x0
-#define MX6SX_PAD_NAND_DATA06__UART3_RX                           0x0168 0x04B0 0x0840 0x3 0x0
-#define MX6SX_PAD_NAND_DATA06__UART3_TX                           0x0168 0x04B0 0x0000 0x3 0x0
+#define MX6SX_PAD_NAND_DATA06__UART3_DCE_RX                       0x0168 0x04B0 0x0840 0x3 0x0
+#define MX6SX_PAD_NAND_DATA06__UART3_DTE_TX                       0x0168 0x04B0 0x0000 0x3 0x0
 #define MX6SX_PAD_NAND_DATA06__PWM3_OUT                           0x0168 0x04B0 0x0000 0x4 0x0
 #define MX6SX_PAD_NAND_DATA06__GPIO4_IO_10                        0x0168 0x04B0 0x0000 0x5 0x0
 #define MX6SX_PAD_NAND_DATA06__WEIM_AD_6                          0x0168 0x04B0 0x0000 0x6 0x0
@@ -846,8 +846,8 @@
 #define MX6SX_PAD_NAND_DATA07__RAWNAND_DATA07                     0x016C 0x04B4 0x0000 0x0 0x0
 #define MX6SX_PAD_NAND_DATA07__USDHC2_DATA7                       0x016C 0x04B4 0x0000 0x1 0x0
 #define MX6SX_PAD_NAND_DATA07__QSPI2_A_DQS                        0x016C 0x04B4 0x0000 0x2 0x0
-#define MX6SX_PAD_NAND_DATA07__UART3_RX                           0x016C 0x04B4 0x0840 0x3 0x1
-#define MX6SX_PAD_NAND_DATA07__UART3_TX                           0x016C 0x04B4 0x0000 0x3 0x0
+#define MX6SX_PAD_NAND_DATA07__UART3_DCE_TX                       0x016C 0x04B4 0x0000 0x3 0x0
+#define MX6SX_PAD_NAND_DATA07__UART3_DTE_RX                       0x016C 0x04B4 0x0840 0x3 0x1
 #define MX6SX_PAD_NAND_DATA07__PWM4_OUT                           0x016C 0x04B4 0x0000 0x4 0x0
 #define MX6SX_PAD_NAND_DATA07__GPIO4_IO_11                        0x016C 0x04B4 0x0000 0x5 0x0
 #define MX6SX_PAD_NAND_DATA07__WEIM_AD_7                          0x016C 0x04B4 0x0000 0x6 0x0
@@ -967,7 +967,7 @@
 #define MX6SX_PAD_QSPI1A_SS1_B__SIM_M_HADDR_12                    0x019C 0x04E4 0x0000 0x7 0x0
 #define MX6SX_PAD_QSPI1A_SS1_B__SDMA_DEBUG_PC_3                   0x019C 0x04E4 0x0000 0x9 0x0
 #define MX6SX_PAD_QSPI1B_DATA0__QSPI1_B_DATA_0                    0x01A0 0x04E8 0x0000 0x0 0x0
-#define MX6SX_PAD_QSPI1B_DATA0__UART3_CTS_B                       0x01A0 0x04E8 0x0000 0x1 0x0
+#define MX6SX_PAD_QSPI1B_DATA0__UART3_DCE_CTS                     0x01A0 0x04E8 0x0000 0x1 0x0
 #define MX6SX_PAD_QSPI1B_DATA0__ECSPI3_MOSI                       0x01A0 0x04E8 0x0738 0x2 0x1
 #define MX6SX_PAD_QSPI1B_DATA0__ESAI_RX_FS                        0x01A0 0x04E8 0x0778 0x3 0x2
 #define MX6SX_PAD_QSPI1B_DATA0__CSI1_DATA_22                      0x01A0 0x04E8 0x06F4 0x4 0x1
@@ -975,7 +975,7 @@
 #define MX6SX_PAD_QSPI1B_DATA0__WEIM_DATA_14                      0x01A0 0x04E8 0x0000 0x6 0x0
 #define MX6SX_PAD_QSPI1B_DATA0__SIM_M_HADDR_9                     0x01A0 0x04E8 0x0000 0x7 0x0
 #define MX6SX_PAD_QSPI1B_DATA1__QSPI1_B_DATA_1                    0x01A4 0x04EC 0x0000 0x0 0x0
-#define MX6SX_PAD_QSPI1B_DATA1__UART3_RTS_B                       0x01A4 0x04EC 0x083C 0x1 0x5
+#define MX6SX_PAD_QSPI1B_DATA1__UART3_DCE_RTS                     0x01A4 0x04EC 0x083C 0x1 0x5
 #define MX6SX_PAD_QSPI1B_DATA1__ECSPI3_MISO                       0x01A4 0x04EC 0x0734 0x2 0x1
 #define MX6SX_PAD_QSPI1B_DATA1__ESAI_RX_CLK                       0x01A4 0x04EC 0x0788 0x3 0x2
 #define MX6SX_PAD_QSPI1B_DATA1__CSI1_DATA_21                      0x01A4 0x04EC 0x06F0 0x4 0x1
@@ -1007,8 +1007,8 @@
 #define MX6SX_PAD_QSPI1B_DQS__WEIM_DATA_15                        0x01B0 0x04F8 0x0000 0x6 0x0
 #define MX6SX_PAD_QSPI1B_DQS__SIM_M_HADDR_15                      0x01B0 0x04F8 0x0000 0x7 0x0
 #define MX6SX_PAD_QSPI1B_SCLK__QSPI1_B_SCLK                       0x01B4 0x04FC 0x0000 0x0 0x0
-#define MX6SX_PAD_QSPI1B_SCLK__UART3_RX                           0x01B4 0x04FC 0x0840 0x1 0x4
-#define MX6SX_PAD_QSPI1B_SCLK__UART3_TX                           0x01B4 0x04FC 0x0000 0x0 0x0
+#define MX6SX_PAD_QSPI1B_SCLK__UART3_DCE_RX                       0x01B4 0x04FC 0x0840 0x1 0x4
+#define MX6SX_PAD_QSPI1B_SCLK__UART3_DTE_TX                       0x01B4 0x04FC 0x0000 0x0 0x0
 #define MX6SX_PAD_QSPI1B_SCLK__ECSPI3_SCLK                        0x01B4 0x04FC 0x0730 0x2 0x1
 #define MX6SX_PAD_QSPI1B_SCLK__ESAI_RX_HF_CLK                     0x01B4 0x04FC 0x0780 0x3 0x2
 #define MX6SX_PAD_QSPI1B_SCLK__CSI1_DATA_16                       0x01B4 0x04FC 0x06DC 0x4 0x1
@@ -1016,8 +1016,8 @@
 #define MX6SX_PAD_QSPI1B_SCLK__WEIM_DATA_8                        0x01B4 0x04FC 0x0000 0x6 0x0
 #define MX6SX_PAD_QSPI1B_SCLK__SIM_M_HADDR_11                     0x01B4 0x04FC 0x0000 0x7 0x0
 #define MX6SX_PAD_QSPI1B_SS0_B__QSPI1_B_SS0_B                     0x01B8 0x0500 0x0000 0x0 0x0
-#define MX6SX_PAD_QSPI1B_SS0_B__UART3_RX                          0x01B8 0x0500 0x0840 0x1 0x5
-#define MX6SX_PAD_QSPI1B_SS0_B__UART3_TX                          0x01B8 0x0500 0x0000 0x1 0x0
+#define MX6SX_PAD_QSPI1B_SS0_B__UART3_DTE_RX                      0x01B8 0x0500 0x0840 0x1 0x5
+#define MX6SX_PAD_QSPI1B_SS0_B__UART3_DCE_TX                      0x01B8 0x0500 0x0000 0x1 0x0
 #define MX6SX_PAD_QSPI1B_SS0_B__ECSPI3_SS0                        0x01B8 0x0500 0x073C 0x2 0x1
 #define MX6SX_PAD_QSPI1B_SS0_B__ESAI_TX_HF_CLK                    0x01B8 0x0500 0x0784 0x3 0x3
 #define MX6SX_PAD_QSPI1B_SS0_B__CSI1_DATA_17                      0x01B8 0x0500 0x06E0 0x4 0x1
@@ -1224,8 +1224,8 @@
 #define MX6SX_PAD_SD1_DATA0__AUDMUX_AUD5_RXD                      0x0228 0x0570 0x065C 0x1 0x1
 #define MX6SX_PAD_SD1_DATA0__CAAM_WRAPPER_RNG_OSC_OBS             0x0228 0x0570 0x0000 0x2 0x0
 #define MX6SX_PAD_SD1_DATA0__GPT_CAPTURE1                         0x0228 0x0570 0x0000 0x3 0x0
-#define MX6SX_PAD_SD1_DATA0__UART2_RX                             0x0228 0x0570 0x0838 0x4 0x2
-#define MX6SX_PAD_SD1_DATA0__UART2_TX                             0x0228 0x0570 0x0000 0x4 0x0
+#define MX6SX_PAD_SD1_DATA0__UART2_DCE_RX                         0x0228 0x0570 0x0838 0x4 0x2
+#define MX6SX_PAD_SD1_DATA0__UART2_DTE_TX                         0x0228 0x0570 0x0000 0x4 0x0
 #define MX6SX_PAD_SD1_DATA0__GPIO6_IO_2                           0x0228 0x0570 0x0000 0x5 0x0
 #define MX6SX_PAD_SD1_DATA0__ENET1_1588_EVENT1_IN                 0x0228 0x0570 0x0000 0x6 0x0
 #define MX6SX_PAD_SD1_DATA0__CCM_OUT2                             0x0228 0x0570 0x0000 0x7 0x0
@@ -1235,8 +1235,8 @@
 #define MX6SX_PAD_SD1_DATA1__AUDMUX_AUD5_TXC                      0x022C 0x0574 0x066C 0x1 0x1
 #define MX6SX_PAD_SD1_DATA1__PWM4_OUT                             0x022C 0x0574 0x0000 0x2 0x0
 #define MX6SX_PAD_SD1_DATA1__GPT_CAPTURE2                         0x022C 0x0574 0x0000 0x3 0x0
-#define MX6SX_PAD_SD1_DATA1__UART2_RX                             0x022C 0x0574 0x0838 0x4 0x3
-#define MX6SX_PAD_SD1_DATA1__UART2_TX                             0x022C 0x0574 0x0000 0x4 0x0
+#define MX6SX_PAD_SD1_DATA1__UART2_DCE_TX                         0x022C 0x0574 0x0000 0x4 0x0
+#define MX6SX_PAD_SD1_DATA1__UART2_DTE_RX                         0x022C 0x0574 0x0838 0x4 0x3
 #define MX6SX_PAD_SD1_DATA1__GPIO6_IO_3                           0x022C 0x0574 0x0000 0x5 0x0
 #define MX6SX_PAD_SD1_DATA1__ENET1_1588_EVENT1_OUT                0x022C 0x0574 0x0000 0x6 0x0
 #define MX6SX_PAD_SD1_DATA1__CCM_CLKO2                            0x022C 0x0574 0x0000 0x7 0x0
@@ -1246,7 +1246,7 @@
 #define MX6SX_PAD_SD1_DATA2__AUDMUX_AUD5_TXFS                     0x0230 0x0578 0x0670 0x1 0x1
 #define MX6SX_PAD_SD1_DATA2__PWM3_OUT                             0x0230 0x0578 0x0000 0x2 0x0
 #define MX6SX_PAD_SD1_DATA2__GPT_COMPARE2                         0x0230 0x0578 0x0000 0x3 0x0
-#define MX6SX_PAD_SD1_DATA2__UART2_CTS_B                          0x0230 0x0578 0x0000 0x4 0x0
+#define MX6SX_PAD_SD1_DATA2__UART2_DCE_CTS                        0x0230 0x0578 0x0000 0x4 0x0
 #define MX6SX_PAD_SD1_DATA2__GPIO6_IO_4                           0x0230 0x0578 0x0000 0x5 0x0
 #define MX6SX_PAD_SD1_DATA2__ECSPI4_RDY                           0x0230 0x0578 0x0000 0x6 0x0
 #define MX6SX_PAD_SD1_DATA2__CCM_OUT0                             0x0230 0x0578 0x0000 0x7 0x0
@@ -1255,7 +1255,7 @@
 #define MX6SX_PAD_SD1_DATA3__AUDMUX_AUD5_TXD                      0x0234 0x057C 0x0660 0x1 0x1
 #define MX6SX_PAD_SD1_DATA3__AUDMUX_AUD5_RXD                      0x0234 0x057C 0x065C 0x2 0x2
 #define MX6SX_PAD_SD1_DATA3__GPT_COMPARE3                         0x0234 0x057C 0x0000 0x3 0x0
-#define MX6SX_PAD_SD1_DATA3__UART2_RTS_B                          0x0234 0x057C 0x0834 0x4 0x3
+#define MX6SX_PAD_SD1_DATA3__UART2_DCE_RTS                        0x0234 0x057C 0x0834 0x4 0x3
 #define MX6SX_PAD_SD1_DATA3__GPIO6_IO_5                           0x0234 0x057C 0x0000 0x5 0x0
 #define MX6SX_PAD_SD1_DATA3__ECSPI4_SS1                           0x0234 0x057C 0x0000 0x6 0x0
 #define MX6SX_PAD_SD1_DATA3__CCM_PMIC_RDY                         0x0234 0x057C 0x069C 0x7 0x2
@@ -1287,8 +1287,8 @@
 #define MX6SX_PAD_SD2_DATA0__I2C4_SDA                             0x0240 0x0588 0x07C4 0x4 0x3
 #define MX6SX_PAD_SD2_DATA0__GPIO6_IO_8                           0x0240 0x0588 0x0000 0x5 0x0
 #define MX6SX_PAD_SD2_DATA0__ECSPI4_SS3                           0x0240 0x0588 0x0000 0x6 0x0
-#define MX6SX_PAD_SD2_DATA0__UART4_RX                             0x0240 0x0588 0x0848 0x7 0x4
-#define MX6SX_PAD_SD2_DATA0__UART4_TX                             0x0240 0x0588 0x0000 0x7 0x0
+#define MX6SX_PAD_SD2_DATA0__UART4_DCE_RX                         0x0240 0x0588 0x0848 0x7 0x4
+#define MX6SX_PAD_SD2_DATA0__UART4_DTE_TX                         0x0240 0x0588 0x0000 0x7 0x0
 #define MX6SX_PAD_SD2_DATA0__VADC_CLAMP_CURRENT_0                 0x0240 0x0588 0x0000 0x8 0x0
 #define MX6SX_PAD_SD2_DATA0__MMDC_DEBUG_50                        0x0240 0x0588 0x0000 0x9 0x0
 #define MX6SX_PAD_SD2_DATA1__USDHC2_DATA1                         0x0244 0x058C 0x0000 0x0 0x0
@@ -1298,8 +1298,8 @@
 #define MX6SX_PAD_SD2_DATA1__I2C4_SCL                             0x0244 0x058C 0x07C0 0x4 0x3
 #define MX6SX_PAD_SD2_DATA1__GPIO6_IO_9                           0x0244 0x058C 0x0000 0x5 0x0
 #define MX6SX_PAD_SD2_DATA1__ECSPI4_SS2                           0x0244 0x058C 0x0000 0x6 0x0
-#define MX6SX_PAD_SD2_DATA1__UART4_RX                             0x0244 0x058C 0x0848 0x7 0x5
-#define MX6SX_PAD_SD2_DATA1__UART4_TX                             0x0244 0x058C 0x0000 0x7 0x0
+#define MX6SX_PAD_SD2_DATA1__UART4_DCE_TX                         0x0244 0x058C 0x0000 0x7 0x0
+#define MX6SX_PAD_SD2_DATA1__UART4_DTE_RX                         0x0244 0x058C 0x0848 0x7 0x5
 #define MX6SX_PAD_SD2_DATA1__VADC_CLAMP_CURRENT_1                 0x0244 0x058C 0x0000 0x8 0x0
 #define MX6SX_PAD_SD2_DATA1__MMDC_DEBUG_49                        0x0244 0x058C 0x0000 0x9 0x0
 #define MX6SX_PAD_SD2_DATA2__USDHC2_DATA2                         0x0248 0x0590 0x0000 0x0 0x0
@@ -1309,8 +1309,8 @@
 #define MX6SX_PAD_SD2_DATA2__SDMA_EXT_EVENT_0                     0x0248 0x0590 0x081C 0x4 0x2
 #define MX6SX_PAD_SD2_DATA2__GPIO6_IO_10                          0x0248 0x0590 0x0000 0x5 0x0
 #define MX6SX_PAD_SD2_DATA2__SPDIF_OUT                            0x0248 0x0590 0x0000 0x6 0x0
-#define MX6SX_PAD_SD2_DATA2__UART6_RX                             0x0248 0x0590 0x0858 0x7 0x4
-#define MX6SX_PAD_SD2_DATA2__UART6_TX                             0x0248 0x0590 0x0000 0x7 0x0
+#define MX6SX_PAD_SD2_DATA2__UART6_DCE_RX                         0x0248 0x0590 0x0858 0x7 0x4
+#define MX6SX_PAD_SD2_DATA2__UART6_DTE_TX                         0x0248 0x0590 0x0000 0x7 0x0
 #define MX6SX_PAD_SD2_DATA2__VADC_CLAMP_CURRENT_2                 0x0248 0x0590 0x0000 0x8 0x0
 #define MX6SX_PAD_SD2_DATA2__MMDC_DEBUG_32                        0x0248 0x0590 0x0000 0x9 0x0
 #define MX6SX_PAD_SD2_DATA3__USDHC2_DATA3                         0x024C 0x0594 0x0000 0x0 0x0
@@ -1320,12 +1320,12 @@
 #define MX6SX_PAD_SD2_DATA3__MLB_DATA                             0x024C 0x0594 0x07EC 0x4 0x2
 #define MX6SX_PAD_SD2_DATA3__GPIO6_IO_11                          0x024C 0x0594 0x0000 0x5 0x0
 #define MX6SX_PAD_SD2_DATA3__SPDIF_IN                             0x024C 0x0594 0x0824 0x6 0x4
-#define MX6SX_PAD_SD2_DATA3__UART6_RX                             0x024C 0x0594 0x0858 0x7 0x5
-#define MX6SX_PAD_SD2_DATA3__UART6_TX                             0x024C 0x0594 0x0000 0x7 0x0
+#define MX6SX_PAD_SD2_DATA3__UART6_DCE_TX                         0x024C 0x0594 0x0000 0x7 0x0
+#define MX6SX_PAD_SD2_DATA3__UART6_DTE_RX                         0x024C 0x0594 0x0858 0x7 0x5
 #define MX6SX_PAD_SD2_DATA3__VADC_CLAMP_CURRENT_3                 0x024C 0x0594 0x0000 0x8 0x0
 #define MX6SX_PAD_SD2_DATA3__MMDC_DEBUG_31                        0x024C 0x0594 0x0000 0x9 0x0
 #define MX6SX_PAD_SD3_CLK__USDHC3_CLK                             0x0250 0x0598 0x0000 0x0 0x0
-#define MX6SX_PAD_SD3_CLK__UART4_CTS_B                            0x0250 0x0598 0x0000 0x1 0x0
+#define MX6SX_PAD_SD3_CLK__UART4_DCE_CTS                          0x0250 0x0598 0x0000 0x1 0x0
 #define MX6SX_PAD_SD3_CLK__ECSPI4_SCLK                            0x0250 0x0598 0x0740 0x2 0x0
 #define MX6SX_PAD_SD3_CLK__AUDMUX_AUD6_RXFS                       0x0250 0x0598 0x0680 0x3 0x0
 #define MX6SX_PAD_SD3_CLK__LCDIF2_VSYNC                           0x0250 0x0598 0x0000 0x4 0x0
@@ -1334,8 +1334,8 @@
 #define MX6SX_PAD_SD3_CLK__TPSMP_HDATA_29                         0x0250 0x0598 0x0000 0x7 0x0
 #define MX6SX_PAD_SD3_CLK__SDMA_DEBUG_EVENT_CHANNEL_5             0x0250 0x0598 0x0000 0x9 0x0
 #define MX6SX_PAD_SD3_CMD__USDHC3_CMD                             0x0254 0x059C 0x0000 0x0 0x0
-#define MX6SX_PAD_SD3_CMD__UART4_RX                               0x0254 0x059C 0x0848 0x1 0x0
-#define MX6SX_PAD_SD3_CMD__UART4_TX                               0x0254 0x059C 0x0000 0x1 0x0
+#define MX6SX_PAD_SD3_CMD__UART4_DTE_RX                           0x0254 0x059C 0x0848 0x1 0x0
+#define MX6SX_PAD_SD3_CMD__UART4_DCE_TX                           0x0254 0x059C 0x0000 0x1 0x0
 #define MX6SX_PAD_SD3_CMD__ECSPI4_MOSI                            0x0254 0x059C 0x0748 0x2 0x0
 #define MX6SX_PAD_SD3_CMD__AUDMUX_AUD6_RXC                        0x0254 0x059C 0x067C 0x3 0x0
 #define MX6SX_PAD_SD3_CMD__LCDIF2_HSYNC                           0x0254 0x059C 0x07E4 0x4 0x1
@@ -1364,7 +1364,7 @@
 #define MX6SX_PAD_SD3_DATA1__GPU_DEBUG_1                          0x025C 0x05A4 0x0000 0x8 0x0
 #define MX6SX_PAD_SD3_DATA1__SDMA_DEBUG_EVT_CHN_LINES_1           0x025C 0x05A4 0x0000 0x9 0x0
 #define MX6SX_PAD_SD3_DATA2__USDHC3_DATA2                         0x0260 0x05A8 0x0000 0x0 0x0
-#define MX6SX_PAD_SD3_DATA2__UART4_RTS_B                          0x0260 0x05A8 0x0844 0x1 0x1
+#define MX6SX_PAD_SD3_DATA2__UART4_DCE_RTS                        0x0260 0x05A8 0x0844 0x1 0x1
 #define MX6SX_PAD_SD3_DATA2__ECSPI4_SS0                           0x0260 0x05A8 0x074C 0x2 0x0
 #define MX6SX_PAD_SD3_DATA2__AUDMUX_AUD6_TXFS                     0x0260 0x05A8 0x0688 0x3 0x0
 #define MX6SX_PAD_SD3_DATA2__LCDIF2_CLK                           0x0260 0x05A8 0x0000 0x4 0x0
@@ -1374,8 +1374,8 @@
 #define MX6SX_PAD_SD3_DATA2__GPU_DEBUG_2                          0x0260 0x05A8 0x0000 0x8 0x0
 #define MX6SX_PAD_SD3_DATA2__SDMA_DEBUG_EVENT_CHANNEL_2           0x0260 0x05A8 0x0000 0x9 0x0
 #define MX6SX_PAD_SD3_DATA3__USDHC3_DATA3                         0x0264 0x05AC 0x0000 0x0 0x0
-#define MX6SX_PAD_SD3_DATA3__UART4_RX                             0x0264 0x05AC 0x0848 0x1 0x1
-#define MX6SX_PAD_SD3_DATA3__UART4_TX                             0x0264 0x05AC 0x0000 0x1 0x0
+#define MX6SX_PAD_SD3_DATA3__UART4_DCE_RX                         0x0264 0x05AC 0x0848 0x1 0x1
+#define MX6SX_PAD_SD3_DATA3__UART4_DTE_TX                         0x0264 0x05AC 0x0000 0x1 0x0
 #define MX6SX_PAD_SD3_DATA3__ECSPI4_MISO                          0x0264 0x05AC 0x0744 0x2 0x0
 #define MX6SX_PAD_SD3_DATA3__AUDMUX_AUD6_TXD                      0x0264 0x05AC 0x0678 0x3 0x0
 #define MX6SX_PAD_SD3_DATA3__LCDIF2_ENABLE                        0x0264 0x05AC 0x0000 0x4 0x0
@@ -1387,8 +1387,8 @@
 #define MX6SX_PAD_SD3_DATA4__USDHC3_DATA4                         0x0268 0x05B0 0x0000 0x0 0x0
 #define MX6SX_PAD_SD3_DATA4__CAN2_RX                              0x0268 0x05B0 0x0690 0x1 0x0
 #define MX6SX_PAD_SD3_DATA4__CANFD_RX2                            0x0268 0x05B0 0x0698 0x2 0x0
-#define MX6SX_PAD_SD3_DATA4__UART3_RX                             0x0268 0x05B0 0x0840 0x3 0x2
-#define MX6SX_PAD_SD3_DATA4__UART3_TX                             0x0268 0x05B0 0x0000 0x3 0x0
+#define MX6SX_PAD_SD3_DATA4__UART3_DCE_RX                         0x0268 0x05B0 0x0840 0x3 0x2
+#define MX6SX_PAD_SD3_DATA4__UART3_DTE_TX                         0x0268 0x05B0 0x0000 0x3 0x0
 #define MX6SX_PAD_SD3_DATA4__LCDIF2_DATA_3                        0x0268 0x05B0 0x0000 0x4 0x0
 #define MX6SX_PAD_SD3_DATA4__GPIO7_IO_6                           0x0268 0x05B0 0x0000 0x5 0x0
 #define MX6SX_PAD_SD3_DATA4__ENET2_1588_EVENT0_IN                 0x0268 0x05B0 0x0000 0x6 0x0
@@ -1398,8 +1398,8 @@
 #define MX6SX_PAD_SD3_DATA5__USDHC3_DATA5                         0x026C 0x05B4 0x0000 0x0 0x0
 #define MX6SX_PAD_SD3_DATA5__CAN1_TX                              0x026C 0x05B4 0x0000 0x1 0x0
 #define MX6SX_PAD_SD3_DATA5__CANFD_TX1                            0x026C 0x05B4 0x0000 0x2 0x0
-#define MX6SX_PAD_SD3_DATA5__UART3_RX                             0x026C 0x05B4 0x0840 0x3 0x3
-#define MX6SX_PAD_SD3_DATA5__UART3_TX                             0x026C 0x05B4 0x0000 0x3 0x0
+#define MX6SX_PAD_SD3_DATA5__UART3_DCE_TX                         0x026C 0x05B4 0x0000 0x3 0x0
+#define MX6SX_PAD_SD3_DATA5__UART3_DTE_RX                         0x026C 0x05B4 0x0840 0x3 0x3
 #define MX6SX_PAD_SD3_DATA5__LCDIF2_DATA_2                        0x026C 0x05B4 0x0000 0x4 0x0
 #define MX6SX_PAD_SD3_DATA5__GPIO7_IO_7                           0x026C 0x05B4 0x0000 0x5 0x0
 #define MX6SX_PAD_SD3_DATA5__ENET2_1588_EVENT0_OUT                0x026C 0x05B4 0x0000 0x6 0x0
@@ -1409,7 +1409,7 @@
 #define MX6SX_PAD_SD3_DATA6__USDHC3_DATA6                         0x0270 0x05B8 0x0000 0x0 0x0
 #define MX6SX_PAD_SD3_DATA6__CAN2_TX                              0x0270 0x05B8 0x0000 0x1 0x0
 #define MX6SX_PAD_SD3_DATA6__CANFD_TX2                            0x0270 0x05B8 0x0000 0x2 0x0
-#define MX6SX_PAD_SD3_DATA6__UART3_RTS_B                          0x0270 0x05B8 0x083C 0x3 0x2
+#define MX6SX_PAD_SD3_DATA6__UART3_DCE_RTS                        0x0270 0x05B8 0x083C 0x3 0x2
 #define MX6SX_PAD_SD3_DATA6__LCDIF2_DATA_4                        0x0270 0x05B8 0x0000 0x4 0x0
 #define MX6SX_PAD_SD3_DATA6__GPIO7_IO_8                           0x0270 0x05B8 0x0000 0x5 0x0
 #define MX6SX_PAD_SD3_DATA6__ENET1_1588_EVENT0_OUT                0x0270 0x05B8 0x0000 0x6 0x0
@@ -1419,7 +1419,7 @@
 #define MX6SX_PAD_SD3_DATA7__USDHC3_DATA7                         0x0274 0x05BC 0x0000 0x0 0x0
 #define MX6SX_PAD_SD3_DATA7__CAN1_RX                              0x0274 0x05BC 0x068C 0x1 0x0
 #define MX6SX_PAD_SD3_DATA7__CANFD_RX1                            0x0274 0x05BC 0x0694 0x2 0x0
-#define MX6SX_PAD_SD3_DATA7__UART3_CTS_B                          0x0274 0x05BC 0x0000 0x3 0x0
+#define MX6SX_PAD_SD3_DATA7__UART3_DCE_CTS                        0x0274 0x05BC 0x0000 0x3 0x0
 #define MX6SX_PAD_SD3_DATA7__LCDIF2_DATA_5                        0x0274 0x05BC 0x0000 0x4 0x0
 #define MX6SX_PAD_SD3_DATA7__GPIO7_IO_9                           0x0274 0x05BC 0x0000 0x5 0x0
 #define MX6SX_PAD_SD3_DATA7__ENET1_1588_EVENT0_IN                 0x0274 0x05BC 0x0000 0x6 0x0
@@ -1488,8 +1488,8 @@
 #define MX6SX_PAD_SD4_DATA3__SDMA_DEBUG_MATCHED_DMBUS             0x028C 0x05D4 0x0000 0x9 0x0
 #define MX6SX_PAD_SD4_DATA4__USDHC4_DATA4                         0x0290 0x05D8 0x0000 0x0 0x0
 #define MX6SX_PAD_SD4_DATA4__RAWNAND_DATA09                       0x0290 0x05D8 0x0000 0x1 0x0
-#define MX6SX_PAD_SD4_DATA4__UART5_RX                             0x0290 0x05D8 0x0850 0x2 0x0
-#define MX6SX_PAD_SD4_DATA4__UART5_TX                             0x0290 0x05D8 0x0000 0x2 0x0
+#define MX6SX_PAD_SD4_DATA4__UART5_DCE_RX                         0x0290 0x05D8 0x0850 0x2 0x0
+#define MX6SX_PAD_SD4_DATA4__UART5_DTE_TX                         0x0290 0x05D8 0x0000 0x2 0x0
 #define MX6SX_PAD_SD4_DATA4__ECSPI3_SCLK                          0x0290 0x05D8 0x0730 0x3 0x0
 #define MX6SX_PAD_SD4_DATA4__LCDIF2_DATA_8                        0x0290 0x05D8 0x0000 0x4 0x0
 #define MX6SX_PAD_SD4_DATA4__GPIO6_IO_18                          0x0290 0x05D8 0x0000 0x5 0x0
@@ -1499,8 +1499,8 @@
 #define MX6SX_PAD_SD4_DATA4__SDMA_DEBUG_RTBUFFER_WRITE            0x0290 0x05D8 0x0000 0x9 0x0
 #define MX6SX_PAD_SD4_DATA5__USDHC4_DATA5                         0x0294 0x05DC 0x0000 0x0 0x0
 #define MX6SX_PAD_SD4_DATA5__RAWNAND_CE2_B                        0x0294 0x05DC 0x0000 0x1 0x0
-#define MX6SX_PAD_SD4_DATA5__UART5_RX                             0x0294 0x05DC 0x0850 0x2 0x1
-#define MX6SX_PAD_SD4_DATA5__UART5_TX                             0x0294 0x05DC 0x0000 0x2 0x0
+#define MX6SX_PAD_SD4_DATA5__UART5_DCE_TX                         0x0294 0x05DC 0x0000 0x2 0x0
+#define MX6SX_PAD_SD4_DATA5__UART5_DTE_RX                         0x0294 0x05DC 0x0850 0x2 0x1
 #define MX6SX_PAD_SD4_DATA5__ECSPI3_MOSI                          0x0294 0x05DC 0x0738 0x3 0x0
 #define MX6SX_PAD_SD4_DATA5__LCDIF2_DATA_7                        0x0294 0x05DC 0x0000 0x4 0x0
 #define MX6SX_PAD_SD4_DATA5__GPIO6_IO_19                          0x0294 0x05DC 0x0000 0x5 0x0
@@ -1510,7 +1510,7 @@
 #define MX6SX_PAD_SD4_DATA5__SDMA_DEBUG_EVENT_CHANNEL_0           0x0294 0x05DC 0x0000 0x9 0x0
 #define MX6SX_PAD_SD4_DATA6__USDHC4_DATA6                         0x0298 0x05E0 0x0000 0x0 0x0
 #define MX6SX_PAD_SD4_DATA6__RAWNAND_CE3_B                        0x0298 0x05E0 0x0000 0x1 0x0
-#define MX6SX_PAD_SD4_DATA6__UART5_RTS_B                          0x0298 0x05E0 0x084C 0x2 0x0
+#define MX6SX_PAD_SD4_DATA6__UART5_DCE_RTS                        0x0298 0x05E0 0x084C 0x2 0x0
 #define MX6SX_PAD_SD4_DATA6__ECSPI3_MISO                          0x0298 0x05E0 0x0734 0x3 0x0
 #define MX6SX_PAD_SD4_DATA6__LCDIF2_DATA_6                        0x0298 0x05E0 0x0000 0x4 0x0
 #define MX6SX_PAD_SD4_DATA6__GPIO6_IO_20                          0x0298 0x05E0 0x0000 0x5 0x0
@@ -1520,7 +1520,7 @@
 #define MX6SX_PAD_SD4_DATA6__SDMA_DEBUG_EVENT_CHANNEL_1           0x0298 0x05E0 0x0000 0x9 0x0
 #define MX6SX_PAD_SD4_DATA7__USDHC4_DATA7                         0x029C 0x05E4 0x0000 0x0 0x0
 #define MX6SX_PAD_SD4_DATA7__RAWNAND_DATA08                       0x029C 0x05E4 0x0000 0x1 0x0
-#define MX6SX_PAD_SD4_DATA7__UART5_CTS_B                          0x029C 0x05E4 0x0000 0x2 0x0
+#define MX6SX_PAD_SD4_DATA7__UART5_DCE_CTS                        0x029C 0x05E4 0x0000 0x2 0x0
 #define MX6SX_PAD_SD4_DATA7__ECSPI3_SS0                           0x029C 0x05E4 0x073C 0x3 0x0
 #define MX6SX_PAD_SD4_DATA7__LCDIF2_DATA_15                       0x029C 0x05E4 0x0000 0x4 0x0
 #define MX6SX_PAD_SD4_DATA7__GPIO6_IO_21                          0x029C 0x05E4 0x0000 0x5 0x0
@@ -1551,4 +1551,92 @@
 #define MX6SX_PAD_USB_H_STROBE__WDOG3_WDOG_RST_B_DEB              0x02A8 0x05F0 0x0000 0x4 0x0
 #define MX6SX_PAD_USB_H_STROBE__GPIO7_IO_11                       0x02A8 0x05F0 0x0000 0x5 0x0
 
-#endif /* __DTS_IMX6SX_PINFUNC_H */
+/* these are not supposed to be used any more and remove them after some time */
+#define MX6SX_PAD_GPIO1_IO04__UART1_RX		MX6SX_PAD_GPIO1_IO04__UART1_DTE_RX
+#define MX6SX_PAD_GPIO1_IO04__UART1_TX		MX6SX_PAD_GPIO1_IO04__UART1_DCE_TX
+#define MX6SX_PAD_GPIO1_IO05__UART1_RX		MX6SX_PAD_GPIO1_IO05__UART1_DCE_RX
+#define MX6SX_PAD_GPIO1_IO05__UART1_TX		MX6SX_PAD_GPIO1_IO05__UART1_DTE_TX
+#define MX6SX_PAD_GPIO1_IO06__UART2_RX		MX6SX_PAD_GPIO1_IO06__UART2_DTE_RX
+#define MX6SX_PAD_GPIO1_IO06__UART2_TX		MX6SX_PAD_GPIO1_IO06__UART2_DCE_TX
+#define MX6SX_PAD_GPIO1_IO06__UART1_RTS_B	MX6SX_PAD_GPIO1_IO06__UART1_DCE_RTS
+#define MX6SX_PAD_GPIO1_IO07__UART2_RX		MX6SX_PAD_GPIO1_IO07__UART2_DCE_RX
+#define MX6SX_PAD_GPIO1_IO07__UART2_TX		MX6SX_PAD_GPIO1_IO07__UART2_DTE_TX
+#define MX6SX_PAD_GPIO1_IO07__UART1_CTS_B	MX6SX_PAD_GPIO1_IO07__UART1_DCE_CTS
+#define MX6SX_PAD_GPIO1_IO08__UART2_RTS_B	MX6SX_PAD_GPIO1_IO08__UART2_DCE_RTS
+#define MX6SX_PAD_GPIO1_IO09__UART2_CTS_B	MX6SX_PAD_GPIO1_IO09__UART2_DCE_CTS
+#define MX6SX_PAD_CSI_DATA04__UART6_RX		MX6SX_PAD_CSI_DATA04__UART6_DCE_RX
+#define MX6SX_PAD_CSI_DATA04__UART6_TX		MX6SX_PAD_CSI_DATA04__UART6_DTE_TX
+#define MX6SX_PAD_CSI_DATA05__UART6_RX		MX6SX_PAD_CSI_DATA05__UART6_DTE_RX
+#define MX6SX_PAD_CSI_DATA05__UART6_TX		MX6SX_PAD_CSI_DATA05__UART6_DCE_TX
+#define MX6SX_PAD_CSI_DATA06__UART6_RTS_B	MX6SX_PAD_CSI_DATA06__UART6_DCE_RTS
+#define MX6SX_PAD_CSI_DATA07__UART6_CTS_B	MX6SX_PAD_CSI_DATA07__UART6_DCE_CTS
+#define MX6SX_PAD_CSI_HSYNC__UART4_RTS_B	MX6SX_PAD_CSI_HSYNC__UART4_DCE_RTS
+#define MX6SX_PAD_CSI_MCLK__UART4_RX		MX6SX_PAD_CSI_MCLK__UART4_DCE_RX
+#define MX6SX_PAD_CSI_MCLK__UART4_TX		MX6SX_PAD_CSI_MCLK__UART4_DTE_TX
+#define MX6SX_PAD_CSI_PIXCLK__UART4_RX		MX6SX_PAD_CSI_PIXCLK__UART4_DTE_RX
+#define MX6SX_PAD_CSI_PIXCLK__UART4_TX		MX6SX_PAD_CSI_PIXCLK__UART4_DCE_TX
+#define MX6SX_PAD_CSI_VSYNC__UART4_CTS_B	MX6SX_PAD_CSI_VSYNC__UART4_DCE_CTS
+#define MX6SX_PAD_ENET2_COL__UART1_RX		MX6SX_PAD_ENET2_COL__UART1_DCE_RX
+#define MX6SX_PAD_ENET2_COL__UART1_TX		MX6SX_PAD_ENET2_COL__UART1_DTE_TX
+#define MX6SX_PAD_ENET2_CRS__UART1_RX		MX6SX_PAD_ENET2_CRS__UART1_DTE_RX
+#define MX6SX_PAD_ENET2_CRS__UART1_TX		MX6SX_PAD_ENET2_CRS__UART1_DCE_TX
+#define MX6SX_PAD_ENET2_RX_CLK__UART1_RTS_B	MX6SX_PAD_ENET2_RX_CLK__UART1_DCE_RTS
+#define MX6SX_PAD_ENET2_TX_CLK__UART1_CTS_B	MX6SX_PAD_ENET2_TX_CLK__UART1_DCE_CTS
+#define MX6SX_PAD_KEY_COL0__UART6_RTS_B		MX6SX_PAD_KEY_COL0__UART6_DCE_RTS
+#define MX6SX_PAD_KEY_COL1__UART6_RX		MX6SX_PAD_KEY_COL1__UART6_DTE_RX
+#define MX6SX_PAD_KEY_COL1__UART6_TX		MX6SX_PAD_KEY_COL1__UART6_DCE_TX
+#define MX6SX_PAD_KEY_COL2__UART5_RTS_B		MX6SX_PAD_KEY_COL2__UART5_DCE_RTS
+#define MX6SX_PAD_KEY_COL3__UART5_RX		MX6SX_PAD_KEY_COL3__UART5_DTE_RX
+#define MX6SX_PAD_KEY_COL3__UART5_TX		MX6SX_PAD_KEY_COL3__UART5_DCE_TX
+#define MX6SX_PAD_KEY_ROW0__UART6_CTS_B		MX6SX_PAD_KEY_ROW0__UART6_DCE_CTS
+#define MX6SX_PAD_KEY_ROW1__UART6_RX		MX6SX_PAD_KEY_ROW1__UART6_DCE_RX
+#define MX6SX_PAD_KEY_ROW1__UART6_TX		MX6SX_PAD_KEY_ROW1__UART6_DTE_TX
+#define MX6SX_PAD_KEY_ROW2__UART5_CTS_B		MX6SX_PAD_KEY_ROW2__UART5_DCE_CTS
+#define MX6SX_PAD_KEY_ROW3__UART5_RX		MX6SX_PAD_KEY_ROW3__UART5_DCE_RX
+#define MX6SX_PAD_KEY_ROW3__UART5_TX		MX6SX_PAD_KEY_ROW3__UART5_DTE_TX
+#define MX6SX_PAD_NAND_DATA04__UART3_RTS_B	MX6SX_PAD_NAND_DATA04__UART3_DCE_RTS
+#define MX6SX_PAD_NAND_DATA05__UART3_CTS_B	MX6SX_PAD_NAND_DATA05__UART3_DCE_CTS
+#define MX6SX_PAD_NAND_DATA06__UART3_RX		MX6SX_PAD_NAND_DATA06__UART3_DCE_RX
+#define MX6SX_PAD_NAND_DATA06__UART3_TX		MX6SX_PAD_NAND_DATA06__UART3_DTE_TX
+#define MX6SX_PAD_NAND_DATA07__UART3_RX		MX6SX_PAD_NAND_DATA07__UART3_DTE_RX
+#define MX6SX_PAD_NAND_DATA07__UART3_TX		MX6SX_PAD_NAND_DATA07__UART3_DCE_TX
+#define MX6SX_PAD_QSPI1B_DATA0__UART3_CTS_B	MX6SX_PAD_QSPI1B_DATA0__UART3_DCE_CTS
+#define MX6SX_PAD_QSPI1B_DATA1__UART3_RTS_B	MX6SX_PAD_QSPI1B_DATA1__UART3_DCE_RTS
+#define MX6SX_PAD_QSPI1B_SCLK__UART3_RX		MX6SX_PAD_QSPI1B_SCLK__UART3_DCE_RX
+#define MX6SX_PAD_QSPI1B_SCLK__UART3_TX		MX6SX_PAD_QSPI1B_SCLK__UART3_DTE_TX
+#define MX6SX_PAD_QSPI1B_SS0_B__UART3_RX	MX6SX_PAD_QSPI1B_SS0_B__UART3_DTE_RX
+#define MX6SX_PAD_QSPI1B_SS0_B__UART3_TX	MX6SX_PAD_QSPI1B_SS0_B__UART3_DCE_TX
+#define MX6SX_PAD_SD1_DATA0__UART2_RX		MX6SX_PAD_SD1_DATA0__UART2_DCE_RX
+#define MX6SX_PAD_SD1_DATA0__UART2_TX		MX6SX_PAD_SD1_DATA0__UART2_DTE_TX
+#define MX6SX_PAD_SD1_DATA1__UART2_RX		MX6SX_PAD_SD1_DATA1__UART2_DTE_RX
+#define MX6SX_PAD_SD1_DATA1__UART2_TX		MX6SX_PAD_SD1_DATA1__UART2_DCE_TX
+#define MX6SX_PAD_SD1_DATA2__UART2_CTS_B	MX6SX_PAD_SD1_DATA2__UART2_DCE_CTS
+#define MX6SX_PAD_SD1_DATA3__UART2_RTS_B	MX6SX_PAD_SD1_DATA3__UART2_DCE_RTS
+#define MX6SX_PAD_SD2_DATA0__UART4_RX		MX6SX_PAD_SD2_DATA0__UART4_DCE_RX
+#define MX6SX_PAD_SD2_DATA0__UART4_TX		MX6SX_PAD_SD2_DATA0__UART4_DTE_TX
+#define MX6SX_PAD_SD2_DATA1__UART4_RX		MX6SX_PAD_SD2_DATA1__UART4_DTE_RX
+#define MX6SX_PAD_SD2_DATA1__UART4_TX		MX6SX_PAD_SD2_DATA1__UART4_DCE_TX
+#define MX6SX_PAD_SD2_DATA2__UART6_RX		MX6SX_PAD_SD2_DATA2__UART6_DCE_RX
+#define MX6SX_PAD_SD2_DATA2__UART6_TX		MX6SX_PAD_SD2_DATA2__UART6_DTE_TX
+#define MX6SX_PAD_SD2_DATA3__UART6_RX		MX6SX_PAD_SD2_DATA3__UART6_DTE_RX
+#define MX6SX_PAD_SD2_DATA3__UART6_TX		MX6SX_PAD_SD2_DATA3__UART6_DCE_TX
+#define MX6SX_PAD_SD3_CLK__UART4_CTS_B		MX6SX_PAD_SD3_CLK__UART4_DCE_CTS
+#define MX6SX_PAD_SD3_DATA2__UART4_RTS_B	MX6SX_PAD_SD3_DATA2__UART4_DCE_RTS
+#define MX6SX_PAD_SD3_DATA3__UART4_RX		MX6SX_PAD_SD3_DATA3__UART4_DCE_RX
+#define MX6SX_PAD_SD3_DATA3__UART4_TX		MX6SX_PAD_SD3_DATA3__UART4_DTE_TX
+#define MX6SX_PAD_SD3_CMD__UART4_RX		MX6SX_PAD_SD3_CMD__UART4_DTE_RX
+#define MX6SX_PAD_SD3_CMD__UART4_TX		MX6SX_PAD_SD3_CMD__UART4_DCE_TX
+#define MX6SX_PAD_SD3_DATA4__UART3_RX		MX6SX_PAD_SD3_DATA4__UART3_DCE_RX
+#define MX6SX_PAD_SD3_DATA4__UART3_TX		MX6SX_PAD_SD3_DATA4__UART3_DTE_TX
+#define MX6SX_PAD_SD3_DATA5__UART3_RX		MX6SX_PAD_SD3_DATA5__UART3_DTE_RX
+#define MX6SX_PAD_SD3_DATA5__UART3_TX		MX6SX_PAD_SD3_DATA5__UART3_DCE_TX
+#define MX6SX_PAD_SD3_DATA6__UART3_RTS_B	MX6SX_PAD_SD3_DATA6__UART3_DCE_RTS
+#define MX6SX_PAD_SD3_DATA7__UART3_CTS_B	MX6SX_PAD_SD3_DATA7__UART3_DCE_CTS
+#define MX6SX_PAD_SD4_DATA4__UART5_RX		MX6SX_PAD_SD4_DATA4__UART5_DCE_RX
+#define MX6SX_PAD_SD4_DATA4__UART5_TX		MX6SX_PAD_SD4_DATA4__UART5_DTE_TX
+#define MX6SX_PAD_SD4_DATA5__UART5_RX		MX6SX_PAD_SD4_DATA5__UART5_DTE_RX
+#define MX6SX_PAD_SD4_DATA5__UART5_TX		MX6SX_PAD_SD4_DATA5__UART5_DCE_TX
+#define MX6SX_PAD_SD4_DATA7__UART5_CTS_B	MX6SX_PAD_SD4_DATA7__UART5_DCE_CTS
+#define MX6SX_PAD_SD4_DATA6__UART5_RTS_B	MX6SX_PAD_SD4_DATA6__UART5_DCE_RTS
+
+#endif /*		__DTS_IMX6SX_PINFUNC_H */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
