Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 460F78BE56
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 18:22:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jse9V1Q9GzA46hlWDB5rhEaFBplI90M17RUYkk6DjdM=; b=MKJ4ZaFOSnSw96v83uSpKXGwbi
	SfrApH4mbmYgUxrcin+Fd28Z8f/4c1GHEKg/LRrg8arkiQ72+RrOFvb0/o7+pMLizO4ZRE91H9LzO
	oDJzPtEDE/+GHkRbs4a/ncuyAa94CzzFkGQs7ldDc0fU1ylOlLysG2fCLzUB37DASN8IZriB+6K89
	At+uLf6lo3L9SpfK22Oi6jhx1yVK+lEIP9/5BYL1OdEZi9FqM+CaeVxTCI9evdA3QtxgcBGwbKjJw
	nI7ULEZS2nXG238tiRfcce89OygG0V1URzqBBg63w1kI7QMcM2BD7ElXQj1OKvZM0RnA5NbFaT36o
	NSk75buw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxZZN-00013c-12; Tue, 13 Aug 2019 16:22:45 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxZXn-0008Mr-Ck; Tue, 13 Aug 2019 16:21:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1565713257;
 bh=7S5djWQzn2gDxYQ9YkU8zVyRZfcicTOF31rfB/MWxIE=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=lC99sWYasat5GSmf9Co3iMrcdjlWo+GBid3HTTIC8GJNuu9V15EpH584z2qaCS5Ar
 nUhzFlT64/M1PuQo1ycgtyIPFHW3nBesXGzh44HlvAePUH7PFM+2n31H1xRL91sWE/
 PopoEU91uHkK8hI7KUPC7vM3AxGnUnfdnOsp945w=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.106]) by mail.gmx.com
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1N9dwd-1iKj3k1bYj-015WJV; Tue, 13 Aug 2019 18:20:57 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Wolfram Sang <wsa@the-dreams.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH V2 02/13] ARM: dts: bcm283x: Move BCM2835/6/7 specific to
 bcm2835-common.dtsi
Date: Tue, 13 Aug 2019 18:20:37 +0200
Message-Id: <1565713248-4906-3-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565713248-4906-1-git-send-email-wahrenst@gmx.net>
References: <1565713248-4906-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:3kXe+yEkDGjZ2SVm7wmv+qrZ8kqqw8MimzfhpGvfDZbO84rjxEu
 +lAcLfQ8Uk2IGhsGyIi62nXEIgxHLzI85yUDA3if6GTKhNOj1lDVyO9QcGapz9+lq3ImBkL
 jR80bTg1cpFa4zyfGXArTgOVmXB1WunNTl5cXjIIQDBChVatmhkVNvvBmDHbvFKdTVpWp4K
 P10UqXZcwisEgGRHVlEIg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:hilN8USRaf4=:OkO8R8/IIDI5dSLHKpmLGp
 v1aaDRHSB6H8dswXbC6aWI5pTXBELgr1Xqf6X1eGa0QRaR+mI+dC3AToS4nQUidlABA1CuWIN
 Tg22TX+2O4fV+GBltMAKeN0dOM+BWR4zi2dpWWnM+DpuiX8kx+dkY6SUENjIrOpSCnUBd6lKS
 2FWuGbIUHOIRYmK58JWa9rpRFK5Vs2uRZqkzxLc1AOv25ovLOn7tLP2jBBWOdTLvqM4kXyPyx
 +vOgj4GxhahttP6PmEQ/ZF0piSWjM/AQtRssqJddzDSlYvp/4FJow94Rca+Wq7tGOUi0X81f9
 uzMJAeyJcsfn2D4Hw5X/XzRZq8tnP96RnMdGk3rn94htwlpSRVUIXOOmcTJOJoPgbaWwUJWX9
 LjowQz35EUHDWgd10QJSiXFTGe7VkrB+msvxgZUOnEfZfXAXQ2sFBiwDijMWaXpuudCQWa6vc
 mBV6ekjOalBjtvCzHpaGuzrBE/ufrhukIhGN2vgIwIZX4QLdbZfQyonn8MIfWVFCN+rqvU8U6
 NIbnAOfYS/fcjqRumAofI5VLHfq2Q46ncs5cnrZDpRlHig1mXHZRGP97wWkH2WsT8OaOByAaZ
 /VtbTih+pDX+qQXVsz1+xK7KYgTjs6sbUWRcOmdwND9cxgrdXGQCHH/z0+gP1hRQVoN9qyXsd
 m2Qd6/dBW+1Xgolxv1vSgi4pPPJRMDsT0E9vftb7NXABiIqvXaAuEKLdn8Q6TGVQjhR22Zuoo
 BMkxo6wkXO13XtieKMha8OeozSCGOu23yvX2vgVpb8IaMFvvRx8T7WohsjWf3LjLSgmnurDo0
 36bwafm9sZfC3yeXxjCCtGC8fsIC1fl8Ea29uuMU0BBqFk6bwmXhdxH5ijN33csy9ZQFIIInG
 fFSn095tuuxxSXrphJNKPRzQeTIa2x2i7SnRkqPQ22S0XN/FEHoY/mnbacZ02vwlbuA1krQyC
 fPtkEevJ6o8PW5WF/uUlRzTZNNpybkyrsbUfcwYU39HvH8+OjDG7/4Yc22U/WLU1Ut04XLx3p
 lClX1l/gV8WT5iXd8Vg6F4onYrNnNE4GDpvFSuxECZcn8j7/xgkkYa7ker72gyrch8sK+pRgk
 FN8LfKJ072t48luDur8ONEKxlYxULC/fypcNTJsniXaPUqp3LJ9+oet3w==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_092107_733156_078F6BFE 
