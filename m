Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95CC11B47FC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 17:01:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OMUWU2zpyBuiL0lpsF4wI//1FGJsKnYkEX/jRnnLYbs=; b=U5AmekTw1gy/VN
	QBLhOkN2WRZX+bfoyMEzAHSpKR+o9Vg7qESZ3fUHV9l3wMP6L+xbruZ41oDVTCSDZ4xLzTmzZsdDH
	DHe3Q6wOeAvINrVWbF3qPaYiilPvhcekIy5m6L93wMz9pT3xwHSh7vRtHqQ3U1uckQjYtdX1pJqGD
	dDvoQg+DMnWJ/H4FjBudVu9zzKF1RZHQyL2iBQcXenDWiKat9gN4I066IpUwZfxKBlXb7Y2UFEzgt
	gX6WOsZ9om6CphdVa6HPZxrjxb9hBfpTF7hC8sc6QYaws1Pn81KTXWx4K/nXLtqaRzD6jcOjIFVlR
	BPKkSawv6nPeyg0hSa9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRGs6-0002v2-Di; Wed, 22 Apr 2020 15:01:06 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRGrs-0002rG-TZ
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 15:00:58 +0000
Received: by mail-wr1-x444.google.com with SMTP id i10so2767762wrv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 08:00:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KngDdoFZoZUrkq0v7j6q68yRbieqVr/2n3d5+TIv6qk=;
 b=bl02h+kdni7FzVKJ+/Kthv0mhLmNr0vZKiP0BAXHHNanjwtxKTvawL+7QcqvkAqnDA
 1xRXJSabYo598y3k1EHcyRuL6WPwOhRQvh6+1vD2ic9Bh/1/FL5/Ix/P/nZzxPq8vyXY
 7znbayIhUfBx+WkFhQxHsLGW8bLlDsPp9K8jYNR0Enzmpw91GywNduLWV87Gas+8lf0p
 6W1RGqGOeoTfDM2pLVmveE6EqsNuQeaXSziY+AegCL39SoU+jToXjOlFlvCjtBS8TDHc
 MfDJ0yeecgBNJ/eG2YY7Uw8evADo7QSCOaFzeOi3m1GC16+oBRAq5djmPfmtZX6rmuX4
 OOlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KngDdoFZoZUrkq0v7j6q68yRbieqVr/2n3d5+TIv6qk=;
 b=RnmkXlB+2tI2EKHJk7BTLDkkF6/iruXmIs6SayQlaUQhSyssqskkJyH96sfT1toFQD
 xqREddHAwcRki+C1NyIc+q3qUbf77yxm14ISDxgpXuBrJ1lWoHgAwq06fCUNl1gdTwEo
 I8PcHzr5m8wsvjFsCzkiNMC5ZA196bVtwsTVmQAlWeFrhD7nSNE5lrxzNRi6wiMoSBGH
 qv8ASpHxMeQ40v4MjRabR3m5VZlr+uHCoyChp75BFMswYKOa6YScbk8Ct+LTiLjjMuDW
 +R26DzWM3/liH5QBrkKFpfOCHcq+++zhn8VX/H9m1HXoikVhs41oq9ZK6GQkxPBiD22T
 I+cw==
X-Gm-Message-State: AGi0PuZGw7K9JfHFBG6CDlGpy408tq/gRt2D1OO9NqgQPXi8fpm7Wqyt
 45CJWchttDvnxiJwXMWaXPE=
X-Google-Smtp-Source: APiQypK2ZpxxPFvd0fwWed6cS8JCACVRCwYukZKCdOyJq6s5M95RjEaFuuIK+hJrDJmd4RlDjO4Dmw==
X-Received: by 2002:adf:ea44:: with SMTP id j4mr32515512wrn.38.1587567646568; 
 Wed, 22 Apr 2020 08:00:46 -0700 (PDT)
Received: from krolik-desktop.lan ([185.188.71.122])
 by smtp.gmail.com with ESMTPSA id w10sm961006wrg.52.2020.04.22.08.00.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Apr 2020 08:00:45 -0700 (PDT)
