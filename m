Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB7BCDA41A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 05:05:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9Rt+y1zQBggxTtxkGM0T3cYXt2Qgx60YttAifBcHyag=; b=Eh5mBTpDiBZMx4Q9leq0Wu58L5
	kkCdmM6LbXM87uuKKXyAOoTLXUOSkU8a/LrCIYzdIaUnzSY44mc65aGw5DX9Cp8OCP+ssou2uWm4F
	A1xEq1HV/YL0keYz6opfUAyoJlQhl0FuVSLSpvID+In8l1cI56K4FJnzpmzaWYucN+zCe94K8NBFk
	jgvkKzEicaWM5lHncE1f6IIIXXIlYnGl0K6BMitkAbQB6KV97bzDKqleqMyIJ/LW4IsKrdPrfPc3w
	jlDa+Z7s+0kuHFNPJRKKHS//YwWYohzpg+RdNhWEOpUiOCvn7KKWYK6ogw1LWaOQQrZgpkIygo3Bh
	VjGCvUhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKw6n-0005Pz-Jx; Thu, 17 Oct 2019 03:05:49 +0000
Received: from lucky1.263xmail.com ([211.157.147.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKw6U-0005O0-2s; Thu, 17 Oct 2019 03:05:31 +0000
Received: from localhost (unknown [192.168.167.183])
 by lucky1.263xmail.com (Postfix) with ESMTP id A4E666A0A8;
 Thu, 17 Oct 2019 11:05:28 +0800 (CST)
X-MAIL-GRAY: 1
X-MAIL-DELIVERY: 0
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P23000T139726864500480S1571281522323724_; 
 Thu, 17 Oct 2019 11:05:28 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <4f69502dd6d8ffa6e1d6a20ac9fbb4ec>
X-RL-SENDER: andy.yan@rock-chips.com
X-SENDER: yxj@rock-chips.com
X-LOGIN-NAME: andy.yan@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Andy Yan <andy.yan@rock-chips.com>
To: heiko@sntech.de, kever.yang@rock-chips.com,
 linux-rockchip@lists.infradead.org
Subject: [PATCH 2/2] arm64: dts: rockchip: Add basic dts for RK3308 EVB
Date: Thu, 17 Oct 2019 11:05:20 +0800
Message-Id: <20191017030520.32420-1-andy.yan@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191017030242.32219-1-andy.yan@rock-chips.com>
References: <20191017030242.32219-1-andy.yan@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_200530_466749_6979A62D 
X-CRM114-Status: GOOD (  13.10  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: devicetree@vger.kernel.org, obh+dt@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This board use uart4 as debug port and arm core voltage
is modulated by pwm.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 arch/arm64/boot/dts/rockchip/rk3308-evb.dts   | 206 ++++++++++++++++++
 3 files changed, 212 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3308-evb.dts

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index c82c5e57d44c..b680c4b8b2c9 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -447,6 +447,11 @@ properties:
           - const: rockchip,r88
           - const: rockchip,rk3368
 
+      - description: Rockchip RK3308 Evaluation board
+        items:
+          - const: rockchip,rk3308-evb
+          - const: rockchip,rk3308
+
       - description: Rockchip RK3228 Evaluation board
         items:
           - const: rockchip,rk3228-evb
diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 1f18a9392d15..a959434ad46e 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-evb.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-rock64.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-roc-cc.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3308-evb.dts b/arch/arm64/boot/dts/rockchip/rk3308-evb.dts
new file mode 100644
index 000000000000..16be04f38b30
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3308-evb.dts
@@ -0,0 +1,206 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd
+ *
+ */
+
+/dts-v1/;
+#include <dt-bindings/input/input.h>
+#include "rk3308.dtsi"
+
+/ {
+	model = "Rockchip RK3308 EVB";
+	compatible = "rockchip,rk3308-evb", "rockchip,rk3308";
+
+	chosen {
+		stdout-path = "serial4:1500000n8";
+	};
+
+	adc-keys0 {
+		compatible = "adc-keys";
+		io-channels = <&saradc 0>;
+		io-channel-names = "buttons";
+		poll-interval = <100>;
+		keyup-threshold-microvolt = <1800000>;
+
+		func-key {
+			linux,code = <KEY_FN>;
+			label = "function";
+			press-threshold-microvolt = <18000>;
+		};
+	};
+
+	adc-keys1 {
+		compatible = "adc-keys";
+		io-channels = <&saradc 1>;
+		io-channel-names = "buttons";
+		poll-interval = <100>;
+		keyup-threshold-microvolt = <1800000>;
+
+		esc-key {
+			linux,code = <KEY_MICMUTE>;
+			label = "micmute";
+			press-threshold-microvolt = <1130000>;
+		};
+
+		home-key {
+			linux,code = <KEY_MODE>;
+			label = "mode";
+			press-threshold-microvolt = <901000>;
+		};
+
+		menu-key {
+			linux,code = <KEY_PLAY>;
+			label = "play";
+			press-threshold-microvolt = <624000>;
+		};
+
+		vol-down-key {
+			linux,code = <KEY_VOLUMEDOWN>;
+			label = "volume down";
+			press-threshold-microvolt = <300000>;
+		};
+
+		vol-up-key {
+			linux,code = <KEY_VOLUMEUP>;
+			label = "volume up";
+			press-threshold-microvolt = <18000>;
+		};
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+		autorepeat;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&pwr_key>;
+
+		power {
+			gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_POWER>;
+			label = "GPIO Key Power";
+			wakeup-source;
+			debounce-interval = <100>;
+		};
+	};
+
+	vdd_log: vdd_core: vdd-core {
+		compatible = "pwm-regulator";
+		pwms = <&pwm0 0 5000 1>;
+		regulator-name = "vdd_core";
+		regulator-min-microvolt = <827000>;
+		regulator-max-microvolt = <1340000>;
+		regulator-init-microvolt = <1015000>;
+		regulator-early-min-microvolt = <1015000>;
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-settling-time-up-us = <250>;
+		status = "okay";
+	};
+
+	vdd_1v0: vdd-1v0 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_1v0";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1000000>;
+		regulator-max-microvolt = <1000000>;
+	};
+
+	vccio_sdio: vcc_1v8: vcc-1v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_1v8";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&vcc_io>;
+	};
+
+	vcc_ddr: vcc-ddr {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_ddr";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1500000>;
+		regulator-max-microvolt = <1500000>;
+	};
+
+	vcc_io: vcc-io {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_io";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
+
+	vccio_flash: vccio-flash {
+		compatible = "regulator-fixed";
+		regulator-name = "vccio_flash";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+	};
+
+	vcc_phy: vcc-phy-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_phy";
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	vbus_host: vbus-host-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio0 RK_PC5 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&usb_drv>;
+		regulator-name = "vbus_host";
+	};
+};
+
+&cpu0 {
+	cpu-supply = <&vdd_core>;
+};
+
+&saradc {
+	status = "okay";
+	vref-supply = <&vcc_1v8>;
+};
+
+&pinctrl {
+	pinctrl-names = "default";
+	pinctrl-0 = <&rtc_32k>;
+
+	buttons {
+		pwr_key: pwr-key {
+			rockchip,pins = <0 RK_PA6 0 &pcfg_pull_up>;
+		};
+	};
+
+	usb {
+		usb_drv: usb-drv {
+			rockchip,pins = <0 RK_PC5 0 &pcfg_pull_none>;
+		};
+	};
+
+	sdio-pwrseq {
+		wifi_enable_h: wifi-enable-h {
+			rockchip,pins = <0 RK_PA2 0 &pcfg_pull_none>;
+		};
+	};
+};
+
+&pwm0 {
+	status = "okay";
+
+	pinctrl-0 = <&pwm0_pin_pull_down>;
+};
+
+&uart4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart4_xfer &uart4_cts>;
+	status = "okay";
+};
-- 
2.17.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
