Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BCA0112F05
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 16:54:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DOiz8B0WI4cjwgOck1UQoQMuuT8xbNbkMa12dBklyLg=; b=THUjWekCi4WWLB
	yAYmVjuINmvxqQ3ZpcCLFef2I7MZcYNPyiHzIb++AXC+qtNaBoRoxk4TzEQXrRYgE7AaOfRqDiB7H
	tVFCJs17cy7lsxNgxE4lLVRRGqv+sN7mbpfExcgkG5xpCYsCsFWjdmx9qCTdgeiNvb4HQ14Nc8lmc
	DbYwQvSk+lODp5SZZR/H4mNYTbPx4vlhuuDMDNSUssYhuQe2RSVes/WeOTAp2jGf7dU/m100eyK73
	6GIfXkKUGyP8u9nit4rEWqvvn30ZbBkb9m9GXpBQ6LP4o7PGoyra0KEW59HdwTAgLIjRPHrPwV6Sx
	tI1Reuf/3vDinSaswRbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icWye-0004um-M2; Wed, 04 Dec 2019 15:54:08 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icWyK-0004mB-2X
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 15:53:49 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xB4Fq1IX010918; Wed, 4 Dec 2019 16:53:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=8MNwfG4b6i8MMlPxotaeWe9xESO4fyKyl25cfaHgznU=;
 b=ypCjrP56ZBX8lIRj4GMz/aDIEGTzfwfVMa1f/AaA9Ni3R/aTc+8LcJdH+4EGcUe5U0Lx
 Hol7Z1iDO2LPCSzQgCyqngmH+CwHDhld3YxpGykXe+4skHbC0sfUSgcSHY27CQ5KGrgK
 S/IxrCagXM7YMY3acNBrRxRyABPMDOfWK+YNZSrZCuBh6Bl51wfw1bN4MLXR/tP3dkCx
 ZpKATcNF5l1ZkXfJj5fAp4dDOTIcyxw/YkM8Szvws7c3g+mPx+XQmkXOfd8vJY93GADr
 FoQruYQfBb1GtthPcb/uBJplliywqx1wlG72Y/bNVqxl2N3CSXDf5BhQD4uuUuSgbGJk fA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2wkes2x0em-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 04 Dec 2019 16:53:42 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 730EB10002A;
 Wed,  4 Dec 2019 16:53:42 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 470762C7E89;
 Wed,  4 Dec 2019 16:53:42 +0100 (CET)
Received: from localhost (10.75.127.47) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 4 Dec 2019 16:53:41
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <alexandre.torgue@st.com>, <robh+dt@kernel.org>, <mark.rutland@arm.com>
Subject: [PATCH v2] ARM: dts: stm32: remove "@" and "_" from stm32f4 pinmux
 groups
Date: Wed, 4 Dec 2019 16:53:32 +0100
Message-ID: <20191204155333.25401-1-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-04_03:2019-12-04,2019-12-04 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_075348_448152_97F7162B 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Replace all "@" and "_" by "-" in pinmux groups for stm32f4 family.
This avoid errors when using yaml to check the bindings.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
changes in version 2:
- replace @ and _ by -

 arch/arm/boot/dts/stm32f4-pinctrl.dtsi | 28 ++++++++++++++--------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/arch/arm/boot/dts/stm32f4-pinctrl.dtsi b/arch/arm/boot/dts/stm32f4-pinctrl.dtsi
index 35202896c093..392fa143ce07 100644
--- a/arch/arm/boot/dts/stm32f4-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32f4-pinctrl.dtsi
@@ -163,7 +163,7 @@
 				st,bank-name = "GPIOK";
 			};
 
