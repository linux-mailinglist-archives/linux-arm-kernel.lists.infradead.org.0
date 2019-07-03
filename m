Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8D015DEF2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 09:33:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=f3I6EQhvtMiIPtbERvvLhlY8uhPk+2JS08DpU5eLgAk=; b=mof3tQsdziBFXGD8dIzgXlmcJg
	dvUQcEKRBUiQHizmTK1vgXopasZa3j38A8i2Ts1RdVTcJpMdfhXoxbFogHKd3W0npNeJInC4/asj6
	2MeEpyFzTYMk1j0pTY4ws3yK9h2L5jZZfReZUERVZcm4N/aam1sdpVCUUNZvjcKYyxa0032tdByPq
	uGbL5EYl9D47vDho67F8tbo30Xn8HF4mxcBH3kGOHzIZw9h+5+03HPWJ2V81FUU8+y37cIz0yWanM
	bDrrjSTE2KeKcgVLwxKx5To93tyJbMNBjn97k+woHVqaIjcofFvZkNRB/+qMSJNlkKcnyvNFN98wV
	UHMzAVPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiZlX-0006Ej-6K; Wed, 03 Jul 2019 07:33:19 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiZky-00064O-I8
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 07:32:46 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 986AE2000AF;
 Wed,  3 Jul 2019 09:32:41 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id B6B89200363;
 Wed,  3 Jul 2019 09:32:31 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 2C486402EC;
 Wed,  3 Jul 2019 15:32:20 +0800 (SGT)
From: jun.li@nxp.com
To: shawnguo@kernel.org,
	sboyd@kernel.org,
	robh+dt@kernel.org
Subject: [PATCH 4/5] arm64: dts: imx8mm: Remove setting for
 IMX8MM_CLK_USB_CORE_REF
Date: Wed,  3 Jul 2019 15:23:26 +0800
Message-Id: <20190703072327.38165-2-jun.li@nxp.com>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <20190703072327.38165-1-jun.li@nxp.com>
References: <20190703072327.38165-1-jun.li@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_003244_740169_CE813513 
X-CRM114-Status: UNSURE (   7.93  )
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
Cc: mark.rutland@arm.com, Peter.Chen@nxp.com, peng.fan@nxp.com,
 ping.bai@nxp.com, Anson.Huang@nxp.com, devicetree@vger.kernel.org,
 daniel.baluta@nxp.com, mturquette@baylibre.com, linux-clk@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, aisheng.dong@nxp.com,
 leonard.crestez@nxp.com, festevam@gmail.com, s.hauer@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, jun.li@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Li Jun <jun.li@nxp.com>

Since IMX8MM_CLK_USB_CORE_REF is not used at all, so remove the setting
for it.

Signed-off-by: Li Jun <jun.li@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 232a741..5d691a5 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -743,10 +743,8 @@
 				interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clk IMX8MM_CLK_USB1_CTRL_ROOT>;
 				clock-names = "usb1_ctrl_root_clk";
-				assigned-clocks = <&clk IMX8MM_CLK_USB_BUS>,
-						  <&clk IMX8MM_CLK_USB_CORE_REF>;
-				assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_500M>,
-							 <&clk IMX8MM_SYS_PLL1_100M>;
+				assigned-clocks = <&clk IMX8MM_CLK_USB_BUS>;
+				assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_500M>;
 				fsl,usbphy = <&usbphynop1>;
 				fsl,usbmisc = <&usbmisc1 0>;
 				status = "disabled";
@@ -764,10 +762,8 @@
 				interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clk IMX8MM_CLK_USB1_CTRL_ROOT>;
 				clock-names = "usb1_ctrl_root_clk";
-				assigned-clocks = <&clk IMX8MM_CLK_USB_BUS>,
-						  <&clk IMX8MM_CLK_USB_CORE_REF>;
-				assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_500M>,
-							 <&clk IMX8MM_SYS_PLL1_100M>;
+				assigned-clocks = <&clk IMX8MM_CLK_USB_BUS>;
+				assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_500M>;
 				fsl,usbphy = <&usbphynop2>;
 				fsl,usbmisc = <&usbmisc2 0>;
 				status = "disabled";
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
