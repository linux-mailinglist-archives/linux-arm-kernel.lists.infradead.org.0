Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1AF5108DA6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 13:13:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eRYKOx3FpeDbplDiXORGWhzx6CcBa4HhAFaEttmssCE=; b=niyMDq9Mr3ActM
	iqRArc9hP5M/SwsJinxRKGhH8Icr5LkPtC52r9I3KQG/AxXAn2YueHBfH6fQxGbXF5Tq//hCrXUyx
	c97gOVgxXwVpM0hxwPwBsH+gnKnwz9LPd+pwewubXxI4oPG3xR4/5ZaT+7aWux3zbunI1aoMBGsmZ
	02Zqri8M+TPVPOXTQGDWYoquC38d4BuNK2fqY9mPPU+Y2jpxRlBn902rKmKfHwmHhBWdU+fzGUepO
	V/sitKkpIcUH7vLAeXHf4V9vltAf2O1gPmpwrUXJAQOtBp/hnndTj8+idT8soGzbh/V/yRnIwGXRg
	OWjPJSHUrzHgzsyxdZEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZDF5-0003ev-As; Mon, 25 Nov 2019 12:13:23 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZDEf-0003Uo-Fb
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 12:12:59 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAPC70Pg009034; Mon, 25 Nov 2019 13:12:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=sWG896Au3NOdFn4sqwKmFJD5XhVt5rs6AeaV5Mi4ANQ=;
 b=uzqYsfKcxiIa/sNurkG81LI/OQUQra6RKJCN6+a/SkAVDkF7NfDDeCpWcR8AOmts3ER9
 rZQ+dZPU5WQeOesidV/nzQQrMuZcSnmHsvZoBdzthX8sm2nKyyW5ymXtTyZHrXMZEaBm
 CZ1Me0/6r+spIPx+fGzIDIsMnqbnxSDU724p6XMuMNQubftwUFyOjLQ4Nvovb3cWCchN
 acgcPlQcQuulz0obIBqv6Wy8jChVW4UG9X6qY3AD8EeXrYQg4mCzNbDmqjUZCU56++Jk
 vhUp5pgXQD+sbeF6JVNl4D4NiAE+61huD9c2ElW8ns+DhebiI8wRuuaH4M1boTFca6oc hA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2wets9h0r3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 25 Nov 2019 13:12:48 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id CC984100034;
 Mon, 25 Nov 2019 13:12:47 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id BED6F2BE238;
 Mon, 25 Nov 2019 13:12:47 +0100 (CET)
Received: from localhost (10.75.127.48) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 25 Nov 2019 13:12:47
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <alexandre.torgue@st.com>, <robh+dt@kernel.org>, <mark.rutland@arm.com>
Subject: [PATCH] ARM: dts: stm32: remove "@" from stm32f4 pinmux groups
Date: Mon, 25 Nov 2019 13:12:44 +0100
Message-ID: <20191125121244.19591-2-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20191125121244.19591-1-benjamin.gaignard@st.com>
References: <20191125121244.19591-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG3NODE2.st.com (10.75.127.8) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-25_03:2019-11-21,2019-11-25 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_041257_889972_AF26860D 
X-CRM114-Status: GOOD (  12.26  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Benjamin Gaignard <benjamin.gaignard@st.com>, devicetree@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Replace all "@" by "_" in pinmux groups for stm32f4 family.
This avoid errors when using yaml to check the bindings.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 arch/arm/boot/dts/stm32f4-pinctrl.dtsi | 28 ++++++++++++++--------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/arch/arm/boot/dts/stm32f4-pinctrl.dtsi b/arch/arm/boot/dts/stm32f4-pinctrl.dtsi
index 35202896c093..722598cdf3b7 100644
--- a/arch/arm/boot/dts/stm32f4-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32f4-pinctrl.dtsi
@@ -163,7 +163,7 @@
 				st,bank-name = "GPIOK";
 			};
 
