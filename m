Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B882A1B0027
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 05:15:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KB1KTyIhppWY0T5kx1teF0YggyQuths1SXHedSunKEI=; b=RkzAQjiJdnALC0
	X594p6WZNhopK0Zg3g/TBwXAHIES5c6SzcbdhP0guaWnOZdmAxmVA6YUtQZ27LBd3EEQ3gXTZnfl1
	MTz4R5j17p9HTUmsbSSOpstZjxTHHHnO4qMdcGT0CtytKI5gKSAucRhQcu//Vy3rM6ZwfTZMzIRh3
	IWuzhlTRmw5kPrPuqSNFnsZbqQDeC8tWZdN0b0+S8lYG38vUWGu7D74oLQaml2LjbFD5dgi9Ns7ag
	Pgyw02ReNNOtDr/sPsehY16UIUZolkPQOysQ/jcVzwXwLk/lXtQ7cCbraYnGlWM1WBlOEE0PEiJM3
	6sYZY16qciu5zh9WQt2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQMtb-0005Fo-D9; Mon, 20 Apr 2020 03:14:55 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQMtD-00059X-Uq
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 03:14:34 +0000
Received: by mail-pg1-x541.google.com with SMTP id j7so794888pgj.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 20:14:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Of5YSCYSCqIBDFJz0HLqdOdvr2dlfEZUxY/uSbLvMwQ=;
 b=S4iCRNFPVeD2liK++AjbUz3+LQvcyBsThGO0NNoc6haE76pCvjDan1i0DYG4H2iE0h
 M8SyHe8J1MrhOJrSZsYe7U+IdFkw352TzB1SmKw549ja+QHEomzHo2/PoIP2k+QOY1AX
 t3l2aMMYJ+efE6xYIFgWxyNPruy1YK/fr9heKkd75Ki/NMI6pvCFZ7CPkJA3e+B84mxs
 2dlZKhcPXncp7wC79JboXi+jFrp4uc7mTu/QVZkpqIPy39a1QFQVTG0sbyJ5SC3HeeXL
 YbBh35OZ+4yAttu1u6uZkjFwwYgJearF5844enyfyKjR3ipsWZ8KWhChnNsTlDWXmRPe
 aGYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Of5YSCYSCqIBDFJz0HLqdOdvr2dlfEZUxY/uSbLvMwQ=;
 b=IKEv9juTPI/ZPY1hJnKBPCCm0Yy7p4F3n98SJiOQACKQMsG1pvJoBbwr3FQ8Ixhvhn
 Bj1UUSPbmqS4ltsIjxKv/JMXqLMgk75Vr21NwiCIvszDNwEqwjw0+jATPIp9i7d7DK11
 1CMEit2rSBp01IBxpx7NLRYe35XKOyq+Mh2AReoDKF71Fbp5lXpPtPl5WP3RIvFFubB4
 DoEMh2+e/DxnYRxu/7BzezqH5qPcikcmQKQ3QDtE3bChp4yKGc8U9DlKvFDPj3Ph/ymG
 aujwH4R9uT/fi9QWt5Qjmu6UDMST5mzEfT7ESt6IS3xHk7abmzaj6pjL8kSra7Wnf2Y2
 hJ3Q==
X-Gm-Message-State: AGi0PubqLVnVHvc1KDGSnf4dYu4EfJPqs3H5UdPn6Uql3ne/TipmK3GV
 eiUUOMSE6/0dbjz0TOuRwrqjEA==
X-Google-Smtp-Source: APiQypJOgb0HXmX0iZ+BqFtpAY/TBiBsnrv00fy98y1kmyNMl56E4Exh3NdsNbgA/7s+9f+NGXBeHQ==
X-Received: by 2002:a62:1950:: with SMTP id 77mr14715230pfz.326.1587352471260; 
 Sun, 19 Apr 2020 20:14:31 -0700 (PDT)
Received: from devnote (NE2965lan1.rev.em-net.ne.jp. [210.141.244.193])
 by smtp.gmail.com with ESMTPSA id e66sm22176674pfa.69.2020.04.19.20.14.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Apr 2020 20:14:30 -0700 (PDT)
