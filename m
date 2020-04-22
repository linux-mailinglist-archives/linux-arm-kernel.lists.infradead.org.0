Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D56271B352F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 04:50:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fNXvmYWRgl8IqFkGV+p75LZpQC7SRtfP4mnKgwXbcrI=; b=V/+FX6wpRbxwqP
	y3pEiUF7fW5nHJqqqzbxoZ8kWiHPq3dvijGyvtYmVwlVxtDNnrJDguenm1Vt0l5X8bLPXjhGl/pyM
	LxRI+uXthLJ1r5ZzkeBDo3LjRIExovwo+fFcd/1oivpMP7s2Q0uJMvzmPqmi+voR8I2f1Xa26+KoF
	s5FDUE6OeqMSneXR85Qyu9Gw8iNHT5Jk7uQNH9xEuwPoCCBw/i3G3ezPeQcyKa45r8F0UvO21v73X
	TeT7yBL8glpnA/gE3DzS0JYlvUookc6zKl8TzChJ4N2V62UWJcbo+MtTaN3s6tT6aqje+lBeA5pVM
	GWAnmeT1gpYFWZJpH7RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR5TM-0003me-Bb; Wed, 22 Apr 2020 02:50:48 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR5TD-0003lS-JY
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 02:50:42 +0000
Received: by mail-pj1-x1044.google.com with SMTP id mq3so247420pjb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 19:50:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2OJFSJM6dmk8Ledp5tahPiOE4cVhZ5p3TF5beb8tM+U=;
 b=eDx/AIlHKklHsNa70pMwVjuw7gaHaIerV0Q0hRLaKSSS/XU18bE392CC04uRCbteuw
 aaiUJnR+5nKj11lcVr9O9VitLuWY5eb2ev89M0iVXzkm2mmOxpibdt2Xd8NX2pfM0niZ
 AxcyFSAtFc3ZoPwHNZAw49QfaitucIVLhyc4SEgxUwvjVC7Vyf0pptD3bSRUVzjOnpyE
 2z53tj8BhtCOYIm1+J0153+3Janigd32/qINMlhjRBTjCwMOzaMizDch5rJmkKli+gjM
 T2QyK5TyUBJpc+n3tkL/KJQLhvHmK5yqjvdaLWm5tiuohnfoqWwvjSBJv7eLCJ28sHhh
 Lh0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2OJFSJM6dmk8Ledp5tahPiOE4cVhZ5p3TF5beb8tM+U=;
 b=oUKzP6pgpxcX8Z/gnmD0pRXr8KCgs9dDZZm1KLqp84Bn6cUiQJIHdhjXNWCgii5gP0
 xcatzt68VTlctUGBrmtAOZuce+MYV4g793m6iT8TODrbCSKE55L+uwAzu+9uwgVUv7VT
 0ASjRUSnCV3k6N1RKGqRtI79NsHYBIw2A0hBZ8J7I4+Hfy4qP3SSP6UVOkkdXuib9dgA
 RZtrpHSFni/ZUD+ow0/Pfh1sYECgYJ+bsQVKCJCizdci5OgxksNOXeoqJc6gdvpCGM8y
 lkwLKVW60D0q/bXdx+1kxP30h3qM/4b1wVdb7xfVfMEW25Tey03JHzW8volaqbZC6uFc
 NiEA==
X-Gm-Message-State: AGi0PubchcWBkRPxoZf3eVbVHPB7f9N7PmwW5jXLgRR8JoktsWSe22lG
 cqvySxfQgUOsY6oOcUmOc/Iu7g==
X-Google-Smtp-Source: APiQypKcnVHrNfV427rwJ/UpMm4TGXDT2e2NoZNvARwaipgR4Y+hRF3S2Z2C/kd77xLuACxxl+H/wg==
X-Received: by 2002:a17:90a:f197:: with SMTP id
 bv23mr8944288pjb.3.1587523838957; 
 Tue, 21 Apr 2020 19:50:38 -0700 (PDT)
Received: from devnote (NE2965lan1.rev.em-net.ne.jp. [210.141.244.193])
 by smtp.gmail.com with ESMTPSA id l30sm3769759pje.34.2020.04.21.19.50.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2020 19:50:38 -0700 (PDT)
Date: Wed, 22 Apr 2020 11:50:35 +0900
From: Masami Hiramatsu <masami.hiramatsu@linaro.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>, Rob Herring
 <robh@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>
Subject: [PATCH v4 2/2] arm64: dts: uniphier: Add support for Akebi96
Message-Id: <20200422115035.2f8d48843793d0d6f6724522@linaro.org>
In-Reply-To: <20200422114429.0b1a6f1a3366bae5964f3e10@linaro.org>
References: <20200422114429.0b1a6f1a3366bae5964f3e10@linaro.org>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_195040_166777_4B592F6A 
X-CRM114-Status: GOOD (  16.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Jassi Brar <jaswinder.singh@linaro.org>
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
 Changes in v4:
  - Fix to remove unnecessary "aout1" from pinctrl_aout1.
---
 arch/arm64/boot/dts/socionext/Makefile             |    1 
 .../boot/dts/socionext/uniphier-ld20-akebi96.dts   |  190 ++++++++++++++++++++
 2 files changed, 191 insertions(+)
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
index 000000000000..c0673b2d2c89
--- /dev/null
+++ b/arch/arm64/boot/dts/socionext/uniphier-ld20-akebi96.dts
@@ -0,0 +1,190 @@
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
