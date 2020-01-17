Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07376141299
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 22:06:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1/jpA3gqiMqhrJcFp1htvY0hsv7cf3zXvtc8rWdnZRY=; b=At0P97SJeK6jUI
	6+D9mTTxX3MPJnhviyfTtUFbucwZxvydq9z3aiaKQGPvwkGt7a0ZTQ8t46t0Z2JpTYHZYc+YmYQ0m
	o1IADeiK1r2Kzsss9Gfr/sf74FLo05m7aTeScpXFAubnuhZOraNvCVlddAETu/r7c6W64RCCL1z56
	9FZzgawMHS8zvVw48LZAGdO0tSTEoP8DPXzrYC2+uJpvZqcz+OgdfRrvP82PAo+IGnMdPRNKtO3y9
	LamPfTxR/9IYyGBQJz+ZVO6QytksTmSEHTL82QpXo6NM3v3ltNTm3OW6t3lHDweRnDo1b01nQoY8e
	H0WdVujKAkDjLn5ao/fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isYpL-00010b-7s; Fri, 17 Jan 2020 21:06:47 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isYp7-0000ud-Lu
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 21:06:38 +0000
X-Originating-IP: 90.65.92.102
Received: from localhost (lfbn-lyo-1-1913-102.w90-65.abo.wanadoo.fr
 [90.65.92.102]) (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 070A51BF204;
 Fri, 17 Jan 2020 21:06:22 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: at91: at91sam9g45: switch to new clock bindings
Date: Fri, 17 Jan 2020 22:06:19 +0100
Message-Id: <20200117210619.17768-1-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_130634_035573_085213C0 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Switch at91sam9g45 boards to the new PMC clock bindings.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 arch/arm/boot/dts/at91sam9g45.dtsi     | 338 +++----------------------
 arch/arm/boot/dts/at91sam9m10g45ek.dts |   4 +-
 2 files changed, 40 insertions(+), 302 deletions(-)

diff --git a/arch/arm/boot/dts/at91sam9g45.dtsi b/arch/arm/boot/dts/at91sam9g45.dtsi
index 691c95ea6175..4f7a41a9a949 100644
--- a/arch/arm/boot/dts/at91sam9g45.dtsi
+++ b/arch/arm/boot/dts/at91sam9g45.dtsi
@@ -103,14 +103,14 @@ aic: interrupt-controller@fffff000 {
 			ramc0: ramc@ffffe400 {
 				compatible = "atmel,at91sam9g45-ddramc";
 				reg = <0xffffe400 0x200>;
-				clocks = <&ddrck>;
+				clocks = <&pmc PMC_TYPE_SYSTEM 2>;
 				clock-names = "ddrck";
 			};
 
 			ramc1: ramc@ffffe600 {
 				compatible = "atmel,at91sam9g45-ddramc";
 				reg = <0xffffe600 0x200>;
-				clocks = <&ddrck>;
+				clocks = <&pmc PMC_TYPE_SYSTEM 2>;
 				clock-names = "ddrck";
 			};
 
@@ -128,271 +128,9 @@ pmc: pmc@fffffc00 {
 				compatible = "atmel,at91sam9g45-pmc", "syscon";
 				reg = <0xfffffc00 0x100>;
 				interrupts = <1 IRQ_TYPE_LEVEL_HIGH 7>;
-				interrupt-controller;
-				#address-cells = <1>;
-				#size-cells = <0>;
-				#interrupt-cells = <1>;
-
-				main_osc: main_osc {
-					compatible = "atmel,at91rm9200-clk-main-osc";
-					#clock-cells = <0>;
-					interrupts-extended = <&pmc AT91_PMC_MOSCS>;
-					clocks = <&main_xtal>;
-				};
-
-				main: mainck {
-					compatible = "atmel,at91rm9200-clk-main";
-					#clock-cells = <0>;
-					clocks = <&main_osc>;
-				};
-
-				plla: pllack {
-					compatible = "atmel,at91rm9200-clk-pll";
-					#clock-cells = <0>;
-					interrupts-extended = <&pmc AT91_PMC_LOCKA>;
-					clocks = <&main>;
-					reg = <0>;
-					atmel,clk-input-range = <2000000 32000000>;
-					#atmel,pll-clk-output-range-cells = <4>;
-					atmel,pll-clk-output-ranges = <745000000 800000000 0 0
-								       695000000 750000000 1 0
-								       645000000 700000000 2 0
-								       595000000 650000000 3 0
-								       545000000 600000000 0 1
-								       495000000 555000000 1 1
-								       445000000 500000000 2 1
-								       400000000 450000000 3 1>;
-				};
-
-				plladiv: plladivck {
-					compatible = "atmel,at91sam9x5-clk-plldiv";
-					#clock-cells = <0>;
-					clocks = <&plla>;
-				};
-
-				utmi: utmick {
-					compatible = "atmel,at91sam9x5-clk-utmi";
-					#clock-cells = <0>;
-					interrupts-extended = <&pmc AT91_PMC_LOCKU>;
-					clocks = <&main>;
-				};
-
-				mck: masterck {
-					compatible = "atmel,at91rm9200-clk-master";
-					#clock-cells = <0>;
-					interrupts-extended = <&pmc AT91_PMC_MCKRDY>;
-					clocks = <&clk32k>, <&main>, <&plladiv>, <&utmi>;
-					atmel,clk-output-range = <0 133333333>;
-					atmel,clk-divisors = <1 2 4 3>;
-				};
-
-				usb: usbck {
-					compatible = "atmel,at91sam9x5-clk-usb";
-					#clock-cells = <0>;
-					clocks = <&plladiv>, <&utmi>;
-				};
-
-				prog: progck {
-					compatible = "atmel,at91sam9g45-clk-programmable";
-					#address-cells = <1>;
-					#size-cells = <0>;
-					interrupt-parent = <&pmc>;
-					clocks = <&clk32k>, <&main>, <&plladiv>, <&utmi>, <&mck>;
-
-					prog0: prog0 {
-						#clock-cells = <0>;
-						reg = <0>;
-						interrupts = <AT91_PMC_PCKRDY(0)>;
-					};
-
-					prog1: prog1 {
-						#clock-cells = <0>;
-						reg = <1>;
-						interrupts = <AT91_PMC_PCKRDY(1)>;
-					};
-				};
-
-				systemck {
-					compatible = "atmel,at91rm9200-clk-system";
-					#address-cells = <1>;
-					#size-cells = <0>;
-
-					ddrck: ddrck {
-						#clock-cells = <0>;
-						reg = <2>;
-						clocks = <&mck>;
-					};
-
-					uhpck: uhpck {
-						#clock-cells = <0>;
-						reg = <6>;
-						clocks = <&usb>;
-					};
-
-					pck0: pck0 {
-						#clock-cells = <0>;
-						reg = <8>;
-						clocks = <&prog0>;
-					};
-
-					pck1: pck1 {
-						#clock-cells = <0>;
-						reg = <9>;
-						clocks = <&prog1>;
-					};
-				};
-
-				periphck {
-					compatible = "atmel,at91rm9200-clk-peripheral";
-					#address-cells = <1>;
-					#size-cells = <0>;
-					clocks = <&mck>;
-
-					pioA_clk: pioA_clk {
-						#clock-cells = <0>;
-						reg = <2>;
-					};
-
-					pioB_clk: pioB_clk {
-						#clock-cells = <0>;
-						reg = <3>;
-					};
-
-					pioC_clk: pioC_clk {
-						#clock-cells = <0>;
-						reg = <4>;
-					};
-
-					pioDE_clk: pioDE_clk {
-						#clock-cells = <0>;
-						reg = <5>;
-					};
-
-					trng_clk: trng_clk {
-						#clock-cells = <0>;
-						reg = <6>;
-					};
-
-					usart0_clk: usart0_clk {
-						#clock-cells = <0>;
-						reg = <7>;
-					};
-
-					usart1_clk: usart1_clk {
-						#clock-cells = <0>;
-						reg = <8>;
-					};
-
-					usart2_clk: usart2_clk {
-						#clock-cells = <0>;
-						reg = <9>;
-					};
-
-					usart3_clk: usart3_clk {
-						#clock-cells = <0>;
-						reg = <10>;
-					};
-
-					mci0_clk: mci0_clk {
-						#clock-cells = <0>;
-						reg = <11>;
-					};
-
-					twi0_clk: twi0_clk {
-						#clock-cells = <0>;
-						reg = <12>;
-					};
-
-					twi1_clk: twi1_clk {
-						#clock-cells = <0>;
-						reg = <13>;
-					};
-
-					spi0_clk: spi0_clk {
-						#clock-cells = <0>;
-						reg = <14>;
-					};
-
-					spi1_clk: spi1_clk {
-						#clock-cells = <0>;
-						reg = <15>;
-					};
-
-					ssc0_clk: ssc0_clk {
-						#clock-cells = <0>;
-						reg = <16>;
-					};
-
-					ssc1_clk: ssc1_clk {
-						#clock-cells = <0>;
-						reg = <17>;
-					};
-
-					tcb0_clk: tcb0_clk {
-						#clock-cells = <0>;
-						reg = <18>;
-					};
-
-					pwm_clk: pwm_clk {
-						#clock-cells = <0>;
-						reg = <19>;
-					};
-
-					adc_clk: adc_clk {
-						#clock-cells = <0>;
-						reg = <20>;
-					};
-
-					dma0_clk: dma0_clk {
-						#clock-cells = <0>;
-						reg = <21>;
-					};
-
-					uhphs_clk: uhphs_clk {
-						#clock-cells = <0>;
-						reg = <22>;
-					};
-
-					lcd_clk: lcd_clk {
-						#clock-cells = <0>;
-						reg = <23>;
-					};
-
-					ac97_clk: ac97_clk {
-						#clock-cells = <0>;
-						reg = <24>;
-					};
-
-					macb0_clk: macb0_clk {
-						#clock-cells = <0>;
-						reg = <25>;
-					};
-
-					isi_clk: isi_clk {
-						#clock-cells = <0>;
-						reg = <26>;
-					};
-
-					udphs_clk: udphs_clk {
-						#clock-cells = <0>;
-						reg = <27>;
-					};
-
-					aestdessha_clk: aestdessha_clk {
-						#clock-cells = <0>;
-						reg = <28>;
-					};
-
-					mci1_clk: mci1_clk {
-						#clock-cells = <0>;
-						reg = <29>;
-					};
-
-					vdec_clk: vdec_clk {
-						#clock-cells = <0>;
-						reg = <30>;
-					};
-				};
+				#clock-cells = <2>;
+				clocks = <&clk32k>, <&main_xtal>;
+				clock-names = "slow_clk", "main_xtal";
 			};
 
 			rstc@fffffd00 {
@@ -405,7 +143,7 @@ pit: timer@fffffd30 {
 				compatible = "atmel,at91sam9260-pit";
 				reg = <0xfffffd30 0xf>;
 				interrupts = <1 IRQ_TYPE_LEVEL_HIGH 7>;
-				clocks = <&mck>;
+				clocks = <&pmc PMC_TYPE_CORE PMC_MCK>;
 			};
 
 
@@ -421,7 +159,7 @@ tcb0: timer@fff7c000 {
 				#size-cells = <0>;
 				reg = <0xfff7c000 0x100>;
 				interrupts = <18 IRQ_TYPE_LEVEL_HIGH 0>;
-				clocks = <&tcb0_clk>, <&tcb0_clk>, <&tcb0_clk>, <&clk32k>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 18>, <&pmc PMC_TYPE_PERIPHERAL 18>, <&pmc PMC_TYPE_PERIPHERAL 18>, <&clk32k>;
 				clock-names = "t0_clk", "t1_clk", "t2_clk", "slow_clk";
 			};
 
@@ -431,7 +169,7 @@ tcb1: timer@fffd4000 {
 				#size-cells = <0>;
 				reg = <0xfffd4000 0x100>;
 				interrupts = <18 IRQ_TYPE_LEVEL_HIGH 0>;
-				clocks = <&tcb0_clk>, <&tcb0_clk>, <&tcb0_clk>, <&clk32k>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 18>, <&pmc PMC_TYPE_PERIPHERAL 18>, <&pmc PMC_TYPE_PERIPHERAL 18>, <&clk32k>;
 				clock-names = "t0_clk", "t1_clk", "t2_clk", "slow_clk";
 			};
 
@@ -440,7 +178,7 @@ dma: dma-controller@ffffec00 {
 				reg = <0xffffec00 0x200>;
 				interrupts = <21 IRQ_TYPE_LEVEL_HIGH 0>;
 				#dma-cells = <2>;
-				clocks = <&dma0_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 21>;
 				clock-names = "dma_clk";
 			};
 
@@ -883,7 +621,7 @@ pioA: gpio@fffff200 {
 					gpio-controller;
 					interrupt-controller;
 					#interrupt-cells = <2>;
-					clocks = <&pioA_clk>;
+					clocks = <&pmc PMC_TYPE_PERIPHERAL 2>;
 				};
 
 				pioB: gpio@fffff400 {
@@ -894,7 +632,7 @@ pioB: gpio@fffff400 {
 					gpio-controller;
 					interrupt-controller;
 					#interrupt-cells = <2>;
-					clocks = <&pioB_clk>;
+					clocks = <&pmc PMC_TYPE_PERIPHERAL 3>;
 				};
 
 				pioC: gpio@fffff600 {
@@ -905,7 +643,7 @@ pioC: gpio@fffff600 {
 					gpio-controller;
 					interrupt-controller;
 					#interrupt-cells = <2>;
-					clocks = <&pioC_clk>;
+					clocks = <&pmc PMC_TYPE_PERIPHERAL 4>;
 				};
 
 				pioD: gpio@fffff800 {
@@ -916,7 +654,7 @@ pioD: gpio@fffff800 {
 					gpio-controller;
 					interrupt-controller;
 					#interrupt-cells = <2>;
-					clocks = <&pioDE_clk>;
+					clocks = <&pmc PMC_TYPE_PERIPHERAL 5>;
 				};
 
 				pioE: gpio@fffffa00 {
@@ -927,7 +665,7 @@ pioE: gpio@fffffa00 {
 					gpio-controller;
 					interrupt-controller;
 					#interrupt-cells = <2>;
-					clocks = <&pioDE_clk>;
+					clocks = <&pmc PMC_TYPE_PERIPHERAL 5>;
 				};
 			};
 
@@ -937,7 +675,7 @@ dbgu: serial@ffffee00 {
 				interrupts = <1 IRQ_TYPE_LEVEL_HIGH 7>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_dbgu>;
-				clocks = <&mck>;
+				clocks = <&pmc PMC_TYPE_CORE PMC_MCK>;
 				clock-names = "usart";
 				status = "disabled";
 			};
@@ -950,7 +688,7 @@ usart0: serial@fff8c000 {
 				atmel,use-dma-tx;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_usart0>;
-				clocks = <&usart0_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 7>;
 				clock-names = "usart";
 				status = "disabled";
 			};
@@ -963,7 +701,7 @@ usart1: serial@fff90000 {
 				atmel,use-dma-tx;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_usart1>;
-				clocks = <&usart1_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 8>;
 				clock-names = "usart";
 				status = "disabled";
 			};
@@ -976,7 +714,7 @@ usart2: serial@fff94000 {
 				atmel,use-dma-tx;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_usart2>;
-				clocks = <&usart2_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 9>;
 				clock-names = "usart";
 				status = "disabled";
 			};
@@ -989,7 +727,7 @@ usart3: serial@fff98000 {
 				atmel,use-dma-tx;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_usart3>;
-				clocks = <&usart3_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 10>;
 				clock-names = "usart";
 				status = "disabled";
 			};
@@ -1000,7 +738,7 @@ macb0: ethernet@fffbc000 {
 				interrupts = <25 IRQ_TYPE_LEVEL_HIGH 3>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_macb_rmii>;
-				clocks = <&macb0_clk>, <&macb0_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 25>, <&pmc PMC_TYPE_PERIPHERAL 25>;
 				clock-names = "hclk", "pclk";
 				status = "disabled";
 			};
@@ -1009,7 +747,7 @@ trng@fffcc000 {
 				compatible = "atmel,at91sam9g45-trng";
 				reg = <0xfffcc000 0x100>;
 				interrupts = <6 IRQ_TYPE_LEVEL_HIGH 0>;
-				clocks = <&trng_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 6>;
 			};
 
 			i2c0: i2c@fff84000 {
@@ -1020,7 +758,7 @@ i2c0: i2c@fff84000 {
 				pinctrl-0 = <&pinctrl_i2c0>;
 				#address-cells = <1>;
 				#size-cells = <0>;
-				clocks = <&twi0_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 12>;
 				status = "disabled";
 			};
 
@@ -1032,7 +770,7 @@ i2c1: i2c@fff88000 {
 				pinctrl-0 = <&pinctrl_i2c1>;
 				#address-cells = <1>;
 				#size-cells = <0>;
-				clocks = <&twi1_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 13>;
 				status = "disabled";
 			};
 
@@ -1042,7 +780,7 @@ ssc0: ssc@fff9c000 {
 				interrupts = <16 IRQ_TYPE_LEVEL_HIGH 5>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_ssc0_tx &pinctrl_ssc0_rx>;
-				clocks = <&ssc0_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 16>;
 				clock-names = "pclk";
 				status = "disabled";
 			};
@@ -1053,7 +791,7 @@ ssc1: ssc@fffa0000 {
 				interrupts = <17 IRQ_TYPE_LEVEL_HIGH 5>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_ssc1_tx &pinctrl_ssc1_rx>;
-				clocks = <&ssc1_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 17>;
 				clock-names = "pclk";
 				status = "disabled";
 			};
@@ -1064,7 +802,7 @@ ac97: sound@fffac000 {
 				interrupts = <24 IRQ_TYPE_LEVEL_HIGH 4>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_ac97>;
-				clocks = <&ac97_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 24>;
 				clock-names = "ac97_clk";
 				status = "disabled";
 			};
@@ -1075,7 +813,7 @@ adc0: adc@fffb0000 {
 				compatible = "atmel,at91sam9g45-adc";
 				reg = <0xfffb0000 0x100>;
 				interrupts = <20 IRQ_TYPE_LEVEL_HIGH 0>;
-				clocks = <&adc_clk>, <&adc_op_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 20>, <&adc_op_clk>;
 				clock-names = "adc_clk", "adc_op_clk";
 				atmel,adc-channels-used = <0xff>;
 				atmel,adc-vref = <3300>;
@@ -1111,7 +849,7 @@ isi@fffb4000 {
 				compatible = "atmel,at91sam9g45-isi";
 				reg = <0xfffb4000 0x4000>;
 				interrupts = <26 IRQ_TYPE_LEVEL_HIGH 5>;
-				clocks = <&isi_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 26>;
 				clock-names = "isi_clk";
 				status = "disabled";
 				port {
@@ -1125,7 +863,7 @@ pwm0: pwm@fffb8000 {
 				reg = <0xfffb8000 0x300>;
 				interrupts = <19 IRQ_TYPE_LEVEL_HIGH 4>;
 				#pwm-cells = <3>;
-				clocks = <&pwm_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 19>;
 				status = "disabled";
 			};
 
@@ -1138,7 +876,7 @@ mmc0: mmc@fff80000 {
 				dma-names = "rxtx";
 				#address-cells = <1>;
 				#size-cells = <0>;
-				clocks = <&mci0_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 11>;
 				clock-names = "mci_clk";
 				status = "disabled";
 			};
@@ -1152,7 +890,7 @@ mmc1: mmc@fffd0000 {
 				dma-names = "rxtx";
 				#address-cells = <1>;
 				#size-cells = <0>;
-				clocks = <&mci1_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 29>;
 				clock-names = "mci_clk";
 				status = "disabled";
 			};
@@ -1176,7 +914,7 @@ spi0: spi@fffa4000 {
 				interrupts = <14 4 3>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_spi0>;
-				clocks = <&spi0_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 14>;
 				clock-names = "spi_clk";
 				status = "disabled";
 			};
@@ -1189,7 +927,7 @@ spi1: spi@fffa8000 {
 				interrupts = <15 4 3>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_spi1>;
-				clocks = <&spi1_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 15>;
 				clock-names = "spi_clk";
 				status = "disabled";
 			};
@@ -1201,7 +939,7 @@ usb2: gadget@fff78000 {
 				reg = <0x00600000 0x80000
 				       0xfff78000 0x400>;
 				interrupts = <27 IRQ_TYPE_LEVEL_HIGH 0>;
-				clocks = <&udphs_clk>, <&utmi>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 27>, <&pmc PMC_TYPE_CORE PMC_UTMI>;
 				clock-names = "pclk", "hclk";
 				status = "disabled";
 
@@ -1294,7 +1032,7 @@ fb0: fb@500000 {
 			interrupts = <23 IRQ_TYPE_LEVEL_HIGH 3>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&pinctrl_fb>;
-			clocks = <&lcd_clk>, <&lcd_clk>;
+			clocks = <&pmc PMC_TYPE_PERIPHERAL 23>, <&pmc PMC_TYPE_PERIPHERAL 23>;
 			clock-names = "hclk", "lcdc_clk";
 			status = "disabled";
 		};
@@ -1303,7 +1041,7 @@ usb0: ohci@700000 {
 			compatible = "atmel,at91rm9200-ohci", "usb-ohci";
 			reg = <0x00700000 0x100000>;
 			interrupts = <22 IRQ_TYPE_LEVEL_HIGH 2>;
-			clocks = <&uhphs_clk>, <&uhphs_clk>, <&uhpck>;
+			clocks = <&pmc PMC_TYPE_PERIPHERAL 22>, <&pmc PMC_TYPE_PERIPHERAL 22>, <&pmc PMC_TYPE_SYSTEM 6>;
 			clock-names = "ohci_clk", "hclk", "uhpck";
 			status = "disabled";
 		};
@@ -1312,7 +1050,7 @@ usb1: ehci@800000 {
 			compatible = "atmel,at91sam9g45-ehci", "usb-ehci";
 			reg = <0x00800000 0x100000>;
 			interrupts = <22 IRQ_TYPE_LEVEL_HIGH 2>;
-			clocks = <&utmi>, <&uhphs_clk>;
+			clocks = <&pmc PMC_TYPE_CORE PMC_UTMI>, <&pmc PMC_TYPE_PERIPHERAL 22>;
 			clock-names = "usb_clk", "ehci_clk";
 			status = "disabled";
 		};
@@ -1330,7 +1068,7 @@ ebi: ebi@10000000 {
 				  0x3 0x0 0x40000000 0x10000000
 				  0x4 0x0 0x50000000 0x10000000
 				  0x5 0x0 0x60000000 0x10000000>;
-			clocks = <&mck>;
+			clocks = <&pmc PMC_TYPE_CORE PMC_MCK>;
 			status = "disabled";
 
 			nand_controller: nand-controller {
diff --git a/arch/arm/boot/dts/at91sam9m10g45ek.dts b/arch/arm/boot/dts/at91sam9m10g45ek.dts
index 84bed6f55fcd..a3a5c82d9f29 100644
--- a/arch/arm/boot/dts/at91sam9m10g45ek.dts
+++ b/arch/arm/boot/dts/at91sam9m10g45ek.dts
@@ -72,9 +72,9 @@ ov2640: camera@30 {
 					pinctrl-0 = <&pinctrl_pck1_as_isi_mck &pinctrl_sensor_power &pinctrl_sensor_reset>;
 					resetb-gpios = <&pioD 12 GPIO_ACTIVE_LOW>;
 					pwdn-gpios = <&pioD 13 GPIO_ACTIVE_HIGH>;
-					clocks = <&pck1>;
+					clocks = <&pmc PMC_TYPE_SYSTEM 9>;
 					clock-names = "xvclk";
-					assigned-clocks = <&pck1>;
+					assigned-clocks = <&pmc PMC_TYPE_SYSTEM 9>;
 					assigned-clock-rates = <25000000>;
 
 					port {
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
