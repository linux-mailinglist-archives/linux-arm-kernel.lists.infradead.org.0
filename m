Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7D83108DA5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 13:13:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WxYuB7craVzMtutQQV5605XNaPdgjdX+65CEjEyjm7Y=; b=K4mqsL5ZmP60zB
	cD+NoJgUr4ql3XlPEGHUdiWbRhTFd/lLTSRRKPKSYU50T/6ahIcKTiUG0IFysh3FZtIPKBbqyo1Py
	jHKduArc72GgdduUdBCAA+rsittX/kxvMKU9eiz57eiPTvST4PGbhkqHWVpvBMdUKMHRGfyzDEiIL
	9uwrLAm//HZ43cNGCSETmLyzrfdHulyanAEkddCmVlFcHcyr110j4U5twP57UIrFvwWMSnI55Yw/6
	BN0oTdwbFue7c5aL3ul9S2i5GeOyN6+mw3wq9uFs0Vdr8YD1idDzsVY0fkYpyhjpUo8SjCwJWZieJ
	Qn2UPzGfsfieWHGzV6jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZDEt-0003Vo-DO; Mon, 25 Nov 2019 12:13:11 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZDEf-0003Un-C9
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 12:12:59 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAPC7NV4010189; Mon, 25 Nov 2019 13:12:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=B96CApp49j4YYM/RFvkEEuoU4iXI/Y4YuviO4WS8EUY=;
 b=mt9ZR1H/+mFOsjxEYRHVNZ5tNAfE7e2lvYXjjdMo86Uym+fxIlIDV72W2ib0ylr3+c9+
 +RbbW8Ws/G5d1/JONKnJPD0urh0K/0/Z6Wzqm3ghA/CcnqcBfJqtg09wVrYL1E/9fZez
 Z5FyBpBeay21PvKV2qJuT6kU8hI7GimW/0xL8trLou2AlFWTd5JUhlHrIHT/UUIQCNyN
 a4aW3HBpe+nPDvMRWfbxm1+unf3eKuSJhYsXCylo9vw28+UHR/bWJwmVbmt2uO/q4AWs
 V/mJJHLxhZrr3Ln/0ApdpPXJnWqc4jNw/q494oHFn7Fi5oXwC7zxl8ATUzaRoYAsOBRv mw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2weudw107m-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 25 Nov 2019 13:12:47 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 3941210002A;
 Mon, 25 Nov 2019 13:12:47 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 2AE512BE238;
 Mon, 25 Nov 2019 13:12:47 +0100 (CET)
Received: from localhost (10.75.127.49) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 25 Nov 2019 13:12:46
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <alexandre.torgue@st.com>, <robh+dt@kernel.org>, <mark.rutland@arm.com>
Subject: [PATCH] ARM: dts: stm32: remove "@" from stm32f7 pinmux groups
Date: Mon, 25 Nov 2019 13:12:43 +0100
Message-ID: <20191125121244.19591-1-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG6NODE1.st.com (10.75.127.16) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-25_03:2019-11-21,2019-11-25 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_041257_889541_2CDCFCEE 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
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

Replace all "@" by "_" in pinmux groups for stm32f7 family.
This avoid errors when using yaml to check the bindings.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 arch/arm/boot/dts/stm32f7-pinctrl.dtsi | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/arch/arm/boot/dts/stm32f7-pinctrl.dtsi b/arch/arm/boot/dts/stm32f7-pinctrl.dtsi
index 9314128df185..5271df1017cb 100644
--- a/arch/arm/boot/dts/stm32f7-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32f7-pinctrl.dtsi
@@ -127,7 +127,7 @@
 				st,bank-name = "GPIOK";
 			};
 
