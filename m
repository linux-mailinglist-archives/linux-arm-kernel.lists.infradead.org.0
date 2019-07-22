Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D1176FB6D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 10:38:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vkTDjnDyxFrJuoVSEZNEY8TyKY8ImdCO2daJ5dBvTv0=; b=IVlY/DPHBElXQH9+PEpI/fmK7L
	MTLmEYIhOjT7gjAbAePIJuAzrIf2zbn3XBQvA1maTa/ccIOzBlQyzt6Nvp8EshAEID4GZYd2ivcXb
	HRoSPxRpG3Or6lpnNOXLB/KdXHLvcUwnb7oQqmDbF2yxOhZzCT67VfwdBcwgjg9Y/2tAEZJgwJyxM
	lzZbl8bZ+dh+7VmCvX3wQC1R978pUSkcg2yNUVwXp+H+Zbk2AVktCbOSJCRU44tb+wU51ZEQdqdie
	xvQszyoANs0oxyZzMjRjGz2Rc1jKC8HVfh9AiGsDC7OyODaR6HzmwirY/rRDJCJ5fin3ZswxJWg1s
	Edz2VoQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpTpn-00067r-AW; Mon, 22 Jul 2019 08:38:15 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpTpL-00066m-PB
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 08:37:49 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 930F420023B;
 Mon, 22 Jul 2019 10:37:46 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 2544F2000A8;
 Mon, 22 Jul 2019 10:37:43 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 85801402FC;
 Mon, 22 Jul 2019 16:37:38 +0800 (SGT)
From: fugang.duan@nxp.com
To: festevam@gmail.com,
	shawnguo@kernel.org
Subject: [PATCH arm64/dts 1/2] arm64: dts: imx8qxp: add lpuart baud clock
Date: Mon, 22 Jul 2019 16:28:23 +0800
Message-Id: <20190722082824.15022-2-fugang.duan@nxp.com>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20190722082824.15022-1-fugang.duan@nxp.com>
References: <20190722082824.15022-1-fugang.duan@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_013748_180722_35554D83 
X-CRM114-Status: UNSURE (   7.56  )
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
Cc: devicetree@vger.kernel.org, daniel.baluta@gmail.com, fugang.duan@nxp.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Fugang Duan <fugang.duan@nxp.com>

Add imx8qxp lpuart baud clock.

V2:
- separate v1 patch to two patches, one is to add baud clock,
  the other is to add serial alias property.

Signed-off-by: Fugang Duan <fugang.duan@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
index 05fa0b7..21bdd4d 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
@@ -209,8 +209,9 @@
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
@@ -220,8 +221,9 @@
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
@@ -231,8 +233,9 @@
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
@@ -242,8 +245,9 @@
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
