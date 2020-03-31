Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A47199DA9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 20:04:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=624ND4vzKl9VjSWS8nyDcbgtfGEkOpf65IRSDgrZVvg=; b=p3B+qdPL9tQmDO
	fq/tdcRCzXX5T1zUUDOirJ0foZGu9LQMU8c1dv06eR+E0kJC5VSbn6z9l8PqNBsU7LUHtrPuQVPQm
	MhUpra/K2C0qQqvsEmLw7sh7a8CzN3xrfrYeJ0BcH/Zk0BRDUc2qr/7MX385De4lApLbTpenKnOVe
	noX0hDqoQM8KtRAIHKsN3ZSPT+Fu9qUBNihajvlsxadZ2X19u7natA3qyE8j7jnLrtq0ghi/jv7bb
	8vEr9uZWN34sk/E3IvW8RHl7weIOsutXNYtzycojWOVgxuzM4JXaDVJGvjcikOSVTcteiTgVMRHKN
	i6ZHk33txB47jjgwLHWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJLFe-0007sk-MN; Tue, 31 Mar 2020 18:04:38 +0000
Received: from mail-out.m-online.net ([2001:a60:0:28:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJLAb-0001UV-Oj
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 17:59:28 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48sHCJ1bdWz1rq9l;
 Tue, 31 Mar 2020 19:59:24 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48sHCJ1Kzwz1qqkQ;
 Tue, 31 Mar 2020 19:59:24 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id SB_6rIAZ85nP; Tue, 31 Mar 2020 19:59:22 +0200 (CEST)
X-Auth-Info: WOZnE0BfmN9OEhizlhTzJdXAl08Cpjg9bUywr9xFkyk=
Received: from desktop.lan (ip-86-49-35-8.net.upcbroadband.cz [86.49.35.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Tue, 31 Mar 2020 19:59:22 +0200 (CEST)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V3 18/22] ARM: dts: stm32: Add alternate pinmux for LTDC pins
Date: Tue, 31 Mar 2020 19:58:07 +0200
Message-Id: <20200331175811.205153-19-marex@denx.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200331175811.205153-1-marex@denx.de>
References: <20200331175811.205153-1-marex@denx.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_105926_130025_B2281B95 
X-CRM114-Status: GOOD (  10.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:a60:0:28:0:1:25:1 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

Add new mux option for LTDC pins, this is used on AV96 board.

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
---
 arch/arm/boot/dts/stm32mp15-pinctrl.dtsi | 74 ++++++++++++++++++++++++
 1 file changed, 74 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
index 4f3b40d5751f..d820b3d3ab57 100644
--- a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
@@ -532,6 +532,80 @@ pins {
 		};
 	};
 
+	ltdc_pins_c: ltdc-c-0 {
+		pins1 {
+			pinmux = <STM32_PINMUX('G',  7, AF14)>; /* LCD_CLK */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <3>;
+		};
+		pins2 {
+			pinmux = <STM32_PINMUX('I', 10, AF14)>, /* LCD_HSYNC */
+				 <STM32_PINMUX('I',  9, AF14)>, /* LCD_VSYNC */
+				 <STM32_PINMUX('E', 13, AF14)>, /* LCD_DE */
+				 <STM32_PINMUX('G', 13, AF14)>, /* LCD_R0 */
+				 <STM32_PINMUX('H',  3, AF14)>, /* LCD_R1 */
+				 <STM32_PINMUX('H',  8, AF14)>, /* LCD_R2 */
+				 <STM32_PINMUX('H',  9, AF14)>, /* LCD_R3 */
+				 <STM32_PINMUX('A',  5, AF14)>, /* LCD_R4 */
+				 <STM32_PINMUX('H', 11, AF14)>, /* LCD_R5 */
+				 <STM32_PINMUX('H', 12, AF14)>, /* LCD_R6 */
+				 <STM32_PINMUX('E', 15, AF14)>, /* LCD_R7 */
+				 <STM32_PINMUX('E',  5, AF14)>, /* LCD_G0 */
+				 <STM32_PINMUX('B',  0, AF14)>, /* LCD_G1 */
+				 <STM32_PINMUX('H', 13, AF14)>, /* LCD_G2 */
+				 <STM32_PINMUX('E', 11, AF14)>, /* LCD_G3 */
+				 <STM32_PINMUX('H', 15, AF14)>, /* LCD_G4 */
+				 <STM32_PINMUX('H',  4,  AF9)>, /* LCD_G5 */
+				 <STM32_PINMUX('I', 11,  AF9)>, /* LCD_G6 */
+				 <STM32_PINMUX('G',  8, AF14)>, /* LCD_G7 */
+				 <STM32_PINMUX('D',  9, AF14)>, /* LCD_B0 */
+				 <STM32_PINMUX('G', 12, AF14)>, /* LCD_B1 */
+				 <STM32_PINMUX('G', 10, AF14)>, /* LCD_B2 */
+				 <STM32_PINMUX('D', 10, AF14)>, /* LCD_B3 */
+				 <STM32_PINMUX('E', 12, AF14)>, /* LCD_B4 */
+				 <STM32_PINMUX('A',  3, AF14)>, /* LCD_B5 */
+				 <STM32_PINMUX('B',  8, AF14)>, /* LCD_B6 */
+				 <STM32_PINMUX('I',  7, AF14)>; /* LCD_B7 */
+			bias-disable;
+			drive-push-pull;
+			slew-rate = <2>;
+		};
+	};
+
+	ltdc_pins_sleep_c: ltdc-c-1 {
+		pins {
+			pinmux = <STM32_PINMUX('G',  7, ANALOG)>, /* LCD_CLK */
+				 <STM32_PINMUX('I', 10, ANALOG)>, /* LCD_HSYNC */
+				 <STM32_PINMUX('I',  9, ANALOG)>, /* LCD_VSYNC */
+				 <STM32_PINMUX('E', 13, ANALOG)>, /* LCD_DE */
+				 <STM32_PINMUX('G', 13, ANALOG)>, /* LCD_R0 */
+				 <STM32_PINMUX('H',  3, ANALOG)>, /* LCD_R1 */
+				 <STM32_PINMUX('H',  8, ANALOG)>, /* LCD_R2 */
+				 <STM32_PINMUX('H',  9, ANALOG)>, /* LCD_R3 */
+				 <STM32_PINMUX('A',  5, ANALOG)>, /* LCD_R4 */
+				 <STM32_PINMUX('H', 11, ANALOG)>, /* LCD_R5 */
+				 <STM32_PINMUX('H', 12, ANALOG)>, /* LCD_R6 */
+				 <STM32_PINMUX('E', 15, ANALOG)>, /* LCD_R7 */
+				 <STM32_PINMUX('E',  5, ANALOG)>, /* LCD_G0 */
+				 <STM32_PINMUX('B',  0, ANALOG)>, /* LCD_G1 */
+				 <STM32_PINMUX('H', 13, ANALOG)>, /* LCD_G2 */
+				 <STM32_PINMUX('E', 11, ANALOG)>, /* LCD_G3 */
+				 <STM32_PINMUX('H', 15, ANALOG)>, /* LCD_G4 */
+				 <STM32_PINMUX('H',  4, ANALOG)>, /* LCD_G5 */
+				 <STM32_PINMUX('I', 11, ANALOG)>, /* LCD_G6 */
+				 <STM32_PINMUX('G',  8, ANALOG)>, /* LCD_G7 */
+				 <STM32_PINMUX('D',  9, ANALOG)>, /* LCD_B0 */
+				 <STM32_PINMUX('G', 12, ANALOG)>, /* LCD_B1 */
+				 <STM32_PINMUX('G', 10, ANALOG)>, /* LCD_B2 */
+				 <STM32_PINMUX('D', 10, ANALOG)>, /* LCD_B3 */
+				 <STM32_PINMUX('E', 12, ANALOG)>, /* LCD_B4 */
+				 <STM32_PINMUX('A',  3, ANALOG)>, /* LCD_B5 */
+				 <STM32_PINMUX('B',  8, ANALOG)>, /* LCD_B6 */
+				 <STM32_PINMUX('I',  7, ANALOG)>; /* LCD_B7 */
+		};
+	};
+
 	m_can1_pins_a: m-can1-0 {
 		pins1 {
 			pinmux = <STM32_PINMUX('H', 13, AF9)>; /* CAN1_TX */
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
