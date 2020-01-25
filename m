Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49E5C1493D0
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Jan 2020 07:33:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=X7DKBUFBCQrIw+Gryoa9u97C/ioYIqt2w5GBCvKeXLw=; b=Ub8
	laeVZKlu9+xoaxQgvfvHbSaQ0aM4ig+pN/DZQYZNVmpEL0V38yjtkl6+JSYzIHgKhj/YZpnb4DyA+
	0xA3aKnk5ah5yRDxP5zJeKS3TZiW1BtaScTWMT0M+pEqdrGDFX4LGPLzk4w4kklh4s5N6Y63G6vSd
	fDJSgJLo8ryFZLiOYDCkAzofNSQIHWhmksH4gys3FcHRWcD8W1nO+Xa96EXiISf1kMRjYF0807elQ
	JG2cbmzfxn0j7x7e+cI8IlLdnZXteyk23U0pG+DceWvj6MD/fj1KwSVU4hLUeEkR1lblPdgQTlHVQ
	b+ptuX/ZDpvpd0RvUbB6YpQHMWrOwEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivF0Q-00025y-PZ; Sat, 25 Jan 2020 06:33:18 +0000
Received: from se14p.web-hosting.com ([198.54.122.234])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivF0I-00024u-6a; Sat, 25 Jan 2020 06:33:11 +0000
Received: from [68.65.123.203] (helo=server153.web-hosting.com)
 by se17.registrar-servers.com with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.89)
 (envelope-from <akash@openedev.com>)
 id 1ivEzl-0002fO-Rb; Fri, 24 Jan 2020 22:32:44 -0800
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=openedev.com; s=default; h=Message-Id:Date:Subject:Cc:To:From:Sender:
 Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=m4hBRJBudPwtQLlnBygb8RVdvUlz4RPRNfVCNmtfYd4=; b=ctuaV3w02Xq4PoCNkPCBKoS4j1
 z//N2cdpXE4FkdVWa2l3qX7W6zBaY+BTcyx/8aim6fkDKxevLLAJux6fhgP/vPC65W6fyGwiopBiW
 2J1pL7a3q500Mjfjl4Pos9TaayeX/vkAbvMK3PDLNJ0IA9LTN3RmoezmK18Qno+HL7IRLq84A3jPV
 huOK9o7iR7E9KvvLs+KyL1K0vC33JgDej81NfX//MwMLSqxu7joBuDPP3/gxxey4ET3sKmCFOg5B3
 PQnBUFz67Y06epenVqDByRSCv+ZEv+OxBJpgyG57cK0HshsU+eRTACrLk5URi7bvLe1jrA5mGW+mR
 GRSNwCrg==;
Received: from [49.34.138.62] (port=65409 helo=localhost.localdomain)
 by server153.web-hosting.com with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92)
 (envelope-from <akash@openedev.com>)
 id 1ivEzZ-004KMf-V7; Sat, 25 Jan 2020 01:32:31 -0500
