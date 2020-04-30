Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 696361BF977
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 15:26:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dGDIR2hFe/n/37/r5snWoMvJaOCnxI2AewApMmRAu+g=; b=AYwaqBvjZyG08n
	WMACE5gEOWLLdMG5ms0vsnw2fBokKluIQoicSO16HaHw9aq2KkS29Hv3As9EHkfw/4uyczL2ckYiB
	Fs0uyI5an0yazik8Vzi1SmXGFwaMLqLPNP9xLk9lHaPi1iNXlA7lY7esEjBbU/6hXjLdjMBDWjRfb
	nhfnTLIORx5qFTXsqcdaBiTkBMMFG4U5zS7ADDJwUpF4+dKqarseBQXZ2ShvyNGPLvoMAXmgZCGD/
	yaix6h+rMbW8ZjUPUYE9LH2aRfG3xo7Mwy4V/pLNcGzvPgMMNBQU0c/9YkkH8yEr0jBcgvdkycUBO
	DkFEKwQde6Ehf0ldKGng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU9CR-0006e2-Gg; Thu, 30 Apr 2020 13:25:59 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU9Bm-0006Nw-L8
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 13:25:20 +0000
Received: by mail-pg1-x542.google.com with SMTP id l20so2730962pgb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 06:25:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XTBlmhkri6TiYDFterPGpataxQ1L0ZfDDr5My4ZNVYI=;
 b=SX28jIAaSq3H+R+hHlrq1bMCxhM220Au9myWZXA9Xpb1rV+4BK89hYosNiPKWicDp0
 lzielamSZOAD9M8bzsdNEAE3x1i2KOm79G1ZNdiGPnlP7mP8od5fhDZ39kUz7uhAUPrw
 q4tprD6TjzTrzu0AAE9sTTVdE1FbKMnZcbKFCYiMqkDsMheIJ67G/yTbJLFKASFlK/Q6
 BU75zdeJtlf6/VVf1Ir8ymFIo8RgdxZOVgt9gG9zmn5kfMzDyMrY1RWfZ4IHsj+6I8J3
 kLfBgB0oiA0nn3tQBQd6x8VqO/HSRT50rDoQ1mHje8rB7AD9rQJeeLe0jvu46PgdbpCX
 8fUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XTBlmhkri6TiYDFterPGpataxQ1L0ZfDDr5My4ZNVYI=;
 b=M7+g0G0f9guuv1Y0XcfqfXFL0gQEJbgASpfizt+h0Uvz3GpySuaTye/vfNGFs9RIDL
 BeXz4zg7O7NXr7BbGDZsH/tB4G/ZWAT/jymcbs7dMjKiM13Fx2h44rc7xWo/H6BYXPr6
 NEK4wtNKAW2aW8QpRQPDk60x+zTA2KSU1qiSZz9hCkk4y4/CNfN49O/ho3p/ds7qHf66
 Zahc9QrFr511O4DKcI6aCZeAMWqWNH2zBFlLrDG/F9WJJ0tvRRiMoLWKflQ9fLLBxLy2
 PIJ2TtO2m6pLdLloytgcw5Qj+/THVkfj+wb6ke0WlFzjfhT3HZEVVqVyaHY88niqD2Oc
 mrqQ==
X-Gm-Message-State: AGi0PuZerOBLGJbSpWw1rnI+kqzrwUPCbs9C7SdFLn+TWcYgxPJ+bBS9
 5Lw6UghqA57wb1vBApMHT61DAg==
X-Google-Smtp-Source: APiQypKGEDLBdyzLjZFpAv8Ya3P+JqT3A0dW/8c1QsRriQxtstlVqtyvoi4fuSJvx7vrVJy6COHL8g==
X-Received: by 2002:a63:43c7:: with SMTP id q190mr3225670pga.189.1588253117994; 
 Thu, 30 Apr 2020 06:25:17 -0700 (PDT)
Received: from devnote (NE2965lan1.rev.em-net.ne.jp. [210.141.244.193])
 by smtp.gmail.com with ESMTPSA id o125sm3146547pgo.74.2020.04.30.06.25.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 06:25:17 -0700 (PDT)
Date: Thu, 30 Apr 2020 22:25:13 +0900
From: Masami Hiramatsu <masami.hiramatsu@linaro.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>, Rob Herring
 <robh@kernel.org>
Subject: [PATCH v5 2/2] arm64: dts: uniphier: Add support for Akebi96
Message-Id: <20200430222513.0adeb8bcc8e05501b730b0b0@linaro.org>
In-Reply-To: <158824887998.2799.1402930732677315138.stgit@localhost>
References: <158824887998.2799.1402930732677315138.stgit@localhost>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_062518_694568_22377AB2 
X-CRM114-Status: GOOD (  17.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
- OP-TEE installed firmware.

Signed-off-by: Masami Hiramatsu <masami.hiramatsu@linaro.org>
Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 Changes in v5:
  - Remove unneeded RGMII setting from eth node.
  - Remove unused "vbus" interrupt and add interrupt-names property
    to max3420-udc node.
  - Add the address to framebuffer.
 Changes in v4:
  - Fix to remove unnecessary "aout1" from pinctrl_aout1.
---
 arch/arm64/boot/dts/socionext/Makefile             |    1 
 .../boot/dts/socionext/uniphier-ld20-akebi96.dts   |  189 ++++++++++++++++++++
 2 files changed, 190 insertions(+)
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
index 000000000000..1b7a1284d184
--- /dev/null
+++ b/arch/arm64/boot/dts/socionext/uniphier-ld20-akebi96.dts
@@ -0,0 +1,189 @@
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
+	framebuffer@c0000000 {
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
+&spi3 {
+	status = "okay";
+	#address-cells = <1>;
+	#size-cells = <0>;
+	usb-over-spi@0 {
+		compatible = "maxim,max3421-udc";
+		reg = <0>;
+		spi-max-frequency = <12500000>;
+		interrupt-parent = <&gpio>;
+		interrupt-names = "udc";
+		interrupts = <0 2>;
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
+&pinctrl_aout1 {
+	groups = "aout1b";
+};
+
+&pinctrl_uart3 {
+	groups = "uart3", "uart3_ctsrts";
+};


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
