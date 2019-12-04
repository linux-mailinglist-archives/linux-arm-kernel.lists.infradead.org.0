Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD9E112F04
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 16:54:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tRqF0OjjLyc90mtB42psmJlkTSLWfCOvvcK93Pp5ffo=; b=nMI9gB7D3zpE4o
	dpa+txYs2SYP7M4KusIJ3A42AvpX43ISs3LcNQ4qJ9flikaaex8SugJrpjP0407rSl6vUw2e3C6gb
	g/9MD8zNWJqHOFx0rzRipnDFj2oHhyLq4e58hQEPQihai9DwtK1opGwtusbquxPngefDdh57q5QP8
	+XvtqNxmT28VDn8yRX06ZepY8dpwv0USpSl+Wm7rOP9x1fqUFBMG4uZnhqjceWfd29oyLywzi/I34
	czOhnLhpIpLShDnRw5Ga3efq6KsoRdznvuKz3UJ+Q1vafSX12kPGGPtLRPd4kB/rJlJTI+mDVKoAE
	PNHagKcp9s11D4mdrcYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icWyQ-0004n0-9C; Wed, 04 Dec 2019 15:53:54 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icWyK-0004mA-1Y
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 15:53:49 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xB4Fq3HQ009177; Wed, 4 Dec 2019 16:53:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=z9I4jPl8HjaZ0yib1NGkHMebDD7rdFp1Yx8caA9mL2s=;
 b=vWFQ5tp5SjERfKg5VmepTHf8WgmNTsYFEraKs7tBghBcVEH10M9DMtwK859lImxVI4aJ
 JZ9ry+ManGJd8nOpmuPcePlsyAduKF6ttde9uZxdUAqsdJYZe2CuqXP7KmrnjQY/QwPe
 bbEc2dMFmPy1b07QNr831Ook21k939UpTaP4uhLy2dC386zN23dYoUUjzYPbMerp9qwZ
 WFD0en0XzLCgbL8YeS6LVgiP5QhRzoCqklhmmA6PO3LybL/3vZD6x5ORi63vIM+R6V1w
 Yt0Z6xncY9nXD2dXSkG+2f3MPtAzRBShW5slGf4yee2QHSAQaDtob2OE4/IpzogwhvIH ow== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2wkf2xwxf5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 04 Dec 2019 16:53:43 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id F3226100034;
 Wed,  4 Dec 2019 16:53:42 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id E655E2C7E89;
 Wed,  4 Dec 2019 16:53:42 +0100 (CET)
Received: from localhost (10.75.127.45) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 4 Dec 2019 16:53:42
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <alexandre.torgue@st.com>, <robh+dt@kernel.org>, <mark.rutland@arm.com>
Subject: [PATCH v2] ARM: dts: stm32: remove "@" and "_" from stm32f7 pinmux
 groups
Date: Wed, 4 Dec 2019 16:53:33 +0100
Message-ID: <20191204155333.25401-2-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20191204155333.25401-1-benjamin.gaignard@st.com>
References: <20191204155333.25401-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG1NODE1.st.com (10.75.127.1) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-04_03:2019-12-04,2019-12-04 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_075348_448496_1B1A1A89 
X-CRM114-Status: GOOD (  12.62  )
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

Replace all "@" and "_" by "-" in pinmux groups for stm32f7 family.
This avoid errors when using yaml to check the bindings.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
changes in version 2:
- replace @ and _ by -

 arch/arm/boot/dts/stm32f7-pinctrl.dtsi | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/arch/arm/boot/dts/stm32f7-pinctrl.dtsi b/arch/arm/boot/dts/stm32f7-pinctrl.dtsi
index 9314128df185..fe4cfda72a47 100644
--- a/arch/arm/boot/dts/stm32f7-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32f7-pinctrl.dtsi
@@ -127,7 +127,7 @@
 				st,bank-name = "GPIOK";
 			};
 