From: Akash Gajjar <akash@openedev.com>
To: heiko@sntech.de
Subject: [PATCH v4, 1/1] arm64: dts: rockchip: add ROCK Pi S DTS support
Date: Sat, 25 Jan 2020 12:01:37 +0530
Message-Id: <20200125063153.2720-1-akash@openedev.com>
X-Mailer: git-send-email 2.17.1
X-OutGoing-Spam-Status: No, score=-1.0
X-Originating-IP: 68.65.123.203
X-SpamExperts-Domain: nctest.net
X-SpamExperts-Username: whmcalls3
Authentication-Results: registrar-servers.com;
 auth=pass (login) smtp.auth=whmcalls3@nctest.net
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: SB/global_tokens (0.00409050692743)
X-Recommended-Action: accept
X-Filter-ID: Mvzo4OR0dZXEDF/gcnlw0Xm17NJf4el5vffImWwWrhCpSDasLI4SayDByyq9LIhVDlgtRFUXgNe3
 a4VMNOuZ5UTNWdUk1Ol2OGx3IfrIJKyP9eGNFz9TW9u+Jt8z2T3Kk502M/hntTzIKfCMISdhHXTA
 YTyyIfs1cqM+JexaJLwYntLwFjolRFhTnXQDnB9P2e84PReenR5LSk2iUS2Af05Pal5SZwZh8dy2
 Fa67Fl7bdZVg9MoVnWkhh7x5GhAtvZMFNIrsBo87qoekWDmifvbo1kNlYqN2Rj/jh6wm0YZsEcCM
 hpyBTkc2yhZwdRqEoCpXJ+fGOXaf1EgvvNPQNFeG1e27znq/zv/qT1TMY4NHgJLnj4yO7CUdY/OY
 QWnOHi99IlxUBoERUAlde7T+U2J9eSCMVXGZRGpeLp72w0/y09cSL1VZJ4bHahdXEdOcc2TOSpUT
 lETA2aytW7ra7vKVA7mIGsZlMEF/Pg+v5AilyvkjfhKhSidnC7TLLxIdUQdGcfPa1KIRNbeT/8Om
 pfAZVmNGcSPD3M+lyjwl4kQx8L7GcfNO+2MU0i0gmK7/dtEhAIYHVAve+BKg1LkmYuzQu5IqYl3M
 6BKhcK235Vc7rv7aKj5DYUbSmSSgSjclf0cVcrGOWHuvhhsNFanSQ+63p/UbUTcmIpuXtxg/Cxnj
 eaJlYqF+f72yMYpeaHRjHaaU/Zb275qB1xqcfpxQM849v/hrZgw0ZLsdyYluYwnqwZhlBd69LUuC
 Rjuj01ahn2j5rvwBfHO/A3gJAtu7+p24hHVW30KlfrukWWY5xp6S6ixVCDO7It1ypfoKLhxO/yDK
 26vn+1f1kX7xFU9zM4ZiDLwGogcz5DSykj3X97/paVgFKeINzqmqJKFRvnnmrnvbNEWoRdJeag1E
 r6ciRYD3i/VukMj/m4iHhKYI1f8Q5fYVr/Ag5ClRhMdQa6ET4+aa15tuqQ6vbcfJrTeTSH3xwY0q
 DxVyNsZgEbEiE5bF3DGHurIGuSBA0T1nwsF8nZLILCsz2DepyRB1XVgPjGc4Gnh6M0h6ngeXQqtu
 uMNvUeASWefCYj15CRjPEXcLXmYZ7QuzboH6vXAU2AfAk+WBOXp8nHKe0R+FkIqN7hk8XRZ7y0V9
 LwJw+bHlLNuSebyeL08lw6WZA1eMEgiKKX4FUPoX44fsQJRcOKHVJETY5Qx4fJOk03R5fJtf/Dv/
 nAF2abv3vepm/d65eBLtwdcZomg0ssk6HgAaUC7FzBWBRXt6PAIqP7f9HOwt+FMBVwhpeRL/HuZv
 YRD8meNj8HXbH6vVlIhnlN+CNmT+pd/OWSHX4gx+Mzs/IxXappU/zqYU5fabM9bgZfvvipjZ2YVx
 Ym4933anC94Go1obr/inIhk7E1vjQQUhKCp+C53f/Vqvb19/SESwMEgkB8IyQ6oCNa/tx3V7RfeP
 /tx1mR4ICSYFI4wZVe8IbEbJd6j5fsFP4FRSqu0XAX0og6JHjeuO5TcDeKjrEmYPn2IVWRuaFRHM
 xUTkWeQsC8S+q8drVt3Hdf7nc+WHAXrMN8WuBd40eTXlWiUAYdLmsJdAoPJ3Dyu2cA5H0KYT2gJt
 x41kJiJKavwFnKMS0HzUhchBkx97yOUHqDB2iM4g4c97t1yFNdbYQ0jN+7xFLkQkCnDo
