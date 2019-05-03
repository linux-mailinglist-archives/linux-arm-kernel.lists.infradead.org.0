Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 164E113181
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 17:53:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=P0UQ28L8QJMubxNNzdu5dqQ8RZ1y+tuJlRwCJvLNSiw=; b=HgQCAvAdj25xvX
	av++qIBAWJWLW8DJQU5nURPNfqDmZo6/3VTl8iygbQYOSOtdDJSAf4gfg+cgBF3rOi73gElVVMMpQ
	d5yZUtOF8CpdyfDPXj+NzmI/p4M/PlynnO4x55KzwNwP13ykeCh8S0aRmAqMJXsbGw+KLl5iagLsi
	12tsyJFhf91N0+0Ls+lvIBBPmlkdWqq3OmzH0XyIFGq/1zArjA4ZdFDifjuiHSawAipb0ZF+SdR18
	rnqhwHgC5U7IJJ8NFLekBO8UJP3mMe3SdOuPw0oN2T3JEzR6naK/Bj2+1Oa2ir0ciEjpcTBjFakae
	mbH1eJSPMKwS65Z+EITA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMaUp-0002hO-Cu; Fri, 03 May 2019 15:53:11 +0000
Received: from mail-out.m-online.net ([212.18.0.10])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMaUX-0002Zx-Fl
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 15:52:56 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 44wc8w3htVz1rXvr;
 Fri,  3 May 2019 17:52:48 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 44wc8w3Crxz1qtf0;
 Fri,  3 May 2019 17:52:48 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id qh8xUnpSd7xM; Fri,  3 May 2019 17:52:47 +0200 (CEST)
X-Auth-Info: 9JUxOLwdBGbY55D/s2vj/4PlD9TfRxxRTRpuphWGVGc=
Received: from kurokawa.lan (ip-86-49-110-70.net.upcbroadband.cz
 [86.49.110.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Fri,  3 May 2019 17:52:47 +0200 (CEST)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/8] ARM: dts: imx53: Update UART configuration on M53Menlo
Date: Fri,  3 May 2019 17:52:28 +0200
Message-Id: <20190503155235.6414-1-marex@denx.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_085253_681420_42FB88F1 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.10 listed in list.dnswl.org]
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

Enable flow control lines on UART1 and UART2, add matching pinmux entries.
Add and enable UART3 with RS485 mode enabled on boot.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
To: linux-arm-kernel@lists.infradead.org
---
 arch/arm/boot/dts/imx53-m53menlo.dts | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm/boot/dts/imx53-m53menlo.dts b/arch/arm/boot/dts/imx53-m53menlo.dts
index f0a3fde0739c..62bc6a95a477 100644
--- a/arch/arm/boot/dts/imx53-m53menlo.dts
+++ b/arch/arm/boot/dts/imx53-m53menlo.dts
@@ -244,6 +244,8 @@
 			fsl,pins = <
 				MX53_PAD_PATA_DIOW__UART1_TXD_MUX	0x1e4
 				MX53_PAD_PATA_DMACK__UART1_RXD_MUX	0x1e4
+				MX53_PAD_PATA_IORDY__UART1_RTS		0x1e4
+				MX53_PAD_PATA_RESET_B__UART1_CTS	0x1e4
 			>;
 		};
 
@@ -251,6 +253,16 @@
 			fsl,pins = <
 				MX53_PAD_PATA_BUFFER_EN__UART2_RXD_MUX	0x1e4
 				MX53_PAD_PATA_DMARQ__UART2_TXD_MUX	0x1e4
+				MX53_PAD_PATA_DIOR__UART2_RTS		0x1e4
+				MX53_PAD_PATA_INTRQ__UART2_CTS		0x1e4
+			>;
+		};
+
+		pinctrl_uart3: uart3grp {
+			fsl,pins = <
+				MX53_PAD_PATA_CS_1__UART3_RXD_MUX	0x1e4
+				MX53_PAD_PATA_CS_0__UART3_TXD_MUX	0x1e4
+				MX53_PAD_PATA_DA_2__UART3_RTS		0x1e4
 			>;
 		};
 
@@ -287,12 +299,21 @@
 &uart1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart1>;
+	uart-has-rtscts;
 	status = "okay";
 };
 
 &uart2 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart2>;
+	uart-has-rtscts;
+	status = "okay";
+};
+
+&uart3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart3>;
+	linux,rs485-enabled-at-boot-time;
 	status = "okay";
 };
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
