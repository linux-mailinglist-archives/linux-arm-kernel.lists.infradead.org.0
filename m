Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58AA215FCB8
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Feb 2020 06:23:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nPNN7rDkP6Lho5uixyDGYtKmYbaISz72czanzuyKpXA=; b=aW7uR+zdjSOOHEhb74Y14hHfco
	/yYE8FZNT1hKnOzHADKCN1IjvvZviTfWqSQT0X8JQ7BhQz3sGBILWb4WUmE/7ddxkSgJtuwaC6lvg
	HvsYfUiNsMLo4w28jxVBv7TlKP6hnkFO9s68I+zHiaqt1QPwYNxltuOZWrtWWIt94w0QICEf/8HaL
	yZG1smercK7BZhTiXjatf+lu8KF1V3Gegej2QBMrUfC4bvlbIO4rSfiOGnWmKHHFcCNmdEHDTvNYN
	pFDVQBdYe7aBQvJlP953E1udD8ScbP85FuMGJujsAMiecEJnInx1G+SKE6TUG6/E3/UNVamqvxQ+h
	tLYXOPJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2pv1-0007CY-UP; Sat, 15 Feb 2020 05:23:07 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2ptl-0005vH-7x
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Feb 2020 05:21:52 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 1D1372067A7;
 Sat, 15 Feb 2020 06:21:43 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 59E272067BA;
 Sat, 15 Feb 2020 06:21:37 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 42BFD402D0;
 Sat, 15 Feb 2020 13:21:30 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, u.kleine-koenig@pengutronix.de
Subject: [PATCH V2 3/7] ARM: dts: imx6sx-nitrogen6sx: Use new pin names with
 DCE/DTE for UART pins
Date: Sat, 15 Feb 2020 13:15:54 +0800
Message-Id: <1581743758-4475-4-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1581743758-4475-1-git-send-email-Anson.Huang@nxp.com>
References: <1581743758-4475-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_212149_452748_750357C8 
X-CRM114-Status: UNSURE (   8.34  )
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

Use new pin names containing DCE/DTE for UART RX/TX/RTS/CTS pins, this
is to distinguish the DCE/DTE functions.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm/boot/dts/imx6sx-nitrogen6sx.dts | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boot/dts/imx6sx-nitrogen6sx.dts b/arch/arm/boot/dts/imx6sx-nitrogen6sx.dts
index 832b5c5..d84ea69 100644
--- a/arch/arm/boot/dts/imx6sx-nitrogen6sx.dts
+++ b/arch/arm/boot/dts/imx6sx-nitrogen6sx.dts
@@ -484,31 +484,31 @@
 
 	pinctrl_uart1: uart1grp {
 		fsl,pins = <
-			MX6SX_PAD_GPIO1_IO04__UART1_TX		0x1b0b1
-			MX6SX_PAD_GPIO1_IO05__UART1_RX		0x1b0b1
+			MX6SX_PAD_GPIO1_IO04__UART1_DCE_TX		0x1b0b1
+			MX6SX_PAD_GPIO1_IO05__UART1_DCE_RX		0x1b0b1
 		>;
 	};
 
 	pinctrl_uart2: uart2grp {
 		fsl,pins = <
-			MX6SX_PAD_GPIO1_IO06__UART2_TX		0x1b0b1
-			MX6SX_PAD_GPIO1_IO07__UART2_RX		0x1b0b1
+			MX6SX_PAD_GPIO1_IO06__UART2_DCE_TX		0x1b0b1
+			MX6SX_PAD_GPIO1_IO07__UART2_DCE_RX		0x1b0b1
 		>;
 	};
 
 	pinctrl_uart3: uart3grp {
 		fsl,pins = <
-			MX6SX_PAD_QSPI1B_SS0_B__UART3_TX	0x1b0b1
-			MX6SX_PAD_QSPI1B_SCLK__UART3_RX		0x1b0b1
+			MX6SX_PAD_QSPI1B_SS0_B__UART3_DCE_TX		0x1b0b1
+			MX6SX_PAD_QSPI1B_SCLK__UART3_DCE_RX		0x1b0b1
 		>;
 	};
 
 	pinctrl_uart5: uart5grp {
 		fsl,pins = <
-			MX6SX_PAD_KEY_COL3__UART5_TX		0x1b0b1
-			MX6SX_PAD_KEY_ROW3__UART5_RX		0x1b0b1
-			MX6SX_PAD_SD3_DATA6__UART3_RTS_B	0x1b0b1
-			MX6SX_PAD_SD3_DATA7__UART3_CTS_B	0x1b0b1
+			MX6SX_PAD_KEY_COL3__UART5_DCE_TX		0x1b0b1
+			MX6SX_PAD_KEY_ROW3__UART5_DCE_RX		0x1b0b1
+			MX6SX_PAD_SD3_DATA6__UART3_DCE_RTS		0x1b0b1
+			MX6SX_PAD_SD3_DATA7__UART3_DCE_CTS		0x1b0b1
 		>;
 	};
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