X-CRM114-Status: GOOD (  18.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Stefan Wahren <wahrenst@gmx.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As preparation we want all common BCM2711 + BCM2835/6/7 functions in
bcm283x.dtsi and all BCM2835/6/7 specific in the new
bcm2835-common.dtsi.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Eric Anholt <eric@anholt.net>
---
 arch/arm/boot/dts/bcm2835-common.dtsi | 183 ++++++++++++++++++++++++++++++++++
 arch/arm/boot/dts/bcm2835.dtsi        |   1 +
 arch/arm/boot/dts/bcm2836.dtsi        |   1 +
 arch/arm/boot/dts/bcm2837.dtsi        |   1 +
 arch/arm/boot/dts/bcm283x.dtsi        | 164 +-----------------------------
 5 files changed, 187 insertions(+), 163 deletions(-)
 create mode 100644 arch/arm/boot/dts/bcm2835-common.dtsi

diff --git a/arch/arm/boot/dts/bcm2835-common.dtsi b/arch/arm/boot/dts/bcm2835-common.dtsi
new file mode 100644
index 0000000..003bbb6
--- /dev/null
+++ b/arch/arm/boot/dts/bcm2835-common.dtsi
@@ -0,0 +1,183 @@
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
+		pixelvalve@7e206000 {
+			compatible = "brcm,bcm2835-pixelvalve0";
+			reg = <0x7e206000 0x100>;
+			interrupts = <2 13>; /* pwa0 */
+		};
+
+		pixelvalve@7e207000 {
+			compatible = "brcm,bcm2835-pixelvalve1";
+			reg = <0x7e207000 0x100>;
+			interrupts = <2 14>; /* pwa1 */
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
+		pixelvalve@7e807000 {
+			compatible = "brcm,bcm2835-pixelvalve2";
+			reg = <0x7e807000 0x100>;
+			interrupts = <2 10>; /* pixelvalve */
+		};
+
+		hdmi: hdmi@7e902000 {
+			compatible = "brcm,bcm2835-hdmi";
+			reg = <0x7e902000 0x600>,
+			      <0x7e808000 0x100>;
+			interrupts = <2 8>, <2 9>;
+			ddc = <&i2c2>;
+			clocks = <&clocks BCM2835_PLLH_PIX>,
+				 <&clocks BCM2835_CLOCK_HSM>;
+			clock-names = "pixel", "hdmi";
+			dmas = <&dma 17>;
+			dma-names = "audio-rx";
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
index 2d191fc..cbc9422 100644
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
@@ -73,68 +70,6 @@
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
@@ -184,8 +119,7 @@
 			interrupt-controller;
 			#interrupt-cells = <2>;

-			/* Defines pin muxing groups according to
-			 * BCM2835-ARM-Peripherals.pdf page 102.
+			/* Defines common pin muxing groups
 			 *
 			 * While each pin can have its mux selected
 			 * for various functions individually, some
@@ -263,15 +197,7 @@
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
@@ -286,35 +212,6 @@
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
@@ -410,8 +307,6 @@
 			reg = <0x7e202000 0x100>;
 			interrupts = <2 24>;
 			clocks = <&clocks BCM2835_CLOCK_VPU>;
-			dmas = <&dma 13>;
-			dma-names = "rx-tx";
 			status = "disabled";
 		};

@@ -419,10 +314,6 @@
 			compatible = "brcm,bcm2835-i2s";
 			reg = <0x7e203000 0x24>;
 			clocks = <&clocks BCM2835_CLOCK_PCM>;
-
-			dmas = <&dma 2>,
-			       <&dma 3>;
-			dma-names = "tx", "rx";
 			status = "disabled";
 		};

@@ -431,8 +322,6 @@
 			reg = <0x7e204000 0x200>;
 			interrupts = <2 22>;
 			clocks = <&clocks BCM2835_CLOCK_VPU>;
-			dmas = <&dma 6>, <&dma 7>;
-			dma-names = "tx", "rx";
 			#address-cells = <1>;
 			#size-cells = <0>;
 			status = "disabled";
@@ -448,18 +337,6 @@
 			status = "disabled";
 		};

-		pixelvalve@7e206000 {
-			compatible = "brcm,bcm2835-pixelvalve0";
-			reg = <0x7e206000 0x100>;
-			interrupts = <2 13>; /* pwa0 */
-		};
-
-		pixelvalve@7e207000 {
-			compatible = "brcm,bcm2835-pixelvalve1";
-			reg = <0x7e207000 0x100>;
-			interrupts = <2 14>; /* pwa1 */
-		};
-
 		dpi: dpi@7e208000 {
 			compatible = "brcm,bcm2835-dpi";
 			reg = <0x7e208000 0x8c>;
@@ -490,14 +367,6 @@

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
@@ -605,26 +474,6 @@
 			status = "disabled";
 		};

-		pixelvalve@7e807000 {
-			compatible = "brcm,bcm2835-pixelvalve2";
-			reg = <0x7e807000 0x100>;
-			interrupts = <2 10>; /* pixelvalve */
-		};
-
-		hdmi: hdmi@7e902000 {
-			compatible = "brcm,bcm2835-hdmi";
-			reg = <0x7e902000 0x600>,
-			      <0x7e808000 0x100>;
-			interrupts = <2 8>, <2 9>;
-			ddc = <&i2c2>;
-			clocks = <&clocks BCM2835_PLLH_PIX>,
-				 <&clocks BCM2835_CLOCK_HSM>;
-			clock-names = "pixel", "hdmi";
-			dmas = <&dma 17>;
-			dma-names = "audio-rx";
-			status = "disabled";
-		};
-
 		usb: usb@7e980000 {
 			compatible = "brcm,bcm2835-usb";
 			reg = <0x7e980000 0x10000>;
@@ -636,17 +485,6 @@
 			phys = <&usbphy>;
 			phy-names = "usb2-phy";
 		};
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
-		};
 	};

 	clocks {
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