Date: Mon, 20 Apr 2020 12:14:08 +0900
From: Linaro <masami.hiramatsu@linaro.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>, Rob Herring
 <robh+dt@kernel.org>
Subject: [PATCH 2/2] arm64: dts: uniphier: Add support for Akebi96
Message-Id: <20200420121408.5ad907cff5f1e74b1ef7f980@linaro.org>
In-Reply-To: <158735030084.17831.6159788305648251972.stgit@localhost>
References: <158735030084.17831.6159788305648251972.stgit@localhost>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_201432_064928_AC298D60 
X-CRM114-Status: GOOD (  16.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the device tree for Akebi96. Akebi96 is a 96boards certified
development board based on UniPhir LD20.
( https://www.96boards.org/product/akebi96/ )

This board has;
- MAX3421 USB-SPI chip on SPI port3 (for USB gadget port)
- Simple frame buffer with 1080p fixed resolution.
- I2S port which is connected to aout1b instead of aout1.
- 3 serial ports, only serial3 has CTS/RTS.
- No NAND, only eMMC on the board.
- OP-TEE support.

Signed-off-by: Masami Hiramatsu <masami.hiramatsu@linaro.org>
Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 arch/arm64/boot/dts/socionext/Makefile             |    1 
 .../boot/dts/socionext/uniphier-ld20-akebi96.dts   |  200 ++++++++++++++++++++
 arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi   |    2 
 3 files changed, 202 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/socionext/uniphier-ld20-akebi96.dts

diff --git a/arch/arm64/boot/dts/socionext/Makefile b/arch/arm64/boot/dts/socionext/Makefile
index d45441249cb5..dda3da33614b 100644
--- a/arch/arm64/boot/dts/socionext/Makefile
+++ b/arch/arm64/boot/dts/socionext/Makefile
@@ -2,6 +2,7 @@
 dtb-$(CONFIG_ARCH_UNIPHIER) += \
 	uniphier-ld11-global.dtb \
 	uniphier-ld11-ref.dtb \
+	uniphier-ld20-akebi96.dtb \
 	uniphier-ld20-global.dtb \
 	uniphier-ld20-ref.dtb \
 	uniphier-pxs3-ref.dtb
diff --git a/arch/arm64/boot/dts/socionext/uniphier-ld20-akebi96.dts b/arch/arm64/boot/dts/socionext/uniphier-ld20-akebi96.dts
new file mode 100644
index 000000000000..84ff98d96751
--- /dev/null
+++ b/arch/arm64/boot/dts/socionext/uniphier-ld20-akebi96.dts
@@ -0,0 +1,200 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+//
+// Device Tree Source for Akebi96 Development Board
+//
+// Derived from uniphier-ld20-global.dts.
+//
+// Copyright (C) 2015-2017 Socionext Inc.
+// Copyright (C) 2019-2020 Linaro Ltd.
+
+/dts-v1/;
+#include <dt-bindings/gpio/uniphier-gpio.h>
+#include "uniphier-ld20.dtsi"
+
+/ {
+	model = "Akebi96";
+	compatible = "socionext,uniphier-ld20-akebi96",
+		     "socionext,uniphier-ld20";
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	aliases {
+		serial0 = &serial0;
+		serial1 = &serial1;
+		serial2 = &serial2;
+		serial3 = &serial3;
+		i2c0 = &i2c0;
+		i2c1 = &i2c1;
+		i2c2 = &i2c2;
+		i2c3 = &i2c3;
+		i2c4 = &i2c4;
+		i2c5 = &i2c5;
+		spi0 = &spi0;
+		spi1 = &spi1;
+		spi2 = &spi2;
+		spi3 = &spi3;
+		ethernet0 = &eth;
+	};
+
+	memory@80000000 {
+		device_type = "memory";
+		reg = <0 0x80000000 0 0xc0000000>;
+	};
+
+	framebuffer {
+		compatible = "simple-framebuffer";
+		reg = <0 0xc0000000 0 0x02000000>;
+		width = <1920>;
+		height = <1080>;
+		stride = <7680>;
+		format = "a8r8g8b8";
+	};
+
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		memory@c0000000 {
+			reg = <0 0xc0000000 0 0x02000000>;
+			no-map;
+		};
+	};
+
+	sound {
+		compatible = "audio-graph-card";
+		label = "UniPhier LD20";
+		dais = <&spdif_port0
+			&comp_spdif_port0>;
+	};
+
+	spdif-out {
+		compatible = "linux,spdif-dit";
+		#sound-dai-cells = <0>;
+
+		port@0 {
+			spdif_tx: endpoint {
+				remote-endpoint = <&spdif_hiecout1>;
+			};
+		};
+	};
+
+	comp-spdif-out {
+		compatible = "linux,spdif-dit";
+		#sound-dai-cells = <0>;
+
+		port@0 {
+			comp_spdif_tx: endpoint {
+				remote-endpoint = <&comp_spdif_hiecout1>;
+			};
+		};
+	};
+
+	firmware {
+		optee {
+			compatible = "linaro,optee-tz";
+			method = "smc";
+		};
+	};
+};
+
+&serial0 {
+	/* Onboard USB-UART */
+	status = "okay";
+};
+
+&serial2 {
+	/* LS connector UART1 */
+	status = "okay";
+};
+
+&serial3 {
+	/* LS connector UART0 */
+	status = "okay";
+	pinctrl-0 = <&pinctrl_uart3_ctsrts>;
+};
+
+&spdif_hiecout1 {
+	remote-endpoint = <&spdif_tx>;
+};
+
+&comp_spdif_hiecout1 {
+	remote-endpoint = <&comp_spdif_tx>;
+};
+
+&eth {
+	status = "okay";
+	phy-mode = "rgmii";
+	pinctrl-0 = <&pinctrl_ether_rgmii>;
+	phy-handle = <&ethphy>;
+};
+
+&mdio {
+	ethphy: ethphy@0 {
+		reg = <0>;
+	};
+};
+
+&usb {
+	status = "okay";
+};
+
+&pcie {
+	status = "okay";
+};
+
+&i2c0 {
+	/* LS connector I2C0 */
+	status = "okay";
+};
+
+&i2c1 {
+	/* LS connector I2C1 */
+	status = "okay";
+};
+
+&audio {
+	pinctrl-0 = <&pinctrl_aout1b>,
+		    <&pinctrl_aoutiec1>;
+};
+
+&spi3 {
+	status = "okay";
+	#address-cells = <1>;
+	#size-cells = <0>;
+	usb-over-spi@0 {
+		compatible = "maxim,max3421-udc";
+		reg = <0>;
+		spi-max-frequency = <12500000>;
+		interrupt-parent = <&gpio>;
+		interrupts = <0 2>, <10 3>;
+	};
+};
+
+&gpio {
+	/* IRQs for Max3421 */
+	xirq0 {
+		gpio-hog;
+		gpios = <UNIPHIER_GPIO_IRQ(0) 1>;
+		input;
+	};
+	xirq10 {
+		gpio-hog;
+		gpios = <UNIPHIER_GPIO_IRQ(10) 1>;
+		input;
+	};
+};
+
+&pinctrl {
+	pinctrl_aout1b: aout1b {
+		groups = "aout1", "aout1b";
+		function = "aout1";
+	};
+
+	pinctrl_uart3_ctsrts: uart3-ctsrts {
+		groups = "uart3", "uart3_ctsrts";
+		function = "uart3";
+	};
+};
diff --git a/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi b/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
index a93148c2088f..8f799f4bcda4 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
+++ b/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
@@ -337,7 +337,7 @@
 						     <21 217 3>;
 		};
 
-		audio@56000000 {
+		audio: audio@56000000 {
 			compatible = "socionext,uniphier-ld20-aio";
 			reg = <0x56000000 0x80000>;
 			interrupts = <0 144 4>;


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
