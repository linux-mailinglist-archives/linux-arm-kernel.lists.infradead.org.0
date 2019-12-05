Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19218114231
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 15:04:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kCDROdWwUSxtxN66F3u18QQ1Ove2h0/FA72dJGBiB78=; b=fMxJIuUCH2bx1R
	PidIc4IJK+s/oPiErRXJb+9rrjpI8BmOjztZrP3TBPXDQ5Leq9+FZYyz+EWdCnkWSlmeI/ua1UL0Y
	GBh50pDQNqEKidK0CtFH0UHfgudE8LhH+Dn+hZDa9wjvxV59/cBOzL4Cl6Jxfs9A4eBAgnaH8xuP2
	MINjqzWDlLqB72szAbOAbkRkHtU+cZPqLhLePxnjF1shJuqIC/CyaXk+9/TaKSHlUrm2IU5e/KewC
	f3gh5FxC/1QytsnmlAw2A7jJnNL428t5+xTA0FlR0qrj1k0Ey56dRgLkzSJdypdXA5p+brlOiX2Uu
	OODgBOynmDedPuZXzdFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icrjY-0002qm-81; Thu, 05 Dec 2019 14:03:56 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icrj6-0002Vi-M2
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 14:03:30 +0000
X-Originating-IP: 90.65.102.129
Received: from localhost (lfbn-1-1480-129.w90-65.abo.wanadoo.fr
 [90.65.102.129]) (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id C2E2824000F;
 Thu,  5 Dec 2019 14:03:16 +0000 (UTC)
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: Codrin.Ciubotariu@microchip.com
Subject: [PATCH 3/3] ARM: at91/dt: sama5d2: add i2c gpio pinctrl
Date: Thu,  5 Dec 2019 15:03:05 +0100
Message-Id: <20191205140305.1144788-4-kamel.bouhara@bootlin.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191205140305.1144788-1-kamel.bouhara@bootlin.com>
References: <20191205140305.1144788-1-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_060329_030906_21E9E782 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Kamel Bouhara <kamel.bouhara@bootlin.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the i2c gpio pinctrls to support the i2c bus recovery

Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
---
 arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts   | 33 +++++++++++++++++++--
 arch/arm/boot/dts/at91-sama5d2_xplained.dts | 33 +++++++++++++++++++--
 2 files changed, 60 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts b/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts
index ba7f3e646c26..b3cd651ecda0 100644
--- a/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts
+++ b/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts
@@ -180,8 +180,11 @@
 
 			i2c0: i2c@f8028000 {
 				dmas = <0>, <0>;
-				pinctrl-names = "default";
+				pinctrl-names = "default", "gpio";
 				pinctrl-0 = <&pinctrl_i2c0_default>;
+				pinctrl-1 = <&pinctrl_i2c0_gpio>;
+				sda-gpios = <&pioA PIN_PD21 GPIO_ACTIVE_HIGH>;
+				scl-gpios = <&pioA PIN_PD22 GPIO_ACTIVE_HIGH>;
 				status = "okay";
 			};
 
@@ -198,8 +201,11 @@
 					#address-cells = <1>;
 					#size-cells = <0>;
 					clocks = <&pmc PMC_TYPE_PERIPHERAL 19>;
-					pinctrl-names = "default";
+					pinctrl-names = "default", "gpio";
 					pinctrl-0 = <&pinctrl_flx0_default>;
+					pinctrl-1 = <&pinctrl_flx0_gpio>;
+					sda-gpios = <&pioA PIN_PB28 GPIO_ACTIVE_HIGH>;
+					scl-gpios = <&pioA PIN_PB29 GPIO_ACTIVE_HIGH>;
 					atmel,fifo-size = <16>;
 					status = "okay";
 				};