-			cec_pins_a: cec@0 {
+			cec_pins_a: cec-0 {
 				pins {
 					pinmux = <STM32_PINMUX('A', 15, AF4)>; /* HDMI CEC */
 					slew-rate = <0>;
@@ -136,7 +136,7 @@
 				};
 			};
 
-			usart1_pins_a: usart1@0 {
+			usart1_pins_a: usart1-0 {
 				pins1 {
 					pinmux = <STM32_PINMUX('A', 9, AF7)>; /* USART1_TX */
 					bias-disable;
@@ -149,7 +149,7 @@
 				};
 			};
 
-			usart1_pins_b: usart1@1 {
+			usart1_pins_b: usart1-1 {
 				pins1 {
 					pinmux = <STM32_PINMUX('A', 9, AF7)>; /* USART1_TX */
 					bias-disable;
@@ -162,7 +162,7 @@
 				};
 			};
 
-			i2c1_pins_b: i2c1@0 {
+			i2c1_pins_b: i2c1-0 {
 				pins {
 					pinmux = <STM32_PINMUX('B', 9, AF4)>, /* I2C1 SDA */
 						 <STM32_PINMUX('B', 8, AF4)>; /* I2C1 SCL */
@@ -172,7 +172,7 @@
 				};
 			};
 
-			usbotg_hs_pins_a: usbotg-hs@0 {
+			usbotg_hs_pins_a: usbotg-hs-0 {
 				pins {
 					pinmux = <STM32_PINMUX('H', 4, AF10)>, /* OTG_HS_ULPI_NXT */
 						 <STM32_PINMUX('I', 11, AF10)>, /* OTG_HS_ULPI_DIR */
@@ -192,7 +192,7 @@
 				};
 			};
 
-			usbotg_hs_pins_b: usbotg-hs@1 {
+			usbotg_hs_pins_b: usbotg-hs-1 {
 				pins {
 					pinmux = <STM32_PINMUX('H', 4, AF10)>, /* OTG_HS_ULPI_NXT */
 						 <STM32_PINMUX('C', 2, AF10)>, /* OTG_HS_ULPI_DIR */
@@ -212,7 +212,7 @@
 				};
 			};
 
-			usbotg_fs_pins_a: usbotg-fs@0 {
+			usbotg_fs_pins_a: usbotg-fs-0 {
 				pins {
 					pinmux = <STM32_PINMUX('A', 10, AF10)>, /* OTG_FS_ID */
 						 <STM32_PINMUX('A', 11, AF10)>, /* OTG_FS_DM */
@@ -223,7 +223,7 @@
 				};
 			};
 
-			sdio_pins_a: sdio_pins_a@0 {
+			sdio_pins_a: sdio-pins-a-0 {
 				pins {
 					pinmux = <STM32_PINMUX('C', 8, AF12)>, /* SDMMC1 D0 */
 						 <STM32_PINMUX('C', 9, AF12)>, /* SDMMC1 D1 */
@@ -236,7 +236,7 @@
 				};
 			};
 
-			sdio_pins_od_a: sdio_pins_od_a@0 {
+			sdio_pins_od_a: sdio-pins-od-a-0 {
 				pins1 {
 					pinmux = <STM32_PINMUX('C', 8, AF12)>, /* SDMMC1 D0 */
 						 <STM32_PINMUX('C', 9, AF12)>, /* SDMMC1 D1 */
@@ -254,7 +254,7 @@
 				};
 			};
 
-			sdio_pins_b: sdio_pins_b@0 {
+			sdio_pins_b: sdio-pins-b-0 {
 				pins {
 					pinmux = <STM32_PINMUX('G', 9, AF11)>, /* SDMMC2 D0 */
 						 <STM32_PINMUX('G', 10, AF11)>, /* SDMMC2 D1 */
@@ -267,7 +267,7 @@
 				};
 			};
 
-			sdio_pins_od_b: sdio_pins_od_b@0 {
+			sdio_pins_od_b: sdio-pins-od-b-0 {
 				pins1 {
 					pinmux = <STM32_PINMUX('G', 9, AF11)>, /* SDMMC2 D0 */
 						 <STM32_PINMUX('G', 10, AF11)>, /* SDMMC2 D1 */
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
