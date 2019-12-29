Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1077112CAC5
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Dec 2019 21:33:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bfeyBOCbM0KdsOQYTNoB/u70ObHwNy4bqXr2K7P7Jh0=; b=kaJZUgT6TLYBEj
	0ttqDYuueoZqL9djTrD1flmTAGJhgyaVrjYnv0tt53SWt522onh7EuFvm6iy7+9yV4MWHv3aALMv5
	W6+BwBz2Q+Xrxph26hji9Uyowdhzh2rH8Nm3Yev5cFg4n67o4p0G8r0qOAAMhXIGvRW8jqfPi0AeV
	e9B/vYfziOOEfFZRQrIvFKi9Hm8g5+/EaHUdjbcp4dz3xcHRlLay+wN34eWcXXb+A8XOVq22wjG/W
	OFnNBa3PRQlM9K53V2JEPMLB/Eil1LRLwsqWAGS3W4dldc9+s3WAowZnH60nad4o0cRC14Qs06oUh
	lIv0rMft+5IT5K7PGQ2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilfFW-0004o1-Ck; Sun, 29 Dec 2019 20:33:18 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilfFL-0004nW-3H
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Dec 2019 20:33:09 +0000
X-Originating-IP: 92.184.100.83
Received: from localhost (unknown [92.184.100.83])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id C354BC0002;
 Sun, 29 Dec 2019 20:32:46 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: at91: sama5d3: switch to new clock bindings
Date: Sun, 29 Dec 2019 21:32:38 +0100
Message-Id: <20191229203238.336185-1-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_123307_424126_3B6E0108 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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

Switch sama5d3 boards to the new PMC clock bindings.

This prevents the wb50n to use the out of spec rate for USART1.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 arch/arm/boot/dts/at91-dvk_su60_somc.dtsi |   2 +-
 arch/arm/boot/dts/at91-wb50n.dtsi         |   4 -
 arch/arm/boot/dts/sama5d3.dtsi            | 424 ++--------------------
 arch/arm/boot/dts/sama5d3_can.dtsi        |  20 +-
 arch/arm/boot/dts/sama5d3_emac.dtsi       |   8 +-
 arch/arm/boot/dts/sama5d3_gmac.dtsi       |  11 +-
 arch/arm/boot/dts/sama5d3_lcd.dtsi        |  19 +-
 arch/arm/boot/dts/sama5d3_mci2.dtsi       |  11 +-
 arch/arm/boot/dts/sama5d3_tcb1.dtsi       |  11 +-
 arch/arm/boot/dts/sama5d3_uart.dtsi       |  20 +-
 arch/arm/boot/dts/sama5d3xmb.dtsi         |   6 +-
 arch/arm/boot/dts/sama5d3xmb_cmp.dtsi     |   6 +-
 12 files changed, 56 insertions(+), 486 deletions(-)

diff --git a/arch/arm/boot/dts/at91-dvk_su60_somc.dtsi b/arch/arm/boot/dts/at91-dvk_su60_somc.dtsi
index 21876da7c442..c1c8650dafce 100644
--- a/arch/arm/boot/dts/at91-dvk_su60_somc.dtsi
+++ b/arch/arm/boot/dts/at91-dvk_su60_somc.dtsi
@@ -62,7 +62,7 @@
 	wm8904: wm8904@1a {
 		compatible = "wlf,wm8904";
 		reg = <0x1a>;
-		clocks = <&pck2>;
+		clocks = <&pmc PMC_TYPE_SYSTEM 10>;
 		clock-names = "mclk";
 	};
 };
diff --git a/arch/arm/boot/dts/at91-wb50n.dtsi b/arch/arm/boot/dts/at91-wb50n.dtsi
index 4ed8500a5cb8..1487b893cfa7 100644
--- a/arch/arm/boot/dts/at91-wb50n.dtsi
+++ b/arch/arm/boot/dts/at91-wb50n.dtsi
@@ -46,10 +46,6 @@
 	atmel,osc-bypass;
 };
 
-&usart1_clk {
-	atmel,clk-output-range = <0 132000000>;
-};
-
 &mmc0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_mmc0_clk_cmd_dat0 &pinctrl_mmc0_dat1_3 &pinctrl_mmc0_cd>;
diff --git a/arch/arm/boot/dts/sama5d3.dtsi b/arch/arm/boot/dts/sama5d3.dtsi
index f770aace0efd..2e983babab4f 100644
--- a/arch/arm/boot/dts/sama5d3.dtsi
+++ b/arch/arm/boot/dts/sama5d3.dtsi
@@ -108,7 +108,7 @@
 				status = "disabled";
 				#address-cells = <1>;
 				#size-cells = <0>;
