Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BECC419ACBF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 15:23:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vruMqm2hecvdw4Grz6Pl/QkWd89nNpOBLh8lTk+vKBE=; b=K6WY1Ih+CfApGA
	FyzAZWP+cypwhOZEdBHiKslEmzv4ZBiX34FCLvQ8W6LuDYcgpIRen9Tz+CK2zfLoAYYbl3rfUjBoK
	m+UPNdcV2E3doie+0DVXhoCfNAdanHDpKWOLJIsDw56rS5Wwx3J2zV1k5OZSo5w77wETyUDx0rB+o
	5AvitWHrvqwpQh9K2mC8hlPtR5psw9VPkZaJGVKUsrrQsN0jMbj1dHwQcBCt2HSBIycUVIzSmSO0/
	9tfJmuJroUkyTUaSs6r1oLzLtd/b5u0DU6vHVWFsSP7o4/GMcVlNrz/XLnq5FIRQu6X6IP/zREGLF
	sSVM4+ER0EP+VIbAXPwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJdL6-0004ik-CK; Wed, 01 Apr 2020 13:23:28 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJdKc-0004bC-Q5
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 13:23:00 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48sn1s2NgJz1qs03;
 Wed,  1 Apr 2020 15:22:57 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48sn1s1fWxz1r0cS;
 Wed,  1 Apr 2020 15:22:57 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id LYYfMfWY5XWZ; Wed,  1 Apr 2020 15:22:55 +0200 (CEST)
X-Auth-Info: 9lpYDSJ7toqGus2Px2816dv5iCbCP16N9KWZfthlaOs=
Received: from desktop.lan (ip-86-49-35-8.net.upcbroadband.cz [86.49.35.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Wed,  1 Apr 2020 15:22:55 +0200 (CEST)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V4 01/22] ARM: dts: stm32: Add alternate pinmux for ethernet
 RGMII
Date: Wed,  1 Apr 2020 15:22:16 +0200
Message-Id: <20200401132237.60880-2-marex@denx.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200401132237.60880-1-marex@denx.de>
References: <20200401132237.60880-1-marex@denx.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_062259_139719_B3C04989 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.9 listed in wl.mailspike.net]
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

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
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
V3: No change
V4: Rebase on stm32-next
    Rename the pinmux nodes to ethernet0_rgmii_{,sleep_}pins_c
---
 arch/arm/boot/dts/stm32mp15-pinctrl.dtsi | 51 ++++++++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
index eb85ad19c926..6fce6133d644 100644
--- a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
@@ -213,6 +213,57 @@ pins1 {
 		 };
 	};
 
+	ethernet0_rgmii_pins_c: rgmii-2 {
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
+	ethernet0_rgmii_sleep_pins_c: rgmii-sleep-2 {
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
 	ethernet0_rmii_pins_a: rmii-0 {
 		pins1 {
 			pinmux = <STM32_PINMUX('G', 13, AF11)>, /* ETH1_RMII_TXD0 */
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