X-Report-Abuse-To: spam@se16.registrar-servers.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_223310_244736_82486ADB 
X-CRM114-Status: GOOD (  15.58  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Alexis Ballier <aballier@gentoo.org>,
 linux-arm-kernel@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>,
 Douglas Anderson <dianders@chromium.org>,
 Kever Yang <kever.yang@rock-chips.com>, Markus Reichl <m.reichl@fivetechno.de>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Akash Gajjar <akash@openedev.com>, Nick Xie <nick@khadas.com>,
 Andy Yan <andy.yan@rock-chips.com>, jagan@openedev.com,
 Matthias Kaehlcke <mka@chromium.org>, Vivek Unune <npcomplete13@gmail.com>,
 Jagan Teki <jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ROCK Pi S is RK3308 based SBC from radxa.com. ROCK Pi S has a,
- 256MB/512MB DDR3 RAM
- SD, NAND flash (optional on board 1/2/4/8Gb)
- 100MB ethernet, PoE (optional)
- Onboard 802.11 b/g/n wifi + Bluetooth 4.0 Module
- USB2.0 Type-A HOST x1
- USB3.0 Type-C OTG x1
- 26-pin expansion header
- USB Type-C DC 5V Power Supply

This patch enables
- Console
- NAND Flash
- SD Card

Signed-off-by: Akash Gajjar <akash@openedev.com>
---
Changes in v4
- remove supports-sd/sdio, nums-slots property
- use vmmc-supply for emmc node

Changes in v3
- Use small S on dts file name
- Add missing semicolon
- Remove USB2.0 node support

Changes in v2
- Use pwm-supply for vdd_core node instead of vi-supply
- Add USB2.0 node support
 
 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3308-rock-pi-s.dts    | 216 ++++++++++++++++++
 3 files changed, 222 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index d9847b306b83..48d40c928d45 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -422,6 +422,11 @@ properties:
           - const: radxa,rockpi4
           - const: rockchip,rk3399
 
+      - description: Radxa ROCK Pi S
+        items:
+          - const: radxa,rockpis
+          - const: rockchip,rk3308
+
       - description: Radxa Rock2 Square
         items:
           - const: radxa,rock2-square
diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 48fb631d5451..e56a5527bab4 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -2,6 +2,7 @@
 dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-roc-cc.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-rock-pi-s.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-a1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-rock64.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
new file mode 100644
index 000000000000..7c7b9a2d3701
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
@@ -0,0 +1,216 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 Akash Gajjar <akash@openedev.com>
+ * Copyright (c) 2019 Jagan Teki <jagan@openedev.com>
+ */
+
+/dts-v1/;
+#include "rk3308.dtsi"
+
+/ {
+	model = "Radxa ROCK Pi S";
+	compatible = "radxa,rockpis", "rockchip,rk3308";
+
+	chosen {
+		stdout-path = "serial0:1500000n8";
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&green_led_gio>, <&heartbeat_led_gpio>;
+
+		green-led {
+			label = "rockpis:green:power";
+			gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "default-on";
+			default-state = "on";
+		};
+
+		blue-led {
+			label = "rockpis:blue:user";
+			gpios = <&gpio0 RK_PA5 GPIO_ACTIVE_HIGH>;
+			default-state = "on";
+			linux,default-trigger = "heartbeat";
+		};
+	};
+
+	sdio_pwrseq: sdio-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_enable_h>;
+		reset-gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_LOW>;
+	};
+
+	vcc5v0_sys: vcc5v0-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+
+	vdd_core: vdd-core {
+		compatible = "pwm-regulator";
+		pwms = <&pwm0 0 5000 1>;
+		regulator-name = "vdd_core";
+		regulator-min-microvolt = <827000>;
+		regulator-max-microvolt = <1340000>;
+		regulator-init-microvolt = <1015000>;
+		regulator-settling-time-up-us = <250>;
+		regulator-always-on;
+		regulator-boot-on;
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
+	vcc_1v8: vcc-1v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_1v8";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&vcc_io>;
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
+	vcc5v0_otg: vcc5v0-otg {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_otg";
+		regulator-always-on;
+		gpio = <&gpio0 RK_PC5 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		pinctrl-names = "default";
+		pinctrl-0 = <&otg_vbus_drv>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+};
+
+&cpu0 {
+	cpu-supply = <&vdd_core>;
+};
+
+&emmc {
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	mmc-hs200-1_8v;
+	disable-wp;
+	non-removable;
+	vmmc-supply = <&vcc_io>;
+	status = "okay";
+};
+
+&i2c1 {
+	status = "okay";
+};
+
+&sdmmc {
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	max-frequeency = <150000000>;
+	disable-wp;
+	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_det &sdmmc_bus4>;
+	card-detect-delay = <800>;
+	status = "okay";
+};
+
+&spi2 {
+	status = "okay";
+	max-freq = <10000000>;
+};
+
+&pinctrl {
+	pinctrl-names = "default";
+	pinctrl-0 = <&rtc_32k>;
+
+	leds {
+		green_led_gio: green-led-gpio {
+			rockchip,pins = <0 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		heartbeat_led_gpio: heartbeat-led-gpio {
+			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	usb {
+		otg_vbus_drv: otg-vbus-drv {
+			rockchip,pins = <0 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	sdio-pwrseq {
+		wifi_enable_h: wifi-enable-h {
+			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		wifi_host_wake: wifi-host-wake {
+			rockchip,pins = <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+	};
+};
+
+&pwm0 {
+	status = "okay";
+	pinctrl-0 = <&pwm0_pin_pull_down>;
+};
+
+&saradc {
+	vref-supply = <&vcc_1v8>;
+	status = "okay";
+};
+
+&sdio {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	bus-width = <4>;
+	max-frequency = <1000000>;
+	cap-sd-highspeed;
+	cap-sdio-irq;
+	keep-power-in-suspend;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	non-removable;
+	sd-uhs-sdr104;
+	status = "okay";
+};
+
+&uart0 {
+	status = "okay";
+};
+
+&uart4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart4_xfer &uart4_rts &uart4_cts>;
+	status = "okay";
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
