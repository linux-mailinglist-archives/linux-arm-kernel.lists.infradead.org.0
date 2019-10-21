Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E19CDE6EC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 10:47:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=V9jfRhUvmMoVKCuwpylfT8xS1Yc0SIzxsUK/8XR8knA=; b=jX1+K+a6fIE/cozJ/BPegJu1Jq
	lCupGHNeGDitGUFH989jgrit+A2aKhBN96U3xE9i3r5/EmQSWbHED7Gg6Fp1vnTQYa8Jj1FhUzqz9
	ZLkVMddV+DV2AGMI5kkJYo2ctLbyAgT9NQW5L4P7MCXqH5CKB0ylSGGt+nLkvwMgblXAHZlH/Jjn/
	dNV3z2J6dQcIN4cmsdPxP+NKiu/nzSzDJa1otI7PNIlaer8UHjrS0yEFFE0Vnavmj08f7EC/vVr5a
	Hd9erXfCjNpcrqkpQV2oiRGzJ5d9N/IcVfjL6ukD2aLWj0l9gbOUYKPuF8/PSB5jT3I8+cLyWR5s8
	h+NKyptQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMTLW-00052t-5Q; Mon, 21 Oct 2019 08:47:22 +0000
Received: from lucky1.263xmail.com ([211.157.147.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMTLI-0004zC-O4; Mon, 21 Oct 2019 08:47:10 +0000
Received: from localhost (unknown [192.168.167.69])
 by lucky1.263xmail.com (Postfix) with ESMTP id CF07F47337;
 Mon, 21 Oct 2019 16:47:03 +0800 (CST)
X-MAIL-GRAY: 1
X-MAIL-DELIVERY: 0
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P14875T140480094390016S1571647617925688_; 
 Mon, 21 Oct 2019 16:47:03 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <4558717a49218c1b7cd23fd613e95674>
X-RL-SENDER: andy.yan@rock-chips.com
X-SENDER: yxj@rock-chips.com
X-LOGIN-NAME: andy.yan@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Andy Yan <andy.yan@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v2 4/4] arm64: dts: rockchip: Add basic dts for RK3308 EVB
Date: Mon, 21 Oct 2019 16:46:57 +0800
Message-Id: <20191021084657.28629-1-andy.yan@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191021084437.28279-1-andy.yan@rock-chips.com>
References: <20191021084437.28279-1-andy.yan@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_014709_109056_9360DB99 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.134 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
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
Cc: devicetree@vger.kernel.org, kever.yang@rock-chips.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, Andy Yan <andy.yan@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This board use uart4 as debug port and arm core voltage
is modulated by pwm, logic voltage is fixed to 1.05V.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

---

Changes in v2:
- Split binding to a separate patch
- Power tree update.

 arch/arm64/boot/dts/rockchip/Makefile       |   1 +
 arch/arm64/boot/dts/rockchip/rk3308-evb.dts | 230 ++++++++++++++++++++
 2 files changed, 231 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3308-evb.dts

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
index 000000000000..124a24086684
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3308-evb.dts
@@ -0,0 +1,230 @@
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
+	vcc12v_dcin: vcc12v-dcin {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc12v_dcin";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+	};
+
+	vcc5v0_sys: vcc5v0-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc12v_dcin>;
+	};
+
+	vdd_core: vdd-core {
+		compatible = "pwm-regulator";
+		pwms = <&pwm0 0 5000 1>;
+		regulator-name = "vdd_core";
+		regulator-min-microvolt = <827000>;
+		regulator-max-microvolt = <1340000>;
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-settling-time-up-us = <250>;
+		pwm-supply = <&vcc5v0_sys>;
+	};
+
+	vdd_log: vdd-log {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_log";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1050000>;
+		regulator-max-microvolt = <1050000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vdd_1v0: vdd-1v0 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_1v0";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1000000>;
+		regulator-max-microvolt = <1000000>;
+		vin-supply = <&vcc5v0_sys>;
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
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vcc_io: vcc-io {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_io";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vccio_flash: vccio-flash {
+		compatible = "regulator-fixed";
+		regulator-name = "vccio_flash";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc_io>;
+	};
+
+	vcc5v0_host: vcc5v0-host {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio0 RK_PC5 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&usb_drv>;
+		regulator-name = "vbus_host";
+		vin-supply = <&vcc5v0_sys>;
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
+	pinctrl-0 = <&pwm0_pin_pull_down>;
+};
+
+&uart4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart4_xfer>;
+	status = "okay";
+};
-- 
2.17.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