@@ -226,8 +232,11 @@
 
 			i2c1: i2c@fc028000 {
 				dmas = <0>, <0>;
-				pinctrl-names = "default";
+				pinctrl-names = "default", "gpio";
 				pinctrl-0 = <&pinctrl_i2c1_default>;
+				pinctrl-1 = <&pinctrl_i2c1_gpio>;
+				sda-gpios = <&pioA PIN_PC6 GPIO_ACTIVE_HIGH>;
+				scl-gpios = <&pioA PIN_PC7 GPIO_ACTIVE_HIGH>;
 				status = "okay";
 
 				at24@50 {
@@ -244,18 +253,36 @@
 					bias-disable;
 				};
 
+				pinctrl_flx0_gpio: flx0_gpio {
+					pinmux = <PIN_PB28__GPIO>,
+						 <PIN_PB29__GPIO>;
+					bias-pull-up;
+				};
+
 				pinctrl_i2c0_default: i2c0_default {
 					pinmux = <PIN_PD21__TWD0>,
 						 <PIN_PD22__TWCK0>;
 					bias-disable;
 				};
 
+				pinctrl_i2c0_gpio: i2c0_gpio {
+					pinmux = <PIN_PD21__GPIO>,
+						 <PIN_PD22__GPIO>;
+					bias-pull-up;
+				};
+
 				pinctrl_i2c1_default: i2c1_default {
 					pinmux = <PIN_PC6__TWD1>,
 						 <PIN_PC7__TWCK1>;
 					bias-disable;
 				};
 
+				pinctrl_i2c1_gpio: i2c1_gpio {
+					pinmux = <PIN_PC6__GPIO>,
+						 <PIN_PC7__GPIO>;
+					bias-pull-up;
+				};
+
 				pinctrl_key_gpio_default: key_gpio_default {
 					pinmux = <PIN_PA10__GPIO>;
 					bias-pull-up;
diff --git a/arch/arm/boot/dts/at91-sama5d2_xplained.dts b/arch/arm/boot/dts/at91-sama5d2_xplained.dts
index 808e399fd39a..c22e2aad87fa 100644
--- a/arch/arm/boot/dts/at91-sama5d2_xplained.dts
+++ b/arch/arm/boot/dts/at91-sama5d2_xplained.dts
@@ -129,8 +129,11 @@
 
 			i2c0: i2c@f8028000 {
 				dmas = <0>, <0>;
-				pinctrl-names = "default";
+				pinctrl-names = "default", "gpio";
 				pinctrl-0 = <&pinctrl_i2c0_default>;
+				pinctrl-1 = <&pinctrl_i2c0_gpio>;
+				sda-gpios = <&pioA PIN_PD21 GPIO_ACTIVE_HIGH>;
+				scl-gpios = <&pioA PIN_PD22 GPIO_ACTIVE_HIGH>;
 				i2c-sda-hold-time-ns = <350>;
 				status = "okay";
 
@@ -331,8 +334,11 @@
 					#address-cells = <1>;
 					#size-cells = <0>;
 					clocks = <&pmc PMC_TYPE_PERIPHERAL 23>;
-					pinctrl-names = "default";
+					pinctrl-names = "default", "gpio";
 					pinctrl-0 = <&pinctrl_flx4_default>;
+					pinctrl-1 = <&pinctrl_flx4_gpio>;
+					sda-gpios = <&pioA PIN_PD12 GPIO_ACTIVE_HIGH>;
+					scl-gpios = <&pioA PIN_PD13 GPIO_ACTIVE_HIGH>;
 					atmel,fifo-size = <16>;
 					status = "okay";
 				};
@@ -340,8 +346,11 @@
 
 			i2c1: i2c@fc028000 {
 				dmas = <0>, <0>;
-				pinctrl-names = "default";
+				pinctrl-names = "default", "gpio";
 				pinctrl-0 = <&pinctrl_i2c1_default>;
+				pinctrl-1 = <&pinctrl_i2c1_gpio>;
+				sda-gpios = <&pioA PIN_PD4 GPIO_ACTIVE_HIGH>;
+				scl-gpios = <&pioA PIN_PD5 GPIO_ACTIVE_HIGH>;
 				status = "okay";
 
 				at24@54 {
@@ -435,18 +444,36 @@
 					bias-disable;
 				};
 
+				pinctrl_flx4_gpio: flx4_gpio {
+					pinmux = <PIN_PD12__GPIO>,
+						 <PIN_PD13__GPIO>;
+					bias-pull-up;
+				};
+
 				pinctrl_i2c0_default: i2c0_default {
 					pinmux = <PIN_PD21__TWD0>,
 						 <PIN_PD22__TWCK0>;
 					bias-disable;
 				};
 
+				pinctrl_i2c0_gpio: i2c0_gpio {
+					pinmux = <PIN_PD21__GPIO>,
+						 <PIN_PD22__GPIO>;
+					bias-pull-up;
+				};
+
 				pinctrl_i2c1_default: i2c1_default {
 					pinmux = <PIN_PD4__TWD1>,
 						 <PIN_PD5__TWCK1>;
 					bias-disable;
 				};
 
+				pinctrl_i2c1_gpio: i2c1_gpio {
+					pinmux = <PIN_PD4__GPIO>,
+						 <PIN_PD5__GPIO>;
+					bias-pull-up;
+				};
+
 				pinctrl_i2s0_default: i2s0_default {
 					pinmux = <PIN_PC1__I2SC0_CK>,
 						 <PIN_PC2__I2SC0_MCK>,
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
