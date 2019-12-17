Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A80912271B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 09:54:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=nz/KTjtpdzMZ4RrsluwK1EhN43SxhPUyuYREzrjnEJE=; b=erB
	QUKaeLm2dudPsNb5H90phLfZus/WcV4A8tiXkMW8rLdLq0Gaq4+y2KGyrMgY33nI/2lqlARoa/t45
	G7dRc/U8zofaiq5Ex0OJaQba8zmFRnfpHeDXUJt0cpRJsa/kqnH7XtvB5KtSKlzDaPVvyil7wZNBt
	f8HtJ9QEaZaK9O0hrWIjmDjiJkj2AwJjHYex+yLb/CUWpKvm+jbQKfSr9wEoaQyfKLQfv5TTwmjW0
	navpyXuYwJz5zMnAnEaIvXBswJ6UfZ/YVtletLS+XL2TD+o8vmOfvjDjzOlThQmkIrmsFjgAzP1gB
	U04s9CbVKt2EkJTVJTxQHOZzZ6oNfng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih8c9-00052F-7u; Tue, 17 Dec 2019 08:53:57 +0000
Received: from se15e.web-hosting.com ([198.54.122.209])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih8bv-00050L-Qx; Tue, 17 Dec 2019 08:53:45 +0000
Received: from [68.65.123.203] (helo=server153.web-hosting.com)
 by se15.registrar-servers.com with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.89)
 (envelope-from <akash@openedev.com>)
 id 1ih7mh-0005Al-SA; Tue, 17 Dec 2019 00:00:55 -0800
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=openedev.com; s=default; h=Message-Id:Date:Subject:Cc:To:From:Sender:
 Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WOid7yOYhAStMyzrZCpDkHHegb1R4RrVPY+V1fImCcI=; b=L1CT0zKoybft8bUx8N5fwwrYR+
 bPnnAo+Q8Ix7svNn1f28DRnQcIb+BFoEaZZ73+Qsq90cJPzqeSAYbw9MdMKOgOidlCIuvEIRgL7Ul
 YpJlYe25Q1yKniaT4ozvVCWpEJrlYs2GmY77FJanEEMfpx6TJKaX1Q6aFVgtzwbj02P8w4ApYENmx
 odPonaTmqffeRrb5UU65HUzQA4LJYj86A1/OP5iF/yTnoeulPCirvVWRr3xTDx9+AhtriXeSe3+95
 Sn0A88VVil6ZMj4ZgE54trevP8jEU4AUP34CC/IBKRXkmXImVdP3nSkTlZ0DUfT+70jCo3IdmPpQH
 Up9i5nJw==;
Received: from nat-inn.mentorg.com ([192.94.34.34]:31382
 helo=akash-vm.inn-wifi.mentorg.com)
 by server153.web-hosting.com with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92)
 (envelope-from <akash@openedev.com>)
 id 1ih7mb-003E6s-Kr; Tue, 17 Dec 2019 03:00:46 -0500