-				clocks = <&mci0_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 21>;
 				clock-names = "mci_clk";
 			};
 
@@ -123,7 +123,7 @@
 				dma-names = "tx", "rx";
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_spi0>;
-				clocks = <&spi0_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 24>;
 				clock-names = "spi_clk";
 				status = "disabled";
 			};
@@ -137,7 +137,7 @@
 				dma-names = "tx", "rx";
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_ssc0_tx &pinctrl_ssc0_rx>;
-				clocks = <&ssc0_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 38>;
 				clock-names = "pclk";
 				status = "disabled";
 			};
@@ -148,7 +148,7 @@
 				#size-cells = <0>;
 				reg = <0xf0010000 0x100>;
 				interrupts = <26 IRQ_TYPE_LEVEL_HIGH 0>;
-				clocks = <&tcb0_clk>, <&clk32k>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 26>, <&clk32k>;
 				clock-names = "t0_clk", "slow_clk";
 			};
 
@@ -163,7 +163,7 @@
 				pinctrl-0 = <&pinctrl_i2c0>;
 				#address-cells = <1>;
 				#size-cells = <0>;
-				clocks = <&twi0_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 18>;
 				status = "disabled";
 			};
 
@@ -178,7 +178,7 @@
 				pinctrl-0 = <&pinctrl_i2c1>;
 				#address-cells = <1>;
 				#size-cells = <0>;
-				clocks = <&twi1_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 19>;
 				status = "disabled";
 			};
 
@@ -191,7 +191,7 @@
 				dma-names = "tx", "rx";
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_usart0>;
-				clocks = <&usart0_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 12>;
 				clock-names = "usart";
 				status = "disabled";
 			};
@@ -205,7 +205,7 @@
 				dma-names = "tx", "rx";
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_usart1>;
-				clocks = <&usart1_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 13>;
 				clock-names = "usart";
 				status = "disabled";
 			};
@@ -216,7 +216,7 @@
 				interrupts = <16 IRQ_TYPE_LEVEL_HIGH 5>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_uart0>;
-				clocks = <&uart0_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 16>;
 				clock-names = "usart";
 				status = "disabled";
 			};
@@ -226,7 +226,7 @@
 				reg = <0xf002c000 0x300>;
 				interrupts = <28 IRQ_TYPE_LEVEL_HIGH 4>;
 				#pwm-cells = <3>;
-				clocks = <&pwm_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 28>;
 				status = "disabled";
 			};
 
@@ -236,7 +236,7 @@
 				interrupts = <37 IRQ_TYPE_LEVEL_HIGH 5>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_isi_data_0_7>;
-				clocks = <&isi_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 37>;
 				clock-names = "isi_clk";
 				status = "disabled";
 				port {
@@ -261,7 +261,7 @@
 				status = "disabled";
 				#address-cells = <1>;
 				#size-cells = <0>;
-				clocks = <&mci1_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 22>;
 				clock-names = "mci_clk";
 			};
 
@@ -276,7 +276,7 @@
 				dma-names = "tx", "rx";
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_spi1>;
-				clocks = <&spi1_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 25>;
 				clock-names = "spi_clk";
 				status = "disabled";
 			};
@@ -290,7 +290,7 @@
 				dma-names = "tx", "rx";
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_ssc1_tx &pinctrl_ssc1_rx>;
-				clocks = <&ssc1_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 39>;
 				clock-names = "pclk";
 				status = "disabled";
 			};
@@ -317,7 +317,7 @@
 					&pinctrl_adc0_ad10
 					&pinctrl_adc0_ad11
 					>;
-				clocks = <&adc_clk>,
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 29>,
 					 <&adc_op_clk>;
 				clock-names = "adc_clk", "adc_op_clk";
 				atmel,adc-channels-used = <0xfff>;
@@ -361,7 +361,7 @@
 				pinctrl-0 = <&pinctrl_i2c2>;
 				#address-cells = <1>;
 				#size-cells = <0>;
-				clocks = <&twi2_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 20>;
 				status = "disabled";
 			};
 
@@ -374,7 +374,7 @@
 				dma-names = "tx", "rx";
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_usart2>;
-				clocks = <&usart2_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 14>;
 				clock-names = "usart";
 				status = "disabled";
 			};
@@ -388,7 +388,7 @@
 				dma-names = "tx", "rx";
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_usart3>;
-				clocks = <&usart3_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 15>;
 				clock-names = "usart";
 				status = "disabled";
 			};
