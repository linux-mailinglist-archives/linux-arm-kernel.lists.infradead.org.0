Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B21597067D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 19:10:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QhY5/FHbYHKRu6ZjC+uG/DH6VN1bhHCo8d+dlSB6mG4=; b=Xt+/745WQL5B7FiyWqHq0AXq0l
	blTNqaqSF8OK+OJCc85mguomXk2hi4uo+FyPYVoGeWBaUEglF7LCJ5Jf1sEchyW6eXlXFSJy72270
	KqznNUWQsL3GFN90ywLB6nQRyMC+nIXmfa3OaEThOprg/vwOtWr8XErzh6msRJ/vsHhE17kj9RXwN
	nH09sA8S7FIIrLIrgJR80zV/6DM1G56aPiwRiOyCk6YQxduAW6vNna7Zndlsa3yR76vs8p7xpEVWQ
	dpnUBiYEif9/Cqy4Mi9GxmwDEmGIJdQrseBQ9wfu6SkqVdhBhP03z5T5tL2wOWRPmPw7Iob727D9D
	OOOtH1rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpbpk-0005CP-S8; Mon, 22 Jul 2019 17:10:45 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpbnm-0002lg-DL; Mon, 22 Jul 2019 17:08:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563815285;
 bh=EbL5CImoTCVVX00tS6wWAuO1mCAtGAlTD/xIz61jUvw=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Q1Sjflrs6PGfdyaG7tlO9s5TyKwidmc5HBmsHOT8R5pOQs3SQf0FXh6uJRrF+SKhl
 IVs54WqzspKO9bkapaY8OBl+bl4RN1Q2OOnnb05HE4Rbbtysdy6CPTl7vUslNTKsu3
 N+6r5YK9PbR44Bs5EBuZ5Bxto9b90WEqNgB1dWVU=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.131]) by mail.gmx.com
 (mrgmx103 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0MYwQh-1huCKl41VD-00VdVS; Mon, 22 Jul 2019 19:08:05 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Matthias Brugger <mbrugger@suse.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>
Subject: [PATCH 16/18] ARM: dts: Add minimal Raspberry Pi 4 support
Date: Mon, 22 Jul 2019 19:07:35 +0200
Message-Id: <1563815257-2648-4-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563815257-2648-1-git-send-email-wahrenst@gmx.net>
References: <1563815257-2648-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:2UFYjnKQq91doeum8H7kd4fK6G+D1FVzjo5X78ycNh3kJIKKMqa
 xKonAX0vimqxEDK4RVk1jgHBASW1dLK+4J8zHWxpdiPR1gSfY99tA/oqttVbLgoHzqhKarC
 f1qgNy/QRYoPgTbywzYXuZWNsrG/bBEITGyer3WV/BRE701WtOfEU+xVju76jqI+PqmN+OQ
 gn2c9Oa7MLJmvfNTAUtFw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:/SQGWrGBaiI=:PnOJWROYLaoYd0IaYIqxrH
 rs0kwAHjFGV7W7wAbrOUvfrBSytL4E1UQPYus3L4VLwNfUFKyqqEp+eLt5WuDO1Xx/QfdOltV
 PurOCEYShWhaiNTYWxW6OdnXmCM/flNqsqNcvb87TfjkVsy0Y/p1aQn7OP8/szzFPHqNwD/Zm
 G/whDflc7vExgUpFK745vEPUvsQNw+XdMQdiDIUdxsfoQjVVXVxWa99gZAFBaC7CJlJIl6Un8
 LXvIZqtzLv4VVMgEgDbP4/u6UD5opIV9xCPFgGkiUPtSoeg3+lhTJZfp88ucPy2Jg+1l7zLoI
 h71sCCKCu5c5w+foUM2MwRGrS0VA402wW5mz6Q1q75fvGPf//LA4f18eBbLvSdU63Sp81Vkf/
 3MzTGUh4CVY6kTBxCGRftu7FtkWSAjBP1JedZjl8zFOc+7LaGVI+UVWiGLdXzQafDX4YDQ+D6
 u+TtK/6jQ6TabZ4HMsqO1LfI9F67tGQiuF7Cb0F7U/d5/fgMn1jsGT2r8MAi2vnYiqxFnaFAs
 vfaoPqGZUS7Sm9Q6pt3tflIK+D2OsCnWGoQpezo8ed8RGk9UcW0M0wNDtMepHPyRWWlOTnE0/
 fqfAuRKlovhGcc85gk+Z6/011U02VeJw6m5orcUD4GX9gCYDfDKPvlSJJM9SWBacFOjxfKQvf
 XTvQtHfkDIi5Hx0pPnQ/KMGazvGlkbetRTFDzr3vD5BhWIVr+R10AeBkG5HINEfj7w5QJQibY
 SuHN71z082ylN50tonNEiZ5GJhebxK/kW+8viUvIxVL6h4iKnKj2qpYJST99qjVRkJxOsi1sT
 ydRRYzH84z0p26E/gfljAaTIUZoqy2T+Tv/IDfZPy62G8FIHGAW7VwjM38qKrHm6ydCAWhSl+
 8bS8SJFOnDFLdneHW1lM4c2TrkwqORotHkV2AR8xmjRjzApx13hj/0P4GPK1r1oQJtNSdL780
 yVVqoTbzhJXtkuVBFztrbBjF80iwXY3/PbplDHCe5sVXPn1RkiJlHdtagnQRPexkpvleVwHyv
 QHn5JZ52khd68oIjaE7KdWor/X36HD+8i4hxPVzVx6mgFb79qUwtgNECDMJZSs6if+6mhnKKM
 qZHt0OzlwJ6K9k=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_100842_987169_CF541EAD 
X-CRM114-Status: GOOD (  18.34  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
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
Cc: linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
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
 arch/arm/boot/dts/bcm2711-rpi-4-b.dts | 120 ++++++
 arch/arm/boot/dts/bcm2711.dtsi        | 667 ++++++++++++++++++++++++++++++++++
 arch/arm/boot/dts/bcm283x.dtsi        |   2 +-
 4 files changed, 789 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/bcm2711-rpi-4-b.dts
 create mode 100644 arch/arm/boot/dts/bcm2711.dtsi

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 9159fa2..031ca32 100644
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
index 0000000..806cd7b
--- /dev/null
+++ b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
@@ -0,0 +1,120 @@
+// SPDX-License-Identifier: GPL-2.0
+/dts-v1/;
+#include "bcm2711.dtsi"
+#include "bcm2835-rpi.dtsi"
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
diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
new file mode 100644
index 0000000..b05d7f3
--- /dev/null
+++ b/arch/arm/boot/dts/bcm2711.dtsi
@@ -0,0 +1,667 @@
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
+		brcm,pins = <49>;
+		brcm,function = <BCM2835_FSEL_ALT1>;
+		brcm,pull = <BCM2835_PUD_OFF>;
+	};
+	gpclk1_gpio50: gpclk1_gpio50 {
+		brcm,pins = <50>;
+		brcm,function = <BCM2835_FSEL_ALT1>;
+		brcm,pull = <BCM2835_PUD_OFF>;
+	};
+	gpclk2_gpio51: gpclk2_gpio51 {
+		brcm,pins = <51>;
+		brcm,function = <BCM2835_FSEL_ALT1>;
+		brcm,pull = <BCM2835_PUD_OFF>;
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
+		brcm,pull = <BCM2835_PUD_OFF>;
+	};
+	pwm0_1_gpio53: pwm0_1_gpio53 {
+		brcm,pins = <53>;
+		brcm,function = <BCM2835_FSEL_ALT1>;
+		brcm,pull = <BCM2835_PUD_OFF>;
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
+			brcm,pull = <BCM2835_PUD_OFF>;
+		};
+		pin-rx {
+			brcm,pins = <1>;
+			brcm,function = <BCM2835_FSEL_ALT4>;
+			brcm,pull = <BCM2835_PUD_UP>;
+		};
+	};
+	uart2_ctsrts_gpio2: uart2_ctsrts_gpio2 {
+		pin-cts {
+			brcm,pins = <2>;
+			brcm,function = <BCM2835_FSEL_ALT4>;
+			brcm,pull = <BCM2835_PUD_UP>;
+		};
+		pin-rts {
+			brcm,pins = <3>;
+			brcm,function = <BCM2835_FSEL_ALT4>;
+			brcm,pull = <BCM2835_PUD_OFF>;
+		};
+	};
+	uart3_gpio4: uart3_gpio4 {
+		pin-tx {
+			brcm,pins = <4>;
+			brcm,function = <BCM2835_FSEL_ALT4>;
+			brcm,pull = <BCM2835_PUD_OFF>;
+		};
+		pin-rx {
+			brcm,pins = <5>;
+			brcm,function = <BCM2835_FSEL_ALT4>;
+			brcm,pull = <BCM2835_PUD_UP>;
+		};
+	};
+	uart3_ctsrts_gpio6: uart3_ctsrts_gpio6 {
+		pin-cts {
+			brcm,pins = <6>;
+			brcm,function = <BCM2835_FSEL_ALT4>;
+			brcm,pull = <BCM2835_PUD_UP>;
+		};
+		pin-rts {
+			brcm,pins = <7>;
+			brcm,function = <BCM2835_FSEL_ALT4>;
+			brcm,pull = <BCM2835_PUD_OFF>;
+		};
+	};
+	uart4_gpio8: uart4_gpio8 {
+		pin-tx {
+			brcm,pins = <8>;
+			brcm,function = <BCM2835_FSEL_ALT4>;
+			brcm,pull = <BCM2835_PUD_OFF>;
+		};
+		pin-rx {
+			brcm,pins = <9>;
+			brcm,function = <BCM2835_FSEL_ALT4>;
+			brcm,pull = <BCM2835_PUD_UP>;
+		};
+	};
+	uart4_ctsrts_gpio10: uart4_ctsrts_gpio10 {
+		pin-cts {
+			brcm,pins = <10>;
+			brcm,function = <BCM2835_FSEL_ALT4>;
+			brcm,pull = <BCM2835_PUD_UP>;
+		};
+		pin-rts {
+			brcm,pins = <11>;
+			brcm,function = <BCM2835_FSEL_ALT4>;
+			brcm,pull = <BCM2835_PUD_OFF>;
+		};
+	};
+	uart5_gpio12: uart5_gpio12 {
+		pin-tx {
+			brcm,pins = <12>;
+			brcm,function = <BCM2835_FSEL_ALT4>;
+			brcm,pull = <BCM2835_PUD_OFF>;
+		};
+		pin-rx {
+			brcm,pins = <13>;
+			brcm,function = <BCM2835_FSEL_ALT4>;
+			brcm,pull = <BCM2835_PUD_UP>;
+		};
+	};
+	uart5_ctsrts_gpio14: uart5_ctsrts_gpio14 {
+		pin-cts {
+			brcm,pins = <14>;
+			brcm,function = <BCM2835_FSEL_ALT4>;
+			brcm,pull = <BCM2835_PUD_UP>;
+		};
+		pin-rts {
+			brcm,pins = <15>;
+			brcm,function = <BCM2835_FSEL_ALT4>;
+			brcm,pull = <BCM2835_PUD_OFF>;
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
index 4329b17..2eea7b7 100644
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
