Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC8E11CA89
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 16:38:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=QISh741LbdyUQPK2jRNNx4kDMikz7A1moh7g3c09IVM=; b=UuV
	pRvjlfli/h7UGplu15BCuckVyyr+8vxZn+8mBE+fpfUF62+GSmGBhenBjhq+wwK1PejttzJBQ5WX0
	PNewUC4iu5i+KTcLUbxp8vANXoVSpJMXh8FYMi6HtgUrpTxR3IF2xJjtEcF5+mindJyE53C9Ltlfp
	fz5AImw07Z8bfu+ysxmVvP3StjUile0SdZW58Fvl8GQYgjq90OcCNlvNJNeYun2rYdu98z4y6SAto
	34PxxuveRywVMD3vOHTJkKaUAhoy/q1wqwLZ9/auTs3gKn0fpJWJwdVECxNNuBj7LEuJrGTQixI2+
	fkIAK+dcgkpSNiH+MGbYM0MJDiiYSzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQYZk-0000Li-OQ; Tue, 14 May 2019 14:38:40 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQYZc-0000L1-BR
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 14:38:35 +0000
Received: by mail-wm1-f65.google.com with SMTP id x64so3141980wmb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 07:38:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=DavLbo6EQgFhkPJwb/4xzCQhkasrAMs4WlTKcMCR85o=;
 b=BoKidyeSjCek9V/rGDUw2uh6LjqcftptRnD8duucm6U8jTfvILLGKQmtKxlMCIJWO0
 sCjSsKh4ELdUCo/1dI6YG5fTyt1iO+YJqICiYEhL31Hw4Jo6PovPMqqAPPwbDamO1nCm
 3gsOr83JoomtaPTCe37IC1DnYGd3KKjkh6ZvhnGn8YfLEklu+wRyA0764nk5rCQKyxRo
 WvaUNmqo3xFkEcWuQ0l5cxYv3yCCTLxcL6nT9312QGjWgNlHGQ01eZDmkd1k3KOE/CzL
 AEdHInUw0N+POtYjaMYI5ZLsJd6plrSeXYTiDDmdG9y8MnIPRnZeRjXfoJQ/h/WspCPy
 gBxQ==
X-Gm-Message-State: APjAAAVAEEqITuz/8UTw8XfDKNUea//JgQIug1swpdxuor04snbTBP3m
 33iowBSrVH5ykqQYe+ur3Qk=
X-Google-Smtp-Source: APXvYqzMGrbJlZAMoiTAjePlLL3M3Q5vlg5GEylrHptpYM0axSS8TnfdN0E933uMN7JA6yv7e4rp2w==
X-Received: by 2002:a1c:ba87:: with SMTP id k129mr7334377wmf.132.1557844708606; 
 Tue, 14 May 2019 07:38:28 -0700 (PDT)
Received: from localhost ([194.105.145.90])
 by smtp.gmail.com with ESMTPSA id g6sm14429363wro.29.2019.05.14.07.38.27
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 14 May 2019 07:38:27 -0700 (PDT)
From: Igor Opaniuk <igor.opaniuk@toradex.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/1] ARM: dts: colibri: introduce dts with UHS-I support
 enabled