@@ -399,7 +399,7 @@
 				interrupts = <42 IRQ_TYPE_LEVEL_HIGH 0>;
 				dmas = <&dma1 2 AT91_DMA_CFG_PER_ID(17)>;
 				dma-names = "tx";
-				clocks = <&sha_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 42>;
 				clock-names = "sha_clk";
 			};
 
@@ -410,7 +410,7 @@
 				dmas = <&dma1 2 AT91_DMA_CFG_PER_ID(18)>,
 				       <&dma1 2 AT91_DMA_CFG_PER_ID(19)>;
 				dma-names = "tx", "rx";
-				clocks = <&aes_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 43>;
 				clock-names = "aes_clk";
 			};
 
@@ -421,7 +421,7 @@
 				dmas = <&dma1 2 AT91_DMA_CFG_PER_ID(20)>,
 				       <&dma1 2 AT91_DMA_CFG_PER_ID(21)>;
 				dma-names = "tx", "rx";
-				clocks = <&tdes_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 44>;
 				clock-names = "tdes_clk";
 			};
 
@@ -429,14 +429,14 @@
 				compatible = "atmel,at91sam9g45-trng";
 				reg = <0xf8040000 0x100>;
 				interrupts = <45 IRQ_TYPE_LEVEL_HIGH 0>;
-				clocks = <&trng_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 45>;
 			};
 
 			hsmc: hsmc@ffffc000 {
 				compatible = "atmel,sama5d3-smc", "syscon", "simple-mfd";
 				reg = <0xffffc000 0x1000>;
 				interrupts = <5 IRQ_TYPE_LEVEL_HIGH 6>;
-				clocks = <&hsmc_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 5>;
 				#address-cells = <1>;
 				#size-cells = <1>;
 				ranges;
@@ -453,7 +453,7 @@
 				reg = <0xffffe600 0x200>;
 				interrupts = <30 IRQ_TYPE_LEVEL_HIGH 0>;
 				#dma-cells = <2>;
-				clocks = <&dma0_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 30>;
 				clock-names = "dma_clk";
 			};
 
@@ -462,14 +462,14 @@
 				reg = <0xffffe800 0x200>;
 				interrupts = <31 IRQ_TYPE_LEVEL_HIGH 0>;
 				#dma-cells = <2>;
-				clocks = <&dma1_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 31>;
 				clock-names = "dma_clk";
 			};
 
 			ramc0: ramc@ffffea00 {
 				compatible = "atmel,sama5d3-ddramc";
 				reg = <0xffffea00 0x200>;
-				clocks = <&ddrck>, <&mpddr_clk>;
+				clocks = <&pmc PMC_TYPE_SYSTEM 2>, <&pmc PMC_TYPE_PERIPHERAL 49>;
 				clock-names = "ddrck", "mpddr";
 			};
 
@@ -482,7 +482,7 @@
 				dma-names = "tx", "rx";
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_dbgu>;
-				clocks = <&dbgu_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 2>;
 				clock-names = "usart";
 				status = "disabled";
 			};
@@ -940,7 +940,7 @@
 					gpio-controller;
 					interrupt-controller;
 					#interrupt-cells = <2>;
-					clocks = <&pioA_clk>;
+					clocks = <&pmc PMC_TYPE_PERIPHERAL 6>;
 				};
 
 				pioB: gpio@fffff400 {
@@ -951,7 +951,7 @@
 					gpio-controller;
 					interrupt-controller;
 					#interrupt-cells = <2>;
-					clocks = <&pioB_clk>;
+					clocks = <&pmc PMC_TYPE_PERIPHERAL 7>;
 				};
 
 				pioC: gpio@fffff600 {
@@ -962,7 +962,7 @@
 					gpio-controller;
 					interrupt-controller;
 					#interrupt-cells = <2>;
-					clocks = <&pioC_clk>;
+					clocks = <&pmc PMC_TYPE_PERIPHERAL 8>;
 				};
 
 				pioD: gpio@fffff800 {
@@ -973,7 +973,7 @@
 					gpio-controller;
 					interrupt-controller;
 					#interrupt-cells = <2>;
-					clocks = <&pioD_clk>;
+					clocks = <&pmc PMC_TYPE_PERIPHERAL 9>;
 				};
 
 				pioE: gpio@fffffa00 {
@@ -984,7 +984,7 @@
 					gpio-controller;
 					interrupt-controller;
 					#interrupt-cells = <2>;
-					clocks = <&pioE_clk>;
+					clocks = <&pmc PMC_TYPE_PERIPHERAL 10>;
 				};
 			};
 