-			usart1_pins_a: usart1@0 {
+			usart1_pins_a: usart1_0 {
 				pins1 {
 					pinmux = <STM32_PINMUX('A', 9, AF7)>; /* USART1_TX */
 					bias-disable;
@@ -176,7 +176,7 @@
 				};
 			};
 
-			usart3_pins_a: usart3@0 {
+			usart3_pins_a: usart3_0 {
 				pins1 {
 					pinmux = <STM32_PINMUX('B', 10, AF7)>; /* USART3_TX */
 					bias-disable;
@@ -189,7 +189,7 @@
 				};
 			};
 
-			usbotg_fs_pins_a: usbotg_fs@0 {
+			usbotg_fs_pins_a: usbotg_fs_0 {
 				pins {
 					pinmux = <STM32_PINMUX('A', 10, AF10)>, /* OTG_FS_ID */
 						 <STM32_PINMUX('A', 11, AF10)>, /* OTG_FS_DM */
@@ -200,7 +200,7 @@
 				};
 			};
 
-			usbotg_fs_pins_b: usbotg_fs@1 {
+			usbotg_fs_pins_b: usbotg_fs_1 {
 				pins {
 					pinmux = <STM32_PINMUX('B', 12, AF12)>, /* OTG_HS_ID */
 						 <STM32_PINMUX('B', 14, AF12)>, /* OTG_HS_DM */
@@ -211,7 +211,7 @@
 				};
 			};
 
-			usbotg_hs_pins_a: usbotg_hs@0 {
+			usbotg_hs_pins_a: usbotg_hs_0 {
 				pins {
 					pinmux = <STM32_PINMUX('H', 4, AF10)>, /* OTG_HS_ULPI_NXT*/
 						 <STM32_PINMUX('I', 11, AF10)>, /* OTG_HS_ULPI_DIR */
@@ -231,7 +231,7 @@
 				};
 			};
 
-			ethernet_mii: mii@0 {
+			ethernet_mii: mii_0 {
 				pins {
 					pinmux = <STM32_PINMUX('G', 13, AF11)>, /* ETH_MII_TXD0_ETH_RMII_TXD0 */
 						 <STM32_PINMUX('G', 14, AF11)>, /* ETH_MII_TXD1_ETH_RMII_TXD1 */
@@ -251,13 +251,13 @@
 				};
 			};
 
-			adc3_in8_pin: adc@200 {
+			adc3_in8_pin: adc_200 {
 				pins {
 					pinmux = <STM32_PINMUX('F', 10, ANALOG)>;
 				};
 			};
 
-			pwm1_pins: pwm@1 {
+			pwm1_pins: pwm_1 {
 				pins {
 					pinmux = <STM32_PINMUX('A', 8, AF1)>, /* TIM1_CH1 */
 						 <STM32_PINMUX('B', 13, AF1)>, /* TIM1_CH1N */
@@ -265,14 +265,14 @@
 				};
 			};
 
-			pwm3_pins: pwm@3 {
+			pwm3_pins: pwm_3 {
 				pins {
 					pinmux = <STM32_PINMUX('B', 4, AF2)>, /* TIM3_CH1 */
 						 <STM32_PINMUX('B', 5, AF2)>; /* TIM3_CH2 */
 				};
 			};
 
-			i2c1_pins: i2c1@0 {
+			i2c1_pins: i2c1_0 {
 				pins {
 					pinmux = <STM32_PINMUX('B', 9, AF4)>, /* I2C1_SDA */
 						 <STM32_PINMUX('B', 6, AF4)>; /* I2C1_SCL */
@@ -282,7 +282,7 @@
 				};
 			};
 
-			ltdc_pins: ltdc@0 {
+			ltdc_pins: ltdc_0 {
 				pins {
 					pinmux = <STM32_PINMUX('I', 12, AF14)>, /* LCD_HSYNC */
 						 <STM32_PINMUX('I', 13, AF14)>, /* LCD_VSYNC */
@@ -316,7 +316,7 @@
 				};
 			};
 
-			dcmi_pins: dcmi@0 {
+			dcmi_pins: dcmi_0 {
 				pins {
 					pinmux = <STM32_PINMUX('A', 4, AF13)>, /* DCMI_HSYNC */
 						 <STM32_PINMUX('B', 7, AF13)>, /* DCMI_VSYNC */
@@ -339,7 +339,7 @@
 				};
 			};
 
-			sdio_pins: sdio_pins@0 {
+			sdio_pins: sdio_pins_0 {
 				pins {
 					pinmux = <STM32_PINMUX('C', 8, AF12)>, /* SDIO_D0 */
 						 <STM32_PINMUX('C', 9, AF12)>, /* SDIO_D1 */
@@ -352,7 +352,7 @@
 				};
 			};
 
-			sdio_pins_od: sdio_pins_od@0 {
+			sdio_pins_od: sdio_pins_od_0 {
 				pins1 {
 					pinmux = <STM32_PINMUX('C', 8, AF12)>, /* SDIO_D0 */
 						 <STM32_PINMUX('C', 9, AF12)>, /* SDIO_D1 */
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
