Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C094215FCB5
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Feb 2020 06:22:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=p9Eqg8bexh1cRWY3L510MAewfUrGPD7O0mEbznfbCtE=; b=H4NHWRVhI2wI3d10r0o2SR+I7+
	+/fGro2dMGvkcGahPI2Wyt/+6WDeCllBOJoQMIakWijnEO09VXm/fFgj3G5dENa+Ql/mWcsvF8Kje
	tOUuUjBzydhWzjRh2oiymSLNvGhBMyNGuzar1YZYNS716XfmGxAdNP8nqqCTA+t15iS4Rm/hfxO+p
	WW7Y57KuycHpGtd1U/ETZbllzNq6y8hQVmx1YBwv8Yj+U6i6HYThdOj+FN6yhGhAUud4Toqxnil1S
	zK++AVmdmAgz3t+FcrVz5P1clRwraYkxa7XTfGfsnJmFWraDfyqThJEnp84/BumXUHr1DMcUoVNhI
	MqTIfe3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2puR-0006OG-7O; Sat, 15 Feb 2020 05:22:31 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2ptk-0005wT-78
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Feb 2020 05:21:50 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 053F01A6BF7;
 Sat, 15 Feb 2020 06:21:47 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 41EDF1A6BC8;
 Sat, 15 Feb 2020 06:21:41 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 2B8914030D;
 Sat, 15 Feb 2020 13:21:34 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, u.kleine-koenig@pengutronix.de
Subject: [PATCH V2 7/7] ARM: dts: imx6sx-udoo-neo: Use new pin names with
 DCE/DTE for UART pins
Date: Sat, 15 Feb 2020 13:15:58 +0800
Message-Id: <1581743758-4475-8-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1581743758-4475-1-git-send-email-Anson.Huang@nxp.com>
References: <1581743758-4475-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_212148_400070_B916CE5F 
X-CRM114-Status: UNSURE (   7.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use new pin names containing DCE/DTE for UART RX/TX/RTS/CTS pins, this
is to distinguish the DCE/DTE functions.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm/boot/dts/imx6sx-udoo-neo.dtsi | 28 ++++++++++++++--------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/arch/arm/boot/dts/imx6sx-udoo-neo.dtsi b/arch/arm/boot/dts/imx6sx-udoo-neo.dtsi
index 25d4aa9..ee64565 100644
--- a/arch/arm/boot/dts/imx6sx-udoo-neo.dtsi
+++ b/arch/arm/boot/dts/imx6sx-udoo-neo.dtsi
@@ -235,28 +235,28 @@
 
 	pinctrl_uart1: uart1grp {
 		fsl,pins =
-			<MX6SX_PAD_GPIO1_IO04__UART1_TX		0x1b0b1>,
-			<MX6SX_PAD_GPIO1_IO05__UART1_RX		0x1b0b1>;
+			<MX6SX_PAD_GPIO1_IO04__UART1_DCE_TX	0x1b0b1>,
+			<MX6SX_PAD_GPIO1_IO05__UART1_DCE_RX	0x1b0b1>;
 	};
 
 	pinctrl_uart2: uart2grp {
 		fsl,pins =
-			<MX6SX_PAD_GPIO1_IO06__UART2_TX		0x1b0b1>,
-			<MX6SX_PAD_GPIO1_IO07__UART2_RX		0x1b0b1>;
+			<MX6SX_PAD_GPIO1_IO06__UART2_DCE_TX	0x1b0b1>,
+			<MX6SX_PAD_GPIO1_IO07__UART2_DCE_RX	0x1b0b1>;
 	};
 
 	pinctrl_uart3: uart3grp {
 		fsl,pins =
-			<MX6SX_PAD_SD3_DATA4__UART3_RX          0x13059>,
-			<MX6SX_PAD_SD3_DATA5__UART3_TX          0x13059>,
-			<MX6SX_PAD_SD3_DATA6__UART3_RTS_B       0x13059>,
-			<MX6SX_PAD_SD3_DATA7__UART3_CTS_B       0x13059>;
+			<MX6SX_PAD_SD3_DATA4__UART3_DCE_RX	0x13059>,
+			<MX6SX_PAD_SD3_DATA5__UART3_DCE_TX	0x13059>,
+			<MX6SX_PAD_SD3_DATA6__UART3_DCE_RTS	0x13059>,
+			<MX6SX_PAD_SD3_DATA7__UART3_DCE_CTS	0x13059>;
 	};
 
 	pinctrl_uart5: uart5grp {
 		fsl,pins =
-			<MX6SX_PAD_SD4_DATA4__UART5_RX		0x1b0b1>,
-			<MX6SX_PAD_SD4_DATA5__UART5_TX		0x1b0b1>;
+			<MX6SX_PAD_SD4_DATA4__UART5_DCE_RX	0x1b0b1>,
+			<MX6SX_PAD_SD4_DATA5__UART5_DCE_TX	0x1b0b1>;
 	};
 
 	pinctrl_uart6: uart6grp {
@@ -265,10 +265,10 @@
 			<MX6SX_PAD_CSI_DATA01__UART6_DSR_B	0x1b0b1>,
 			<MX6SX_PAD_CSI_DATA02__UART6_DTR_B	0x1b0b1>,
 			<MX6SX_PAD_CSI_DATA03__UART6_DCD_B	0x1b0b1>,
-			<MX6SX_PAD_CSI_DATA04__UART6_RX		0x1b0b1>,
-			<MX6SX_PAD_CSI_DATA05__UART6_TX		0x1b0b1>,
-			<MX6SX_PAD_CSI_DATA06__UART6_RTS_B	0x1b0b1>,
-			<MX6SX_PAD_CSI_DATA07__UART6_CTS_B	0x1b0b1>;
+			<MX6SX_PAD_CSI_DATA04__UART6_DCE_RX	0x1b0b1>,
+			<MX6SX_PAD_CSI_DATA05__UART6_DCE_TX	0x1b0b1>,
+			<MX6SX_PAD_CSI_DATA06__UART6_DCE_RTS	0x1b0b1>,
+			<MX6SX_PAD_CSI_DATA07__UART6_DCE_CTS	0x1b0b1>;
 	};
 
 	pinctrl_otg1_reg: otg1grp {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