@@ -992,353 +992,9 @@
 				compatible = "atmel,sama5d3-pmc", "syscon";
 				reg = <0xfffffc00 0x120>;
 				interrupts = <1 IRQ_TYPE_LEVEL_HIGH 7>;
-				interrupt-controller;
-				#address-cells = <1>;
-				#size-cells = <0>;
-				#interrupt-cells = <1>;
-
-				main_rc_osc: main_rc_osc {
-					compatible = "atmel,at91sam9x5-clk-main-rc-osc";
-					#clock-cells = <0>;
-					interrupt-parent = <&pmc>;
-					interrupts = <AT91_PMC_MOSCRCS>;
-					clock-frequency = <12000000>;
-					clock-accuracy = <50000000>;
-				};
-
-				main_osc: main_osc {
-					compatible = "atmel,at91rm9200-clk-main-osc";
-					#clock-cells = <0>;
-					interrupt-parent = <&pmc>;
-					interrupts = <AT91_PMC_MOSCS>;
-					clocks = <&main_xtal>;
-				};
-
-				main: mainck {
-					compatible = "atmel,at91sam9x5-clk-main";
-					#clock-cells = <0>;
-					interrupt-parent = <&pmc>;
-					interrupts = <AT91_PMC_MOSCSELS>;
-					clocks = <&main_rc_osc &main_osc>;
-				};
-
-				plla: pllack {
-					compatible = "atmel,sama5d3-clk-pll";
-					#clock-cells = <0>;
-					interrupt-parent = <&pmc>;
-					interrupts = <AT91_PMC_LOCKA>;
-					clocks = <&main>;
-					reg = <0>;
-					atmel,clk-input-range = <8000000 50000000>;
-					#atmel,pll-clk-output-range-cells = <4>;
-					atmel,pll-clk-output-ranges = <400000000 1000000000 0 0>;
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
-					interrupt-parent = <&pmc>;
-					interrupts = <AT91_PMC_LOCKU>;
-					clocks = <&main>;
-				};
-
-				mck: masterck {
-					compatible = "atmel,at91sam9x5-clk-master";
-					#clock-cells = <0>;
-					interrupt-parent = <&pmc>;
-					interrupts = <AT91_PMC_MCKRDY>;
-					clocks = <&clk32k>, <&main>, <&plladiv>, <&utmi>;
-					atmel,clk-output-range = <0 166000000>;
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
-					compatible = "atmel,at91sam9x5-clk-programmable";
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
-
-					prog2: prog2 {
-						#clock-cells = <0>;
-						reg = <2>;
-						interrupts = <AT91_PMC_PCKRDY(2)>;
-					};
-				};
-
-				smd: smdclk {
-					compatible = "atmel,at91sam9x5-clk-smd";
-					#clock-cells = <0>;
-					clocks = <&plladiv>, <&utmi>;
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
-					smdck: smdck {
-						#clock-cells = <0>;
-						reg = <4>;
-						clocks = <&smd>;
-					};
-
-					uhpck: uhpck {
-						#clock-cells = <0>;
-						reg = <6>;
-						clocks = <&usb>;
-					};
-
-					udpck: udpck {
-						#clock-cells = <0>;
-						reg = <7>;
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
-
-					pck2: pck2 {
-						#clock-cells = <0>;
-						reg = <10>;
-						clocks = <&prog2>;
-					};
-				};
-
-				periphck {
-					compatible = "atmel,at91sam9x5-clk-peripheral";
-					#address-cells = <1>;
-					#size-cells = <0>;
-					clocks = <&mck>;
-
-					dbgu_clk: dbgu_clk {
-						#clock-cells = <0>;
-						reg = <2>;
-					};
-
-					hsmc_clk: hsmc_clk {
-						#clock-cells = <0>;
-						reg = <5>;
-					};
-
-					pioA_clk: pioA_clk {
-						#clock-cells = <0>;
-						reg = <6>;
-					};
-
-					pioB_clk: pioB_clk {
-						#clock-cells = <0>;
-						reg = <7>;
-					};
-
-					pioC_clk: pioC_clk {
-						#clock-cells = <0>;
-						reg = <8>;
-					};
-
-					pioD_clk: pioD_clk {
-						#clock-cells = <0>;
-						reg = <9>;
-					};
-
-					pioE_clk: pioE_clk {
-						#clock-cells = <0>;
-						reg = <10>;
-					};
-
-					usart0_clk: usart0_clk {
-						#clock-cells = <0>;
-						reg = <12>;
-						atmel,clk-output-range = <0 66000000>;
-					};
-
-					usart1_clk: usart1_clk {
-						#clock-cells = <0>;
-						reg = <13>;
-						atmel,clk-output-range = <0 66000000>;
-					};
-
-					usart2_clk: usart2_clk {
-						#clock-cells = <0>;
-						reg = <14>;
-						atmel,clk-output-range = <0 66000000>;
-					};
-
-					usart3_clk: usart3_clk {
-						#clock-cells = <0>;
-						reg = <15>;
-						atmel,clk-output-range = <0 66000000>;
-					};
-
-					uart0_clk: uart0_clk {
-						#clock-cells = <0>;
-						reg = <16>;
-						atmel,clk-output-range = <0 66000000>;
-					};
-
-					twi0_clk: twi0_clk {
-						reg = <18>;
-						#clock-cells = <0>;
-						atmel,clk-output-range = <0 16625000>;
-					};
-
-					twi1_clk: twi1_clk {
-						#clock-cells = <0>;
-						reg = <19>;
-						atmel,clk-output-range = <0 16625000>;
-					};
-
-					twi2_clk: twi2_clk {
-						#clock-cells = <0>;
-						reg = <20>;
-						atmel,clk-output-range = <0 16625000>;
-					};
-
-					mci0_clk: mci0_clk {
-						#clock-cells = <0>;
-						reg = <21>;
-					};
-
-					mci1_clk: mci1_clk {
-						#clock-cells = <0>;
-						reg = <22>;
-					};
-
-					spi0_clk: spi0_clk {
-						#clock-cells = <0>;
-						reg = <24>;
-						atmel,clk-output-range = <0 133000000>;
-					};
-
-					spi1_clk: spi1_clk {
-						#clock-cells = <0>;
-						reg = <25>;
-						atmel,clk-output-range = <0 133000000>;
-					};
-
-					tcb0_clk: tcb0_clk {
-						#clock-cells = <0>;
-						reg = <26>;
-						atmel,clk-output-range = <0 133000000>;
-					};
-
-					pwm_clk: pwm_clk {
-						#clock-cells = <0>;
-						reg = <28>;
-					};
-
-					adc_clk: adc_clk {
-						#clock-cells = <0>;
-						reg = <29>;
-						atmel,clk-output-range = <0 66000000>;
-					};
-
-					dma0_clk: dma0_clk {
-						#clock-cells = <0>;
-						reg = <30>;
-					};
-
-					dma1_clk: dma1_clk {
-						#clock-cells = <0>;
-						reg = <31>;
-					};
-
-					uhphs_clk: uhphs_clk {
-						#clock-cells = <0>;
-						reg = <32>;
-					};
-
-					udphs_clk: udphs_clk {
-						#clock-cells = <0>;
-						reg = <33>;
-					};
-
-					isi_clk: isi_clk {
-						#clock-cells = <0>;
-						reg = <37>;
-					};
-
-					ssc0_clk: ssc0_clk {
-						#clock-cells = <0>;
-						reg = <38>;
-						atmel,clk-output-range = <0 66000000>;
-					};
-
-					ssc1_clk: ssc1_clk {
-						#clock-cells = <0>;
-						reg = <39>;
-						atmel,clk-output-range = <0 66000000>;
-					};
-
-					sha_clk: sha_clk {
-						#clock-cells = <0>;
-						reg = <42>;
-					};
-
-					aes_clk: aes_clk {
-						#clock-cells = <0>;
-						reg = <43>;
-					};
-
-					tdes_clk: tdes_clk {
-						#clock-cells = <0>;
-						reg = <44>;
-					};
-
-					trng_clk: trng_clk {
-						#clock-cells = <0>;
-						reg = <45>;
-					};
-
-					fuse_clk: fuse_clk {
-						#clock-cells = <0>;
-						reg = <48>;
-					};
-
-					mpddr_clk: mpddr_clk {
-						#clock-cells = <0>;
-						reg = <49>;
-					};
-				};
+				#clock-cells = <2>;
+				clocks = <&clk32k>, <&main_xtal>;
+				clock-names = "slow_clk", "main_xtal";
 			};
 
 			reset_controller: rstc@fffffe00 {
@@ -1357,7 +1013,7 @@
 				compatible = "atmel,at91sam9260-pit";
 				reg = <0xfffffe30 0xf>;
 				interrupts = <3 IRQ_TYPE_LEVEL_HIGH 5>;
-				clocks = <&mck>;
+				clocks = <&pmc PMC_TYPE_CORE PMC_MCK>;
 			};
 
 			watchdog: watchdog@fffffe40 {
@@ -1399,7 +1055,7 @@
 			reg = <0x00500000 0x100000
 			       0xf8030000 0x4000>;
 			interrupts = <33 IRQ_TYPE_LEVEL_HIGH 2>;
-			clocks = <&udphs_clk>, <&utmi>;
+			clocks = <&pmc PMC_TYPE_PERIPHERAL 33>, <&pmc PMC_TYPE_CORE PMC_UTMI>;
 			clock-names = "pclk", "hclk";
 			status = "disabled";
 
@@ -1513,7 +1169,7 @@
 			compatible = "atmel,at91rm9200-ohci", "usb-ohci";
 			reg = <0x00600000 0x100000>;
 			interrupts = <32 IRQ_TYPE_LEVEL_HIGH 2>;
-			clocks = <&uhphs_clk>, <&uhphs_clk>, <&uhpck>;
+			clocks = <&pmc PMC_TYPE_PERIPHERAL 32>, <&pmc PMC_TYPE_PERIPHERAL 32>, <&pmc PMC_TYPE_SYSTEM 6>;
 			clock-names = "ohci_clk", "hclk", "uhpck";
 			status = "disabled";
 		};
