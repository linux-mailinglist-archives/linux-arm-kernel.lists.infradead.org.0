Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F4AF4F031
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 22:53:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6bNdFY3qhXgxb7Kcyh5okLr+ufmApGgbxEMHtHrL35E=; b=exFe8xDqmlA3zYAeQZNvXISK46
	E+1aq9CqeTjaBbxwxuFpFZGAb9YqpBbfTnpS6q/tD4OxC1tpHDJunP8sQlhYGWMHvq5FrqYiN5N/S
	yj8jdU2Y6CvA6cYwkDOgTs1kEBSWndT8grYTVtbXHA8/mh/ipFOecGpnTrHtA3L49z855DPKHczE3
	RkiiAappdkWxJg0BJ6GpnedWlTUvR5LA9EKDwUEouKfUM6Ta7yxAaAawen7v/dfoIf8VQK93AVl8f
	mBWPBhS5ZyySVlca6dPkWKvFDM9tdaEPqLkxPGX0eGOakjS9EPR8zgtZqUqNAxt+k8u0k2geah0h0
	cYn1fGSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heQXR-0008GQ-DQ; Fri, 21 Jun 2019 20:53:37 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heQXD-0008FA-3A; Fri, 21 Jun 2019 20:53:25 +0000
Received: by mail-qk1-x744.google.com with SMTP id s22so5432561qkj.12;
 Fri, 21 Jun 2019 13:53:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=6tOG0srvkKjPRhlAX4wES/Vi66vTJYm+VB0S3iMPdWo=;
 b=ZKluk4tvRMfwFEPPfpwwv9WWMPJdkeMX/tXPgP4caq9rWISC07DUBNdBmfK+oEYrzr
 rsgqGxAQ06WosxyofTty0E/UmV37x4CX93I+mpH/WReuXE7nDxquaB1pOIPci5zoDQko
 BTxOcD2MK+KEsKL5iEXBhNLHqJZxMNfMqNp22qqcTra62rhTWwP3yy89xL9H0uL5pDDD
 OwXv2edQlyoMlpO9L58q0Br84Ucc0AmyVS/7Qzrxcj+hWSDO54lFp0KDb4LckZs0xqIM
 oTn4K4MYv3XFCaAA6UmoCeAsGFW0a15hAdtPU9r0GsAJ2Y0rdRU1/1huQwCqPj7ViFC0
 wKRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=6tOG0srvkKjPRhlAX4wES/Vi66vTJYm+VB0S3iMPdWo=;
 b=JnnM54sIR66XqWGe4XT0MQTBVu/sX0gTN/7KgiosscMnPqirtrJJSxJ93jSuPjz5DY
 mNZt4v8tMYUEumlU2Luz00aqgWFrQzq6XxLD0ZGVvLl3YyLbJWSWxHL2M84xTSOR66vF
 pJT94N8IEWYsHsN4aH1c2Y50l/aziyEI430WBxGeYaoWWNhOwgyhRL3F6RRYzilLcV4/
 cEXsa6KncVA3xD/V5EBDS/d5WkucS3J67E00s7oo4a4T61KQmqi8wXBYIzZyWAko6bSZ
 a6cDjE/EB3JdA7ZWSF6l6cRlnCoNlSIavQxcFd1MRwqUtlrgsa7lfnHIAm0lLTaTxX7W
 oQ1g==
X-Gm-Message-State: APjAAAVHQtsWjKHYahD725bWnQZ7gnMvGP4UZNRjwg5fqXVa1f03fmvd
 RnKdlb1BOlu4sPgS+1fCgmg=
X-Google-Smtp-Source: APXvYqx6nAWBqS1JcCBWsy6zOBa5bsQyw2unEGCxLKDQ4n1QCBMGtxdmZf/YQ3cIywJgCVCo/JxmEw==
X-Received: by 2002:a05:620a:15d7:: with SMTP id
 o23mr14060840qkm.125.1561150401769; 
 Fri, 21 Jun 2019 13:53:21 -0700 (PDT)
Received: from localhost.localdomain (ool-18b82048.dyn.optonline.net.
 [24.184.32.72])
 by smtp.googlemail.com with ESMTPSA id r39sm2880925qtc.87.2019.06.21.13.53.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 21 Jun 2019 13:53:21 -0700 (PDT)