From: Akash Gajjar <akash@openedev.com>
To: heiko@sntech.de
Subject: [V2 1/1 PATCH] arm64: dts: rockchip: add ROCK Pi S DTS support
Date: Tue, 17 Dec 2019 13:30:02 +0530
Message-Id: <20191217080014.11756-1-akash@openedev.com>
X-Mailer: git-send-email 2.17.1
X-OutGoing-Spam-Status: No, score=-1.0
X-Originating-IP: 68.65.123.203
X-SpamExperts-Domain: nctest.net
X-SpamExperts-Username: whmcalls3
Authentication-Results: registrar-servers.com;
 auth=pass (login) smtp.auth=whmcalls3@nctest.net
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: SB/global_tokens (0.00498862226523)
X-Recommended-Action: accept
X-Filter-ID: Mvzo4OR0dZXEDF/gcnlw0c2Pj46HODYmpAMVAv0J1pOpSDasLI4SayDByyq9LIhVcOsCkbaPqqHd
 rQKl0ndNRETNWdUk1Ol2OGx3IfrIJKyP9eGNFz9TW9u+Jt8z2T3Kk502M/hntTzIKfCMISdhHQGg
 t7nAtP8WjkKKy9v/mXRkty7kshl0qfjNTiHz6D+lTs1OFZCJnqICuBP35KwNAqV1skaPpkRmI7Oy
 xmK4vHEEpuEZQtkapPDwKmQVhwwYLCrYOizJvpoze6cTUad230/3kECQPZPKWDOpUxCPzd5brlHW
 Xai14aDDSG6NxoO+kAqUrZRsi/CLoANte1i+ZgxRweM0HJUf31LvnjlI4h1yiQ0vVhO9IB8pOv2j
 9a/9yYOoB3Edt2PSJXWVDbWpnXV+HMjlK4mNe7AOtesc9x/qiGiNChwP2OJjdXJuRUzjfFZND2tA
 8JA0IWUZhgwtNisXK3nCt88eEtbjFEe4wotPve0USYLcdEyH7ZfqVbq/SSW8WTkFJKrk3QCrr40r
 15F3Rm8ytD0IqrihDfnyCUa3wL2Y4F0412ezGCyTUPan2AUIlBctiMvX5F8XBiwx5Rs40cmSL9tP
 fD9p0Q30Opo+bd5lBrozqCj+0HE/yRZixXNOUX3LUkv9SqakBdzhOOUvg5TIg80/EueZoip8aHbu
 4ONX+wVRdCv4IOs1C4geIT5LUm075ewdrul30woFSUGlz8CJSOMrvzx9TVg3RkXwFZn17vRHGlcT
 iMGaPpxhI3+BNO/vWxLUxUxbR529+jcSGt6GKtM6B+u5NgVXVJx8AoRwxB3UXPpqW9YYMmJAiIwb
 dFqdboRlBgJOYFBIvuemT8zhVocbayAhVgkqXg+DBuG4NXpcGX0BewE6kCMGUa3FdyXge5giNlzZ
 jmssnacbGwN9oPEGphWQkRzetKPpxOsB8gG0slV7ra6jI4BSTwrYfJFsGsxM5/ek60XeHiIhiBbv
 1wt8gji8ewfaR3A21jAytTM7ul2pus+MytmYMPHvc6+8qs7qroeV5HFWgQskaPHAtLJBxO9AXoKm
 PqZHBQQL7n9+OTZ37LZfI/sWwyJSOSGKlUBLYSbGwjymBMs+y2lddnrRl/tSPbCh7uprC4QcUKGu
 TX/23E8AyqKqJt2lL6TNy1dtcXTis6Dsj8hzB3NHYhYaYo0xHDICv1Yx6b3cWXoC6UmizshdZtj8
 cxw3qqhc+N6cuEg4XWh5Fn4+lLgwzoFrDlzunWdf0LZdg/BKPqUSdnYelyQNvR+dkJlReKZlZpWU
 gNiTvwv7ZcXIdc0MLkzSqE63qJ+zngn7m6CAstID+vrS5Thb0c/s7mun+E/RGrGHGDuwRkuP1qh7
 YyoiU7NMbzmxUlDjlFLe1QlsqnWpvw1TU8J/E3GJyRN+IxZ/hz0zmaxV1xPWjLie3fMgkIagEDDY
 4gfnEZ4doHEpKKo/b09r+um3pKaKeKIVtFIy9LlOZCNnSGcq99Dbe7/IbgyY4V1IcY73X0gZcGQT
 bPM5zqrjMI79CjbRoqLnS70LPBISpYNOps7qsSzkj4d0bp8lX/ci14DI8fLw5N/ojaomCoWWiTto
 l8oIToKHMVx7fTUwDt8WIXPmYakRLzBY3AuXWIccBDJTaBcDik4cfyhwRfSZqBUJ2eng
X-Report-Abuse-To: spam@se16.registrar-servers.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_005343_898421_7E5A7499 
X-CRM114-Status: GOOD (  15.68  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-kernel@vger.kernel.org, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 tom@radxa.com, Robin Murphy <robin.murphy@arm.com>, kever.yang@rock-chips.com,
 Douglas Anderson <dianders@chromium.org>,
 Markus Reichl <m.reichl@fivetechno.de>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Akash Gajjar <akash@openedev.com>,
 Nick Xie <nick@khadas.com>, Andy Yan <andy.yan@rock-chips.com>,
 jagan@openedev.com, Matthias Kaehlcke <mka@chromium.org>,
 Vivek Unune <npcomplete13@gmail.com>, linux-arm-kernel@lists.infradead.org
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
- USB2.0

Signed-off-by: Akash Gajjar <akash@openedev.com>
---
Changes for v2
- Use pwm-supply for vdd_core node instead of vi-supply
- Add USB2.0 node support

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3308-rock-pi-S.dts    | 237 ++++++++++++++++++
 3 files changed, 243 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3308-rock-pi-S.dts

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
index 48fb631d5451..cc9e8c824980 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -2,6 +2,7 @@
 dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-roc-cc.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-rock-pi-S.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-a1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-rock64.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-S.dts b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-S.dts
new file mode 100644
index 000000000000..0afb24ec1cdf
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-S.dts
@@ -0,0 +1,237 @@
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
+		pwm-supply = <&vcc5v0_sys>
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
+	supports-sd;
+	disable-wp;
+	non-removable;
+	num-slots = <1>;
+	vin-supply = <&vcc_io>;
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
+	supports-sd;
+	disable-wp;
+	num-slots = <1>;
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
+	supports-sdio;
+	keep-power-in-suspend;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	non-removable;
+	sd-uhs-sdr104;
+	status = "okay";
+};
+
+&u2phy {
+	status = "okay";
+
+	u2phy_host: host-port {
+		status = "okay";
+	};
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
+
+&usb_host_ehci {
+	status = "okay";
+};
+
+&usb_host_ohci {
+	status = "okay";
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