Date: Tue, 14 May 2019 17:38:26 +0300
Message-Id: <20190514143826.7331-1-igor.opaniuk@toradex.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_073832_401528_C86251D1 
X-CRM114-Status: GOOD (  16.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (igor.opaniuk[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, marcel.ziswiler@toradex.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, stefan@agner.ch, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com, marcel@ziswiler.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introduce DTS for Colibri iMX6S/DL V1.1x re-design, where UHS-I support was
added. Provide proper configuration for VGEN3, which allows that rail to
be automatically switched to 1.8 volts for proper UHS-I operation mode.

Signed-off-by: Igor Opaniuk <igor.opaniuk@toradex.com>
---

v2:
- rework hierarchy of dts files, and a separate dtsi for Colibri
  iMX6S/DL V1.1x re-design, where UHS-I was added
- add comments about vgen3 power rail
- fix other minor issues, addressing Marcel's comments.

 arch/arm/boot/dts/Makefile                    |   1 +
 .../boot/dts/imx6dl-colibri-v1.1-eval-v3.dts  | 220 +++++
 arch/arm/boot/dts/imx6qdl-colibri-v1.1.dtsi   | 852 ++++++++++++++++++
 3 files changed, 1073 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx6dl-colibri-v1.1-eval-v3.dts
 create mode 100644 arch/arm/boot/dts/imx6qdl-colibri-v1.1.dtsi

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index dab2914fa293..dc4ea05c8e2a 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -401,6 +401,7 @@ dtb-$(CONFIG_SOC_IMX6Q) += \
 	imx6dl-aristainetos2_4.dtb \
 	imx6dl-aristainetos2_7.dtb \
 	imx6dl-colibri-eval-v3.dtb \
+	imx6dl-colibri-v1.1-eval-v3.dtb \
 	imx6dl-cubox-i.dtb \
 	imx6dl-cubox-i-emmc-som-v15.dtb \
 	imx6dl-cubox-i-som-v15.dtb \
diff --git a/arch/arm/boot/dts/imx6dl-colibri-v1.1-eval-v3.dts b/arch/arm/boot/dts/imx6dl-colibri-v1.1-eval-v3.dts
new file mode 100644
index 000000000000..8ed7a528e7c7
--- /dev/null
+++ b/arch/arm/boot/dts/imx6dl-colibri-v1.1-eval-v3.dts
@@ -0,0 +1,220 @@
+// SPDX-License-Identifier: GPL-2.0+ OR X11
+/*
+ * Copyright 2019 Toradex AG
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+#include "imx6dl.dtsi"
+#include "imx6qdl-colibri-v1.1.dtsi"
+
+/ {
+	model = "Toradex Colibri iMX6DL/S V1.1 on Colibri Evaluation Board V3";
+	compatible = "toradex,colibri_imx6dl-eval-v3", "toradex,colibri_imx6dl",
+		     "fsl,imx6dl";
+
+	/* Will be filled by the bootloader */
+	memory@10000000 {
+		device_type = "memory";
+		reg = <0x10000000 0>;
+	};
+
+	aliases {
+		i2c0 = &i2c2;
+		i2c1 = &i2c3;
+	};
+
+	aliases {
+		rtc0 = &rtc_i2c;
+		rtc1 = &snvs_rtc;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	/* Fixed crystal dedicated to mcp251x */
+	clk16m: clock-16m {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <16000000>;
+		clock-output-names = "clk16m";
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpio_keys>;
+
+		wakeup {
+			label = "Wake-Up";
+			gpios = <&gpio2 22 GPIO_ACTIVE_HIGH>; /* SODIMM 45 */
+			linux,code = <KEY_WAKEUP>;
+			debounce-interval = <10>;
+			wakeup-source;
+		};
+	};
+
+	lcd_display: disp0 {
+		compatible = "fsl,imx-parallel-display";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		interface-pix-fmt = "bgr666";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_ipu1_lcdif>;
+		status = "okay";
+
+		port@0 {
+			reg = <0>;
+
+			lcd_display_in: endpoint {
+				remote-endpoint = <&ipu1_di0_disp0>;
+			};
+		};
+
+		port@1 {
+			reg = <1>;
+
+			lcd_display_out: endpoint {
+				remote-endpoint = <&lcd_panel_in>;
+			};
+		};
+	};
+
+	panel: panel {
+		/*
+		 * edt,et057090dhu: EDT 5.7" LCD TFT
+		 * edt,et070080dh6: EDT 7.0" LCD TFT
+		 */
+		compatible = "edt,et057090dhu";
+		backlight = <&backlight>;
+
+		port {
+			lcd_panel_in: endpoint {
+				remote-endpoint = <&lcd_display_out>;
+			};
+		};
+	};
+};
+
+&backlight {
+	brightness-levels = <0 127 191 223 239 247 251 255>;
+	default-brightness-level = <1>;
+	status = "okay";
+};
+
+/* Colibri SSP */
+&ecspi4 {
+	status = "okay";
+
+	mcp251x0: mcp251x@0 {
+		compatible = "microchip,mcp2515";
+		reg = <0>;
+		clocks = <&clk16m>;
+		interrupt-parent = <&gpio3>;
+		interrupts = <27 0x2>;
+		spi-max-frequency = <10000000>;
+		status = "okay";
+	};
+};
+
+&hdmi {
+	status = "okay";
+};
+
+/*
+ * Colibri I2C: I2C3_SDA/SCL on SODIMM 194/196 (e.g. RTC on carrier board)
+ */
+&i2c3 {
+	status = "okay";
+
+	/* M41T0M6 real time clock on carrier board */
+	rtc_i2c: rtc@68 {
+		compatible = "st,m41t0";
+		reg = <0x68>;
+	};
+};
+
+&ipu1_di0_disp0 {
+	remote-endpoint = <&lcd_display_in>;
+};
+
+&pwm1 {
+	status = "okay";
+};
+
+&pwm2 {
+	status = "okay";
+};
+
+&pwm3 {
+	status = "okay";
+};
+
+&pwm4 {
+	status = "okay";
+};
+
+&reg_usb_host_vbus {
+	status = "okay";
+};
+
+&uart1 {
+	status = "okay";
+};
+
+&uart2 {
+	status = "okay";
+};
+
+&uart3 {
+	status = "okay";
+};
+
+&usbh1 {
+	vbus-supply = <&reg_usb_host_vbus>;
+	status = "okay";
+};
+
+&usbotg {
+	status = "okay";
+};
+
+/* Colibri MMC */
+&usdhc1 {
+	status = "okay";
+};
+
+&weim {
+	status = "okay";
+
+	/* weim memory map: 32MB on CS0, CS1, CS2 and CS3 */
+	ranges = <0 0 0x08000000 0x02000000
+		  1 0 0x0a000000 0x02000000
+		  2 0 0x0c000000 0x02000000
+		  3 0 0x0e000000 0x02000000>;
+
+	/* SRAM on Colibri nEXT_CS0 */
+	sram@0,0 {
+		compatible = "cypress,cy7c1019dv33-10zsxi, mtd-ram";
+		reg = <0 0 0x00010000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		bank-width = <2>;
+		fsl,weim-cs-timing = <0x00010081 0x00000000 0x04000000
+				      0x00000000 0x04000040 0x00000000>;
+	};
+
+	/* SRAM on Colibri nEXT_CS1 */
+	sram@1,0 {
+		compatible = "cypress,cy7c1019dv33-10zsxi, mtd-ram";
+		reg = <1 0 0x00010000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		bank-width = <2>;
+		fsl,weim-cs-timing = <0x00010081 0x00000000 0x04000000
+				      0x00000000 0x04000040 0x00000000>;
+	};
+};
diff --git a/arch/arm/boot/dts/imx6qdl-colibri-v1.1.dtsi b/arch/arm/boot/dts/imx6qdl-colibri-v1.1.dtsi
new file mode 100644
index 000000000000..e40819f05c81
--- /dev/null
+++ b/arch/arm/boot/dts/imx6qdl-colibri-v1.1.dtsi
@@ -0,0 +1,852 @@
+// SPDX-License-Identifier: GPL-2.0+ OR X11
+/*
+ * Copyright 2019 Toradex AG
+ */
+#include <dt-bindings/gpio/gpio.h>
+
+/ {
+	model = "Toradex Colibri iMX6DL/S V1.1 Module";
+	compatible = "toradex,colibri_imx6dl", "fsl,imx6dl";
+
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpio_bl_on>;
+		pwms = <&pwm3 0 5000000>;
+		enable-gpios = <&gpio3 26 GPIO_ACTIVE_HIGH>; /* Colibri BL_ON */
+		status = "disabled";
+	};
+
+	reg_module_3v3: regulator-module-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "+V3.3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
+
+	reg_module_3v3_audio: regulator-module-3v3-audio {
+		compatible = "regulator-fixed";
+		regulator-name = "+V3.3_AUDIO";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
+
+	reg_usb_host_vbus: regulator-usb-host-vbus {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_regulator_usbh_pwr>;
+		regulator-name = "usb_host_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio3 31 GPIO_ACTIVE_HIGH>; /* USBH_PEN */
+		status = "disabled";
+	};
+
+	sound {
+		compatible = "fsl,imx-audio-sgtl5000";
+		model = "imx6dl-colibri-sgtl5000";
+		ssi-controller = <&ssi1>;
+		audio-codec = <&codec>;
+		audio-routing =
+			"Headphone Jack", "HP_OUT",
+			"LINE_IN", "Line In Jack",
+			"MIC_IN", "Mic Jack",
+			"Mic Jack", "Mic Bias";
+		mux-int-port = <1>;
+		mux-ext-port = <5>;
+	};
+
+	/* Optional S/PDIF in on SODIMM 88 and out on SODIMM 90, 137 or 168 */
+	sound_spdif: sound-spdif {
+		compatible = "fsl,imx-audio-spdif";
+		model = "imx-spdif";
+		spdif-controller = <&spdif>;
+		spdif-in;
+		spdif-out;
+		status = "disabled";
+	};
+};
+
+&audmux {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_audmux &pinctrl_mic_gnd>;
+	status = "okay";
+};
+
+/* Optional on SODIMM 55/63 */
+&can1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_flexcan1>;
+	status = "disabled";
+};
+
+/* Optional on SODIMM 178/188 */
+&can2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_flexcan2>;
+	status = "disabled";
+};
+
+/* Colibri SSP */
+&ecspi4 {
+	cs-gpios = <&gpio5 2 GPIO_ACTIVE_HIGH>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi4>;
+	status = "disabled";
+};
+
+&fec {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet>;
+	phy-mode = "rmii";
+	status = "okay";
+};
+
+&hdmi {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hdmi_ddc>;
+	status = "disabled";
+};
+
+/*
+ * PWR_I2C: power I2C to audio codec, PMIC, temperature sensor and
+ * touch screen controller
+ */
+&i2c2 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	status = "okay";
+
+	pmic: pfuze100@8 {
+		compatible = "fsl,pfuze100";
+		reg = <0x08>;
+
+		regulators {
+			sw1a_reg: sw1ab {
+				regulator-min-microvolt = <300000>;
+				regulator-max-microvolt = <1875000>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <6250>;
+			};
+
+			sw1c_reg: sw1c {
+				regulator-min-microvolt = <300000>;
+				regulator-max-microvolt = <1875000>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <6250>;
+			};
+
+			sw3a_reg: sw3a {
+				regulator-min-microvolt = <400000>;
+				regulator-max-microvolt = <1975000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			swbst_reg: swbst {
+				regulator-min-microvolt = <5000000>;
+				regulator-max-microvolt = <5150000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			snvs_reg: vsnvs {
+				regulator-min-microvolt = <1000000>;
+				regulator-max-microvolt = <3000000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			vref_reg: vrefddr {
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			/* vgen1: unused */
+
+			vgen2_reg: vgen2 {
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <1550000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			/*
+			 * +V3.3_1.8_SD1 coming off VGEN3 and supplying
+			 * the i.MX 6 NVCC_SD1.
+			 */
+			vgen3_reg: vgen3 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+			};
+
+			vgen4_reg: vgen4 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			vgen5_reg: vgen5 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			vgen6_reg: vgen6 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+		};
+	};
+
+	codec: sgtl5000@a {
+		compatible = "fsl,sgtl5000";
+		reg = <0x0a>;
+		clocks = <&clks IMX6QDL_CLK_CKO>;
+		VDDA-supply = <&reg_module_3v3_audio>;
+		VDDIO-supply = <&reg_module_3v3>;
+		VDDD-supply = <&vgen4_reg>;
+		lrclk-strength = <3>;
+	};
+
+	/* STMPE811 touch screen controller */
+	stmpe811@41 {
+		compatible = "st,stmpe811";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_touch_int>;
+		reg = <0x41>;
+		interrupts = <20 IRQ_TYPE_LEVEL_LOW>;
+		interrupt-parent = <&gpio6>;
+		interrupt-controller;
+		id = <0>;
+		blocks = <0x5>;
+		irq-trigger = <0x1>;
+		/* 3.25 MHz ADC clock speed */
+		st,adc-freq = <1>;
+		/* 12-bit ADC */
+		st,mod-12b = <1>;
+		/* internal ADC reference */
+		st,ref-sel = <0>;
+		/* ADC conversion time: 80 clocks */
+		st,sample-time = <4>;
+
+		stmpe_touchscreen {
+			compatible = "st,stmpe-ts";
+			/* 8 sample average control */
+			st,ave-ctrl = <3>;
+			/* 7 length fractional part in z */
+			st,fraction-z = <7>;
+			/*
+			 * 50 mA typical 80 mA max touchscreen drivers
+			 * current limit value
+			 */
+			st,i-drive = <1>;
+			/* 1 ms panel driver settling time */
+			st,settling = <3>;
+			/* 5 ms touch detect interrupt delay */
+			st,touch-det-delay = <5>;
+		};
+
+		stmpe_adc {
+			compatible = "st,stmpe-adc";
+			/* forbid to use ADC channels 3-0 (touch) */
+			st,norequest-mask = <0x0F>;
+		};
+	};
+};
+
+/*
+ * I2C3_SDA/SCL on SODIMM 194/196 (e.g. RTC on carrier board)
+ */
+&i2c3 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default", "recovery";
+	pinctrl-0 = <&pinctrl_i2c3>;
+	pinctrl-1 = <&pinctrl_i2c3_recovery>;
+	scl-gpios = <&gpio1 3 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	sda-gpios = <&gpio1 6 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	status = "disabled";
+};
+
+/* Colibri PWM<B> */
+&pwm1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm1>;
+	status = "disabled";
+};
+
+/* Colibri PWM<D> */
+&pwm2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm2>;
+	status = "disabled";
+};
+
+/* Colibri PWM<A> */
+&pwm3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm3>;
+	status = "disabled";
+};
+
+/* Colibri PWM<C> */
+&pwm4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm4>;
+	status = "disabled";
+};
+
+/* Optional S/PDIF out on SODIMM 137 */
+&spdif {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_spdif>;
+	status = "disabled";
+};
+
+&ssi1 {
+	status = "okay";
+};
+
+/* Colibri UART_A */
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1_dte &pinctrl_uart1_ctrl>;
+	fsl,dte-mode;
+	uart-has-rtscts;
+	status = "disabled";
+};
+
+/* Colibri UART_B */
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2_dte>;
+	fsl,dte-mode;
+	uart-has-rtscts;
+	status = "disabled";
+};
+
+/* Colibri UART_C */
+&uart3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart3_dte>;
+	fsl,dte-mode;
+	status = "disabled";
+};
+
+&usbotg {
+	pinctrl-names = "default";
+	disable-over-current;
+	dr_mode = "peripheral";
+	status = "disabled";
+};
+
+/* Colibri MMC */
+&usdhc1 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc1 &pinctrl_mmc_cd>;
+	pinctrl-1 = <&pinctrl_usdhc1_100mhz &pinctrl_mmc_cd>;
+	pinctrl-2 = <&pinctrl_usdhc1_200mhz &pinctrl_mmc_cd>;
+	vmmc-supply = <&reg_module_3v3>;
+	vqmmc-supply = <&vgen3_reg>;
+	bus-width = <4>;
+	cd-gpios = <&gpio2 5 GPIO_ACTIVE_LOW>; /* MMCD */
+	disable-wp;
+	enable-sdio-wakeup;
+	keep-power-in-suspend;
+	sd-uhs-sdr12;
+	sd-uhs-sdr25;
+	sd-uhs-sdr50;
+	sd-uhs-sdr104;
+	status = "disabled";
+};
+
+/* eMMC */
+&usdhc3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc3>;
+	vqmmc-supply = <&reg_module_3v3>;
+	bus-width = <8>;
+	no-1-8-v;
+	non-removable;
+	status = "okay";
+};
+
+&weim {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_weim_sram  &pinctrl_weim_cs0
+		     &pinctrl_weim_cs1   &pinctrl_weim_cs2
+		     &pinctrl_weim_rdnwr &pinctrl_weim_npwe>;
+	#address-cells = <2>;
+	#size-cells = <1>;
+	status = "disabled";
+};
+
+&iomuxc {
+	pinctrl_audmux: audmuxgrp {
+		fsl,pins = <
+			MX6QDL_PAD_KEY_COL0__AUD5_TXC	0x130b0
+			MX6QDL_PAD_KEY_ROW0__AUD5_TXD	0x130b0
+			MX6QDL_PAD_KEY_COL1__AUD5_TXFS	0x130b0
+			MX6QDL_PAD_KEY_ROW1__AUD5_RXD	0x130b0
+			/* SGTL5000 sys_mclk */
+			MX6QDL_PAD_GPIO_0__CCM_CLKO1	0x000b0
+		>;
+	};
+
+	pinctrl_cam_mclk: cammclkgrp {
+		fsl,pins = <
+			/* Parallel Camera CAM sys_mclk */
+			MX6QDL_PAD_NANDF_CS2__CCM_CLKO2	0x00b0
+		>;
+	};
+
+	pinctrl_ecspi4: ecspi4grp {
+		fsl,pins = <
+			MX6QDL_PAD_EIM_D22__ECSPI4_MISO	0x100b1
+			MX6QDL_PAD_EIM_D28__ECSPI4_MOSI	0x100b1
+			MX6QDL_PAD_EIM_D21__ECSPI4_SCLK 0x100b1
+			/* SPI CS */
+			MX6QDL_PAD_EIM_A25__GPIO5_IO02	0x000b1
+		>;
+	};
+
+	pinctrl_enet: enetgrp {
+		fsl,pins = <
+			MX6QDL_PAD_ENET_MDC__ENET_MDC		0x1b0b0
+			MX6QDL_PAD_ENET_MDIO__ENET_MDIO		0x1b0b0
+			MX6QDL_PAD_ENET_RXD0__ENET_RX_DATA0	0x1b0b0
+			MX6QDL_PAD_ENET_RXD1__ENET_RX_DATA1	0x1b0b0
+			MX6QDL_PAD_ENET_RX_ER__ENET_RX_ER	0x1b0b0
+			MX6QDL_PAD_ENET_TX_EN__ENET_TX_EN	0x1b0b0
+			MX6QDL_PAD_ENET_TXD0__ENET_TX_DATA0	0x1b0b0
+			MX6QDL_PAD_ENET_TXD1__ENET_TX_DATA1	0x1b0b0
+			MX6QDL_PAD_ENET_CRS_DV__ENET_RX_EN	0x1b0b0
+			MX6QDL_PAD_GPIO_16__ENET_REF_CLK     ((1<<30) | 0x1b0b0)
+		>;
+	};
+
+	pinctrl_flexcan1: flexcan1grp {
+		fsl,pins = <
+			MX6QDL_PAD_GPIO_7__FLEXCAN1_TX		0x1b0b0
+			MX6QDL_PAD_GPIO_8__FLEXCAN1_RX		0x1b0b0
+		>;
+	};
+
+	pinctrl_flexcan2: flexcan2grp {
+		fsl,pins = <
+			MX6QDL_PAD_KEY_COL4__FLEXCAN2_TX	0x1b0b0
+			MX6QDL_PAD_KEY_ROW4__FLEXCAN2_RX	0x1b0b0
+		>;
+	};
+
+	pinctrl_gpio_bl_on: gpioblon {
+		fsl,pins = <
+			MX6QDL_PAD_EIM_D26__GPIO3_IO26		0x1b0b0
+		>;
+	};
+
+	pinctrl_gpio_keys: gpiokeys {
+		fsl,pins = <
+			MX6QDL_PAD_EIM_A16__GPIO2_IO22		0x130b0
+		>;
+	};
+
+	pinctrl_hdmi_ddc: hdmiddcgrp {
+		fsl,pins = <
+			MX6QDL_PAD_KEY_COL3__HDMI_TX_DDC_SCL 0x4001b8b1
+			MX6QDL_PAD_KEY_ROW3__HDMI_TX_DDC_SDA 0x4001b8b1
+		>;
+	};
+
+	pinctrl_i2c2: i2c2grp {
+		fsl,pins = <
+			MX6QDL_PAD_EIM_EB2__I2C2_SCL 0x4001b8b1
+			MX6QDL_PAD_EIM_D16__I2C2_SDA 0x4001b8b1
+		>;
+	};
+
+	pinctrl_i2c3: i2c3grp {
+		fsl,pins = <
+			MX6QDL_PAD_GPIO_3__I2C3_SCL 0x4001b8b1
+			MX6QDL_PAD_GPIO_6__I2C3_SDA 0x4001b8b1
+		>;
+	};
+
+	pinctrl_i2c3_recovery: i2c3recoverygrp {
+		fsl,pins = <
+			MX6QDL_PAD_GPIO_3__GPIO1_IO03 0x4001b8b1
+			MX6QDL_PAD_GPIO_6__GPIO1_IO06 0x4001b8b1
+		>;
+	};
+
+	pinctrl_ipu1_csi0: ipu1csi0grp { /* Parallel Camera */
+		fsl,pins = <
+			MX6QDL_PAD_EIM_A17__IPU1_CSI1_DATA12	0xb0b1
+			MX6QDL_PAD_EIM_A18__IPU1_CSI1_DATA13	0xb0b1
+			MX6QDL_PAD_EIM_A19__IPU1_CSI1_DATA14	0xb0b1
+			MX6QDL_PAD_EIM_A20__IPU1_CSI1_DATA15	0xb0b1
+			MX6QDL_PAD_EIM_A21__IPU1_CSI1_DATA16	0xb0b1
+			MX6QDL_PAD_EIM_A22__IPU1_CSI1_DATA17	0xb0b1
+			MX6QDL_PAD_EIM_A23__IPU1_CSI1_DATA18	0xb0b1
+			MX6QDL_PAD_EIM_A24__IPU1_CSI1_DATA19	0xb0b1
+			MX6QDL_PAD_EIM_D17__IPU1_CSI1_PIXCLK	0xb0b1
+			MX6QDL_PAD_EIM_EB3__IPU1_CSI1_HSYNC	0xb0b1
+			MX6QDL_PAD_EIM_D29__IPU1_CSI1_VSYNC	0xb0b1
+			/* Disable PWM pins on camera interface */
+			MX6QDL_PAD_SD4_DAT1__GPIO2_IO09		0x40
+			MX6QDL_PAD_GPIO_1__GPIO1_IO01		0x40
+		>;
+	};
+
+	pinctrl_ipu1_lcdif: ipu1lcdifgrp {
+		fsl,pins = <
+			MX6QDL_PAD_DI0_DISP_CLK__IPU1_DI0_DISP_CLK	0xa1
+			MX6QDL_PAD_DI0_PIN15__IPU1_DI0_PIN15		0xa1
+			MX6QDL_PAD_DI0_PIN2__IPU1_DI0_PIN02		0xa1
+			MX6QDL_PAD_DI0_PIN3__IPU1_DI0_PIN03		0xa1
+			MX6QDL_PAD_DISP0_DAT0__IPU1_DISP0_DATA00	0xa1
+			MX6QDL_PAD_DISP0_DAT1__IPU1_DISP0_DATA01	0xa1
+			MX6QDL_PAD_DISP0_DAT2__IPU1_DISP0_DATA02	0xa1
+			MX6QDL_PAD_DISP0_DAT3__IPU1_DISP0_DATA03	0xa1
+			MX6QDL_PAD_DISP0_DAT4__IPU1_DISP0_DATA04	0xa1
+			MX6QDL_PAD_DISP0_DAT5__IPU1_DISP0_DATA05	0xa1
+			MX6QDL_PAD_DISP0_DAT6__IPU1_DISP0_DATA06	0xa1
+			MX6QDL_PAD_DISP0_DAT7__IPU1_DISP0_DATA07	0xa1
+			MX6QDL_PAD_DISP0_DAT8__IPU1_DISP0_DATA08	0xa1
+			MX6QDL_PAD_DISP0_DAT9__IPU1_DISP0_DATA09	0xa1
+			MX6QDL_PAD_DISP0_DAT10__IPU1_DISP0_DATA10	0xa1
+			MX6QDL_PAD_DISP0_DAT11__IPU1_DISP0_DATA11	0xa1
+			MX6QDL_PAD_DISP0_DAT12__IPU1_DISP0_DATA12	0xa1
+			MX6QDL_PAD_DISP0_DAT13__IPU1_DISP0_DATA13	0xa1
+			MX6QDL_PAD_DISP0_DAT14__IPU1_DISP0_DATA14	0xa1
+			MX6QDL_PAD_DISP0_DAT15__IPU1_DISP0_DATA15	0xa1
+			MX6QDL_PAD_DISP0_DAT16__IPU1_DISP0_DATA16	0xa1
+			MX6QDL_PAD_DISP0_DAT17__IPU1_DISP0_DATA17	0xa1
+		>;
+	};
+
+	pinctrl_mic_gnd: gpiomicgnd {
+		fsl,pins = <
+			/* Controls Mic GND, PU or '1' pull Mic GND to GND */
+			MX6QDL_PAD_RGMII_TD1__GPIO6_IO21 0x1b0b0
+		>;
+	};
+
+	pinctrl_mmc_cd: gpiommccd {
+		fsl,pins = <
+			MX6QDL_PAD_NANDF_D5__GPIO2_IO05	0x1b0b1
+		>;
+	};
+
+	pinctrl_pwm1: pwm1grp {
+		fsl,pins = <
+			MX6QDL_PAD_GPIO_9__PWM1_OUT	0x1b0b1
+		>;
+	};
+
+	pinctrl_pwm2: pwm2grp {
+		fsl,pins = <
+			MX6QDL_PAD_GPIO_1__PWM2_OUT	0x1b0b1
+			MX6QDL_PAD_EIM_A21__GPIO2_IO17	0x00040
+		>;
+	};
+
+	pinctrl_pwm3: pwm3grp {
+		fsl,pins = <
+			MX6QDL_PAD_SD4_DAT1__PWM3_OUT	0x1b0b1
+			MX6QDL_PAD_EIM_A22__GPIO2_IO16	0x00040
+		>;
+	};
+
+	pinctrl_pwm4: pwm4grp {
+		fsl,pins = <
+			MX6QDL_PAD_SD4_DAT2__PWM4_OUT	0x1b0b1
+		>;
+	};
+
+	pinctrl_regulator_usbh_pwr: gpioregusbhpwrgrp {
+		fsl,pins = <
+			/* USBH_EN */
+			MX6QDL_PAD_EIM_D31__GPIO3_IO31	0x0f058
+		>;
+	};
+
+	pinctrl_spdif: spdifgrp {
+		fsl,pins = <
+			MX6QDL_PAD_GPIO_17__SPDIF_OUT 0x1b0b0
+		>;
+	};
+
+	pinctrl_touch_int: gpiotouchintgrp {
+		fsl,pins = <
+			/* STMPE811 interrupt */
+			MX6QDL_PAD_RGMII_TD0__GPIO6_IO20 0x1b0b0
+		>;
+	};
+
+	pinctrl_uart1_dce: uart1dcegrp {
+		fsl,pins = <
+			MX6QDL_PAD_CSI0_DAT10__UART1_TX_DATA 0x1b0b1
+			MX6QDL_PAD_CSI0_DAT11__UART1_RX_DATA 0x1b0b1
+		>;
+	};
+
+	/* DTE mode */
+	pinctrl_uart1_dte: uart1dtegrp {
+		fsl,pins = <
+			MX6QDL_PAD_CSI0_DAT10__UART1_RX_DATA 0x1b0b1
+			MX6QDL_PAD_CSI0_DAT11__UART1_TX_DATA 0x1b0b1
+			MX6QDL_PAD_EIM_D19__UART1_RTS_B	0x1b0b1
+			MX6QDL_PAD_EIM_D20__UART1_CTS_B 0x1b0b1
+		>;
+	};
+
+	/* Additional DTR, DSR, DCD */
+	pinctrl_uart1_ctrl: uart1ctrlgrp {
+		fsl,pins = <
+			MX6QDL_PAD_EIM_D23__UART1_DCD_B 0x1b0b0
+			MX6QDL_PAD_EIM_D24__UART1_DTR_B 0x1b0b0
+			MX6QDL_PAD_EIM_D25__UART1_DSR_B 0x1b0b0
+		>;
+	};
+
+	pinctrl_uart2_dte: uart2dtegrp {
+		fsl,pins = <
+			MX6QDL_PAD_SD4_DAT4__UART2_TX_DATA	0x1b0b1
+			MX6QDL_PAD_SD4_DAT7__UART2_RX_DATA	0x1b0b1
+			MX6QDL_PAD_SD4_DAT6__UART2_RTS_B	0x1b0b1
+			MX6QDL_PAD_SD4_DAT5__UART2_CTS_B	0x1b0b1
+		>;
+	};
+
+	pinctrl_uart3_dte: uart3dtegrp {
+		fsl,pins = <
+			MX6QDL_PAD_SD4_CLK__UART3_TX_DATA	0x1b0b1
+			MX6QDL_PAD_SD4_CMD__UART3_RX_DATA	0x1b0b1
+		>;
+	};
+
+	pinctrl_usbc_det: usbcdetgrp {
+		fsl,pins = <
+			/* USBC_DET */
+			MX6QDL_PAD_GPIO_17__GPIO7_IO12		0x1b0b0
+			/* USBC_DET_EN */
+			MX6QDL_PAD_RGMII_TX_CTL__GPIO6_IO26	0x0f058
+			/* USBC_DET_OVERWRITE */
+			MX6QDL_PAD_RGMII_RXC__GPIO6_IO30	0x0f058
+		>;
+	};
+
+	pinctrl_usdhc1: usdhc1grp {
+		fsl,pins = <
+			MX6QDL_PAD_SD1_CMD__SD1_CMD	0x17071
+			MX6QDL_PAD_SD1_CLK__SD1_CLK	0x10071
+			MX6QDL_PAD_SD1_DAT0__SD1_DATA0	0x17071
+			MX6QDL_PAD_SD1_DAT1__SD1_DATA1	0x17071
+			MX6QDL_PAD_SD1_DAT2__SD1_DATA2	0x17071
+			MX6QDL_PAD_SD1_DAT3__SD1_DATA3	0x17071
+		>;
+	};
+
+	pinctrl_usdhc1_100mhz: usdhc1grp100mhz {
+		fsl,pins = <
+			MX6QDL_PAD_SD1_CMD__SD1_CMD    0x170b1
+			MX6QDL_PAD_SD1_CLK__SD1_CLK    0x100b1
+			MX6QDL_PAD_SD1_DAT0__SD1_DATA0 0x170b1
+			MX6QDL_PAD_SD1_DAT1__SD1_DATA1 0x170b1
+			MX6QDL_PAD_SD1_DAT2__SD1_DATA2 0x170b1
+			MX6QDL_PAD_SD1_DAT3__SD1_DATA3 0x170b1
+		>;
+	};
+
+	pinctrl_usdhc1_200mhz: usdhc1grp200mhz {
+		fsl,pins = <
+			MX6QDL_PAD_SD1_CMD__SD1_CMD    0x170f1
+			MX6QDL_PAD_SD1_CLK__SD1_CLK    0x100f1
+			MX6QDL_PAD_SD1_DAT0__SD1_DATA0 0x170f1
+			MX6QDL_PAD_SD1_DAT1__SD1_DATA1 0x170f1
+			MX6QDL_PAD_SD1_DAT2__SD1_DATA2 0x170f1
+			MX6QDL_PAD_SD1_DAT3__SD1_DATA3 0x170f1
+		>;
+	};
+
+	pinctrl_usdhc3: usdhc3grp {
+		fsl,pins = <
+			MX6QDL_PAD_SD3_CMD__SD3_CMD	0x17059
+			MX6QDL_PAD_SD3_CLK__SD3_CLK	0x10059
+			MX6QDL_PAD_SD3_DAT0__SD3_DATA0	0x17059
+			MX6QDL_PAD_SD3_DAT1__SD3_DATA1	0x17059
+			MX6QDL_PAD_SD3_DAT2__SD3_DATA2	0x17059
+			MX6QDL_PAD_SD3_DAT3__SD3_DATA3	0x17059
+			MX6QDL_PAD_SD3_DAT4__SD3_DATA4	0x17059
+			MX6QDL_PAD_SD3_DAT5__SD3_DATA5	0x17059
+			MX6QDL_PAD_SD3_DAT6__SD3_DATA6	0x17059
+			MX6QDL_PAD_SD3_DAT7__SD3_DATA7	0x17059
+			/* eMMC reset */
+			MX6QDL_PAD_SD3_RST__SD3_RESET	0x17059
+		>;
+	};
+
+	pinctrl_weim_cs0: weimcs0grp {
+		fsl,pins = <
+			/* nEXT_CS0 */
+			MX6QDL_PAD_EIM_CS0__EIM_CS0_B	0xb0b1
+		>;
+	};
+
+	pinctrl_weim_cs1: weimcs1grp {
+		fsl,pins = <
+			/* nEXT_CS1 */
+			MX6QDL_PAD_EIM_CS1__EIM_CS1_B	0xb0b1
+		>;
+	};
+
+	pinctrl_weim_cs2: weimcs2grp {
+		fsl,pins = <
+			/* nEXT_CS2 */
+			MX6QDL_PAD_SD2_DAT1__EIM_CS2_B	0xb0b1
+		>;
+	};
+
+	pinctrl_weim_sram: weimsramgrp {
+		fsl,pins = <
+			MX6QDL_PAD_EIM_OE__EIM_OE_B		0xb0b1
+			MX6QDL_PAD_EIM_RW__EIM_RW		0xb0b1
+			/* Data */
+			MX6QDL_PAD_CSI0_DATA_EN__EIM_DATA00	0x1b0b0
+			MX6QDL_PAD_CSI0_VSYNC__EIM_DATA01	0x1b0b0
+			MX6QDL_PAD_CSI0_DAT4__EIM_DATA02	0x1b0b0
+			MX6QDL_PAD_CSI0_DAT5__EIM_DATA03	0x1b0b0
+			MX6QDL_PAD_CSI0_DAT6__EIM_DATA04	0x1b0b0
+			MX6QDL_PAD_CSI0_DAT7__EIM_DATA05	0x1b0b0
+			MX6QDL_PAD_CSI0_DAT8__EIM_DATA06	0x1b0b0
+			MX6QDL_PAD_CSI0_DAT9__EIM_DATA07	0x1b0b0
+			MX6QDL_PAD_CSI0_DAT12__EIM_DATA08	0x1b0b0
+			MX6QDL_PAD_CSI0_DAT13__EIM_DATA09	0x1b0b0
+			MX6QDL_PAD_CSI0_DAT14__EIM_DATA10	0x1b0b0
+			MX6QDL_PAD_CSI0_DAT15__EIM_DATA11	0x1b0b0
+			MX6QDL_PAD_CSI0_DAT16__EIM_DATA12	0x1b0b0
+			MX6QDL_PAD_CSI0_DAT17__EIM_DATA13	0x1b0b0
+			MX6QDL_PAD_CSI0_DAT18__EIM_DATA14	0x1b0b0
+			MX6QDL_PAD_CSI0_DAT19__EIM_DATA15	0x1b0b0
+			/* Address */
+			MX6QDL_PAD_EIM_DA15__EIM_AD15		0xb0b1
+			MX6QDL_PAD_EIM_DA14__EIM_AD14		0xb0b1
+			MX6QDL_PAD_EIM_DA13__EIM_AD13		0xb0b1
+			MX6QDL_PAD_EIM_DA12__EIM_AD12		0xb0b1
+			MX6QDL_PAD_EIM_DA11__EIM_AD11		0xb0b1
+			MX6QDL_PAD_EIM_DA10__EIM_AD10		0xb0b1
+			MX6QDL_PAD_EIM_DA9__EIM_AD09		0xb0b1
+			MX6QDL_PAD_EIM_DA8__EIM_AD08		0xb0b1
+			MX6QDL_PAD_EIM_DA7__EIM_AD07		0xb0b1
+			MX6QDL_PAD_EIM_DA6__EIM_AD06		0xb0b1
+			MX6QDL_PAD_EIM_DA5__EIM_AD05		0xb0b1
+			MX6QDL_PAD_EIM_DA4__EIM_AD04		0xb0b1
+			MX6QDL_PAD_EIM_DA3__EIM_AD03		0xb0b1
+			MX6QDL_PAD_EIM_DA2__EIM_AD02		0xb0b1
+			MX6QDL_PAD_EIM_DA1__EIM_AD01		0xb0b1
+			MX6QDL_PAD_EIM_DA0__EIM_AD00		0xb0b1
+		>;
+	};
+
+	pinctrl_weim_rdnwr: weimrdnwr {
+		fsl,pins = <
+			MX6QDL_PAD_SD2_CLK__GPIO1_IO10		0x0040
+			MX6QDL_PAD_RGMII_TD3__GPIO6_IO23	0x130b0
+		>;
+	};
+
+	pinctrl_weim_npwe: weimnpwe {
+		fsl,pins = <
+			MX6QDL_PAD_SD2_DAT3__GPIO1_IO12		0x0040
+			MX6QDL_PAD_RGMII_TD2__GPIO6_IO22	0x130b0
+		>;
+	};
+
+	/* ADDRESS[16:18] [25] used as GPIO */
+	pinctrl_weim_gpio_1: weimgpio-1 {
+		fsl,pins = <
+			MX6QDL_PAD_KEY_ROW4__GPIO4_IO15		0x1b0b0
+			MX6QDL_PAD_KEY_ROW2__GPIO4_IO11		0x1b0b0
+			MX6QDL_PAD_KEY_COL2__GPIO4_IO10		0x1b0b0
+			MX6QDL_PAD_DISP0_DAT23__GPIO5_IO17	0x1b0b0
+			MX6QDL_PAD_DISP0_DAT22__GPIO5_IO16	0x1b0b0
+			MX6QDL_PAD_DISP0_DAT21__GPIO5_IO15	0x1b0b0
+			MX6QDL_PAD_DISP0_DAT20__GPIO5_IO14	0x1b0b0
+			MX6QDL_PAD_DISP0_DAT19__GPIO5_IO13	0x1b0b0
+			MX6QDL_PAD_DISP0_DAT18__GPIO5_IO12	0x1b0b0
+			MX6QDL_PAD_NANDF_D1__GPIO2_IO01		0x1b0b0
+		>;
+	};
+
+	/* ADDRESS[19:24] used as GPIO */
+	pinctrl_weim_gpio_2: weimgpio-2 {
+		fsl,pins = <
+			MX6QDL_PAD_KEY_ROW2__GPIO4_IO11		0x1b0b0
+			MX6QDL_PAD_KEY_COL2__GPIO4_IO10		0x1b0b0
+			MX6QDL_PAD_DISP0_DAT23__GPIO5_IO17	0x1b0b0
+			MX6QDL_PAD_DISP0_DAT22__GPIO5_IO16	0x1b0b0
+			MX6QDL_PAD_DISP0_DAT21__GPIO5_IO15	0x1b0b0
+			MX6QDL_PAD_DISP0_DAT20__GPIO5_IO14	0x1b0b0
+			MX6QDL_PAD_DISP0_DAT19__GPIO5_IO13	0x1b0b0
+			MX6QDL_PAD_DISP0_DAT18__GPIO5_IO12	0x1b0b0
+			MX6QDL_PAD_NANDF_D1__GPIO2_IO01		0x1b0b0
+		>;
+	};
+
+	/* DATA[16:31] used as GPIO */
+	pinctrl_weim_gpio_3: weimgpio-3 {
+		fsl,pins = <
+			MX6QDL_PAD_EIM_LBA__GPIO2_IO27		0x1b0b0
+			MX6QDL_PAD_EIM_BCLK__GPIO6_IO31		0x1b0b0
+			MX6QDL_PAD_NANDF_CS3__GPIO6_IO16	0x1b0b0
+			MX6QDL_PAD_NANDF_CS1__GPIO6_IO14	0x1b0b0
+			MX6QDL_PAD_NANDF_RB0__GPIO6_IO10	0x1b0b0
+			MX6QDL_PAD_NANDF_ALE__GPIO6_IO08	0x1b0b0
+			MX6QDL_PAD_NANDF_WP_B__GPIO6_IO09	0x1b0b0
+			MX6QDL_PAD_NANDF_CS0__GPIO6_IO11	0x1b0b0
+			MX6QDL_PAD_NANDF_CLE__GPIO6_IO07	0x1b0b0
+			MX6QDL_PAD_GPIO_19__GPIO4_IO05		0x1b0b0
+			MX6QDL_PAD_CSI0_MCLK__GPIO5_IO19	0x1b0b0
+			MX6QDL_PAD_CSI0_PIXCLK__GPIO5_IO18	0x1b0b0
+			MX6QDL_PAD_GPIO_4__GPIO1_IO04		0x1b0b0
+			MX6QDL_PAD_GPIO_5__GPIO1_IO05		0x1b0b0
+			MX6QDL_PAD_GPIO_2__GPIO1_IO02		0x1b0b0
+		>;
+	};
+
+	/* DQM[0:3] used as GPIO */
+	pinctrl_weim_gpio_4: weimgpio-4 {
+		fsl,pins = <
+			MX6QDL_PAD_EIM_EB0__GPIO2_IO28		0x1b0b0
+			MX6QDL_PAD_EIM_EB1__GPIO2_IO29		0x1b0b0
+			MX6QDL_PAD_SD2_DAT2__GPIO1_IO13		0x1b0b0
+			MX6QDL_PAD_NANDF_D0__GPIO2_IO00		0x1b0b0
+		>;
+	};
+
+	/* RDY used as GPIO */
+	pinctrl_weim_gpio_5: weimgpio-5 {
+		fsl,pins = <
+			MX6QDL_PAD_EIM_WAIT__GPIO5_IO00		0x1b0b0
+		>;
+	};
+
+	/* ADDRESS[16] DATA[30] used as GPIO */
+	pinctrl_weim_gpio_6: weimgpio-6 {
+		fsl,pins = <
+			MX6QDL_PAD_KEY_ROW4__GPIO4_IO15		0x1b0b0
+			MX6QDL_PAD_KEY_COL4__GPIO4_IO14		0x1b0b0
+		>;
+	};
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