@@ -1522,7 +1178,7 @@
 			compatible = "atmel,at91sam9g45-ehci", "usb-ehci";
 			reg = <0x00700000 0x100000>;
 			interrupts = <32 IRQ_TYPE_LEVEL_HIGH 2>;
-			clocks = <&utmi>, <&uhphs_clk>;
+			clocks = <&pmc PMC_TYPE_CORE PMC_UTMI>, <&pmc PMC_TYPE_PERIPHERAL 32>;
 			clock-names = "usb_clk", "ehci_clk";
 			status = "disabled";
 		};
@@ -1538,7 +1194,7 @@
 				  0x1 0x0 0x40000000 0x10000000
 				  0x2 0x0 0x50000000 0x10000000
 				  0x3 0x0 0x60000000 0x10000000>;
-			clocks = <&mck>;
+			clocks = <&pmc PMC_TYPE_CORE PMC_MCK>;
 			status = "disabled";
 
 			nand_controller: nand-controller {
diff --git a/arch/arm/boot/dts/sama5d3_can.dtsi b/arch/arm/boot/dts/sama5d3_can.dtsi
index cf06a018ed0f..9ac29bf3f933 100644
--- a/arch/arm/boot/dts/sama5d3_can.dtsi
+++ b/arch/arm/boot/dts/sama5d3_can.dtsi
@@ -31,29 +31,13 @@
 
 			};
 
