Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26CFFE9729
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 08:28:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MJAXH/s0n3xisF52psFZ5KLJM2Ik+SFSjqW+PBcuj+8=; b=HduXxhkeQiPXhrsDd/ai2SIh3+
	tUWc56ieqGuTOKIqtyIYgZjVoUxbk7UpHYyhlxy7DgYz9pfJlK7qZc+UPqTxkhcnpPm3qekMuUejE
	UgvijHnoF3if6SHn2d4FYipJkBekS7gWHayQas9yryvy0FjLSYOA+cdcWBto7LO1NcJ904lG7vYpa
	niy0Dld8ZZWKjAlMZjDWAThzRih9BGfQmwNwgbD6bWakgnv+FqJ1vNlEZd827rMzp0HdeKZXlhRj2
	JejTnlmgby/ePJK8lR/Fz+VmIyy4hkbqMnJK3lv25qSjkFkVMapSrEyLOnj2aE+U3P80m0Nx8wvND
	DyYtHNUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPiP9-0006P1-9j; Wed, 30 Oct 2019 07:28:31 +0000
Received: from lucky1.263xmail.com ([211.157.147.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPiP0-0006OL-2V; Wed, 30 Oct 2019 07:28:23 +0000
Received: from localhost (unknown [192.168.167.235])
 by lucky1.263xmail.com (Postfix) with ESMTP id 869CC750B2;
 Wed, 30 Oct 2019 15:28:17 +0800 (CST)
X-MAIL-GRAY: 1
X-MAIL-DELIVERY: 0
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P14182T139723234375424S1572420492941644_; 
 Wed, 30 Oct 2019 15:28:17 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <b22cd80876f92dc77e333184964d3eaa>
X-RL-SENDER: andy.yan@rock-chips.com
X-SENDER: yxj@rock-chips.com
X-LOGIN-NAME: andy.yan@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Andy Yan <andy.yan@rock-chips.com>
To: heiko@sntech.de,
	robh+dt@kernel.org
Subject: [PATCH 2/2] arm64: dts: rockchip: Add devicetree for board
 roc-rk3308-cc
Date: Wed, 30 Oct 2019 15:28:11 +0800
Message-Id: <20191030072811.29882-1-andy.yan@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191030072648.29738-1-andy.yan@rock-chips.com>
References: <20191030072648.29738-1-andy.yan@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_002822_461420_3DD0B22D 
X-CRM114-Status: GOOD (  14.64  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.130 listed in list.dnswl.org]
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
 Andy Yan <andy.yan@rock-chips.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ROC-RK3308-CC is a rk3308 based board designed by Firelfy,
with eMMC and 256MB DDR3 and RTL8188 Wifi on board.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../arm64/boot/dts/rockchip/rk3308-roc-cc.dts | 191 ++++++++++++++++++
 2 files changed, 192 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index a959434ad46e..cf69b0f33ecb 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
 dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-evb.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-roc-cc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-rock64.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-roc-cc.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
new file mode 100644
index 000000000000..4f01d2f4da83
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
@@ -0,0 +1,191 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd
+ */
+
+/dts-v1/;
+#include "rk3308.dtsi"
+
+/ {
+	model = "Firefly ROC-RK3308-CC board";
+	compatible = "firefly,roc-rk3308-cc", "rockchip,rk3308";
+	chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+
+	ir_rx {
+		compatible = "gpio-ir-receiver";
+		gpios = <&gpio0 RK_PC0 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&ir_recv_pin>;
+	};
+
+	ir_tx {
+		compatible = "pwm-ir-tx";
+		pwms = <&pwm5 0 25000 0>;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		power {
+			label = "firefly:red:power";
+			linux,default-trigger = "ir-power-click";
+			default-state = "on";
+			gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
+		};
+
+		user {
+			label = "firefly:blue:user";
+			linux,default-trigger = "ir-user-click";
+			default-state = "off";
+			gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_HIGH>;
+		};
+	};
+
+	typec_vcc5v: typec-vcc5v {
+		compatible = "regulator-fixed";
+		regulator-name = "typec_vcc5v";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+
+	vcc5v0_sys: vcc5v0-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_sys";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&typec_vcc5v>;
+	};
+
+	vdd_core: vdd-core {
+		compatible = "pwm-regulator";
+		pwms = <&pwm0 0 5000 1>;
+		regulator-name = "vdd_core";
+		regulator-min-microvolt = <827000>;
+		regulator-max-microvolt = <1340000>;
+		regulator-init-microvolt = <1015000>;
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
+	vcc_io: vcc-io {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_io";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vcc_sdmmc: vcc-sdmmc {
+		compatible = "regulator-gpio";
+		regulator-name = "vcc_sdmmc";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <3300000>;
+		gpios = <&gpio0 RK_PA7 GPIO_ACTIVE_HIGH>;
+		states = <1800000 0x0
+			  3300000 0x1>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vcc_sd: vcc-sd {
+		compatible = "regulator-fixed";
+		gpio = <&gpio4 RK_PD6 GPIO_ACTIVE_LOW>;
+		regulator-name = "vcc_sd";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+		regulator-boot-on;
+		vim-supply = <&vcc_io>;
+	};
+
+};
+
+&cpu0 {
+	cpu-supply = <&vdd_core>;
+};
+
+&emmc {
+	bus-width = <8>;
+	cap-mmc-highspeed;
+	mmc-hs200-1_8v;
+	supports-emmc;
+	disable-wp;
+	non-removable;
+	num-slots = <1>;
+	status = "okay";
+};
+
+&i2c1 {
+	clock-frequency = <400000>;
+	status = "okay";
+
+	rtc: rtc@51 {
+		compatible = "nxp,pcf8563";
+		reg = <0x51>;
+		#clock-cells = <0>;
+	};
+};
+
+&pwm5 {
+	status = "okay";
+	pinctrl-names = "active";
+	pinctrl-0 = <&pwm5_pin_pull_down>;
+};
+
+&pinctrl {
+	pinctrl-names = "default";
+	pinctrl-0 = <&rtc_32k>;
+
+	ir-receiver {
+		ir_recv_pin: ir-recv-pin  {
+			rockchip,pins = <0 RK_PC0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	buttons {
+		pwr_key: pwr-key {
+			rockchip,pins = <0 RK_PA6 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+};
+
+&pwm0 {
+	status = "okay";
+	pinctrl-0 = <&pwm0_pin_pull_down>;
+};
+
+&sdmmc {
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	supports-sd;
+	card-detect-delay = <300>;
+	sd-uhs-sdr25;
+	sd-uhs-sdr50;
+	sd-uhs-sdr104;
+	vmmc-supply = <&vcc_sd>;
+	vqmmc-supply = <&vcc_sdmmc>;
+	status = "okay";
+};
+
+&uart2 {
+	status = "okay";
+};
-- 
2.17.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
