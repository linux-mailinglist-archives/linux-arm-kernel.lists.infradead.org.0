Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1CD6F924
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 07:56:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fH1wVaxiD5uH+2WqhdXQeO/ezu6fWYXj9R/TTqTSjbg=; b=sL+diIWNDxsp8rsebbH9YNXweo
	//2P37yu0kmHfbRcV6DwnDViHZnTC0seiLlDivNwJDcslcoex7kwFzFatmfMXE42jMa8lTkilLSiu
	yq8o5scjPHEvrbx5A5LhZQHrztv+V8rD/TCOD9yX8WS5b0yb+jAr3DtbOHWK55KCldK1/Zb6nv60P
	3cIg+rApD7pKlatvqZvXuk5I2DHeD5jk5BTMqQpVjJ0ru6/VVt1+Dq3ezXQMGj6sU0jeui5aSUekF
	CCDbkGdno8AGLlv0exB2vJY3WMd/SjmInnTP57A8El3Fey0TMkrn7zSxWEqqUXb/56rKwWal0Pf5K
	5kC6zP/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpRIz-0005Iq-9b; Mon, 22 Jul 2019 05:56:14 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpRIh-0005Fx-85; Mon, 22 Jul 2019 05:55:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563774937;
 bh=+7xibqiOrfqzdG9I/qPfuNDq74fZDnvGQXxeXOUPkdM=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Az3ZwkzfFi3un3t2CJhzaY0nE23b84+gU6aAbzOmGkF4HUUS1I/1AbF24Bc4Cs6yV
 x3H68oDXs4h8r3H3q086A6/ErlivVw8KfTrBACQKRJGvTbtsdWnXh7nBKFuRehBPRQ
 zfD77YN+clMO/e6JgKVRIYjRFpSI/gEcJcv9HoUQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.98]) by mail.gmx.com (mrgmx102
 [212.227.17.168]) with ESMTPSA (Nemesis) id 0LcVOE-1iFS7q4570-00jnzz; Mon, 22
 Jul 2019 07:55:37 +0200
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
Subject: [PATCH 03/18] ARM: dts: bcm283x: Move BCM2835/6/7 specific to
 bcm2835-common.dtsi
Date: Mon, 22 Jul 2019 07:54:34 +0200
Message-Id: <1563774880-8061-4-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563774880-8061-1-git-send-email-wahrenst@gmx.net>
References: <1563774880-8061-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:pFGS43b3bYWxRkUHpdBBKHiYIa0SVUbBG41rLoR+cerMQ39kW6Y
 K/wGbtv6KHncc370WPwvB3XLMjjybkRhIH6T24lye0Fc8WHZ0QuBjkQGg/NdCjUxibhFxfN
 O+2/0zTcxLVpot7gZkzLSpsMXe1ADWpMGEVkJF6fFdzt/pT06e2nT3A+afQXnqfvWKYu888
 vcCLg55WZkSI1g3qFTL2g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Rm/DzJpZPxw=:BJF4b72kTUQTefH3w0NYBN
 CkDKug/zSQ4qwNyAaMsNvw2OZK3n8EFRMP72o0J5qrofQ1Wd8xlvSQ7TYXCOTZXsB93X8sCL7
 KtQKeOJDGQTJk+bWJ5LWjU095EuNviP8BRt05a+NZYE1fuDskA+HMtGw4+AiKjrc/zdv7eh5r
 GtQ/oz5XCjDeYg2U8S2BnqLkiuNo6eTKj2cAT51/+GdvGMV7ez6SjAiYsXiclnS/n9xgQH7pE
 wqtB6eqdOnVjeqO5+7O0zBjo7I/ClRaF9Xd+ZvzPVwDex/jbzZ6icgzulMMnmUGuY+xG6ZFKR
 b/FBk5xPvZK78fv/onWcvTDAe0L1JxFF/NiSacxhf/MWtLq3XIoI/+K/4qHyjeKEA0E8y51iv
 JgTj9SQh7jHFQTvuLMFCV8p66B94I07QSrWklQqrWVHjscSQ9TJkF5X9zI5U+9TklBmlxSfjA
 oEnaxdgSCK3nQqSh1kbtJCOUnAQaJY2MjD0/YlOI03muhPbsqyh1XRhkIGeqmVUZmPv0+mf1b
 dQi5GQw90QJlZXrbDdvpSZnpTcwoUwfBwCyKXQ2/NF+1olcKcNmtjmC/Q7x84f5i/qd0dPdgQ
 SwizGc/+K7E4SizQvrEAAaBmtLjIiPImfHRo9RNASo8eZdQkS4pkhClQ7NynKpB9nnNTyC4Bo
 70cz9hNy8vqeRquisHBY/FDlarUpUb6m3MJ4cnyCKSpRF8YbK/p6TrBbcvjZlwR4d91fBrcyL
 w1CDqoZDrV8UnBR0w4mAExCSKD8K7Lf/RmA/FMFT/ZiLY8Vty9F8Ws2luwc7iv+9Y5Fnx4kwl
 zTKlVAK0Aczs35nptEfdXZe6yQ84TPNbWGyVNukbahO+0YXyjr7J5lvcpH0YfO/dVeYymZspV
 C7l6gx3AV83KZNb6Zl4oMkQY5tvfioPIqZXOrD4+ctHuIDMjDP23SkUO6PZNw2+9HruBGeeJ8
 m/OIadoCB6wHwWAVZlavT3mZAP4en2XqyAyIChYT216u5j6I/XqkIpsE4VOmDru+MR+Cq2CCi
 eqlwWwPgxXFHHtgDWRdO0X8FHNuJuyrkwCoKA6JRCuqDmJbOYj3eJ5JbxLP2HVg1AAkhWD5+i
 pBa1UP814VH/Mg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_225555_593819_FB9612B6 