-			pmc: pmc@fffffc00 {
-				periphck {
-					can0_clk: can0_clk {
-						#clock-cells = <0>;
-						reg = <40>;
-						atmel,clk-output-range = <0 66000000>;
-					};
-
-					can1_clk: can1_clk {
-						#clock-cells = <0>;
-						reg = <41>;
-						atmel,clk-output-range = <0 66000000>;
-					};
-				};
-			};
-
 			can0: can@f000c000 {
 				compatible = "atmel,at91sam9x5-can";
 				reg = <0xf000c000 0x300>;
 				interrupts = <40 IRQ_TYPE_LEVEL_HIGH 3>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_can0_rx_tx>;
-				clocks = <&can0_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 40>;
 				clock-names = "can_clk";
 				status = "disabled";
 			};
@@ -64,7 +48,7 @@
 				interrupts = <41 IRQ_TYPE_LEVEL_HIGH 3>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_can1_rx_tx>;
-				clocks = <&can1_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 41>;
 				clock-names = "can_clk";
 				status = "disabled";
 			};
diff --git a/arch/arm/boot/dts/sama5d3_emac.dtsi b/arch/arm/boot/dts/sama5d3_emac.dtsi
index 9aef414bcd2e..45226108850d 100644
--- a/arch/arm/boot/dts/sama5d3_emac.dtsi
+++ b/arch/arm/boot/dts/sama5d3_emac.dtsi
@@ -31,12 +31,6 @@
 			};
 
 			pmc: pmc@fffffc00 {
-				periphck {
-					macb1_clk: macb1_clk {
-						#clock-cells = <0>;
-						reg = <35>;
-					};
-				};
 			};
 
 			macb1: ethernet@f802c000 {
@@ -45,7 +39,7 @@
 				interrupts = <35 IRQ_TYPE_LEVEL_HIGH 3>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_macb1_rmii>;
-				clocks = <&macb1_clk>, <&macb1_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 35>, <&pmc PMC_TYPE_PERIPHERAL 35>;
 				clock-names = "hclk", "pclk";
 				status = "disabled";
 			};
