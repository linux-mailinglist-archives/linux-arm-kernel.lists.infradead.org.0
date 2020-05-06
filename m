Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB7B61C68E3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 08:27:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=xtp0uVY7vGFg4J4hGVlYBhDFy9ceTIJSLqasVS+3Dpg=; b=ICL
	WoqwOs6w84XSTMe7+UvOBD16jX71p45FbngbDouNExZkoeucC9lG6IObkMcRRFV/NE7I0h1fIZzI9
	hrXTd6kVlpnbOpQTRMD2KskD7qpQ54LEhUonaJOkbS71n6PUJrpcZKS60HbMp1+vCkGo/uMIMGxW4
	nDD4kqR6RX/Yra0f4tEc6KuYi71cKFs9tcgc/9/Hoq+ygZ9CgnaLlyjOlbPSlANaHL8i6s3yR2lD+
	nUFiwSLfLVu1A49MPFJL8I8sfv58yM02cd4Uci1yq1qhkelvCjkrMLpnWzdQnaCW7L6nZ+sf5EAtC
	/bUupAoF6OqEiWxGnfVtY8BXnu03cKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWDWf-0001VX-8u; Wed, 06 May 2020 06:27:25 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWDWS-0001TW-G9
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 06:27:15 +0000
Received: by mail-pg1-x543.google.com with SMTP id 207so648310pgc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 23:27:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=r7GDOB4KUTMAbqLQjSRn2Yp8VhPGDy0fV6+iumq7awY=;
 b=jBpcEW5lr69j9so5i/oJ4oaQlk3dKCoXXc4idlY97rLzzTIBuu6I2lueaxazBcscmw
 uU5TBTArJH2JBLJUjne0pDUBnrOHBiVV4ybEaXaTvsuYwDK+KfX1z/H1KBnud0jM9qWG
 q7IUENdQXz2f8ADzBXN3nJq/dHGNAJwwYb5X6zJUe9KRj7NwtUn0Cq42W26PcHRpQzxp
 LWMIZO0BNiCsHKNW8qzocWLdkF04vvq7YqHCwG4rB5EbKZ1hRBCeSU1r7B03B2FTUXg3
 EtpO2mKOlZ2kj2//fxGhcw1tK6qd0vTMckQmLA7gzuN5Cw+VdKDDRm/K893UqpOvbNn0
 baWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=r7GDOB4KUTMAbqLQjSRn2Yp8VhPGDy0fV6+iumq7awY=;
 b=sc+Lk5cNwZlyF/VhXVuEGQYhxYxo4Sp9z+eFPpCJ3ZxKYBw/LOwuRcjFHZ6R6lIWnB
 BEGYd3rJZUaLt35Yub70DZKrPV7IJhBotgLuoEMU/Wb9JXvXq+4y6oDSR3K9GV81dBOB
 pq4z5FcUl6QW4wyMMRSYPA1N0B0vFCbamncsgu+S44/2CIwWRgbPpB8MIAdk2rzN8s7l
 ixCQcUmZ0fl45svehv0swBJ/jT8l4fcGNh2uw1CgCpFSOhdlqI7EArbRTM3oegmAMzGR
 NNh3lvS86w5H1reMGMELWuzpXWvFQ4ASXsKEUPipWD2CNU93T7Ousi8Hq/R3SSok76LN
 CEzA==
X-Gm-Message-State: AGi0Pua3EmXPIc5VhdRLo0+7bWZg/2orvN2VHWA44jJmfSqsCtw7KsvA
 rRGO8HyobL6TTHKwYSdkdK4=
X-Google-Smtp-Source: APiQypLbjeASMuNkeJLplI8TjiKwaneBMu4BbXtAmciArzDMjGce99NPaKS94y0pdnFzRR5Qi7Z8yQ==
X-Received: by 2002:a63:7214:: with SMTP id n20mr5948835pgc.437.1588746431402; 
 Tue, 05 May 2020 23:27:11 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.190.146])
 by smtp.gmail.com with ESMTPSA id b140sm752399pfb.119.2020.05.05.23.27.08
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 05 May 2020 23:27:11 -0700 (PDT)
From: dillon.minfei@gmail.com
To: alexandre.torgue@st.com, robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
 sam@ravnborg.org
Subject: [PATCH 1/4] ARM: dts: stm32: Add drm panel ili9341 support for
 stm32f429-disco board
Date: Wed,  6 May 2020 14:27:06 +0800
Message-Id: <1588746426-30979-1-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_232712_562723_F9C0D713 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, dillon min <dillon.minfei@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

1, add stm32f429-disco ltdc pins mux config
2, add ltdc nodes pinned with ili9341
3, add spi5 node

Signed-off-by: dillon min <dillon.minfei@gmail.com>
---
 arch/arm/boot/dts/stm32f4-pinctrl.dtsi | 67 ++++++++++++++++++++++++++++++++++
 arch/arm/boot/dts/stm32f429-disco.dts  | 40 ++++++++++++++++++++
 2 files changed, 107 insertions(+)

diff --git a/arch/arm/boot/dts/stm32f4-pinctrl.dtsi b/arch/arm/boot/dts/stm32f4-pinctrl.dtsi
index 392fa14..0eb107f 100644
--- a/arch/arm/boot/dts/stm32f4-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32f4-pinctrl.dtsi
@@ -316,6 +316,73 @@
 				};
 			};
 