-			usart1_pins_a: usart1@0 {
+			usart1_pins_a: usart1-0 {
 				pins1 {
 					pinmux = <STM32_PINMUX('A', 9, AF7)>; /* USART1_TX */
 					bias-disable;
@@ -176,7 +176,7 @@
 				};
 			};
 
-			usart3_pins_a: usart3@0 {
+			usart3_pins_a: usart3-0 {
 				pins1 {
 					pinmux = <STM32_PINMUX('B', 10, AF7)>; /* USART3_TX */
 					bias-disable;
@@ -189,7 +189,7 @@
 				};
 			};
 
-			usbotg_fs_pins_a: usbotg_fs@0 {
+			usbotg_fs_pins_a: usbotg-fs-0 {
 				pins {
 					pinmux = <STM32_PINMUX('A', 10, AF10)>, /* OTG_FS_ID */
 						 <STM32_PINMUX('A', 11, AF10)>, /* OTG_FS_DM */
@@ -200,7 +200,7 @@
 				};
 			};
 
-			usbotg_fs_pins_b: usbotg_fs@1 {
+			usbotg_fs_pins_b: usbotg-fs-1 {
 				pins {
 					pinmux = <STM32_PINMUX('B', 12, AF12)>, /* OTG_HS_ID */
 						 <STM32_PINMUX('B', 14, AF12)>, /* OTG_HS_DM */
@@ -211,7 +211,7 @@
 				};
 			};
 
-			usbotg_hs_pins_a: usbotg_hs@0 {
+			usbotg_hs_pins_a: usbotg-hs-0 {
 				pins {
 					pinmux = <STM32_PINMUX('H', 4, AF10)>, /* OTG_HS_ULPI_NXT*/
 						 <STM32_PINMUX('I', 11, AF10)>, /* OTG_HS_ULPI_DIR */
@@ -231,7 +231,7 @@
 				};
 			};
 
-			ethernet_mii: mii@0 {
+			ethernet_mii: mii-0 {
 				pins {
 					pinmux = <STM32_PINMUX('G', 13, AF11)>, /* ETH_MII_TXD0_ETH_RMII_TXD0 */
 						 <STM32_PINMUX('G', 14, AF11)>, /* ETH_MII_TXD1_ETH_RMII_TXD1 */
@@ -251,13 +251,13 @@
 				};
 			};
 
-			adc3_in8_pin: adc@200 {
+			adc3_in8_pin: adc-200 {
 				pins {
 					pinmux = <STM32_PINMUX('F', 10, ANALOG)>;
 				};
 			};
 
-			pwm1_pins: pwm@1 {
+			pwm1_pins: pwm-1 {
 				pins {
 					pinmux = <STM32_PINMUX('A', 8, AF1)>, /* TIM1_CH1 */
 						 <STM32_PINMUX('B', 13, AF1)>, /* TIM1_CH1N */
@@ -265,14 +265,14 @@
 				};
 			};
 
-			pwm3_pins: pwm@3 {
+			pwm3_pins: pwm-3 {
 				pins {
 					pinmux = <STM32_PINMUX('B', 4, AF2)>, /* TIM3_CH1 */
 						 <STM32_PINMUX('B', 5, AF2)>; /* TIM3_CH2 */
 				};
 			};
 
-			i2c1_pins: i2c1@0 {
+			i2c1_pins: i2c1-0 {
 				pins {
 					pinmux = <STM32_PINMUX('B', 9, AF4)>, /* I2C1_SDA */
 						 <STM32_PINMUX('B', 6, AF4)>; /* I2C1_SCL */
@@ -282,7 +282,7 @@
 				};
 			};
 
-			ltdc_pins: ltdc@0 {
+			ltdc_pins: ltdc-0 {
 				pins {
 					pinmux = <STM32_PINMUX('I', 12, AF14)>, /* LCD_HSYNC */
 						 <STM32_PINMUX('I', 13, AF14)>, /* LCD_VSYNC */
@@ -316,7 +316,7 @@
 				};
 			};
 
-			dcmi_pins: dcmi@0 {
+			dcmi_pins: dcmi-0 {
 				pins {
 					pinmux = <STM32_PINMUX('A', 4, AF13)>, /* DCMI_HSYNC */
 						 <STM32_PINMUX('B', 7, AF13)>, /* DCMI_VSYNC */
@@ -339,7 +339,7 @@
 				};
 			};
 
-			sdio_pins: sdio_pins@0 {
+			sdio_pins: sdio-pins-0 {
 				pins {
 					pinmux = <STM32_PINMUX('C', 8, AF12)>, /* SDIO_D0 */
 						 <STM32_PINMUX('C', 9, AF12)>, /* SDIO_D1 */
@@ -352,7 +352,7 @@
 				};
 			};
 
-			sdio_pins_od: sdio_pins_od@0 {
+			sdio_pins_od: sdio-pins-od-0 {
 				pins1 {
 					pinmux = <STM32_PINMUX('C', 8, AF12)>, /* SDIO_D0 */
 						 <STM32_PINMUX('C', 9, AF12)>, /* SDIO_D1 */
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