From: Vivek Unune <npcomplete13@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v2] arm64: dts: rockchip: Add support for Hugsun X99 TV Box
Date: Fri, 21 Jun 2019 16:53:08 -0400
Message-Id: <20190621205308.5177-1-npcomplete13@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <2273961.GTPgWWlV5T@phil>
References: <2273961.GTPgWWlV5T@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_135323_170039_70424723 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (npcomplete13[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (npcomplete13[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-rockchip@lists.infradead.org, Vivek Unune <npcomplete13@gmail.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add devicetree support for Hugsun X99 TV Box based on RK3399 SoC

Tested with LibreElec running kernel v5.1.2.
Following peripherals tested and work:

Peripheral works:
- UART2 debug
- eMMC
- USB 3.0 port
- USB 2.0 port
- sdio, sd-card
- HDMI
- Ethernet
- WiFi/BT

Not tested:
- Type-C port
- OPTICAL
- IR

Signed-off-by: Vivek Unune <npcomplete13@gmail.com>
---

Changes in v2:
	- Correct manufacturer is Shenzhen Hugsun Technology Co. Ltd.
	- Added vendor prefixes
	- Removed vendor specific devicee tree bindings
	- Removed comments
---
 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3399-hugsun-x99.dts   | 736 ++++++++++++++++++
 4 files changed, 744 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 5c6bbf10abc9..7e065f3cdd50 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -316,6 +316,11 @@ properties:
           - const: haoyu,marsboard-rk3066
           - const: rockchip,rk3066a
 
+      - description: Hugsun X99 TV Box
+        items:
+          - const: hugsun,x99
+          - const: rockchip,rk3399
+
       - description: mqmaker MiQi
         items:
           - const: mqmaker,miqi
diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 33a65a45e319..af9c1fe9b82c 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -373,6 +373,8 @@ patternProperties:
     description: Honeywell
   "^hp,.*":
     description: Hewlett Packard
+  "^hugsun,.*":
+    description: Shenzhen Hugsun Technology Co. Ltd.
   "^holtek,.*":
     description: Holtek Semiconductor, Inc.
   "^hwacom,.*":
diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 5f2687acbf94..ad9319e269bf 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -16,6 +16,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-gru-bob.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-gru-kevin.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-gru-scarlet-inx.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-gru-scarlet-kd.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-hugsun-x99.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopc-t4.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopi-m4.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopi-neo4.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
new file mode 100644
index 000000000000..3a0bc8176a0b
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
@@ -0,0 +1,736 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/dts-v1/;
+#include <dt-bindings/pwm/pwm.h>
+#include <dt-bindings/input/input.h>
+#include "rk3399.dtsi"
+#include "rk3399-opp.dtsi"
+
+/ {
+	model = "Hugsun X99 TV BOX";
+	compatible = "hugsun,x99", "rockchip,rk3399";
+
+	chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+
+	clkin_gmac: external-gmac-clock {
+		compatible = "fixed-clock";
+		clock-frequency = <125000000>;
+		clock-output-names = "clkin_gmac";
+		#clock-cells = <0>;
+	};
+
+	dc_5v: dc-5v {
+		compatible = "regulator-fixed";
+		regulator-name = "dc_5v";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+
+	vcc1v8_s0: vcc1v8-s0 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc1v8_s0";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-always-on;
+	};
+
+	vcc_sys: vcc-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_sys";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+		vin-supply = <&dc_5v>;
+	};
+
+	vcc_phy: vcc-phy-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_phy";
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	vcc3v3_sys: vcc3v3-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_sys";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+		vin-supply = <&vcc_sys>;
+	};
+
+	vcc5v0_host: vcc5v0-host-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio4 RK_PD2 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&host_vbus_drv>;
+		regulator-name = "vcc5v0_host";
+		regulator-always-on;
+	};
+
+	vcc5v0_typec: vcc5v0-typec-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio1 RK_PA3 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc5v0_typec_en>;
+		regulator-name = "vcc5v0_typec";
+		regulator-always-on;
+		vin-supply = <&vcc5v0_usb>;
+	};
+
+	vcc5v0_usb: vcc5v0-usb {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_usb";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&dc_5v>;
+	};
+
+	vdd_log: vdd-log {
+		compatible = "pwm-regulator";
+		pwms = <&pwm2 0 25000 1>;
+		pwm-supply = <&vcc_sys>;
+		regulator-name = "vdd_log";
+		regulator-min-microvolt = <800000>;
+		regulator-max-microvolt = <1400000>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	sdio_pwrseq: sdio-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		clocks = <&rk808 1>;
+		clock-names = "ext_clock";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_reg_on_h>;
+		reset-gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
+	};
+
+};
+
+&cpu_l0 {
+	cpu-supply = <&vdd_cpu_l>;
+};
+
+&cpu_l1 {
+	cpu-supply = <&vdd_cpu_l>;
+};
+
+&cpu_l2 {
+	cpu-supply = <&vdd_cpu_l>;
+};
+
+&cpu_l3 {
+	cpu-supply = <&vdd_cpu_l>;
+};
+
+&cpu_b0 {
+	cpu-supply = <&vdd_cpu_b>;
+};
+
+&cpu_b1 {
+	cpu-supply = <&vdd_cpu_b>;
+};
+
+&emmc_phy {
+	status = "okay";
+};
+
+&i2c0 {
+	status = "okay";
+	i2c-scl-rising-time-ns = <180>;
+	i2c-scl-falling-time-ns = <30>;
+	clock-frequency = <400000>;
+
+	vdd_cpu_b: syr827@40 {
+		compatible = "silergy,syr827";
+		reg = <0x40>;
+		regulator-compatible = "fan53555-reg";
+		pinctrl-0 = <&vsel1_gpio>;
+		regulator-name = "vdd_cpu_b";
+		regulator-min-microvolt = <712500>;
+		regulator-max-microvolt = <1500000>;
+		regulator-ramp-delay = <1000>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vcc_sys>;
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+
+	vdd_gpu: syr828@41 {
+		compatible = "silergy,syr828";
+		reg = <0x41>;
+		regulator-compatible = "fan53555-reg";
+		pinctrl-0 = <&vsel2_gpio>;
+		regulator-name = "vdd_gpu";
+		regulator-min-microvolt = <712500>;
+		regulator-max-microvolt = <1500000>;
+		regulator-ramp-delay = <1000>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vcc_sys>;
+		regulator-initial-mode = <1>;
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+
+	rk808: pmic@1b {
+		compatible = "rockchip,rk808";
+		reg = <0x1b>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <21 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_int_l>;
+		rockchip,system-power-controller;
+		wakeup-source;
+		#clock-cells = <1>;
+		clock-output-names = "xin32k", "rtc_clko_wifi";
+
+		vcc1-supply = <&vcc_sys>;
+		vcc2-supply = <&vcc_sys>;
+		vcc3-supply = <&vcc_sys>;
+		vcc4-supply = <&vcc_sys>;
+		vcc6-supply = <&vcc_sys>;
+		vcc7-supply = <&vcc_sys>;
+		vcc8-supply = <&vcc3v3_sys>;
+		vcc9-supply = <&vcc_sys>;
+		vcc10-supply = <&vcc_sys>;
+		vcc11-supply = <&vcc_sys>;
+		vcc12-supply = <&vcc3v3_sys>;
+		vddio-supply = <&vcc_1v8>;
+
+		regulators {
+			vdd_center: DCDC_REG1 {
+				regulator-name = "vdd_center";
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
+				regulator-ramp-delay = <6001>;
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_cpu_l: DCDC_REG2 {
+				regulator-name = "vdd_cpu_l";
+				regulator-min-microvolt = <750000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_ddr: DCDC_REG3 {
+				regulator-name = "vcc_ddr";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			vcc_1v8: DCDC_REG4 {
+				regulator-name = "vcc_1v8";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vcc1v8_dvp: LDO_REG1 {
+				regulator-name = "vcc1v8_dvp";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vcca1v8_hdmi: LDO_REG2 {
+				regulator-name = "vcca1v8_hdmi";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vcca_1v8: LDO_REG3 {
+				regulator-name = "vcca_1v8";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vcc_sd: LDO_REG4 {
+				regulator-name = "vcc_sd";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcc3v0_sd: LDO_REG5 {
+				regulator-name = "vcc3v0_sd";
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3000000>;
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3000000>;
+				};
+			};
+
+			vcc_1v5: LDO_REG6 {
+				regulator-name = "vcc_1v5";
+				regulator-min-microvolt = <1500000>;
+				regulator-max-microvolt = <1500000>;
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1500000>;
+				};
+			};
+
+			vcca0v9_hdmi: LDO_REG7 {
+				regulator-name = "vcca0v9_hdmi";
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <900000>;
+				};
+			};
+
+			vcc_3v0: LDO_REG8 {
+				regulator-name = "vcc_3v0";
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3000000>;
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3000000>;
+				};
+			};
+
+			vcc3v3_s3: SWITCH_REG1 {
+				regulator-name = "vcc3v3_s3";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			vcc3v3_s0: SWITCH_REG2 {
+				regulator-name = "vcc3v3_s0";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+		};
+	};
+};
+
+&i2c1 {
+	i2c-scl-rising-time-ns = <300>;
+	i2c-scl-falling-time-ns = <15>;
+	status = "okay";
+};
+
+&i2c3 {
+	i2c-scl-rising-time-ns = <450>;
+	i2c-scl-falling-time-ns = <15>;
+	status = "okay";
+};
+
+&i2c4 {
+	i2c-scl-rising-time-ns = <600>;
+	i2c-scl-falling-time-ns = <40>;
+	status = "okay";
+
+	fusb0: typec-portc@22 {
+		compatible = "fcs,fusb302";
+		reg = <0x22>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <RK_PA2 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&fusb0_int>;
+		vbus-supply = <&vcc5v0_typec>;
+		status = "okay";
+	};
+};
+
+&i2c7 {
+	status = "okay";
+};
+
+&i2s0 {
+	rockchip,playback-channels = <8>;
+	rockchip,capture-channels = <8>;
+	status = "okay";
+};
+
+&i2s1 {
+	rockchip,playback-channels = <2>;
+	rockchip,capture-channels = <2>;
+	status = "okay";
+};
+
+&i2s2 {
+	status = "okay";
+};
+
+&gmac {
+	assigned-clocks = <&cru SCLK_RMII_SRC>;
+	assigned-clock-parents = <&clkin_gmac>;
+	clock_in_out = "input";
+	phy-supply = <&vcc_phy>;
+	phy-mode = "rgmii";
+	pinctrl-names = "default";
+	pinctrl-0 = <&rgmii_pins>;
+	snps,reset-gpio = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
+	snps,reset-active-low;
+	snps,reset-delays-us = <0 10000 50000>;
+	tx_delay = <0x28>;
+	rx_delay = <0x11>;
+	status = "okay";
+};
+
+&gpu {
+	status = "okay";
+	mali-supply = <&vdd_gpu>;
+};
+
+&hdmi {
+	ddc-i2c-bus = <&i2c3>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&hdmi_cec>;
+	status = "okay";
+};
+
+&hdmi_sound {
+	status = "okay";
+};
+
+&io_domains {
+	status = "okay";
+
+	bt656-supply = <&vcc1v8_s0>;
+	audio-supply = <&vcc1v8_s0>;
+	sdmmc-supply = <&vcc_sd>;
+	gpio1830-supply = <&vcc_3v0>;
+};
+
+&pmu_io_domains {
+	status = "okay";
+	pmu1830-supply = <&vcc_1v8>;
+};
+
+&pinctrl {
+	fusb30x {
+		fusb0_int: fusb0-int {
+			rockchip,pins =
+				<1 RK_PA2 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	gmac {
+		rgmii_sleep_pins: rgmii-sleep-pins {
+			rockchip,pins =
+				<3 RK_PB7 RK_FUNC_GPIO &pcfg_output_low>;
+		};
+	};
+
+
+	pmic {
+		pmic_int_l: pmic-int-l {
+			rockchip,pins =
+				<1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
+		vsel1_gpio: vsel1-gpio {
+			rockchip,pins =
+				<1 RK_PC1 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+
+		vsel2_gpio: vsel2-gpio {
+			rockchip,pins =
+				<1 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+	};
+
+	usb-typec {
+		vcc5v0_typec_en: vcc5v0_typec_en {
+			rockchip,pins = <1 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	sdio {
+		bt_host_wake_l: bt-host-wake-l {
+			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		bt_reg_on_h: bt-reg-on-h {
+			/* external pullup to VCC1V8_PMUPLL */
+			rockchip,pins = <0 RK_PB1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		bt_wake_l: bt-wake-l {
+			rockchip,pins = <2 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		wifi_reg_on_h: wifi-reg_on-h {
+			rockchip,pins = <0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	wifi {
+		wifi_host_wake_l: wifi-host-wake-l {
+			rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	usb2 {
+		host_vbus_drv: host-vbus-drv {
+			rockchip,pins =
+				<4 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+};
+
+&pwm0 {
+	status = "okay";
+};
+
+&pwm2 {
+	status = "okay";
+	pinctrl-0 = <&pwm2_pin_pull_down>;
+};
+
+&saradc {
+	vref-supply = <&vcc1v8_s0>;
+	status = "okay";
+};
+
+&sdmmc {
+	clock-frequency = <150000000>;
+	clock-freq-min-max = <200000 150000000>;
+	supports-sd;
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	disable-wp;
+	vqmmc-supply = <&vcc_sd>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_cd &sdmmc_bus4>;
+	card-detect-delay = <800>;
+	status = "okay";
+};
+
+&sdhci {
+	bus-width = <8>;
+	mmc-hs400-1_8v;
+	mmc-hs400-enhanced-strobe;
+	supports-emmc;
+	non-removable;
+	keep-power-in-suspend;
+	status = "okay";
+};
+
+&sdio0 {
+	bus-width = <4>;
+	clock-frequency = <50000000>;
+	cap-sdio-irq;
+	cap-sd-highspeed;
+	keep-power-in-suspend;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
+	sd-uhs-sdr104;
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	brcmf: wifi@1 {
+		compatible = "brcm,bcm4329-fmac";
+		reg = <1>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PA3 GPIO_ACTIVE_HIGH>;
+		interrupt-names = "host-wake";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_host_wake_l>;
+	};
+};
+
+&spdif {
+	status = "okay";
+	pinctrl-0 = <&spdif_bus_1>;
+	#sound-dai-cells = <0>;
+};
+
+&spi1 {
+	status = "okay";
+	max-freq = <10000000>;
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		reg = <0>;
+		spi-max-frequency = <10000000>;
+	};
+};
+
+&tcphy0 {
+	status = "okay";
+};
+
+&tcphy1 {
+	status = "okay";
+};
+
+&tsadc {
+	/* tshut mode 0:CRU 1:GPIO */
+	rockchip,hw-tshut-mode = <1>;
+	/* tshut polarity 0:LOW 1:HIGH */
+	rockchip,hw-tshut-polarity = <1>;
+	rockchip,hw-tshut-temp = <110000>;
+	status = "okay";
+};
+
+&u2phy0 {
+	status = "okay";
+
+	u2phy0_otg: otg-port {
+		status = "okay";
+	};
+
+	u2phy0_host: host-port {
+		phy-supply = <&vcc5v0_host>;
+		status = "okay";
+	};
+};
+
+&u2phy1 {
+	status = "okay";
+
+	u2phy1_otg: otg-port {
+		status = "okay";
+	};
+
+	u2phy1_host: host-port {
+		phy-supply = <&vcc5v0_host>;
+		status = "okay";
+	};
+};
+
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_xfer &uart0_rts &uart0_cts>;
+	status = "okay";
+
+	bluetooth {
+		compatible = "brcm,bcm43438-bt";
+		clocks = <&rk808 1>;
+		clock-names = "ext_clock";
+		device-wakeup-gpios = <&gpio2 RK_PD2 GPIO_ACTIVE_HIGH>;
+		host-wakeup-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_HIGH>;
+		shutdown-gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
+		max-speed = <4000000>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_reg_on_h &bt_host_wake_l &bt_wake_l>;
+		vbat-supply = <&vcc3v3_sys>;
+		vddio-supply = <&vcc_1v8>;
+	};
+};
+
+&uart2 {
+	status = "okay";
+};
+
+&usb_host0_ehci {
+	status = "okay";
+};
+
+&usb_host0_ohci {
+	status = "okay";
+};
+
+&usb_host1_ehci {
+	status = "okay";
+};
+
+&usb_host1_ohci {
+	status = "okay";
+};
+
+&usbdrd3_0 {
+	status = "okay";
+};
+
+&usbdrd_dwc3_0 {
+	status = "okay";
+	dr_mode = "otg";
+};
+
+&usbdrd3_1 {
+	status = "okay";
+};
+
+&usbdrd_dwc3_1 {
+	status = "okay";
+	dr_mode = "host";
+};
+
+&vopb {
+	status = "okay";
+};
+
+&vopb_mmu {
+	status = "okay";
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