diff --git a/arch/arm/boot/dts/sama5d3_gmac.dtsi b/arch/arm/boot/dts/sama5d3_gmac.dtsi
index 3667765a138b..884df7a54dbb 100644
--- a/arch/arm/boot/dts/sama5d3_gmac.dtsi
+++ b/arch/arm/boot/dts/sama5d3_gmac.dtsi
@@ -63,22 +63,13 @@
 				};
 			};
 
-			pmc: pmc@fffffc00 {
-				periphck {
-					macb0_clk: macb0_clk {
-						#clock-cells = <0>;
-						reg = <34>;
-					};
-				};
-			};
-
 			macb0: ethernet@f0028000 {
 				compatible = "atmel,sama5d3-gem";
 				reg = <0xf0028000 0x100>;
 				interrupts = <34 IRQ_TYPE_LEVEL_HIGH 3>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_macb0_data_rgmii &pinctrl_macb0_signal_rgmii>;
-				clocks = <&macb0_clk>, <&macb0_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 34>, <&pmc PMC_TYPE_PERIPHERAL 34>;
 				clock-names = "hclk", "pclk";
 				status = "disabled";
 			};
diff --git a/arch/arm/boot/dts/sama5d3_lcd.dtsi b/arch/arm/boot/dts/sama5d3_lcd.dtsi
index 2cf046cd4e99..308d2fc276d6 100644
--- a/arch/arm/boot/dts/sama5d3_lcd.dtsi
+++ b/arch/arm/boot/dts/sama5d3_lcd.dtsi
@@ -16,7 +16,7 @@
 				compatible = "atmel,sama5d3-hlcdc";
 				reg = <0xf0030000 0x2000>;
 				interrupts = <36 IRQ_TYPE_LEVEL_HIGH 0>;
-				clocks = <&lcdc_clk>, <&lcdck>, <&clk32k>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 36>, <&pmc PMC_TYPE_SYSTEM 3>, <&clk32k>;
 				clock-names = "periph_clk","sys_clk", "slow_clk";
 				status = "disabled";
 
@@ -192,23 +192,6 @@
 					};
 				};
 			};
-
-			pmc: pmc@fffffc00 {
-				periphck {
-					lcdc_clk: lcdc_clk {
-						#clock-cells = <0>;
-						reg = <36>;
-					};
-				};
-
-				systemck {
-					lcdck: lcdck {
-						#clock-cells = <0>;
-						reg = <3>;
-						clocks = <&mck>;
-					};
-				};
-			};
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/sama5d3_mci2.dtsi b/arch/arm/boot/dts/sama5d3_mci2.dtsi
index 3c83c1c36ac8..7141ee97ec3e 100644
--- a/arch/arm/boot/dts/sama5d3_mci2.dtsi
+++ b/arch/arm/boot/dts/sama5d3_mci2.dtsi
@@ -30,15 +30,6 @@
 				};
 			};
 
-			pmc: pmc@fffffc00 {
-				periphck {
-					mci2_clk: mci2_clk {
-						#clock-cells = <0>;
-						reg = <23>;
-					};
-				};
-			};
-
 			mmc2: mmc@f8004000 {
 				compatible = "atmel,hsmci";
 				reg = <0xf8004000 0x600>;
@@ -47,7 +38,7 @@
 				dma-names = "rxtx";
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_mmc2_clk_cmd_dat0 &pinctrl_mmc2_dat1_3>;
-				clocks = <&mci2_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 23>;
 				clock-names = "mci_clk";
 				status = "disabled";
 				#address-cells = <1>;
diff --git a/arch/arm/boot/dts/sama5d3_tcb1.dtsi b/arch/arm/boot/dts/sama5d3_tcb1.dtsi
index 1584035daf51..2b18c5c2cc03 100644
--- a/arch/arm/boot/dts/sama5d3_tcb1.dtsi
+++ b/arch/arm/boot/dts/sama5d3_tcb1.dtsi
@@ -17,22 +17,13 @@
 
 	ahb {
 		apb {
-			pmc: pmc@fffffc00 {
-				periphck {
-					tcb1_clk: tcb1_clk {
-						#clock-cells = <0>;
-						reg = <27>;
-					};
-				};
-			};
-
 			tcb1: timer@f8014000 {
 				compatible = "atmel,at91sam9x5-tcb", "simple-mfd", "syscon";
 				#address-cells = <1>;
 				#size-cells = <0>;
 				reg = <0xf8014000 0x100>;
 				interrupts = <27 IRQ_TYPE_LEVEL_HIGH 0>;
-				clocks = <&tcb1_clk>, <&clk32k>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 27>, <&clk32k>;
 				clock-names = "t0_clk", "slow_clk";
 			};
 		};
diff --git a/arch/arm/boot/dts/sama5d3_uart.dtsi b/arch/arm/boot/dts/sama5d3_uart.dtsi
index 4316bdbdc25d..a3eaba995cf4 100644
--- a/arch/arm/boot/dts/sama5d3_uart.dtsi
+++ b/arch/arm/boot/dts/sama5d3_uart.dtsi
@@ -36,29 +36,13 @@
 				};
 			};
 