From: Pawel Dembicki <paweldembicki@gmail.com>
To: 
Subject: [PATCH v3] ARM: dts: kirkwood: Add Check Point L-50 board
Date: Wed, 22 Apr 2020 17:00:06 +0200
Message-Id: <20200422150007.29119-1-paweldembicki@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_080053_611965_B3AD2B47 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [paweldembicki[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 devicetree@vger.kernel.org, Gregory Clement <gregory.clement@bootlin.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Pawel Dembicki <paweldembicki@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds dts for the Check Point L-50 from 600/1100 series
routers.

Specification:
-CPU: Marvell Kirkwood 88F6821 1200MHz
-RAM: 512MB
-Flash: NAND 512MB
-WiFi: mPCIe card based on Atheros AR9287 b/g/n
-WAN: 1 Gigabit Port (Marvell 88E1116R PHY)
-LAN: 9 Gigabit Ports (2x Marvell 88E6171(5+4))
-USB: 2x USB2.0
-Express card slot
-SD card slot
-Serial console: RJ-45 115200 8n1
-Unsupported DSL

Reviewed-by: Andrew Lunn <andrew@lunn.ch>
Signed-off-by: Pawel Dembicki <paweldembicki@gmail.com>
---
Changes in v3:
- fix typo and code style issues pointed by OpenWrt guys
Changes in v2:
- none

 arch/arm/boot/dts/Makefile          |   1 +
 arch/arm/boot/dts/kirkwood-l-50.dts | 438 ++++++++++++++++++++++++++++
 2 files changed, 439 insertions(+)
 create mode 100644 arch/arm/boot/dts/kirkwood-l-50.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index e8dd99201397..eba030b3ba69 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -279,6 +279,7 @@ dtb-$(CONFIG_MACH_KIRKWOOD) += \
 	kirkwood-iomega_ix2_200.dtb \
 	kirkwood-is2.dtb \
 	kirkwood-km_kirkwood.dtb \
+	kirkwood-l-50.dtb \
 	kirkwood-laplug.dtb \
 	kirkwood-linkstation-lsqvl.dtb \
 	kirkwood-linkstation-lsvl.dtb \
diff --git a/arch/arm/boot/dts/kirkwood-l-50.dts b/arch/arm/boot/dts/kirkwood-l-50.dts
new file mode 100644
index 000000000000..0d81c43a6a73
--- /dev/null
+++ b/arch/arm/boot/dts/kirkwood-l-50.dts
@@ -0,0 +1,438 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Check Point L-50 Board Description
+ * Copyright 2020 Pawel Dembicki <paweldembicki@gmail.com>
+ */
+
+/dts-v1/;
+
+#include "kirkwood.dtsi"
+#include "kirkwood-6281.dtsi"
+
+/ {
+	model = "Check Point L-50";
+	compatible = "checkpoint,l-50", "marvell,kirkwood-88f6281", "marvell,kirkwood";
+
+	memory {
+		device_type = "memory";
+		reg = <0x00000000 0x20000000>;
+	};
+
+	chosen {
+		bootargs = "console=ttyS0,115200n8";
+		stdout-path = &uart0;
+	};
+
+	ocp@f1000000 {
+		pinctrl: pin-controller@10000 {
+			pinctrl-0 = <&pmx_led38 &pmx_sysrst &pmx_button29>;
+			pinctrl-names = "default";
+
+			pmx_sysrst: pmx-sysrst {
+				marvell,pins = "mpp6";
+				marvell,function = "sysrst";
+			};
+
+			pmx_button29: pmx_button29 {
+				marvell,pins = "mpp29";
+				marvell,function = "gpio";
+			};
+
+			pmx_led38: pmx_led38 {
+				marvell,pins = "mpp38";
+				marvell,function = "gpio";
+			};
+
+			pmx_sdio_cd: pmx-sdio-cd {
+				marvell,pins = "mpp46";
+				marvell,function = "gpio";
+			};
+		};
+
+		serial@12000 {
+			status = "okay";
+		};
+
+		mvsdio@90000 {
+			status = "okay";
+			cd-gpios = <&gpio1 14 9>;
+		};
+
+		i2c@11000 {
+			status = "okay";
+			clock-frequency = <400000>;
+
+			gpio2: gpio-expander@20{
+				#gpio-cells = <2>;
+				#interrupt-cells = <2>;
+				compatible = "semtech,sx1505q";
+				reg = <0x20>;
+
+				gpio-controller;
+			};
+
+			/* Three GPIOs from 0x21 exp. are undescribed in dts:
+			 * 1: DSL module reset (active low)
+			 * 5: mPCIE reset (active low)
+			 * 6: Express card reset (active low)
+			 */
+			gpio3: gpio-expander@21{
+				#gpio-cells = <2>;
+				#interrupt-cells = <2>;
+				compatible = "semtech,sx1505q";
+				reg = <0x21>;
+
+				gpio-controller;
+			};
+
+			rtc@30 {
+				compatible = "s35390a";
+				reg = <0x30>;
+			};
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		status_green {
+			label = "l-50:green:status";
+			gpios = <&gpio1 6 GPIO_ACTIVE_LOW>;
+		};
+
+		status_red {
+			label = "l-50:red:status";
+			gpios = <&gpio3 2 GPIO_ACTIVE_LOW>;
+		};
+
+		wifi {
+			label = "l-50:green:wifi";
+			gpios = <&gpio2 7 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy0tpt";
+		};
+
+		internet_green {
+			label = "l-50:green:internet";
+			gpios = <&gpio2 3 GPIO_ACTIVE_LOW>;
+		};
+
+		internet_red {
+			label = "l-50:red:internet";
+			gpios = <&gpio2 1 GPIO_ACTIVE_LOW>;
+		};
+
+		usb1_green {
+			label = "l-50:green:usb1";
+			gpios = <&gpio2 0 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "usbport";
+			trigger-sources = <&hub_port3>;
+		};
+
+		usb1_red {
+			label = "l-50:red:usb1";
+			gpios = <&gpio2 4 GPIO_ACTIVE_LOW>;
+		};
+
+		usb2_green {
+			label = "l-50:green:usb2";
+			gpios = <&gpio2 2 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "usbport";
+			trigger-sources = <&hub_port1>;
+		};
+
+		usb2_red {
+			label = "l-50:red:usb2";
+			gpios = <&gpio2 5 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	usb2_pwr {
+		compatible = "regulator-fixed";
+		regulator-name = "usb2_pwr";
+
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio3 3 GPIO_ACTIVE_LOW>;
+		regulator-always-on;
+	};
+
+	usb1_pwr {
+		compatible = "regulator-fixed";
+		regulator-name = "usb1_pwr";
+
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio3 4 GPIO_ACTIVE_LOW>;
+		regulator-always-on;
+	};
+
+	mpcie_pwr {
+		compatible = "regulator-fixed";
+		regulator-name = "mpcie_pwr";
+
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio3 5 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		regulator-always-on;
+	};
+
+	express_card_pwr {
+		compatible = "regulator-fixed";
+		regulator-name = "express_card_pwr";
+
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio3 7 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		regulator-always-on;
+	};
+
+	keys {
+		compatible = "gpio-keys";
+
+		factory_defaults {
+			label = "factory_defaults";
+			gpios = <&gpio0 29 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_RESTART>;
+		};
+	};
+};
+
+&mdio {
+	status = "okay";
+
+	ethphy8: ethernet-phy@8 {
+		reg = <0x08>;
+	};
+
+	switch0: switch@10 {
+		compatible = "marvell,mv88e6085";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		reg = <0x10>;
+		dsa,member = <0 0>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				label = "lan5";
+			};
+
+			port@1 {
+			       reg = <1>;
+			       label = "lan1";
+			};
+
+			port@2 {
+			       reg = <2>;
+			       label = "lan6";
+			};
+
+			port@3 {
+			       reg = <3>;
+			       label = "lan2";
+			};
+
+			port@4 {
+				reg = <4>;
+				label = "lan7";
+			};
+
+			switch0port5: port@5 {
+				reg = <5>;
+				phy-mode = "rgmii-txid";
+				link = <&switch1port5>;
+				fixed-link {
+					speed = <1000>;
+					full-duplex;
+				};
+			};
+
+			port@6 {
+				reg = <6>;
+				label = "cpu";
+				phy-mode = "rgmii-id";
+				ethernet = <&eth1port>;
+				fixed-link {
+					speed = <1000>;
+					full-duplex;
+				};
+			};
+		};
+	};
+
+	switch@11 {
+		compatible = "marvell,mv88e6085";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		reg = <0x11>;
+		dsa,member = <0 1>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				label = "lan3";
+			};
+
+			port@1 {
+			       reg = <1>;
+			       label = "lan8";
+			};
+
+			port@2 {
+			       reg = <2>;
+			       label = "lan4";
+			};
+
+			port@3 {
+			       reg = <3>;
+			       label = "dmz";
+			};
+
+			switch1port5: port@5 {
+				reg = <5>;
+				phy-mode = "rgmii-txid";
+				link = <&switch0port5>;
+				fixed-link {
+					speed = <1000>;
+					full-duplex;
+				};
+			};
+
+			port@6 {
+				reg = <6>;
+				label = "dsl";
+				fixed-link {
+					speed = <100>;
+					full-duplex;
+				};
+			};
+		};
+	};
+};
+
+&eth0 {
+	status = "okay";
+	ethernet0-port@0 {
+		phy-handle = <&ethphy8>;
+	};
+};
+
+&eth1 {
+	status = "okay";
+	ethernet1-port@0 {
+		speed = <1000>;
+		duplex = <1>;
+	};
+};
+
+&nand {
+	status = "okay";
+	pinctrl-0 = <&pmx_nand>;
+	pinctrl-names = "default";
+
+	partition@0 {
+		label = "u-boot";
+		reg = <0x00000000 0x000c0000>;
+	};
+
+	partition@a0000 {
+		label = "bootldr-env";
+		reg = <0x000c0000 0x00040000>;
+	};
+
+	partition@100000 {
+		label = "kernel-1";
+		reg = <0x00100000 0x00800000>;
+	};
+
+	partition@900000 {
+		label = "rootfs-1";
+		reg = <0x00900000 0x07100000>;
+	};
+
+	partition@7a00000 {
+		label = "kernel-2";
+		reg = <0x07a00000 0x00800000>;
+	};
+
+	partition@8200000 {
+		label = "rootfs-2";
+		reg = <0x08200000 0x07100000>;
+	};
+
+	partition@f300000 {
+		label = "default_sw";
+		reg = <0x0f300000 0x07900000>;
+	};
+
+	partition@16c00000 {
+		label = "logs";
+		reg = <0x16c00000 0x01800000>;
+	};
+
+	partition@18400000 {
+		label = "preset_cfg";
+		reg = <0x18400000 0x00100000>;
+	};
+
+	partition@18500000 {
+		label = "adsl";
+		reg = <0x18500000 0x00100000>;
+	};
+
+	partition@18600000 {
+		label = "storage";
+		reg = <0x18600000 0x07a00000>;
+	};
+};
+
+&rtc {
+	status = "disabled";
+};
+
+&pciec {
+	status = "okay";
+};
+
+&pcie0 {
+	status = "okay";
+};
+
+&sata_phy0 {
+	status = "disabled";
+};
+
+&sata_phy1 {
+	status = "disabled";
+};
+
+&usb0 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	port@1 {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		reg = <1>;
+		#trigger-source-cells = <0>;
+
+		hub_port1: port@1 {
+			reg = <1>;
+			#trigger-source-cells = <0>;
+		};
+
+		hub_port3: port@3 {
+			reg = <3>;
+			#trigger-source-cells = <0>;
+		};
+	};
+};
--
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
