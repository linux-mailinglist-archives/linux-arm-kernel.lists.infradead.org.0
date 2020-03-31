Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3702E19893F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 02:59:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jMU/krZnsyGi/Xc/J8UMIu7WPNv3JFr96ujn1PR8D+E=; b=LmrYx7It8gmy9X
	YFRoiJAoyLJlckt/ahphQeMXwZTzOkvPPItGu+HG7zDsUpQd7mGTPlSU76S54pKiXbeeYkf73dT2b
	qmmgx7x5+qerrBmBi+EFE3qrnOtO5LRSn/VUkCueXNWJq5NvelJNB1GUdMM2pjfnKRHUw4GT2pqbb
	MzvLYw0eqSKXzrGH7cBM7NJmMhByb8Gzgczqp4G4nzYuGJJr3Zs8u8bDnPEggYW6RzMi0PNVCuk8f
	yGa9zn3z3N6cKVI/Gb38z0xd336zIbZnyHIFUzDHhA4UHdDI3rrjOSuejTsKcrUdibeM7lJ6A36x2
	/QPxiDK6gjXZCI753nCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ5F3-0004P6-Su; Tue, 31 Mar 2020 00:58:57 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ5Dk-0003ee-EQ
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 00:57:39 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48rrXC2M6Zz1qrGL;
 Tue, 31 Mar 2020 02:57:31 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48rrXC1grDz1r0cH;
 Tue, 31 Mar 2020 02:57:31 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id kc3WjHkS-STx; Tue, 31 Mar 2020 02:57:30 +0200 (CEST)
X-Auth-Info: WBjnwJWokIfMDdhmMFJvkee9AR5Kx/5WiuQ7uMIfPTU=
Received: from desktop.lan (ip-86-49-35-8.net.upcbroadband.cz [86.49.35.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Tue, 31 Mar 2020 02:57:29 +0200 (CEST)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 01/22] ARM: dts: stm32: Add alternate pinmux for ethernet
 RGMII
Date: Tue, 31 Mar 2020 02:56:40 +0200
Message-Id: <20200331005701.283998-2-marex@denx.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200331005701.283998-1-marex@denx.de>
References: <20200331005701.283998-1-marex@denx.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_175736_783156_F1C93CD4 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.9 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Marek Vasut <marex@denx.de>, Alexandre Torgue <alexandre.torgue@st.com>,
 Patrice Chotard <patrice.chotard@st.com>,
 Patrick Delaunay <patrick.delaunay@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add another mux option for DWMAC RGMII, this is used on AV96 board.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Patrice Chotard <patrice.chotard@st.com>
Cc: Patrick Delaunay <patrick.delaunay@st.com>
Cc: linux-stm32@st-md-mailman.stormreply.com
To: linux-arm-kernel@lists.infradead.org
---
V2: No change
---
 arch/arm/boot/dts/stm32mp15-pinctrl.dtsi | 51 ++++++++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
index 73c07f0dfad2..4569dc16e5a1 100644
--- a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
@@ -196,6 +196,57 @@ pins1 {
 		};
 	};
 
+	ethernet0_rgmii_pins_b: rgmii-1 {
+		pins1 {
+			pinmux = <STM32_PINMUX('G', 5, AF11)>, /* ETH_RGMII_CLK125 */
+				 <STM32_PINMUX('G', 4, AF11)>, /* ETH_RGMII_GTX_CLK */
+				 <STM32_PINMUX('B', 12, AF11)>, /* ETH_RGMII_TXD0 */
+				 <STM32_PINMUX('G', 14, AF11)>, /* ETH_RGMII_TXD1 */
+				 <STM32_PINMUX('C', 2, AF11)>, /* ETH_RGMII_TXD2 */
+				 <STM32_PINMUX('E', 2, AF11)>, /* ETH_RGMII_TXD3 */
+				 <STM32_PINMUX('G', 11, AF11)>, /* ETH_RGMII_TX_CTL */
+				 <STM32_PINMUX('C', 1, AF11)>; /* ETH_MDC */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <2>;
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('A', 2, AF11)>; /* ETH_MDIO */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <0>;
+		};
+		pins3 {
+			pinmux = <STM32_PINMUX('C', 4, AF11)>, /* ETH_RGMII_RXD0 */
+				 <STM32_PINMUX('C', 5, AF11)>, /* ETH_RGMII_RXD1 */
+				 <STM32_PINMUX('H', 6, AF11)>, /* ETH_RGMII_RXD2 */
+				 <STM32_PINMUX('B', 1, AF11)>, /* ETH_RGMII_RXD3 */
+				 <STM32_PINMUX('A', 1, AF11)>, /* ETH_RGMII_RX_CLK */
+				 <STM32_PINMUX('A', 7, AF11)>; /* ETH_RGMII_RX_CTL */
+			bias-disable;
+		};
+	};
+
+	ethernet0_rgmii_pins_sleep_b: rgmii-sleep-1 {
+		pins1 {
+			pinmux = <STM32_PINMUX('G', 5, ANALOG)>, /* ETH_RGMII_CLK125 */
+				 <STM32_PINMUX('G', 4, ANALOG)>, /* ETH_RGMII_GTX_CLK */
+				 <STM32_PINMUX('B', 12, ANALOG)>, /* ETH_RGMII_TXD0 */
+				 <STM32_PINMUX('G', 14, ANALOG)>, /* ETH_RGMII_TXD1 */
+				 <STM32_PINMUX('C', 2, ANALOG)>, /* ETH_RGMII_TXD2 */
+				 <STM32_PINMUX('E', 2, ANALOG)>, /* ETH_RGMII_TXD3 */
+				 <STM32_PINMUX('G', 11, ANALOG)>, /* ETH_RGMII_TX_CTL */
+				 <STM32_PINMUX('A', 2, ANALOG)>, /* ETH_MDIO */
+				 <STM32_PINMUX('C', 1, ANALOG)>, /* ETH_MDC */
+				 <STM32_PINMUX('C', 4, ANALOG)>, /* ETH_RGMII_RXD0 */
+				 <STM32_PINMUX('C', 5, ANALOG)>, /* ETH_RGMII_RXD1 */
+				 <STM32_PINMUX('H', 6, ANALOG)>, /* ETH_RGMII_RXD2 */
+				 <STM32_PINMUX('B', 1, ANALOG)>, /* ETH_RGMII_RXD3 */
+				 <STM32_PINMUX('A', 1, ANALOG)>, /* ETH_RGMII_RX_CLK */
+				 <STM32_PINMUX('A', 7, ANALOG)>; /* ETH_RGMII_RX_CTL */
+		};
+	};
+
 	fmc_pins_a: fmc-0 {
 		pins1 {
 			pinmux = <STM32_PINMUX('D', 4, AF12)>, /* FMC_NOE */
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