-			pmc: pmc@fffffc00 {
-				periphck {
-					uart0_clk: uart0_clk {
-						#clock-cells = <0>;
-						reg = <16>;
-						atmel,clk-output-range = <0 66000000>;
-					};
-
-					uart1_clk: uart1_clk {
-						#clock-cells = <0>;
-						reg = <17>;
-						atmel,clk-output-range = <0 66000000>;
-					};
-				};
-			};
-
 			uart0: serial@f0024000 {
 				compatible = "atmel,at91sam9260-usart";
 				reg = <0xf0024000 0x100>;
 				interrupts = <16 IRQ_TYPE_LEVEL_HIGH 5>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_uart0>;
-				clocks = <&uart0_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 16>;
 				clock-names = "usart";
 				status = "disabled";
 			};
@@ -69,7 +53,7 @@
 				interrupts = <17 IRQ_TYPE_LEVEL_HIGH 5>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_uart1>;
-				clocks = <&uart1_clk>;
+				clocks = <&pmc PMC_TYPE_PERIPHERAL 17>;
 				clock-names = "usart";
 				status = "disabled";
 			};
diff --git a/arch/arm/boot/dts/sama5d3xmb.dtsi b/arch/arm/boot/dts/sama5d3xmb.dtsi
index 35031bbc7e70..a499de8a7a64 100644
--- a/arch/arm/boot/dts/sama5d3xmb.dtsi
+++ b/arch/arm/boot/dts/sama5d3xmb.dtsi
@@ -46,7 +46,7 @@
 				wm8904: wm8904@1a {
 					compatible = "wlf,wm8904";
 					reg = <0x1a>;
-					clocks = <&pck0>;
+					clocks = <&pmc PMC_TYPE_SYSTEM 8>;
 					clock-names = "mclk";
 				};
 			};
@@ -60,9 +60,9 @@
 					resetb-gpios = <&pioE 24 GPIO_ACTIVE_LOW>;
 					pwdn-gpios = <&pioE 29 GPIO_ACTIVE_HIGH>;
 					/* use pck1 for the master clock of ov2640 */
-					clocks = <&pck1>;
+					clocks = <&pmc PMC_TYPE_SYSTEM 9>;
 					clock-names = "xvclk";
-					assigned-clocks = <&pck1>;
+					assigned-clocks = <&pmc PMC_TYPE_SYSTEM 9>;
 					assigned-clock-rates = <25000000>;
 
 					port {
diff --git a/arch/arm/boot/dts/sama5d3xmb_cmp.dtsi b/arch/arm/boot/dts/sama5d3xmb_cmp.dtsi
index 8a6916a69da4..fa9e5e2a745d 100644
--- a/arch/arm/boot/dts/sama5d3xmb_cmp.dtsi
+++ b/arch/arm/boot/dts/sama5d3xmb_cmp.dtsi
@@ -45,7 +45,7 @@
 				wm8904: wm8904@1a {
 					compatible = "wlf,wm8904";
 					reg = <0x1a>;
-					clocks = <&pck0>;
+					clocks = <&pmc PMC_TYPE_SYSTEM 8>;
 					clock-names = "mclk";
 				};
 			};
@@ -59,9 +59,9 @@
 					resetb-gpios = <&pioE 24 GPIO_ACTIVE_LOW>;
 					pwdn-gpios = <&pioE 29 GPIO_ACTIVE_HIGH>;
 					/* use pck1 for the master clock of ov2640 */
-					clocks = <&pck1>;
+					clocks = <&pmc PMC_TYPE_SYSTEM 9>;
 					clock-names = "xvclk";
-					assigned-clocks = <&pck1>;
+					assigned-clocks = <&pmc PMC_TYPE_SYSTEM 9>;
 					assigned-clock-rates = <25000000>;
 
 					port {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
