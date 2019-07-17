Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C6E6C27D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 23:18:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=weZ5nndPuSHgA3/utiE+87TZs8E39g+MqLcvHWOPS8s=; b=nsWE27WIPPCgJguxSPsFW+XBki
	SSVaCbWd1cu94s8kYEArpAfvM//AUOFmFYLIocc6RnqoZP8ACUA18DY106eritwQm6eBu5MBzYOuj
	hac/jb9sxQ7Sr3W3kN2vCEFfez2zbqBYpZmwQ7aAhW/VoBlEX87Smc7zDW8YwVwOKKMyP9mryV/6K
	icBHQqnC5kSy6E/KMBO6tKhGM/84sH6XWZF3P59BNW7KiSjKVDgEuDJAk6DImJC7iqWmiFgKC1Fk3
	atWra7HHhS9p4oYfHQteVDQuTdraBWqxBKOlYWLc7Uzcta6Hgr+Z9Y6zrnKw76mbAp0xWOKkAL+gh
	mFrYCs8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnrJo-00028Z-RX; Wed, 17 Jul 2019 21:18:32 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnrIN-0001Df-EA; Wed, 17 Jul 2019 21:17:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563398205;
 bh=bSYFgUu/4JeP8msNoZWiKGC2pDgFVOf6Lukqj0GJzsE=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=duPMAyDe/2jCAFn510PKgyeqT9+ULQZbqYbZOYAxnU3YsCsHvqEXqydo5LL0D5mBp
 VXGlAftlXguTmdJpTdwUpeXMXa3/SziFkP8mEYeQPSFATJJ91Yf1WZiir6ACfqhZU0
 L/Mp1vBKjW/8dryYWWgm7f7LfPyD1tI66wM+9l8U=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.103]) by mail.gmx.com
 (mrgmx105 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1M5QFB-1hmUNU0blF-001Rn0; Wed, 17 Jul 2019 23:16:45 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>, Mark Brown <broonie@kernel.org>
Subject: [PATCH RFC 18/18] ARM: dts: Add minimal Raspberry Pi 4 support
Date: Wed, 17 Jul 2019 23:16:04 +0200
Message-Id: <1563398164-2679-5-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563398164-2679-1-git-send-email-wahrenst@gmx.net>
References: <1563398164-2679-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:rWg3M2l410PPVZfUzKaqA1oHkNDPQxfVfWVccbuCG4t3CCKVfqg
 nj8p9xXJFsYfk/9XzX/iFybCDyBWqPGNfhSQazXiAz/eFGFyVDh/d1EoNLxO3J/ijWudswH
 EbYLAFdCet59cV88NiR9D5QDI82c3unZLsEEnjlFXBObtyU1qRkTLfmxW9nFIL1DDshkO+c
 HmWz/Q60W6DcreKripcMQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:O5Zsf6KDDFY=:D2BfwnHP8C7CYJwsQR/SPZ
 ez5keMt5btrWmwUwXAfNOxJfMA5TWghJS4v1ROUt2IHjZCnTc2dfULkokavNjnEcia5zpJIOg
 86qcrUXCjpuY9+gg9ZoFN5/FL8NVjcJnAoPwR8beXUOo1sg9MQRWkJYrhB/qAGSKU7kSzIAqL
 aAWsWuoxM3XCP+RogtWOe29dAQbW7xm882cyfSCTNb9aSrvs7lkxuVuigs+WMRMtXnooZ2hvz
 nzE2JEV6ocj3WPw9T0rMIj1DIlKr/CLt3O6kdj9WGX/GQocb/YyypBQ/kPJmEMvUYcuyZ313V
 D4kKUCgTAFkRTCGDCrYC+U1JxEC1hd3qKqsGs7NvyCUpc58r6+Y6wlk0Fd9NoESFX9nbKL8/R
 aAcjK2XunCidwCVr6XVUMc3oT+PSTIMmrCPN/MomJ62Q4Zmhs67D+HgSoVH7vUTqnjMZG8juI
 fLV2Bx0Pp4+zUwRLtIUkTNzPlUQaXavxyeJHVYD3Ff1Q6fX3ZCsFYKLBpa9/10yhh2tKJk9R4
 qgmTm1XgVbpzO9V1XtYmhssbxipgUcmNwBS/pZP6giNfw7oVxsqiw4qqX/3FBGZcPcwI20e8v
 F8p0vTI+T6e2rJXGmiJNDGQqXCAPbHwi5GAxl1Hh+rl0/ih6p4tkBFRit06t8NQIwI82k2txL
 wnYibqF6fIfvKJ4FPYKOuuIayATM8BLIsE8AqQHeh1iIondI/PqEqKY6LhbjwZWgR+Wk//iqv
 TYlRJOdTJFYjl6YeThqyOZZHZe+88wSg1OY47ucfc8y8j6WBrYRQRzRoOU87ZTyjurk669frc
 iuT+JyTC99c3Zikq3FLPp5gT4ZzjYKXx8wCt6YuHMQEvfABLhcBHXIuG7izx11nXJhvd2pyhW
 MRgnkqKGBGODepKybloUG0bdh1zpB+8ffwd0szI0FFw66RQc0XFUlpxMqjNHOS7gvsMheaqu3
 UAymr8wIiak4Fr05PYirRbISYDIlaOQy88gLGvKOi+Ki/VywXzQ8CYREPo5vpSEr08qvFb1GG
 KA/rP2JtZJb268vS2dsQeGNkQJZqhU+cZ5YpFG1o4fttnoWr7Hk8DTACDQFrRcoiwBpiVeMeO
 fZqgnNTqABjajc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_141703_963579_539E45B0 
X-CRM114-Status: GOOD (  18.05  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
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
Cc: bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds minimal support for the new Raspberry Pi 4 without the
fancy stuff like GENET, PCIe, XHCI, 40 bit DMA and V3D. The RPi 4 is available
in 3 different variants (1, 2 and 4 GB RAM), so leave the memory size to zero
and let the bootloader take care of it.

Other differences to the Raspberry Pi 3:
- additional GIC 400 Interrupt controller
- new thermal IP and HWRNG
- additional MMC interface (emmc2)
- additional UART, I2C, SPI and PWM interfaces

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 arch/arm/boot/dts/Makefile            |   1 +
 arch/arm/boot/dts/bcm2838-rpi-4-b.dts | 120 +++++++
 arch/arm/boot/dts/bcm2838.dtsi        | 657 ++++++++++++++++++++++++++++++++++
 arch/arm/boot/dts/bcm283x.dtsi        |   2 +-
 4 files changed, 779 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/bcm2838-rpi-4-b.dts
 create mode 100644 arch/arm/boot/dts/bcm2838.dtsi

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 9159fa2..7ec9c90 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -83,6 +83,7 @@ dtb-$(CONFIG_ARCH_BCM2835) += \
 	bcm2837-rpi-3-b.dtb \
 	bcm2837-rpi-3-b-plus.dtb \
 	bcm2837-rpi-cm3-io3.dtb \
+	bcm2838-rpi-4-b.dtb \
 	bcm2835-rpi-zero.dtb \
 	bcm2835-rpi-zero-w.dtb
 dtb-$(CONFIG_ARCH_BCM_5301X) += \
diff --git a/arch/arm/boot/dts/bcm2838-rpi-4-b.dts b/arch/arm/boot/dts/bcm2838-rpi-4-b.dts
new file mode 100644
index 0000000..38308d4
--- /dev/null
+++ b/arch/arm/boot/dts/bcm2838-rpi-4-b.dts
@@ -0,0 +1,120 @@
+// SPDX-License-Identifier: GPL-2.0
+/dts-v1/;
+#include "bcm2838.dtsi"
+#include "bcm2835-rpi.dtsi"
+
+/ {
+	compatible = "raspberrypi,4-model-b", "brcm,bcm2838";
+	model = "Raspberry Pi 4 Model B";
+
+	chosen {
+		/* 8250 auxiliary UART instead of pl011 */
+		stdout-path = "serial1:115200n8";
+	};
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0 0 0x00000000>;
+	};
+
+	leds {
+		act {
+			gpios = <&gpio 42 GPIO_ACTIVE_HIGH>;
+		};
+
+		pwr {
+			label = "PWR";
+			gpios = <&expgpio 2 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	wifi_pwrseq: wifi-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		reset-gpios = <&expgpio 1 GPIO_ACTIVE_LOW>;
+	};
+
+	sd_io_1v8_reg: sd_io_1v8_reg {
+		compatible = "regulator-gpio";
+		regulator-name = "vdd-sd-io";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-boot-on;
+		regulator-always-on;
+		regulator-settling-time-us = <5000>;
+		gpios = <&expgpio 4 GPIO_ACTIVE_HIGH>;
+		states = <1800000 0x1
+			  3300000 0x0>;
+		status = "okay";
+	};
+};
+
+&firmware {
+	expgpio: gpio {
+		compatible = "raspberrypi,firmware-gpio";
+		gpio-controller;
+		#gpio-cells = <2>;
+		gpio-line-names = "BT_ON",
+				  "WL_ON",
+				  "PWR_LED_OFF",
+				  "GLOBAL_RESET",
+				  "VDD_SD_IO_SEL",
+				  "CAM_GPIO",
+				  "",
+				  "";
+		status = "okay";
+	};
+};
+
+&pwm1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm1_0_gpio40 &pwm1_1_gpio41>;
+	status = "okay";
+};
+
+/* SDHCI is used to control the SDIO for wireless */
+&sdhci {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&emmc_gpio34>;
+	bus-width = <4>;
+	non-removable;
+	mmc-pwrseq = <&wifi_pwrseq>;
+	status = "okay";
+
+	brcmf: wifi@1 {
+		reg = <1>;
+		compatible = "brcm,bcm4329-fmac";
+	};
+};
+
+/* EMMC2 is used to drive the SD card */
+&emmc2 {
+	vqmmc-supply = <&sd_io_1v8_reg>;
+	broken-cd;
+	status = "okay";
+};
+
+/* uart0 communicates with the BT module */
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_ctsrts_gpio30 &uart0_gpio32 &gpclk2_gpio43>;
+	status = "okay";
+
+	bluetooth {
+		compatible = "brcm,bcm43438-bt";
+		max-speed = <2000000>;
+		shutdown-gpios = <&expgpio 0 GPIO_ACTIVE_HIGH>;
+	};
+};
+
+/* uart1 is mapped to the pin header */
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart1_gpio14>;
+	status = "okay";
+};
+
+&vchiq {
+	interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
+};
diff --git a/arch/arm/boot/dts/bcm2838.dtsi b/arch/arm/boot/dts/bcm2838.dtsi
new file mode 100644
index 0000000..e004d70
--- /dev/null
+++ b/arch/arm/boot/dts/bcm2838.dtsi
@@ -0,0 +1,657 @@
+// SPDX-License-Identifier: GPL-2.0
+#include "bcm283x.dtsi"
+
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/soc/bcm2835-pm.h>
+
+/ {
+	compatible = "brcm,bcm2838";
+
+	#address-cells = <2>;
+	#size-cells = <1>;
+
+	interrupt-parent = <&gicv2>;
+
+	soc {
+		ranges = <0x7e000000  0x0 0xfe000000  0x01800000>,
+			 <0x7c000000  0x0 0xfc000000  0x02000000>,
+			 <0x40000000  0x0 0xff800000  0x00800000>;
+		/* Emulate a contiguous 30-bit address range for DMA */
+		dma-ranges = <0xc0000000  0x0 0x00000000  0x3c000000>;
+
+		local_intc: local_intc@40000000 {
+			compatible = "brcm,bcm2836-l1-intc";
+			reg = <0x40000000 0x100>;
+		};
+
+		gicv2: gic400@40041000 {
+			interrupt-controller;
+			#interrupt-cells = <3>;
+			compatible = "arm,gic-400";
+			reg =	<0x40041000 0x1000>,
+				<0x40042000 0x2000>,
+				<0x40044000 0x2000>,
+				<0x40046000 0x2000>;
+		};
+
+		dma: dma@7e007000 {
+			compatible = "brcm,bcm2835-dma";
+			reg = <0x7e007000 0xb00>;
+			interrupts = <GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 82 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 84 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>, /* dmalite  7 */
+				     <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>, /* dmalite  8 */
+				     <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>, /* dmalite  9 */
+				     <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>; /* dmalite 10 */
+			interrupt-names = "dma0",
+					  "dma1",
+					  "dma2",
+					  "dma3",
+					  "dma4",
+					  "dma5",
+					  "dma6",
+					  "dma7",
+					  "dma8",
+					  "dma9",
+					  "dma10";
+			#dma-cells = <1>;
+			brcm,dma-channel-mask = <0x07f5>;
+		};
+
+		pm: watchdog@7e100000 {
+			reg = <0x7e100000 0x114>,
+			      <0x7e00a000 0x24>,
+			      <0x7ec11000 0x20>;
+		};
+
+		rng@7e104000 {
+			interrupts = <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>;
+
+			/* RNG is incompatible to brcm,bcm2835-rng */
+			status = "disabled";
+		};
+
+		uart2: serial@7e201400 {
+			compatible = "arm,pl011", "arm,primecell";
+			reg = <0x7e201400 0x200>;
+			interrupts = <GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clocks BCM2835_CLOCK_UART>,
+				 <&clocks BCM2835_CLOCK_VPU>;
+			clock-names = "uartclk", "apb_pclk";
+			arm,primecell-periphid = <0x00241011>;
+			status = "disabled";
+		};
+
+		uart3: serial@7e201600 {
+			compatible = "arm,pl011", "arm,primecell";
+			reg = <0x7e201600 0x200>;
+			interrupts = <GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clocks BCM2835_CLOCK_UART>,
+				 <&clocks BCM2835_CLOCK_VPU>;
+			clock-names = "uartclk", "apb_pclk";
+			arm,primecell-periphid = <0x00241011>;
+			status = "disabled";
+		};
+
+		uart4: serial@7e201800 {
+			compatible = "arm,pl011", "arm,primecell";
+			reg = <0x7e201800 0x200>;
+			interrupts = <GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clocks BCM2835_CLOCK_UART>,
+				 <&clocks BCM2835_CLOCK_VPU>;
+			clock-names = "uartclk", "apb_pclk";
+			arm,primecell-periphid = <0x00241011>;
+			status = "disabled";
+		};
+
+		uart5: serial@7e201a00 {
+			compatible = "arm,pl011", "arm,primecell";
+			reg = <0x7e201a00 0x200>;
+			interrupts = <GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clocks BCM2835_CLOCK_UART>,
+				 <&clocks BCM2835_CLOCK_VPU>;
+			clock-names = "uartclk", "apb_pclk";
+			arm,primecell-periphid = <0x00241011>;
+			status = "disabled";
+		};
+
+		spi@7e204000 {
+			reg = <0x7e204000 0x0200>;
+			interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
+		spi3: spi@7e204600 {
+			compatible = "brcm,bcm2835-spi";
+			reg = <0x7e204600 0x0200>;
+			interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clocks BCM2835_CLOCK_VPU>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		spi4: spi@7e204800 {
+			compatible = "brcm,bcm2835-spi";
+			reg = <0x7e204800 0x0200>;
+			interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clocks BCM2835_CLOCK_VPU>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		spi5: spi@7e204a00 {
+			compatible = "brcm,bcm2835-spi";
+			reg = <0x7e204a00 0x0200>;
+			interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clocks BCM2835_CLOCK_VPU>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		spi6: spi@7e204c00 {
+			compatible = "brcm,bcm2835-spi";
+			reg = <0x7e204c00 0x0200>;
+			interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clocks BCM2835_CLOCK_VPU>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		i2c3: i2c@7e205600 {
+			compatible = "brcm,bcm2835-i2c";
+			reg = <0x7e205600 0x200>;
+			interrupts = <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clocks BCM2835_CLOCK_VPU>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		i2c4: i2c@7e205800 {
+			compatible = "brcm,bcm2835-i2c";
+			reg = <0x7e205800 0x200>;
+			interrupts = <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clocks BCM2835_CLOCK_VPU>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		i2c5: i2c@7e205a00 {
+			compatible = "brcm,bcm2835-i2c";
+			reg = <0x7e205a00 0x200>;
+			interrupts = <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clocks BCM2835_CLOCK_VPU>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		i2c6: i2c@7e205c00 {
+			compatible = "brcm,bcm2835-i2c";
+			reg = <0x7e205c00 0x200>;
+			interrupts = <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clocks BCM2835_CLOCK_VPU>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		pixelvalve@7e206000 {
+			interrupts = <GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
+		pixelvalve@7e207000 {
+			interrupts = <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
+		pwm1: pwm@7e20c800 {
+			compatible = "brcm,bcm2835-pwm";
+			reg = <0x7e20c800 0x28>;
+			clocks = <&clocks BCM2835_CLOCK_PWM>;
+			assigned-clocks = <&clocks BCM2835_CLOCK_PWM>;
+			assigned-clock-rates = <10000000>;
+			#pwm-cells = <2>;
+			status = "disabled";
+		};
+
+		emmc2: emmc2@7e340000 {
+			compatible = "brcm,bcm2838-emmc2";
+			reg = <0x7e340000 0x100>;
+			interrupts = <GIC_SPI 126 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clocks BCM2838_CLOCK_EMMC2>;
+			status = "disabled";
+		};
+
+		hvs@7e400000 {
+			interrupts = <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
+		pixelvalve@7e807000 {
+			interrupts = <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH>;
+		};
+	};
+
+	arm-pmu {
+		/*
+		 * N.B. the A72 PMU support only exists in arch/arm64, hence
+		 * the fallback to the A53 version.
+		 */
+		compatible = "arm,cortex-a72-pmu", "arm,cortex-a53-pmu";
+		interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>,
+			<GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>,
+			<GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>,
+			<GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
+	};
+
+	timer {
+		compatible = "arm,armv7-timer";
+		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(4) |
+					  IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(4) |
+					  IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(4) |
+					  IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(4) |
+					  IRQ_TYPE_LEVEL_LOW)>;
+		arm,cpu-registers-not-fw-configured;
+		always-on;
+	};
+
+	cpus: cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		enable-method = "brcm,bcm2836-smp"; // for ARM 32-bit
+
+		cpu0: cpu@0 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a72";
+			reg = <0>;
+			enable-method = "spin-table";
+			cpu-release-addr = <0x0 0x000000d8>;
+		};
+
+		cpu1: cpu@1 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a72";
+			reg = <1>;
+			enable-method = "spin-table";
+			cpu-release-addr = <0x0 0x000000e0>;
+		};
+
+		cpu2: cpu@2 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a72";
+			reg = <2>;
+			enable-method = "spin-table";
+			cpu-release-addr = <0x0 0x000000e8>;
+		};
+
+		cpu3: cpu@3 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a72";
+			reg = <3>;
+			enable-method = "spin-table";
+			cpu-release-addr = <0x0 0x000000f0>;
+		};
+	};
+};
+
+&clk_osc {
+	clock-frequency = <54000000>;
+};
+
+&clocks {
+	compatible = "brcm,bcm2838-cprman";
+};
+
+&cpu_thermal {
+	coefficients = <(-487) 410040>;
+};
+
+&dsi0 {
+	interrupts = <GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&dsi1 {
+	interrupts = <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&gpio {
+	compatible = "brcm,bcm2838-gpio";
+	interrupts = <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH>,
+		     <GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH>,
+		     <GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>,
+		     <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>;
+
+	gpclk0_gpio49: gpclk0_gpio49 {
+		brcm,pins = <49>;
+		brcm,function = <BCM2835_FSEL_ALT1>;
+		bias-disable;
+	};
+	gpclk1_gpio50: gpclk1_gpio50 {
+		brcm,pins = <50>;
+		brcm,function = <BCM2835_FSEL_ALT1>;
+		bias-disable;
+	};
+	gpclk2_gpio51: gpclk2_gpio51 {
+		brcm,pins = <51>;
+		brcm,function = <BCM2835_FSEL_ALT1>;
+		bias-disable;
+	};
+
+	i2c0_gpio46: i2c0_gpio46 {
+		brcm,pins = <46 47>;
+		brcm,function = <BCM2835_FSEL_ALT0>;
+	};
+	i2c1_gpio46: i2c1_gpio46 {
+		brcm,pins = <46 47>;
+		brcm,function = <BCM2835_FSEL_ALT1>;
+	};
+	i2c3_gpio2: i2c3_gpio2 {
+		brcm,pins = <2 3>;
+		brcm,function = <BCM2835_FSEL_ALT5>;
+	};
+	i2c3_gpio4: i2c3_gpio4 {
+		brcm,pins = <4 5>;
+		brcm,function = <BCM2835_FSEL_ALT5>;
+	};
+	i2c4_gpio6: i2c4_gpio6 {
+		brcm,pins = <6 7>;
+		brcm,function = <BCM2835_FSEL_ALT5>;
+	};
+	i2c4_gpio8: i2c4_gpio8 {
+		brcm,pins = <8 9>;
+		brcm,function = <BCM2835_FSEL_ALT5>;
+	};
+	i2c5_gpio10: i2c5_gpio10 {
+		brcm,pins = <10 11>;
+		brcm,function = <BCM2835_FSEL_ALT5>;
+	};
+	i2c5_gpio12: i2c5_gpio12 {
+		brcm,pins = <12 13>;
+		brcm,function = <BCM2835_FSEL_ALT5>;
+	};
+	i2c6_gpio0: i2c6_gpio0 {
+		brcm,pins = <0 1>;
+		brcm,function = <BCM2835_FSEL_ALT5>;
+	};
+	i2c6_gpio22: i2c6_gpio22 {
+		brcm,pins = <22 23>;
+		brcm,function = <BCM2835_FSEL_ALT5>;
+	};
+	i2c_slave_gpio8: i2c_slave_gpio8 {
+		brcm,pins = <8 9 10 11>;
+		brcm,function = <BCM2835_FSEL_ALT3>;
+	};
+
+	jtag_gpio48: jtag_gpio48 {
+		brcm,pins = <48 49 50 51 52 53>;
+		brcm,function = <BCM2835_FSEL_ALT4>;
+	};
+
+	mii_gpio28: mii_gpio28 {
+		brcm,pins = <28 29 30 31>;
+		brcm,function = <BCM2835_FSEL_ALT4>;
+	};
+	mii_gpio36: mii_gpio36 {
+		brcm,pins = <36 37 38 39>;
+		brcm,function = <BCM2835_FSEL_ALT5>;
+	};
+
+	pcm_gpio50: pcm_gpio50 {
+		brcm,pins = <50 51 52 53>;
+		brcm,function = <BCM2835_FSEL_ALT2>;
+	};
+
+	pwm0_0_gpio12: pwm0_0_gpio12 {
+		brcm,pins = <12>;
+		brcm,function = <BCM2835_FSEL_ALT0>;
+	};
+	pwm0_0_gpio18: pwm0_0_gpio18 {
+		brcm,pins = <18>;
+		brcm,function = <BCM2835_FSEL_ALT5>;
+	};
+	pwm1_0_gpio40: pwm1_0_gpio40 {
+		brcm,pins = <40>;
+		brcm,function = <BCM2835_FSEL_ALT0>;
+	};
+	pwm0_1_gpio13: pwm0_1_gpio13 {
+		brcm,pins = <13>;
+		brcm,function = <BCM2835_FSEL_ALT0>;
+	};
+	pwm0_1_gpio19: pwm0_1_gpio19 {
+		brcm,pins = <19>;
+		brcm,function = <BCM2835_FSEL_ALT5>;
+	};
+	pwm1_1_gpio41: pwm1_1_gpio41 {
+		brcm,pins = <41>;
+		brcm,function = <BCM2835_FSEL_ALT0>;
+	};
+	pwm0_1_gpio45: pwm0_1_gpio45 {
+		brcm,pins = <45>;
+		brcm,function = <BCM2835_FSEL_ALT0>;
+	};
+	pwm0_0_gpio52: pwm0_0_gpio52 {
+		brcm,pins = <52>;
+		brcm,function = <BCM2835_FSEL_ALT1>;
+		bias-disable;
+	};
+	pwm0_1_gpio53: pwm0_1_gpio53 {
+		brcm,pins = <53>;
+		brcm,function = <BCM2835_FSEL_ALT1>;
+		bias-disable;
+	};
+
+	/* The following group consists of:
+	 *  RGMII_START_STOP
+	 *  RGMII_RX_OK
+	 */
+	rgmii_gpio35: rgmii_gpio35 {
+		brcm,pins = <35 36>;
+		brcm,function = <BCM2835_FSEL_ALT4>;
+	};
+	rgmii_irq_gpio34: rgmii_irq_gpio34 {
+		brcm,pins = <34>;
+		brcm,function = <BCM2835_FSEL_ALT5>;
+	};
+	rgmii_irq_gpio39: rgmii_irq_gpio39 {
+		brcm,pins = <39>;
+		brcm,function = <BCM2835_FSEL_ALT4>;
+	};
+	rgmii_mdio_gpio28: rgmii_mdio_gpio28 {
+		brcm,pins = <28 29>;
+		brcm,function = <BCM2835_FSEL_ALT5>;
+	};
+	rgmii_mdio_gpio37: rgmii_mdio_gpio37 {
+		brcm,pins = <37 38>;
+		brcm,function = <BCM2835_FSEL_ALT4>;
+	};
+
+	spi0_gpio46: spi0_gpio46 {
+		brcm,pins = <46 47 48 49>;
+		brcm,function = <BCM2835_FSEL_ALT2>;
+	};
+	spi2_gpio46: spi2_gpio46 {
+		brcm,pins = <46 47 48 49 50>;
+		brcm,function = <BCM2835_FSEL_ALT5>;
+	};
+	spi3_gpio0: spi3_gpio0 {
+		brcm,pins = <0 1 2 3>;
+		brcm,function = <BCM2835_FSEL_ALT3>;
+	};
+	spi4_gpio4: spi4_gpio4 {
+		brcm,pins = <4 5 6 7>;
+		brcm,function = <BCM2835_FSEL_ALT3>;
+	};
+	spi5_gpio12: spi5_gpio12 {
+		brcm,pins = <12 13 14 15>;
+		brcm,function = <BCM2835_FSEL_ALT3>;
+	};
+	spi6_gpio18: spi6_gpio18 {
+		brcm,pins = <18 19 20 21>;
+		brcm,function = <BCM2835_FSEL_ALT3>;
+	};
+
+	uart2_gpio0: uart2_gpio0 {
+		pin-tx {
+			brcm,pins = <0>;
+			brcm,function = <BCM2835_FSEL_ALT4>;
+			bias-disable;
+		};
+		pin-rx {
+			brcm,pins = <1>;
+			brcm,function = <BCM2835_FSEL_ALT4>;
+			bias-pull-up;
+		};
+	};
+	uart2_ctsrts_gpio2: uart2_ctsrts_gpio2 {
+		pin-cts {
+			brcm,pins = <2>;
+			brcm,function = <BCM2835_FSEL_ALT4>;
+			bias-pull-up;
+		};
+		pin-rts {
+			brcm,pins = <3>;
+			brcm,function = <BCM2835_FSEL_ALT4>;
+			bias-disable;
+		};
+	};
+	uart3_gpio4: uart3_gpio4 {
+		pin-tx {
+			brcm,pins = <4>;
+			brcm,function = <BCM2835_FSEL_ALT4>;
+			bias-disable;
+		};
+		pin-rx {
+			brcm,pins = <5>;
+			brcm,function = <BCM2835_FSEL_ALT4>;
+			bias-pull-up;
+		};
+	};
+	uart3_ctsrts_gpio6: uart3_ctsrts_gpio6 {
+		pin-cts {
+			brcm,pins = <6>;
+			brcm,function = <BCM2835_FSEL_ALT4>;
+			bias-pull-up;
+		};
+		pin-rts {
+			brcm,pins = <7>;
+			brcm,function = <BCM2835_FSEL_ALT4>;
+			bias-disable;
+		};
+	};
+	uart4_gpio8: uart4_gpio8 {
+		pin-tx {
+			brcm,pins = <8>;
+			brcm,function = <BCM2835_FSEL_ALT4>;
+			bias-disable;
+		};
+		pin-rx {
+			brcm,pins = <9>;
+			brcm,function = <BCM2835_FSEL_ALT4>;
+			bias-pull-up;
+		};
+	};
+	uart4_ctsrts_gpio10: uart4_ctsrts_gpio10 {
+		pin-cts {
+			brcm,pins = <10>;
+			brcm,function = <BCM2835_FSEL_ALT4>;
+			bias-pull-up;
+		};
+		pin-rts {
+			brcm,pins = <11>;
+			brcm,function = <BCM2835_FSEL_ALT4>;
+			bias-disable;
+		};
+	};
+	uart5_gpio12: uart5_gpio12 {
+		pin-tx {
+			brcm,pins = <12>;
+			brcm,function = <BCM2835_FSEL_ALT4>;
+			bias-disable;
+		};
+		pin-rx {
+			brcm,pins = <13>;
+			brcm,function = <BCM2835_FSEL_ALT4>;
+			bias-pull-up;
+		};
+	};
+	uart5_ctsrts_gpio14: uart5_ctsrts_gpio14 {
+		pin-cts {
+			brcm,pins = <14>;
+			brcm,function = <BCM2835_FSEL_ALT4>;
+			bias-pull-up;
+		};
+		pin-rts {
+			brcm,pins = <15>;
+			brcm,function = <BCM2835_FSEL_ALT4>;
+			bias-disable;
+		};
+	};
+};
+
+&vec {
+	interrupts = <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&usb {
+	interrupts = <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&hdmi {
+	interrupts = <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH>,
+		     <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&uart1 {
+	interrupts = <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&spi1 {
+	interrupts = <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&spi2 {
+	interrupts = <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&sdhci {
+	interrupts = <GIC_SPI 126 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&i2c0 {
+	interrupts = <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&i2c1 {
+	interrupts = <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&i2c2 {
+	interrupts = <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&mailbox {
+	interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&sdhost {
+	interrupts = <GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&uart0 {
+	interrupts = <GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&txp {
+	interrupts = <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>;
+};
diff --git a/arch/arm/boot/dts/bcm283x.dtsi b/arch/arm/boot/dts/bcm283x.dtsi
index 1104e4c..8dbddff 100644
--- a/arch/arm/boot/dts/bcm283x.dtsi
+++ b/arch/arm/boot/dts/bcm283x.dtsi
@@ -53,7 +53,7 @@
 		#address-cells = <1>;
 		#size-cells = <1>;

-		txp@7e004000 {
+		txp: txp@7e004000 {
 			compatible = "brcm,bcm2835-txp";
 			reg = <0x7e004000 0x20>;
 			interrupts = <1 11>;
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