X-CRM114-Status: GOOD (  20.00  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As preparation we want all common BCM2711 + BCM2835/6/7 functions in
bcm283x.dtsi and all BCM2835/6/7 specific in the new bcm2835-common.dtsi.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 arch/arm/boot/dts/bcm2835-common.dtsi | 177 ++++++++++++++++++++++++++++++++++
 arch/arm/boot/dts/bcm2835.dtsi        |   1 +
 arch/arm/boot/dts/bcm2836.dtsi        |   1 +
 arch/arm/boot/dts/bcm2837.dtsi        |   1 +
 arch/arm/boot/dts/bcm283x.dtsi        | 152 +----------------------------
 5 files changed, 181 insertions(+), 151 deletions(-)
 create mode 100644 arch/arm/boot/dts/bcm2835-common.dtsi

diff --git a/arch/arm/boot/dts/bcm2835-common.dtsi b/arch/arm/boot/dts/bcm2835-common.dtsi
new file mode 100644
index 0000000..84c2e1b
--- /dev/null
+++ b/arch/arm/boot/dts/bcm2835-common.dtsi
@@ -0,0 +1,177 @@
+// SPDX-License-Identifier: GPL-2.0
+
+/* This include file covers the common peripherals and configuration between
+ * bcm2835, bcm2836 and bcm2837 implementations.
+ */
+
+/ {
+	interrupt-parent = <&intc>;
+
+	soc {
+		timer@7e003000 {
+			compatible = "brcm,bcm2835-system-timer";
+			reg = <0x7e003000 0x1000>;
+			interrupts = <1 0>, <1 1>, <1 2>, <1 3>;
+			/* This could be a reference to BCM2835_CLOCK_TIMER,
+			 * but we don't have the driver using the common clock
+			 * support yet.
+			 */
+			clock-frequency = <1000000>;
+		};
+
+		dma: dma@7e007000 {
+			compatible = "brcm,bcm2835-dma";
+			reg = <0x7e007000 0xf00>;
+			interrupts = <1 16>,
+				     <1 17>,
+				     <1 18>,
+				     <1 19>,
+				     <1 20>,
+				     <1 21>,
+				     <1 22>,
+				     <1 23>,
+				     <1 24>,
+				     <1 25>,
+				     <1 26>,
+				     /* dma channel 11-14 share one irq */
+				     <1 27>,
+				     <1 27>,
+				     <1 27>,
+				     <1 27>,
+				     /* unused shared irq for all channels */
+				     <1 28>;
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
+					  "dma10",
+					  "dma11",
+					  "dma12",
+					  "dma13",
+					  "dma14",
+					  "dma-shared-all";
+			#dma-cells = <1>;
+			brcm,dma-channel-mask = <0x7f35>;
+		};
+
+		intc: interrupt-controller@7e00b200 {
+			compatible = "brcm,bcm2835-armctrl-ic";
+			reg = <0x7e00b200 0x200>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+
+		pm: watchdog@7e100000 {
+			compatible = "brcm,bcm2835-pm", "brcm,bcm2835-pm-wdt";
+			#power-domain-cells = <1>;
+			#reset-cells = <1>;
+			reg = <0x7e100000 0x114>,
+			      <0x7e00a000 0x24>;
+			clocks = <&clocks BCM2835_CLOCK_V3D>,
+				 <&clocks BCM2835_CLOCK_PERI_IMAGE>,
+				 <&clocks BCM2835_CLOCK_H264>,
+				 <&clocks BCM2835_CLOCK_ISP>;
+			clock-names = "v3d", "peri_image", "h264", "isp";
+			system-power-controller;
+		};
+
+		thermal: thermal@7e212000 {
+			compatible = "brcm,bcm2835-thermal";
+			reg = <0x7e212000 0x8>;
+			clocks = <&clocks BCM2835_CLOCK_TSENS>;
+			#thermal-sensor-cells = <0>;
+			status = "disabled";
+		};
+
+		v3d: v3d@7ec00000 {
+			compatible = "brcm,bcm2835-v3d";
+			reg = <0x7ec00000 0x1000>;
+			interrupts = <1 10>;
+		};
+
+		vc4: gpu {
+			compatible = "brcm,bcm2835-vc4";
+		};
+	};
+
+	usbphy: phy {
+		compatible = "usb-nop-xceiv";
+		#phy-cells = <0>;
+	};
+};
+
+&cpu_thermal {
+	thermal-sensors = <&thermal>;
+};
+
+&gpio {
+	i2c_slave_gpio18: i2c_slave_gpio18 {
+		brcm,pins = <18 19 20 21>;
+		brcm,function = <BCM2835_FSEL_ALT3>;
+	};
+
+	jtag_gpio4: jtag_gpio4 {
+		brcm,pins = <4 5 6 12 13>;
+		brcm,function = <BCM2835_FSEL_ALT5>;
+	};
+
+	pwm0_gpio12: pwm0_gpio12 {
+		brcm,pins = <12>;
+		brcm,function = <BCM2835_FSEL_ALT0>;
+	};
+	pwm0_gpio18: pwm0_gpio18 {
+		brcm,pins = <18>;
+		brcm,function = <BCM2835_FSEL_ALT5>;
+	};
+	pwm0_gpio40: pwm0_gpio40 {
+		brcm,pins = <40>;
+		brcm,function = <BCM2835_FSEL_ALT0>;
+	};
+	pwm1_gpio13: pwm1_gpio13 {
+		brcm,pins = <13>;
+		brcm,function = <BCM2835_FSEL_ALT0>;
+	};
+	pwm1_gpio19: pwm1_gpio19 {
+		brcm,pins = <19>;
+		brcm,function = <BCM2835_FSEL_ALT5>;
+	};
+	pwm1_gpio41: pwm1_gpio41 {
+		brcm,pins = <41>;
+		brcm,function = <BCM2835_FSEL_ALT0>;
+	};
+	pwm1_gpio45: pwm1_gpio45 {
+		brcm,pins = <45>;
+		brcm,function = <BCM2835_FSEL_ALT0>;
+	};
+};
+
+&hdmi {
+	dmas = <&dma 17>;
+	dma-names = "audio-rx";
+};
+
+&i2s {
+	dmas = <&dma 2>, <&dma 3>;
+	dma-names = "tx", "rx";
+};
+
+&sdhost {
+	dmas = <&dma 13>;
+	dma-names = "rx-tx";
+};
+
+&spi {
+	dmas = <&dma 6>, <&dma 7>;
+	dma-names = "tx", "rx";
+};
+
+&usb {
+	phys = <&usbphy>;
+	phy-names = "usb2-phy";
+};
diff --git a/arch/arm/boot/dts/bcm2835.dtsi b/arch/arm/boot/dts/bcm2835.dtsi
index a5c3824..53bf457 100644
--- a/arch/arm/boot/dts/bcm2835.dtsi
+++ b/arch/arm/boot/dts/bcm2835.dtsi
@@ -1,5 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 #include "bcm283x.dtsi"
+#include "bcm2835-common.dtsi"

 / {
 	compatible = "brcm,bcm2835";
diff --git a/arch/arm/boot/dts/bcm2836.dtsi b/arch/arm/boot/dts/bcm2836.dtsi
index c933e84..82d6c46 100644
--- a/arch/arm/boot/dts/bcm2836.dtsi
+++ b/arch/arm/boot/dts/bcm2836.dtsi
@@ -1,5 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 #include "bcm283x.dtsi"
+#include "bcm2835-common.dtsi"

 / {
 	compatible = "brcm,bcm2836";
diff --git a/arch/arm/boot/dts/bcm2837.dtsi b/arch/arm/boot/dts/bcm2837.dtsi
index beb6c50..9e95fee 100644
--- a/arch/arm/boot/dts/bcm2837.dtsi
+++ b/arch/arm/boot/dts/bcm2837.dtsi
@@ -1,4 +1,5 @@
 #include "bcm283x.dtsi"
+#include "bcm2835-common.dtsi"

 / {
 	compatible = "brcm,bcm2837";
diff --git a/arch/arm/boot/dts/bcm283x.dtsi b/arch/arm/boot/dts/bcm283x.dtsi
index 2d191fc..4329b17 100644
--- a/arch/arm/boot/dts/bcm283x.dtsi
+++ b/arch/arm/boot/dts/bcm283x.dtsi
@@ -18,7 +18,6 @@
 / {
 	compatible = "brcm,bcm2835";
 	model = "BCM2835";
-	interrupt-parent = <&intc>;
 	#address-cells = <1>;
 	#size-cells = <1>;

@@ -36,8 +35,6 @@
 			polling-delay-passive = <0>;
 			polling-delay = <1000>;

-			thermal-sensors = <&thermal>;
-
 			trips {
 				cpu-crit {
 					temperature	= <80000>;
@@ -56,85 +53,12 @@
 		#address-cells = <1>;
 		#size-cells = <1>;

-		timer@7e003000 {
-			compatible = "brcm,bcm2835-system-timer";
-			reg = <0x7e003000 0x1000>;
-			interrupts = <1 0>, <1 1>, <1 2>, <1 3>;
-			/* This could be a reference to BCM2835_CLOCK_TIMER,
-			 * but we don't have the driver using the common clock
-			 * support yet.
-			 */
-			clock-frequency = <1000000>;
-		};
-
 		txp@7e004000 {
 			compatible = "brcm,bcm2835-txp";
 			reg = <0x7e004000 0x20>;
 			interrupts = <1 11>;
 		};

-		dma: dma@7e007000 {
-			compatible = "brcm,bcm2835-dma";
-			reg = <0x7e007000 0xf00>;
-			interrupts = <1 16>,
-				     <1 17>,
-				     <1 18>,
-				     <1 19>,
-				     <1 20>,
-				     <1 21>,
-				     <1 22>,
-				     <1 23>,
-				     <1 24>,
-				     <1 25>,
-				     <1 26>,
-				     /* dma channel 11-14 share one irq */
-				     <1 27>,
-				     <1 27>,
-				     <1 27>,
-				     <1 27>,
-				     /* unused shared irq for all channels */
-				     <1 28>;
-			interrupt-names = "dma0",
-					  "dma1",
-					  "dma2",
-					  "dma3",
-					  "dma4",
-					  "dma5",
-					  "dma6",
-					  "dma7",
-					  "dma8",
-					  "dma9",
-					  "dma10",
-					  "dma11",
-					  "dma12",
-					  "dma13",
-					  "dma14",
-					  "dma-shared-all";
-			#dma-cells = <1>;
-			brcm,dma-channel-mask = <0x7f35>;
-		};
-
-		intc: interrupt-controller@7e00b200 {
-			compatible = "brcm,bcm2835-armctrl-ic";
-			reg = <0x7e00b200 0x200>;
-			interrupt-controller;
-			#interrupt-cells = <2>;
-		};
-
-		pm: watchdog@7e100000 {
-			compatible = "brcm,bcm2835-pm", "brcm,bcm2835-pm-wdt";
-			#power-domain-cells = <1>;
-			#reset-cells = <1>;
-			reg = <0x7e100000 0x114>,
-			      <0x7e00a000 0x24>;
-			clocks = <&clocks BCM2835_CLOCK_V3D>,
-				 <&clocks BCM2835_CLOCK_PERI_IMAGE>,
-				 <&clocks BCM2835_CLOCK_H264>,
-				 <&clocks BCM2835_CLOCK_ISP>;
-			clock-names = "v3d", "peri_image", "h264", "isp";
-			system-power-controller;
-		};
-
 		clocks: cprman@7e101000 {
 			compatible = "brcm,bcm2835-cprman";
 			#clock-cells = <1>;
@@ -184,8 +108,7 @@
 			interrupt-controller;
 			#interrupt-cells = <2>;

-			/* Defines pin muxing groups according to
-			 * BCM2835-ARM-Peripherals.pdf page 102.
+			/* Defines common pin muxing groups
 			 *
 			 * While each pin can have its mux selected
 			 * for various functions individually, some
@@ -263,15 +186,7 @@
 				brcm,pins = <44 45>;
 				brcm,function = <BCM2835_FSEL_ALT2>;
 			};
-			i2c_slave_gpio18: i2c_slave_gpio18 {
-				brcm,pins = <18 19 20 21>;
-				brcm,function = <BCM2835_FSEL_ALT3>;
-			};

-			jtag_gpio4: jtag_gpio4 {
-				brcm,pins = <4 5 6 12 13>;
-				brcm,function = <BCM2835_FSEL_ALT5>;
-			};
 			jtag_gpio22: jtag_gpio22 {
 				brcm,pins = <22 23 24 25 26 27>;
 				brcm,function = <BCM2835_FSEL_ALT4>;
@@ -286,35 +201,6 @@
 				brcm,function = <BCM2835_FSEL_ALT2>;
 			};

-			pwm0_gpio12: pwm0_gpio12 {
-				brcm,pins = <12>;
-				brcm,function = <BCM2835_FSEL_ALT0>;
-			};
-			pwm0_gpio18: pwm0_gpio18 {
-				brcm,pins = <18>;
-				brcm,function = <BCM2835_FSEL_ALT5>;
-			};
-			pwm0_gpio40: pwm0_gpio40 {
-				brcm,pins = <40>;
-				brcm,function = <BCM2835_FSEL_ALT0>;
-			};
-			pwm1_gpio13: pwm1_gpio13 {
-				brcm,pins = <13>;
-				brcm,function = <BCM2835_FSEL_ALT0>;
-			};
-			pwm1_gpio19: pwm1_gpio19 {
-				brcm,pins = <19>;
-				brcm,function = <BCM2835_FSEL_ALT5>;
-			};
-			pwm1_gpio41: pwm1_gpio41 {
-				brcm,pins = <41>;
-				brcm,function = <BCM2835_FSEL_ALT0>;
-			};
-			pwm1_gpio45: pwm1_gpio45 {
-				brcm,pins = <45>;
-				brcm,function = <BCM2835_FSEL_ALT0>;
-			};
-
 			sdhost_gpio48: sdhost_gpio48 {
 				brcm,pins = <48 49 50 51 52 53>;
 				brcm,function = <BCM2835_FSEL_ALT0>;
@@ -410,8 +296,6 @@
 			reg = <0x7e202000 0x100>;
 			interrupts = <2 24>;
 			clocks = <&clocks BCM2835_CLOCK_VPU>;
-			dmas = <&dma 13>;
-			dma-names = "rx-tx";
 			status = "disabled";
 		};

@@ -419,10 +303,6 @@
 			compatible = "brcm,bcm2835-i2s";
 			reg = <0x7e203000 0x24>;
 			clocks = <&clocks BCM2835_CLOCK_PCM>;
-
-			dmas = <&dma 2>,
-			       <&dma 3>;
-			dma-names = "tx", "rx";
 			status = "disabled";
 		};

@@ -431,8 +311,6 @@
 			reg = <0x7e204000 0x200>;
 			interrupts = <2 22>;
 			clocks = <&clocks BCM2835_CLOCK_VPU>;
-			dmas = <&dma 6>, <&dma 7>;
-			dma-names = "tx", "rx";
 			#address-cells = <1>;
 			#size-cells = <0>;
 			status = "disabled";
@@ -490,14 +368,6 @@

 		};

-		thermal: thermal@7e212000 {
-			compatible = "brcm,bcm2835-thermal";
-			reg = <0x7e212000 0x8>;
-			clocks = <&clocks BCM2835_CLOCK_TSENS>;
-			#thermal-sensor-cells = <0>;
-			status = "disabled";
-		};
-
 		aux: aux@7e215000 {
 			compatible = "brcm,bcm2835-aux";
 			#clock-cells = <1>;
@@ -620,8 +490,6 @@
 			clocks = <&clocks BCM2835_PLLH_PIX>,
 				 <&clocks BCM2835_CLOCK_HSM>;
 			clock-names = "pixel", "hdmi";
-			dmas = <&dma 17>;
-			dma-names = "audio-rx";
 			status = "disabled";
 		};

@@ -633,19 +501,6 @@
 			#size-cells = <0>;
 			clocks = <&clk_usb>;
 			clock-names = "otg";
-			phys = <&usbphy>;
-			phy-names = "usb2-phy";
-		};
-
-		v3d: v3d@7ec00000 {
-			compatible = "brcm,bcm2835-v3d";
-			reg = <0x7ec00000 0x1000>;
-			interrupts = <1 10>;
-			power-domains = <&pm BCM2835_POWER_DOMAIN_GRAFX_V3D>;
-		};
-
-		vc4: gpu {
-			compatible = "brcm,bcm2835-vc4";
 		};
 	};

@@ -671,9 +526,4 @@
 			clock-frequency = <480000000>;
 		};
 	};
-
-	usbphy: phy {
-		compatible = "usb-nop-xceiv";
-		#phy-cells = <0>;
-	};
 };
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