+			ltdc_pins_f429_disco: ltdc-1 {
+				pins {
+					pinmux = <STM32_PINMUX('C', 6,  AF14)>,
+						/* LCD_HSYNC */
+						 <STM32_PINMUX('A', 4,  AF14)>,
+						 /* LCD_VSYNC */
+						 <STM32_PINMUX('G', 7,  AF14)>,
+						 /* LCD_CLK */
+						 <STM32_PINMUX('C', 10, AF14)>,
+						 /* LCD_R2 */
+						 <STM32_PINMUX('B', 0,  AF9)>,
+						 /* LCD_R3 */
+						 <STM32_PINMUX('A', 11, AF14)>,
+						 /* LCD_R4 */
+						 <STM32_PINMUX('A', 12, AF14)>,
+						 /* LCD_R5 */
+						 <STM32_PINMUX('B', 1,  AF9)>,
+						 /* LCD_R6*/
+						 <STM32_PINMUX('G', 6,  AF14)>,
+						 /* LCD_R7 */
+						 <STM32_PINMUX('A', 6,  AF14)>,
+						 /* LCD_G2 */
+						 <STM32_PINMUX('G', 10, AF9)>,
+						 /* LCD_G3 */
+						 <STM32_PINMUX('B', 10, AF14)>,
+						 /* LCD_G4 */
+						 <STM32_PINMUX('D', 6,  AF14)>,
+						 /* LCD_B2 */
+						 <STM32_PINMUX('G', 11, AF14)>,
+						 /* LCD_B3*/
+						 <STM32_PINMUX('B', 11, AF14)>,
+						 /* LCD_G5 */
+						 <STM32_PINMUX('C', 7,  AF14)>,
+						 /* LCD_G6 */
+						 <STM32_PINMUX('D', 3,  AF14)>,
+						 /* LCD_G7 */
+						 <STM32_PINMUX('G', 12, AF9)>,
+						 /* LCD_B4 */
+						 <STM32_PINMUX('A', 3,  AF14)>,
+						 /* LCD_B5 */
+						 <STM32_PINMUX('B', 8,  AF14)>,
+						 /* LCD_B6 */
+						 <STM32_PINMUX('B', 9,  AF14)>,
+						 /* LCD_B7 */
+						 <STM32_PINMUX('F', 10, AF14)>;
+						 /* LCD_DE */
+					slew-rate = <2>;
+				};
+			};
+
+			spi5_pins: spi5-0 {
+				pins1 {
+					pinmux = <STM32_PINMUX('F', 7, AF5)>,
+						/* SPI5_CLK */
+						 <STM32_PINMUX('F', 9, AF5)>;
+						/* SPI5_MOSI */
+					bias-disable;
+					drive-push-pull;
+					slew-rate = <0>;
+				};
+				pins2 {
+					pinmux = <STM32_PINMUX('F', 8, AF5)>;
+						/* SPI5_MISO */
+					bias-disable;
+				};
+			};
+
 			dcmi_pins: dcmi-0 {
 				pins {
 					pinmux = <STM32_PINMUX('A', 4, AF13)>, /* DCMI_HSYNC */
diff --git a/arch/arm/boot/dts/stm32f429-disco.dts b/arch/arm/boot/dts/stm32f429-disco.dts
index 30c0f67..3aadddb 100644
--- a/arch/arm/boot/dts/stm32f429-disco.dts
+++ b/arch/arm/boot/dts/stm32f429-disco.dts
@@ -49,6 +49,8 @@
 #include "stm32f429.dtsi"
 #include "stm32f429-pinctrl.dtsi"
 #include <dt-bindings/input/input.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/gpio/gpio.h>
 
 / {
 	model = "STMicroelectronics STM32F429i-DISCO board";
@@ -127,3 +129,41 @@
 	pinctrl-names = "default";
 	status = "okay";
 };
+
+&ltdc {
+	status = "okay";
+	pinctrl-0 = <&ltdc_pins_f429_disco>;
+	pinctrl-names = "default";
+
+	port {
+		ltdc_out_rgb: endpoint {
+			remote-endpoint = <&panel_in_rgb>;
+		};
+	};
+};
+
+&spi5 {
+	status = "okay";
+	pinctrl-0 = <&spi5_pins>;
+	pinctrl-names = "default";
+	#address-cells = <1>;
+	#size-cells = <0>;
+	cs-gpios = <&gpioc 2 GPIO_ACTIVE_LOW>;
+	dmas = <&dma2 3 2 0x400 0x0>,
+	       <&dma2 4 2 0x400 0x0>;
+	dma-names = "rx", "tx";
+	display: display@0{
+		/* Connect panel-ilitek-9341 to ltdc */
+		compatible = "stm32f429-disco,ltdc-panel", "ilitek,ili9341";
+		reg = <0>;
+		spi-3wire;
+		spi-max-frequency = <10000000>;
+		dc-gpios = <&gpiod 13 0>;
+		port {
+			panel_in_rgb: endpoint {
+			remote-endpoint = <&ltdc_out_rgb>;
+			};
+		};
+	};
+};
+
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
