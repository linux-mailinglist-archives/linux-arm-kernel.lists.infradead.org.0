Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C1FCD2E1
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 17:30:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NLZW/KV1Zz3Ptt1LMZ8ZzV8O7eUkRElaV3efyBeBJF0=; b=LzT5xmiZAXoNuzsPam20Zu/Chl
	EDLJmL+BCzcz/jXW8R+cO/XkWDQeeKrkZVjfZCTguKoS+dSQ8WJTPk4PLp3Y+Zda6MUkOKo20WtwV
	QeNTCxj+nFJnYfLkasbDnxdFfa3U9lO7kDmdy1qdgW+EOY0/kyuLh3+FVM2jqCp3cKuaCFlvH9Che
	NOnxLN3xJz6YyvHjl3+dQSgz5RlqXHnEW1GNM+LS+r0WIUFINsJwNVQzxf80gR6Mu5queo+Q5j5lj
	4i7iI4dqfd2iSKB6YkVS/7AWbxlEjhVFBJQgsUko3IfD3Jrz+JaeoHgO31dwHS1iXsaU3MZkR6u7g
	HjjAuT1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH8UT-0001YV-B4; Sun, 06 Oct 2019 15:30:33 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH8T6-0007r4-Jz
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 15:29:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1570375738;
 bh=ju7Bd+dM/7yFl2EXq/i/+T9p6cJbvttYXIH7HB3K4LA=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=LH8fDeT4GfgVH00cDvsb1kbekm8YdfO51FNofLDUWw6lC7dyd7M4QvqBqkgnFvpHm
 4IlQHQksM2A8/4ClTnbGhvqjncGkOxyF8wAqaqOADoVzhBIVErlKDOmTSycQQNa7uA
 EyprAz21yRksGHAvmHvwmLuE9msiv9wqA2ZFfiWo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.116]) by mail.gmx.com
 (mrgmx104 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1MDhlf-1iQnld1TqZ-00AqlF; Sun, 06 Oct 2019 17:28:58 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Marcel Holtmann <marcel@holtmann.org>,
 Johan Hedberg <johan.hedberg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Eric Anholt <eric@anholt.net>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Subject: [PATCH V4 04/10] ARM: dts: bcm283x: Move BCM2835/6/7 specific to
 bcm2835-common.dtsi
Date: Sun,  6 Oct 2019 17:28:22 +0200
Message-Id: <1570375708-26965-5-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1570375708-26965-1-git-send-email-wahrenst@gmx.net>
References: <1570375708-26965-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:4NIJP0fCALGXVbg5Ca7qp1tnTZ23ApC1JYHc+sPxxgidiQh2sSF
 5URwefKeIie0jnfNHFWJBqd0pkdFZOG645A/Ep2if5cT5jlaiw2GfLqIr4dyt51lqoQBbAF
 Hz3ixQWwPBCSdzoqQ1CNJ4qaVCji7w6x/eiebWlgJu6QG3VAH5vNoFYzHguyzGRozGfrp+B
 /7ZLUFqA/n4e2dSXkNb9g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:IEdddmybUzs=:SNyV8CtEtJbtFd7r+TgW/z
 Md26hoWwt8SznSVKeTsdQxP86+LnslK4sBZVqaE81bd08fbTtG5yurCgBqf39NETwcK+j+Mvz
 F43b/bpVoHyV+39bg8TtJdJv065J90TI4drIwgLeKZTWN5sELBKhCNnuVZy2CSsCqHC2ndcEy
 RWNGltJfOSDhQW4apaB312cFAxn+Xjja2o+cG7YHubsi1NUJp7mDwC4H7yPVeN7SXvQmlCDOv
 WJorNK80ovnQQFW9keDws4QmT+Ks1iU9wQmA7w/XANxlq+NFexoIJM6xhsJi93cohF7rJxJNf
 ivf/WbArM9uxx+P66kgkoxp5tp8b0wQtt1rXBAAuH6c3UyR5Wi0QfB11SfDWAMIOAKYGmYn3W
 o40vMJH00TjuCVMEUrsvjVyXO8Hg7nvuNQXq96pOCoX4ROTCA8X9P6Xx0wwR3tAy/JQy35sRa
 o5T1crGkmu3/oqSFhfG/suFy0NfCAK3M+aoBXvGWq5ZBAqK6I23bc1ZsWx3OXe8TyNbyqggsz
 WsEpGf2DlMcqb8Yo0MCVtrtf5xwybQaPENaBvmfPvZ5/9Sl9ul//zOs++Mrs0aNPG4QRagfkE
 h5EBHE5aACVSNhcPFOdaAcfR7ShCPw3uIwkH9uux5+I6Da8ezzhQjrGcTlngK3gsugdOi3t+U
 bw4Wet+BTOsrijnYd7uHH8RmRG027KDkjAATqtnQCOei7s8uMxYs1Z1Sjxu2C4cdEayjXhV6E
 upMHNZZneF9S11FK/wT4+s/23tL6N1L8Da0EvwiFpnoSNvz+wu3onFEIAtfK1y/9PbseneBDR
 LJm9HIS/gvHgdXh5tSkKJWKi/hfUm+NxFqVi2HHEkBnq7lOE+jc1DPm98APLl/LHv6hplwZgK
 BQQDvwPa65Fl6NWKMFhx8CtAOf1/bG5InWzUzkylZ9b1ucXpNbq0AHjEqRAP+ILYqLahzIQKE
 +kTKB++Hf1WhGtkwDqAM6ogUS7g5U88mc4hggtVOAMYpumN8bniKxmND0NB7GPTGvSZW2+iyP
 LrPXKckUqwBk6Kqg6QzxrP6zUGjq74qOCOpj2HPv/xFJ+OckZWWHB26BxTOxlRnahCxN/s2a7
 KAAoN0F1JygAScKLZltMG5vn49SttDI93pWD22cCBiZHoJQnYQPAK1QWAu02bX4jXQd+N2vTT
 lC3NamHWLKP2hoiE4Fd/mcLNFJppBQ5sT9F6YYG2+40zlD+PPTGZ3ZZayYM4vNFut2+hcINFB
 FkEhwMeeIFccnOwH5LKtVEbvw7eBC+AHwgv7Y7A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_082908_954102_C555DE5A 
X-CRM114-Status: GOOD (  18.43  )
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

As preparation we want all common BCM2711 + BCM2835/6/7 functions in
bcm283x.dtsi and all BCM2835/6/7 specific in the new
bcm2835-common.dtsi. Since i2c2 is BCM2835 specific, we also need
to move it to bcm2835-common.dtsi.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Eric Anholt <eric@anholt.net>
---
 arch/arm/boot/dts/bcm2835-common.dtsi | 194 ++++++++++++++++++++++++++++++++++
 arch/arm/boot/dts/bcm2835-rpi.dtsi    |   4 -
 arch/arm/boot/dts/bcm2835.dtsi        |   1 +
 arch/arm/boot/dts/bcm2836.dtsi        |   1 +
 arch/arm/boot/dts/bcm2837.dtsi        |   1 +
 arch/arm/boot/dts/bcm283x.dtsi        | 174 +-----------------------------
 6 files changed, 198 insertions(+), 177 deletions(-)
 create mode 100644 arch/arm/boot/dts/bcm2835-common.dtsi

diff --git a/arch/arm/boot/dts/bcm2835-common.dtsi b/arch/arm/boot/dts/bcm2835-common.dtsi
new file mode 100644
index 0000000..fe1ab40
--- /dev/null
+++ b/arch/arm/boot/dts/bcm2835-common.dtsi
@@ -0,0 +1,194 @@
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
+		i2c2: i2c@7e805000 {
+			compatible = "brcm,bcm2835-i2c";
+			reg = <0x7e805000 0x1000>;
+			interrupts = <2 21>;
+			clocks = <&clocks BCM2835_CLOCK_VPU>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "okay";
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
+			power-domains = <&pm BCM2835_POWER_DOMAIN_GRAFX_V3D>;
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
diff --git a/arch/arm/boot/dts/bcm2835-rpi.dtsi b/arch/arm/boot/dts/bcm2835-rpi.dtsi
index 6c6a7f6..394c8a7 100644
--- a/arch/arm/boot/dts/bcm2835-rpi.dtsi
+++ b/arch/arm/boot/dts/bcm2835-rpi.dtsi
@@ -59,10 +59,6 @@
 	clock-frequency = <100000>;
 };

-&i2c2 {
-	status = "okay";
-};
-
 &usb {
 	power-domains = <&power RPI_POWER_DOMAIN_USB>;
 };
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
index ae8296f..addf3be 100644
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
@@ -587,16 +456,6 @@
 			status = "disabled";
 		};

-		i2c2: i2c@7e805000 {
-			compatible = "brcm,bcm2835-i2c";
-			reg = <0x7e805000 0x1000>;
-			interrupts = <2 21>;
-			clocks = <&clocks BCM2835_CLOCK_VPU>;
-			#address-cells = <1>;
-			#size-cells = <0>;
-			status = "disabled";
-		};
-
 		vec: vec@7e806000 {
 			compatible = "brcm,bcm2835-vec";
 			reg = <0x7e806000 0x1000>;
@@ -605,26 +464,6 @@
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
@@ -636,17 +475,6 @@
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