-			cec_pins_a: cec@0 {
+			cec_pins_a: cec_0 {
 				pins {
 					pinmux = <STM32_PINMUX('A', 15, AF4)>; /* HDMI CEC */
 					slew-rate = <0>;
@@ -136,7 +136,7 @@
 				};
 			};
 
-			usart1_pins_a: usart1@0 {
+			usart1_pins_a: usart1_0 {
 				pins1 {
 					pinmux = <STM32_PINMUX('A', 9, AF7)>; /* USART1_TX */
 					bias-disable;
@@ -149,7 +149,7 @@
 				};
 			};
 
-			usart1_pins_b: usart1@1 {
+			usart1_pins_b: usart1_1 {
 				pins1 {
 					pinmux = <STM32_PINMUX('A', 9, AF7)>; /* USART1_TX */
 					bias-disable;
@@ -162,7 +162,7 @@
 				};
 			};
 
-			i2c1_pins_b: i2c1@0 {
+			i2c1_pins_b: i2c1_0 {
 				pins {
 					pinmux = <STM32_PINMUX('B', 9, AF4)>, /* I2C1 SDA */
 						 <STM32_PINMUX('B', 8, AF4)>; /* I2C1 SCL */
@@ -172,7 +172,7 @@
 				};
 			};
 
-			usbotg_hs_pins_a: usbotg-hs@0 {
+			usbotg_hs_pins_a: usbotg-hs_0 {
 				pins {
 					pinmux = <STM32_PINMUX('H', 4, AF10)>, /* OTG_HS_ULPI_NXT */
 						 <STM32_PINMUX('I', 11, AF10)>, /* OTG_HS_ULPI_DIR */
@@ -192,7 +192,7 @@
 				};
 			};
 
-			usbotg_hs_pins_b: usbotg-hs@1 {
+			usbotg_hs_pins_b: usbotg-hs_1 {
 				pins {
 					pinmux = <STM32_PINMUX('H', 4, AF10)>, /* OTG_HS_ULPI_NXT */
 						 <STM32_PINMUX('C', 2, AF10)>, /* OTG_HS_ULPI_DIR */
@@ -212,7 +212,7 @@
 				};
 			};
 
-			usbotg_fs_pins_a: usbotg-fs@0 {
+			usbotg_fs_pins_a: usbotg-fs_0 {
 				pins {
 					pinmux = <STM32_PINMUX('A', 10, AF10)>, /* OTG_FS_ID */
 						 <STM32_PINMUX('A', 11, AF10)>, /* OTG_FS_DM */
@@ -223,7 +223,7 @@
 				};
 			};
 
-			sdio_pins_a: sdio_pins_a@0 {
+			sdio_pins_a: sdio_pins_a_0 {
 				pins {
 					pinmux = <STM32_PINMUX('C', 8, AF12)>, /* SDMMC1 D0 */
 						 <STM32_PINMUX('C', 9, AF12)>, /* SDMMC1 D1 */
@@ -236,7 +236,7 @@
 				};
 			};
 
-			sdio_pins_od_a: sdio_pins_od_a@0 {
+			sdio_pins_od_a: sdio_pins_od_a_0 {
 				pins1 {
 					pinmux = <STM32_PINMUX('C', 8, AF12)>, /* SDMMC1 D0 */
 						 <STM32_PINMUX('C', 9, AF12)>, /* SDMMC1 D1 */
@@ -254,7 +254,7 @@
 				};
 			};
 
-			sdio_pins_b: sdio_pins_b@0 {
+			sdio_pins_b: sdio_pins_b_0 {
 				pins {
 					pinmux = <STM32_PINMUX('G', 9, AF11)>, /* SDMMC2 D0 */
 						 <STM32_PINMUX('G', 10, AF11)>, /* SDMMC2 D1 */
@@ -267,7 +267,7 @@
 				};
 			};
 
-			sdio_pins_od_b: sdio_pins_od_b@0 {
+			sdio_pins_od_b: sdio_pins_od_b_0 {
 				pins1 {
 					pinmux = <STM32_PINMUX('G', 9, AF11)>, /* SDMMC2 D0 */
 						 <STM32_PINMUX('G', 10, AF11)>, /* SDMMC2 D1 */
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
