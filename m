Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB8BC8BC5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 16:48:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C2HYC38LkevwOj0BKnbze3bvV5yGcKT+38kUlELtzfg=; b=OcbmygQ26KLZZ9
	qKRY7NpUWXQ1HmezNrLsMn2QS6UvUkXOS/QA3GOBknDs4G1afbN3xBSoJNf80QrdeOTPZo+Zc6G7K
	8vSBjPxFe82zRDCFhK9A21EmOSc6AVsQQRf4IWzdXFD+TM0rCql3dZKB5slvTakWhsRuI/V8+oc5d
	L2nVaXOw6ecnztl/ks0UquRGTKxfD47EgikY8Ug36s6puKhH0tQJD5Nl6uzxxkGu33xI67EGbgzpZ
	ufFb7ZJCtV33/u7CW3aigR29r5mLO46zh3B/j9z6uP9+TWpBgfEkyqZicoTJ1OG5dTWJrMXFgbWHA
	phBn8T60x8gttndaVxXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFfvX-0008Sw-LF; Wed, 02 Oct 2019 14:48:27 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFfuS-0007XM-0e
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 14:47:21 +0000
X-Originating-IP: 86.207.98.53
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 4BAD520013;
 Wed,  2 Oct 2019 14:47:07 +0000 (UTC)
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: Wolfram Sang <wsa@the-dreams.de>, linux-i2c@vger.kernel.org,
 linux-kernel@vger.kernel.org, Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/4] ARM: at91/dt: sama5d3: add i2c gpio pinctrl
Date: Wed,  2 Oct 2019 16:46:57 +0200
Message-Id: <20191002144658.7718-4-kamel.bouhara@bootlin.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191002144658.7718-1-kamel.bouhara@bootlin.com>
References: <20191002144658.7718-1-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_074720_371477_F653E34C 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Kamel Bouhara <kamel.bouhara@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the i2c gpio pinctrls to support the i2c bus recovery

Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
---
 arch/arm/boot/dts/sama5d3.dtsi | 33 ++++++++++++++++++++++++++++++---
 1 file changed, 30 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/sama5d3.dtsi b/arch/arm/boot/dts/sama5d3.dtsi
index f770aace0efd..faf8907d8d7d 100644
--- a/arch/arm/boot/dts/sama5d3.dtsi
+++ b/arch/arm/boot/dts/sama5d3.dtsi
@@ -159,8 +159,11 @@
 				dmas = <&dma0 2 AT91_DMA_CFG_PER_ID(7)>,
 				       <&dma0 2 AT91_DMA_CFG_PER_ID(8)>;
 				dma-names = "tx", "rx";
-				pinctrl-names = "default";
+				pinctrl-names = "default", "gpio";
 				pinctrl-0 = <&pinctrl_i2c0>;
+				pinctrl-1 = <&pinctrl_i2c0_gpio>;
+				sda-gpios = <&pioA 30 GPIO_ACTIVE_HIGH>;
+				scl-gpios = <&pioA 31 GPIO_ACTIVE_HIGH>;
 				#address-cells = <1>;
 				#size-cells = <0>;
 				clocks = <&twi0_clk>;
@@ -174,8 +177,11 @@
 				dmas = <&dma0 2 AT91_DMA_CFG_PER_ID(9)>,
 				       <&dma0 2 AT91_DMA_CFG_PER_ID(10)>;
 				dma-names = "tx", "rx";
-				pinctrl-names = "default";
+				pinctrl-names = "default", "gpio";
 				pinctrl-0 = <&pinctrl_i2c1>;
+				pinctrl-1 = <&pinctrl_i2c1_gpio>;
+				sda-gpios = <&pioC 26 GPIO_ACTIVE_HIGH>;
+				scl-gpios = <&pioC 27 GPIO_ACTIVE_HIGH>;
 				#address-cells = <1>;
 				#size-cells = <0>;
 				clocks = <&twi1_clk>;
@@ -357,8 +363,11 @@
 				dmas = <&dma1 2 AT91_DMA_CFG_PER_ID(11)>,
 				       <&dma1 2 AT91_DMA_CFG_PER_ID(12)>;
 				dma-names = "tx", "rx";
-				pinctrl-names = "default";
+				pinctrl-names = "default", "gpio";
 				pinctrl-0 = <&pinctrl_i2c2>;
+				pinctrl-1 = <&pinctrl_i2c2_gpio>;
+				sda-gpios = <&pioA 18 GPIO_ACTIVE_HIGH>;
+				scl-gpios = <&pioA 19 GPIO_ACTIVE_HIGH>;
 				#address-cells = <1>;
 				#size-cells = <0>;
 				clocks = <&twi2_clk>;
@@ -639,6 +648,12 @@
 							<AT91_PIOA 30 AT91_PERIPH_A AT91_PINCTRL_NONE	/* PA30 periph A TWD0 pin, conflicts with URXD1, ISI_VSYNC */
 							 AT91_PIOA 31 AT91_PERIPH_A AT91_PINCTRL_NONE>;	/* PA31 periph A TWCK0 pin, conflicts with UTXD1, ISI_HSYNC */
 					};
+
+					pinctrl_i2c0_gpio: i2c0-gpio {
+						atmel,pins =
+							<AT91_PIOA 30 AT91_PERIPH_GPIO AT91_PINCTRL_PULL_UP
+							 AT91_PIOA 31 AT91_PERIPH_GPIO AT91_PINCTRL_PULL_UP>;
+					};
 				};
 
 				i2c1 {
@@ -647,6 +662,12 @@
 							<AT91_PIOC 26 AT91_PERIPH_B AT91_PINCTRL_NONE	/* PC26 periph B TWD1 pin, conflicts with SPI1_NPCS1, ISI_D11 */
 							 AT91_PIOC 27 AT91_PERIPH_B AT91_PINCTRL_NONE>;	/* PC27 periph B TWCK1 pin, conflicts with SPI1_NPCS2, ISI_D10 */
 					};
+
+					pinctrl_i2c1_gpio: i2c1-gpio {
+						atmel,pins =
+							<AT91_PIOC 26 AT91_PERIPH_GPIO AT91_PINCTRL_PULL_UP
+							 AT91_PIOC 27 AT91_PERIPH_GPIO AT91_PINCTRL_PULL_UP>;
+					};
 				};
 
 				i2c2 {
@@ -655,6 +676,12 @@
 							<AT91_PIOA 18 AT91_PERIPH_B AT91_PINCTRL_NONE	/* TWD2 pin, conflicts with LCDDAT18, ISI_D2 */
 							 AT91_PIOA 19 AT91_PERIPH_B AT91_PINCTRL_NONE>; /* TWCK2 pin, conflicts with LCDDAT19, ISI_D3 */
 					};
+
+					pinctrl_i2c2_gpio: i2c2-gpio {
+						atmel,pins =
+							<AT91_PIOA 18 AT91_PERIPH_GPIO AT91_PINCTRL_PULL_UP
+							 AT91_PIOA 19 AT91_PERIPH_GPIO AT91_PINCTRL_PULL_UP>;
+					};
 				};
 
 				isi {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
