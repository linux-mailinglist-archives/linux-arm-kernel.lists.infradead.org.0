Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14F5E5F665
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 12:14:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=cEnBhfMSJ4ZU17VTs32obF8TTUaTdgE26rn1P8MNGVA=; b=mIX
	i9PdvRy01ZsLRseB6SHklZHTT2Ye1A/3PIGMWY3o4GeSbk/5JS4OjsS7lzw8qNj0Hykb/19u61nas
	aeUbfi1CowyYgqG1YKgBp7vGsoousaHqOU/hr74WdQCIBcZkAkHUuVZaYTgV2SRCP/e9V4pytFxce
	bSTKGdu2VHhc52/DGVAmLwA47ztxzDz/k46Geg+Wp9KV5Y2rYXpRNaXKYSt6BcdqWgiTpfM0n+n1Z
	+QDyQMsd6UQupfaMWWfINdRFcj4tbRrsML3780ZRbJpvrqy0X+BGlO9/f84xCfk0Iaw6bTZMTvE6X
	0lRPvGlSo+LLUuytqu1Un/SwHzQ2h2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiylH-0006sV-HV; Thu, 04 Jul 2019 10:14:43 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiykO-0006bL-72
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 10:13:51 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id CD8581A0594;
 Thu,  4 Jul 2019 12:13:44 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 5887A1A0157;
 Thu,  4 Jul 2019 12:13:41 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id BE758402E1;
 Thu,  4 Jul 2019 18:13:36 +0800 (SGT)
From: fugang.duan@nxp.com
To: festevam@gmail.com,
	shawnguo@kernel.org
Subject: [PATCH arm64/dts 1/1] arm64: dts: imx8qxp: add lpuart baud clock
Date: Thu,  4 Jul 2019 18:04:43 +0800
Message-Id: <20190704100443.10957-1-fugang.duan@nxp.com>
X-Mailer: git-send-email 2.14.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_031349_224237_69D5AAC7 
X-CRM114-Status: UNSURE (   6.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, daniel.baluta@gmail.com, fugang.duan@nxp.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Fugang Duan <fugang.duan@nxp.com>

Add imx8qxp lpuart baud clock.

Signed-off-by: Fugang Duan <fugang.duan@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 23 +++++++++++++++--------
 1 file changed, 15 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
index 05fa0b7..4402b2e 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
@@ -30,6 +30,9 @@
 		mmc2 = &usdhc3;
 		mu1 = &lsio_mu1;
 		serial0 = &adma_lpuart0;
+		serial1 = &adma_lpuart1;
+		serial2 = &adma_lpuart2;
+		serial3 = &adma_lpuart3;
 	};
 
 	cpus {
@@ -209,8 +212,9 @@
 			reg = <0x5a060000 0x1000>;
 			interrupts = <GIC_SPI 225 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-parent = <&gic>;
-			clocks = <&adma_lpcg IMX_ADMA_LPCG_UART0_BAUD_CLK>;
-			clock-names = "ipg";
+			clocks = <&adma_lpcg IMX_ADMA_LPCG_UART0_IPG_CLK>,
+				 <&adma_lpcg IMX_ADMA_LPCG_UART0_BAUD_CLK>;
+			clock-names = "ipg", "baud";
 			power-domains = <&pd IMX_SC_R_UART_0>;
 			status = "disabled";
 		};
@@ -220,8 +224,9 @@
 			reg = <0x5a070000 0x1000>;
 			interrupts = <GIC_SPI 226 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-parent = <&gic>;
-			clocks = <&adma_lpcg IMX_ADMA_LPCG_UART1_BAUD_CLK>;
-			clock-names = "ipg";
+			clocks = <&adma_lpcg IMX_ADMA_LPCG_UART1_IPG_CLK>,
+				 <&adma_lpcg IMX_ADMA_LPCG_UART1_BAUD_CLK>;
+			clock-names = "ipg", "baud";
 			power-domains = <&pd IMX_SC_R_UART_1>;
 			status = "disabled";
 		};
@@ -231,8 +236,9 @@
 			reg = <0x5a080000 0x1000>;
 			interrupts = <GIC_SPI 227 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-parent = <&gic>;
-			clocks = <&adma_lpcg IMX_ADMA_LPCG_UART2_BAUD_CLK>;
-			clock-names = "ipg";
+			clocks = <&adma_lpcg IMX_ADMA_LPCG_UART2_IPG_CLK>,
+				 <&adma_lpcg IMX_ADMA_LPCG_UART2_BAUD_CLK>;
+			clock-names = "ipg", "baud";
 			power-domains = <&pd IMX_SC_R_UART_2>;
 			status = "disabled";
 		};
@@ -242,8 +248,9 @@
 			reg = <0x5a090000 0x1000>;
 			interrupts = <GIC_SPI 228 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-parent = <&gic>;
-			clocks = <&adma_lpcg IMX_ADMA_LPCG_UART3_BAUD_CLK>;
-			clock-names = "ipg";
+			clocks = <&adma_lpcg IMX_ADMA_LPCG_UART3_IPG_CLK>,
+				 <&adma_lpcg IMX_ADMA_LPCG_UART3_BAUD_CLK>;
+			clock-names = "ipg", "baud";
 			power-domains = <&pd IMX_SC_R_UART_3>;
 			status = "disabled";
 		};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
