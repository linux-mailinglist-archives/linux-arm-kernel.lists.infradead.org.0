Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 186E3CD2E2
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 17:31:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mxNRs532jxJ6zOAoDYAt5adwMIK/IcEmEOHjhrV0irQ=; b=cdW/7hbOn4sAUqVfhD/8uWq3ji
	MPR+Tsj9nVPse35VNHJC6kLtiwx2wsUXCpS/GXc5AfxrNOO2EzXzD7Gsoz1SJyYZC2LPbdaf8ni+6
	YpGqq5ig5PwOsB9uF5ZisBILia5r6SGyCksrNw15x+MQhW7No3SC0U+MB3yxfsMQBVoKWN3g0jHQn
	ZnGJchAin6YzG7ZBcc0AUBBKl9UELAmMz/hDu6n3qpx/KV4NuhNffStByoPjvoLd1QFNEoBf59Gy8
	c1UDECnuLyJb8wzShYhkRPpBMa0KHCy+HWbGx9ift1SoAu4YJxYC3W71TSHMBtOxzIlg9fqd7gYM3
	ZUSmharg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH8Ui-0001lb-N5; Sun, 06 Oct 2019 15:30:48 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH8T6-0007r1-0s
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 15:29:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1570375741;
 bh=FkngokdC2rUS6EYd82B4YnpsaWxgmijFZFmYGpbP0VQ=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=SvVWbrKMKvLFjTTXtTF5wP+iwQBqsCv24EiNmlE3We+LImczzgQlELGoqlGqSNlk9
 tKbGps8CTVV+CaMQwb6wNo2NTk1Mn7ME9+sj9Fq81N9HgwgOB8+YbK3FWKzr5L8vZQ
 hPVPNBcpUqt9QGFLVp6CFH3Rn+tw9HKEOLwjcgO0=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.116]) by mail.gmx.com
 (mrgmx104 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1MFsYx-1iKD7T2iEx-00HROr; Sun, 06 Oct 2019 17:29:00 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Marcel Holtmann <marcel@holtmann.org>,
 Johan Hedberg <johan.hedberg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Eric Anholt <eric@anholt.net>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Subject: [PATCH V4 08/10] ARM: dts: Add minimal Raspberry Pi 4 support
Date: Sun,  6 Oct 2019 17:28:26 +0200
Message-Id: <1570375708-26965-9-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1570375708-26965-1-git-send-email-wahrenst@gmx.net>
References: <1570375708-26965-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:4Wlm88GOz3AYHH9St1U2/DPD63GIidkjHqYNhlei15yLV3NenRb
 55kqffLu4iznGaIVarPWo2HYlHz8m4P0nbj5nkVWRBnqbqgZiKvpdCigaRVUN9DxYtAQn3o
 /XBH+eqxEm02CVdcXyPIAwiI9cfMKcwm+3s5mcFoQciprrVc6iSqgLW8toRuRSuyk05ur6s
 OVekJfabgttT+bboogDOw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:5pfjuFdroGg=:cy6PnVTee79O/+daXKiWm6
 kqyXtcPMVVqo0HBvXHlLcneqxFpsG1CD99dxVMgf5tFJ4Zzk98/npmf+Oivfv91Q3+POZCSTw
 HVsxhtTc1EyuPpa3uIswxsX0eT9G4B9rQUng+35oB3U9EmGqyHeqpFoomT+jF2OdvA3yBjYjZ
 oP1SMEj/57FHoAUnCpCT76OLKEgfsegdnt5FlqEPnYHLbWQUhL15rvhEa3gBit/QN+bdlGoIS
 efcsLpILP/oumw2dfAVbrHv3G6+7blNmQUZoQkVb2oTKV9u6ki5xAeETd/uTNFhp8xJY04SWn
 m/8/3qbJf3bTwXMswAaRTL7jBh69gr2u7NqRlJ+7dmaipa5CLRgEH98Es0XNtFd/i2KURUBUk
 qtxIYOM7s4+cgEH11LuSqHTjvSTfdmXN/aJXdOQHlwSgXenydNkRPi3LdhZZ9atqvnnrLTY+B
 sNjcUnLyT4s12JeuLMANEsvg0FeKrnod0eJgwUFV5Ua9PvHD2/MY+EMTc7vlqthv2iuCH5tEt
 nTYXNfz9fRvQlHbF01otzXIlUr+hBjG3LRmNzU1jLDNudu4Si2QuJ182ghoHylCb9pGounB9v
 WBG+5mV9HQ1KWtIeGxR3cHy1Rzoa+hwhkXKxvaSlQ2FFoIJiK8llJFoPnpTSi6lYJtxdJSJDm
 AX7JjzC2U8n2B60hnpMNS0m1mwKlxoPGu8YNvVzfC9xTChdzbBe3DWO1bSBZHa2bW8ciTGZ3s
 NC2oK5IYDZjq4icCYpf6VEJS1H6Oj/fvM7BxJzbFIS4DjqPJFKmEJUFGSp8dLBO+VPqhiBgMI
 n8ByYH6OqcxcNC9yVG866eBwIjfUNUTo6QqH/VEbGlu4qhfNO4hkgwmZDD0LZiFgD2lXpjcoc
 VcUWA69mmB5ZJKvtWy0tEoSXTbQnF1HYGDmdamFzKA3/pGHMa3GZFo2iM1s7ApOyb12jQWtdE
 4vUW5q9pBYsZqEaeh08pKplgukzQCGg4F3oA6ikP8+A1Ak31SkvTqjYRF/QaQN+/ymtB7aTah
 iHpDqZzkxtUDEMT055UOdZXt8pIlt92ioZDFgu9iFyVWI8/Ua5vh5IqwD2RX1tJOAGBF8Fgq7
 snOGBSwEF8CF8R7GjAFeOI6G3icrDvNr+gkaT9ijPxJfwcuJDDwpOlxIE6B+B/tKZbptdEfbP
 UUt/YEMdFw7vwRL0s4wzn3wFRw36tFhls0x3uM77dFeMM1Pl7lHekHKnAKw+8iXoFuhqpi4yU
 y9/sedqLwO1QU7NyVQZDUg4QPDHbkdhDQzF+Pjw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_082908_532967_6CDA45D4 
X-CRM114-Status: GOOD (  19.77  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.21 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 linux-bluetooth@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <wahrenst@gmx.net>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds minimal support for the new Raspberry Pi 4 without the
fancy stuff like GENET, PCIe, xHCI, 40 bit DMA and V3D. The RPi 4 is
available in 3 different variants (1, 2 and 4 GB RAM), so leave the memory
size to zero and let the bootloader take care of it. The DWC2 is still
usable as peripheral via the USB-C port.

Other differences to the Raspberry Pi 3:
- additional GIC 400 Interrupt controller
- new thermal IP and HWRNG
- additional MMC interface (emmc2)
- additional UART, I2C, SPI and PWM interfaces
- clock stretching bug in I2C IP has been fixed

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Eric Anholt <eric@anholt.net>
Acked-by: Florian Fanelli <f.fainelli@gmail.com>
---
 arch/arm/boot/dts/Makefile                        |   1 +
 arch/arm/boot/dts/bcm2711-rpi-4-b.dts             | 123 ++++
 arch/arm/boot/dts/bcm2711.dtsi                    | 844 ++++++++++++++++++++++
 arch/arm/boot/dts/bcm283x-rpi-usb-peripheral.dtsi |   7 +
 arch/arm/boot/dts/bcm283x.dtsi                    |   4 +-
 5 files changed, 977 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/boot/dts/bcm2711-rpi-4-b.dts
 create mode 100644 arch/arm/boot/dts/bcm2711.dtsi
 create mode 100644 arch/arm/boot/dts/bcm283x-rpi-usb-peripheral.dtsi

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index b21b3a6..21002cd 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -83,6 +83,7 @@ dtb-$(CONFIG_ARCH_BCM2835) += \
 	bcm2837-rpi-3-b.dtb \
 	bcm2837-rpi-3-b-plus.dtb \
 	bcm2837-rpi-cm3-io3.dtb \
+	bcm2711-rpi-4-b.dtb \
 	bcm2835-rpi-zero.dtb \
 	bcm2835-rpi-zero-w.dtb
 dtb-$(CONFIG_ARCH_BCM_5301X) += \
diff --git a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
new file mode 100644
index 0000000..cccc1cc
--- /dev/null
+++ b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
@@ -0,0 +1,123 @@
+// SPDX-License-Identifier: GPL-2.0
+/dts-v1/;
+#include "bcm2711.dtsi"
+#include "bcm2835-rpi.dtsi"
+#include "bcm283x-rpi-usb-peripheral.dtsi"
+
+/ {
+	compatible = "raspberrypi,4-model-b", "brcm,bcm2711";
+	model = "Raspberry Pi 4 Model B";
+
+	chosen {
+		/* 8250 auxiliary UART instead of pl011 */
+		stdout-path = "serial1:115200n8";
+	};
+
+	/* Will be filled by the bootloader */
+	memory@0 {
+		device_type = "memory";
+		reg = <0 0 0>;
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
+	pinctrl-0 = <&uart0_ctsrts_gpio30 &uart0_gpio32>;
+	uart-has-rtscts;
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
diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
new file mode 100644
index 0000000..dfc035f
--- /dev/null
+++ b/arch/arm/boot/dts/bcm2711.dtsi
@@ -0,0 +1,844 @@
+// SPDX-License-Identifier: GPL-2.0
+#include "bcm283x.dtsi"
+
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/soc/bcm2835-pm.h>
+
+/ {
+	compatible = "brcm,bcm2711";
+
+	#address-cells = <2>;
+	#size-cells = <1>;
+
+	interrupt-parent = <&gicv2>;
+
+	soc {
+		/*
+		 * Defined ranges:
+		 *   Common BCM283x peripherals
+		 *   BCM2711-specific peripherals
+		 *   ARM-local peripherals
+		 */
+		ranges = <0x7e000000  0x0 0xfe000000  0x01800000>,
+			 <0x7c000000  0x0 0xfc000000  0x02000000>,
+			 <0x40000000  0x0 0xff800000  0x00800000>;
+		/* Emulate a contiguous 30-bit address range for DMA */
+		dma-ranges = <0xc0000000  0x0 0x00000000  0x3c000000>;
+
+		/*
+		 * This node is the provider for the enable-method for
+		 * bringing up secondary cores.
+		 */
+		local_intc: local_intc@40000000 {
+			compatible = "brcm,bcm2836-l1-intc";
+			reg = <0x40000000 0x100>;
+		};
+
+		gicv2: interrupt-controller@40041000 {
+			interrupt-controller;
+			#interrupt-cells = <3>;
+			compatible = "arm,gic-400";
+			reg =	<0x40041000 0x1000>,
+				<0x40042000 0x2000>,
+				<0x40044000 0x2000>,
+				<0x40046000 0x2000>;
+			interrupts = <GIC_PPI 9 (GIC_CPU_MASK_SIMPLE(4) |
+						 IRQ_TYPE_LEVEL_HIGH)>;
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
+				     /* DMA lite 7 - 10 */
+				     <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>;
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
+			compatible = "brcm,bcm2835-pm", "brcm,bcm2835-pm-wdt";
+			#power-domain-cells = <1>;
+			#reset-cells = <1>;
+			reg = <0x7e100000 0x114>,
+			      <0x7e00a000 0x24>,
+			      <0x7ec11000 0x20>;
+			clocks = <&clocks BCM2835_CLOCK_V3D>,
+				 <&clocks BCM2835_CLOCK_PERI_IMAGE>,
+				 <&clocks BCM2835_CLOCK_H264>,
+				 <&clocks BCM2835_CLOCK_ISP>;
+			clock-names = "v3d", "peri_image", "h264", "isp";
+			system-power-controller;
+		};
+
+		rng@7e104000 {
+			interrupts = <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>;
+
+			/* RNG is incompatible with brcm,bcm2835-rng */
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
+			compatible = "brcm,bcm2711-i2c", "brcm,bcm2835-i2c";
+			reg = <0x7e205600 0x200>;
+			interrupts = <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clocks BCM2835_CLOCK_VPU>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		i2c4: i2c@7e205800 {
+			compatible = "brcm,bcm2711-i2c", "brcm,bcm2835-i2c";
+			reg = <0x7e205800 0x200>;
+			interrupts = <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clocks BCM2835_CLOCK_VPU>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		i2c5: i2c@7e205a00 {
+			compatible = "brcm,bcm2711-i2c", "brcm,bcm2835-i2c";
+			reg = <0x7e205a00 0x200>;
+			interrupts = <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clocks BCM2835_CLOCK_VPU>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		i2c6: i2c@7e205c00 {
+			compatible = "brcm,bcm2711-i2c", "brcm,bcm2835-i2c";
+			reg = <0x7e205c00 0x200>;
+			interrupts = <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clocks BCM2835_CLOCK_VPU>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
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
+			compatible = "brcm,bcm2711-emmc2";
+			reg = <0x7e340000 0x100>;
+			interrupts = <GIC_SPI 126 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clocks BCM2711_CLOCK_EMMC2>;
+			status = "disabled";
+		};
+
+		hvs@7e400000 {
+			interrupts = <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>;
+		};
+	};
+
+	arm-pmu {
+		compatible = "arm,cortex-a72-pmu", "arm,armv8-pmuv3";
+		interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>,
+			<GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>,
+			<GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>,
+			<GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-affinity = <&cpu0>, <&cpu1>, <&cpu2>, <&cpu3>;
+	};
+
+	timer {
+		compatible = "arm,armv8-timer";
+		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(4) |
+					  IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(4) |
+					  IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(4) |
+					  IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(4) |
+					  IRQ_TYPE_LEVEL_LOW)>;
+		/* This only applies to the ARMv7 stub */
+		arm,cpu-registers-not-fw-configured;
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
+	compatible = "brcm,bcm2711-cprman";
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
+	compatible = "brcm,bcm2711-gpio";
+	interrupts = <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH>,
+		     <GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH>,
+		     <GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>,
+		     <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>;
+
+	gpclk0_gpio49: gpclk0_gpio49 {
+		pin-gpclk {
+			pins = "gpio49";
+			function = "alt1";
+			bias-disable;
+		};
+	};
+	gpclk1_gpio50: gpclk1_gpio50 {
+		pin-gpclk {
+			pins = "gpio50";
+			function = "alt1";
+			bias-disable;
+		};
+	};
+	gpclk2_gpio51: gpclk2_gpio51 {
+		pin-gpclk {
+			pins = "gpio51";
+			function = "alt1";
+			bias-disable;
+		};
+	};
+
+	i2c0_gpio46: i2c0_gpio46 {
+		pin-sda {
+			function = "alt0";
+			pins = "gpio46";
+			bias-pull-up;
+		};
+		pin-scl {
+			function = "alt0";
+			pins = "gpio47";
+			bias-disable;
+		};
+	};
+	i2c1_gpio46: i2c1_gpio46 {
+		pin-sda {
+			function = "alt1";
+			pins = "gpio46";
+			bias-pull-up;
+		};
+		pin-scl {
+			function = "alt1";
+			pins = "gpio47";
+			bias-disable;
+		};
+	};
+	i2c3_gpio2: i2c3_gpio2 {
+		pin-sda {
+			function = "alt5";
+			pins = "gpio2";
+			bias-pull-up;
+		};
+		pin-scl {
+			function = "alt5";
+			pins = "gpio3";
+			bias-disable;
+		};
+	};
+	i2c3_gpio4: i2c3_gpio4 {
+		pin-sda {
+			function = "alt5";
+			pins = "gpio4";
+			bias-pull-up;
+		};
+		pin-scl {
+			function = "alt5";
+			pins = "gpio5";
+			bias-disable;
+		};
+	};
+	i2c4_gpio6: i2c4_gpio6 {
+		pin-sda {
+			function = "alt5";
+			pins = "gpio6";
+			bias-pull-up;
+		};
+		pin-scl {
+			function = "alt5";
+			pins = "gpio7";
+			bias-disable;
+		};
+	};
+	i2c4_gpio8: i2c4_gpio8 {
+		pin-sda {
+			function = "alt5";
+			pins = "gpio8";
+			bias-pull-up;
+		};
+		pin-scl {
+			function = "alt5";
+			pins = "gpio9";
+			bias-disable;
+		};
+	};
+	i2c5_gpio10: i2c5_gpio10 {
+		pin-sda {
+			function = "alt5";
+			pins = "gpio10";
+			bias-pull-up;
+		};
+		pin-scl {
+			function = "alt5";
+			pins = "gpio11";
+			bias-disable;
+		};
+	};
+	i2c5_gpio12: i2c5_gpio12 {
+		pin-sda {
+			function = "alt5";
+			pins = "gpio12";
+			bias-pull-up;
+		};
+		pin-scl {
+			function = "alt5";
+			pins = "gpio13";
+			bias-disable;
+		};
+	};
+	i2c6_gpio0: i2c6_gpio0 {
+		pin-sda {
+			function = "alt5";
+			pins = "gpio0";
+			bias-pull-up;
+		};
+		pin-scl {
+			function = "alt5";
+			pins = "gpio1";
+			bias-disable;
+		};
+	};
+	i2c6_gpio22: i2c6_gpio22 {
+		pin-sda {
+			function = "alt5";
+			pins = "gpio22";
+			bias-pull-up;
+		};
+		pin-scl {
+			function = "alt5";
+			pins = "gpio23";
+			bias-disable;
+		};
+	};
+	i2c_slave_gpio8: i2c_slave_gpio8 {
+		pins-i2c-slave {
+			pins = "gpio8",
+			       "gpio9",
+			       "gpio10",
+			       "gpio11";
+			function = "alt3";
+		};
+	};
+
+	jtag_gpio48: jtag_gpio48 {
+		pins-jtag {
+			pins = "gpio48",
+			       "gpio49",
+			       "gpio50",
+			       "gpio51",
+			       "gpio52",
+			       "gpio53";
+			function = "alt4";
+		};
+	};
+
+	mii_gpio28: mii_gpio28 {
+		pins-mii {
+			pins = "gpio28",
+			       "gpio29",
+			       "gpio30",
+			       "gpio31";
+			function = "alt4";
+		};
+	};
+	mii_gpio36: mii_gpio36 {
+		pins-mii {
+			pins = "gpio36",
+			       "gpio37",
+			       "gpio38",
+			       "gpio39";
+			function = "alt5";
+		};
+	};
+
+	pcm_gpio50: pcm_gpio50 {
+		pins-pcm {
+			pins = "gpio50",
+			       "gpio51",
+			       "gpio52",
+			       "gpio53";
+			function = "alt2";
+		};
+	};
+
+	pwm0_0_gpio12: pwm0_0_gpio12 {
+		pin-pwm {
+			pins = "gpio12";
+			function = "alt0";
+			bias-disable;
+		};
+	};
+	pwm0_0_gpio18: pwm0_0_gpio18 {
+		pin-pwm {
+			pins = "gpio18";
+			function = "alt5";
+			bias-disable;
+		};
+	};
+	pwm1_0_gpio40: pwm1_0_gpio40 {
+		pin-pwm {
+			pins = "gpio40";
+			function = "alt0";
+			bias-disable;
+		};
+	};
+	pwm0_1_gpio13: pwm0_1_gpio13 {
+		pin-pwm {
+			pins = "gpio13";
+			function = "alt0";
+			bias-disable;
+		};
+	};
+	pwm0_1_gpio19: pwm0_1_gpio19 {
+		pin-pwm {
+			pins = "gpio19";
+			function = "alt5";
+			bias-disable;
+		};
+	};
+	pwm1_1_gpio41: pwm1_1_gpio41 {
+		pin-pwm {
+			pins = "gpio41";
+			function = "alt0";
+			bias-disable;
+		};
+	};
+	pwm0_1_gpio45: pwm0_1_gpio45 {
+		pin-pwm {
+			pins = "gpio45";
+			function = "alt0";
+			bias-disable;
+		};
+	};
+	pwm0_0_gpio52: pwm0_0_gpio52 {
+		pin-pwm {
+			pins = "gpio52";
+			function = "alt1";
+			bias-disable;
+		};
+	};
+	pwm0_1_gpio53: pwm0_1_gpio53 {
+		pin-pwm {
+			pins = "gpio53";
+			function = "alt1";
+			bias-disable;
+		};
+	};
+
+	rgmii_gpio35: rgmii_gpio35 {
+		pin-start-stop {
+			pins = "gpio35";
+			function = "alt4";
+		};
+		pin-rx-ok {
+			pins = "gpio36";
+			function = "alt4";
+		};
+	};
+	rgmii_irq_gpio34: rgmii_irq_gpio34 {
+		pin-irq {
+			pins = "gpio34";
+			function = "alt5";
+		};
+	};
+	rgmii_irq_gpio39: rgmii_irq_gpio39 {
+		pin-irq {
+			pins = "gpio39";
+			function = "alt4";
+		};
+	};
+	rgmii_mdio_gpio28: rgmii_mdio_gpio28 {
+		pins-mdio {
+			pins = "gpio28",
+			       "gpio29";
+			function = "alt5";
+		};
+	};
+	rgmii_mdio_gpio37: rgmii_mdio_gpio37 {
+		pins-mdio {
+			pins = "gpio37",
+			       "gpio38";
+			function = "alt4";
+		};
+	};
+
+	spi0_gpio46: spi0_gpio46 {
+		pins-spi {
+			pins = "gpio46",
+			       "gpio47",
+			       "gpio48",
+			       "gpio49";
+			function = "alt2";
+		};
+	};
+	spi2_gpio46: spi2_gpio46 {
+		pins-spi {
+			pins = "gpio46",
+			       "gpio47",
+			       "gpio48",
+			       "gpio49",
+			       "gpio50";
+			function = "alt5";
+		};
+	};
+	spi3_gpio0: spi3_gpio0 {
+		pins-spi {
+			pins = "gpio0",
+			       "gpio1",
+			       "gpio2",
+			       "gpio3";
+			function = "alt3";
+		};
+	};
+	spi4_gpio4: spi4_gpio4 {
+		pins-spi {
+			pins = "gpio4",
+			       "gpio5",
+			       "gpio6",
+			       "gpio7";
+			function = "alt3";
+		};
+	};
+	spi5_gpio12: spi5_gpio12 {
+		pins-spi {
+			pins = "gpio12",
+			       "gpio13",
+			       "gpio14",
+			       "gpio15";
+			function = "alt3";
+		};
+	};
+	spi6_gpio18: spi6_gpio18 {
+		pins-spi {
+			pins = "gpio18",
+			       "gpio19",
+			       "gpio20",
+			       "gpio21";
+			function = "alt3";
+		};
+	};
+
+	uart2_gpio0: uart2_gpio0 {
+		pin-tx {
+			pins = "gpio0";
+			function = "alt4";
+			bias-disable;
+		};
+		pin-rx {
+			pins = "gpio1";
+			function = "alt4";
+			bias-pull-up;
+		};
+	};
+	uart2_ctsrts_gpio2: uart2_ctsrts_gpio2 {
+		pin-cts {
+			pins = "gpio2";
+			function = "alt4";
+			bias-pull-up;
+		};
+		pin-rts {
+			pins = "gpio3";
+			function = "alt4";
+			bias-disable;
+		};
+	};
+	uart3_gpio4: uart3_gpio4 {
+		pin-tx {
+			pins = "gpio4";
+			function = "alt4";
+			bias-disable;
+		};
+		pin-rx {
+			pins = "gpio5";
+			function = "alt4";
+			bias-pull-up;
+		};
+	};
+	uart3_ctsrts_gpio6: uart3_ctsrts_gpio6 {
+		pin-cts {
+			pins = "gpio6";
+			function = "alt4";
+			bias-pull-up;
+		};
+		pin-rts {
+			pins = "gpio7";
+			function = "alt4";
+			bias-disable;
+		};
+	};
+	uart4_gpio8: uart4_gpio8 {
+		pin-tx {
+			pins = "gpio8";
+			function = "alt4";
+			bias-disable;
+		};
+		pin-rx {
+			pins = "gpio9";
+			function = "alt4";
+			bias-pull-up;
+		};
+	};
+	uart4_ctsrts_gpio10: uart4_ctsrts_gpio10 {
+		pin-cts {
+			pins = "gpio10";
+			function = "alt4";
+			bias-pull-up;
+		};
+		pin-rts {
+			pins = "gpio11";
+			function = "alt4";
+			bias-disable;
+		};
+	};
+	uart5_gpio12: uart5_gpio12 {
+		pin-tx {
+			pins = "gpio12";
+			function = "alt4";
+			bias-disable;
+		};
+		pin-rx {
+			pins = "gpio13";
+			function = "alt4";
+			bias-pull-up;
+		};
+	};
+	uart5_ctsrts_gpio14: uart5_ctsrts_gpio14 {
+		pin-cts {
+			pins = "gpio14";
+			function = "alt4";
+			bias-pull-up;
+		};
+		pin-rts {
+			pins = "gpio15";
+			function = "alt4";
+			bias-disable;
+		};
+	};
+};
+
+&i2c0 {
+	compatible = "brcm,bcm2711-i2c", "brcm,bcm2835-i2c";
+	interrupts = <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&i2c1 {
+	compatible = "brcm,bcm2711-i2c", "brcm,bcm2835-i2c";
+	interrupts = <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&mailbox {
+	interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&sdhci {
+	interrupts = <GIC_SPI 126 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&sdhost {
+	interrupts = <GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&spi {
+	interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>;
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
+&system_timer {
+	interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>,
+		     <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>,
+		     <GIC_SPI 66 IRQ_TYPE_LEVEL_HIGH>,
+		     <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&txp {
+	interrupts = <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&uart0 {
+	interrupts = <GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&uart1 {
+	interrupts = <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&usb {
+	interrupts = <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&vec {
+	interrupts = <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>;
+};
diff --git a/arch/arm/boot/dts/bcm283x-rpi-usb-peripheral.dtsi b/arch/arm/boot/dts/bcm283x-rpi-usb-peripheral.dtsi
new file mode 100644
index 0000000..0ff0e9e
--- /dev/null
+++ b/arch/arm/boot/dts/bcm283x-rpi-usb-peripheral.dtsi
@@ -0,0 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0
+&usb {
+	dr_mode = "peripheral";
+	g-rx-fifo-size = <256>;
+	g-np-tx-fifo-size = <32>;
+	g-tx-fifo-size = <256 256 512 512 512 768 768>;
+};
diff --git a/arch/arm/boot/dts/bcm283x.dtsi b/arch/arm/boot/dts/bcm283x.dtsi
index addf3be..3caaa57 100644
--- a/arch/arm/boot/dts/bcm283x.dtsi
+++ b/arch/arm/boot/dts/bcm283x.dtsi
@@ -53,7 +53,7 @@
 		#address-cells = <1>;
 		#size-cells = <1>;

-		timer@7e003000 {
+		system_timer: timer@7e003000 {
 			compatible = "brcm,bcm2835-system-timer";
 			reg = <0x7e003000 0x1000>;
 			interrupts = <1 0>, <1 1>, <1 2>, <1 3>;
@@ -64,7 +64,7 @@
 			clock-frequency = <1000000>;
 		};

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
