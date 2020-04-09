Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A1BE1A2FBE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 09:05:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SDg+K8auEhxadl2A4LZRkOfxzlKNNlxznJBJBAUZQck=; b=Vbk52tvKYF5/3T
	eTAJV8TwmdMN7mIUFZH3KAe9tgJFJdc10SmDqSRGBOx1cp+mx8lEmBLaJKUV2qJcmPNxbLlXmFDFI
	APxlc6SHvG+FrkxEtZe2jZbnpaeLPdGY/IT3z4WIEX26pORQN8ofRi2mbkFTqg0bsBrpuknZ8OKY1
	HCnfGaDP9EcH908aeSrv+MHaYWOdDRrHNjU9rHQxI5WOi4sKL1qh/DbrPGcvoU9fPhWcQ94iazhEB
	UI5Jc6K4y7flOvKxURZB5DE0YsR2LxMnLW2PmHr5oXFVVhG9oFLjp5kS1/4yzEx6FdNFMkh1ibPxK
	R9to3MFFTTq6w0LrRLdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMRG4-0003O7-IP; Thu, 09 Apr 2020 07:05:52 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMRFs-0003KE-PA
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 07:05:43 +0000
Received: by mail-lj1-x244.google.com with SMTP id t17so10289755ljc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 00:05:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GURuMey+SHp3M8WEzXAd951gvUkKGd2bXmDr2YcAboI=;
 b=Fk416Alhqoly9o2NkHMgGpdvmfaExQsWWcbFosbcM372nEdIgVSxQ4LW1TH63Y4fc0
 WFpnXELwOqL8I0t8uhypP1s8wH74eYzE6OB6KSYC2XjkTEiC9/T5xKET9VoGWPIsbfUH
 XDpFJznyhgqj32eaHYgaMvuLydRlYNONbVG/zdj1zzmW8VOjeHJ0NhHMYkQ8VnR3pxZB
 0TtLkocD2VWFFaJA3i3S9ihfADhyNKW6VmJYnA1J7aSIyywLMMb7CAUoi7aXUDdtdtve
 nW7rme2Pt2nFeZ7suuMty607qXWk06J/uR8HXA3PX6kpxPDdNKgqtE9nelHct9uNURVS
 lIig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GURuMey+SHp3M8WEzXAd951gvUkKGd2bXmDr2YcAboI=;
 b=F5ixH/N9EGi8wWi/VC0A5MPK/cG9ZbYEPy4DLylE3ZnuHA/OSIjYUDWdhViTaV+k/z
 sFxOB8DBZuEFrZklkrUvOhrm5Lyk3Cj9ZvjyZaxInuYgClaejxD6F4d3sWEmqzjLwzxR
 dIffoR6qAuj2T6QpWa58Ej3hjVQDKOyazT0tMgY0WL5KA1u+Zw1U5puXqFvfJaUsPB3q
 CvuP2UYZ/prEdSnr7LKXRAwCo0ZgbFZM8p4o5twQKT6mZ+bLWuHR7fe+Ih/s9oWwqaK1
 4hOax89326of1GGePQHD6UKaWkLH+Mih9YF9af2b6JUh5KN0YA60APqtPC8V19Hiv3E/
 gqOQ==
X-Gm-Message-State: AGi0PuYB3bmwfdfPggM7yqS7zFB3blgZXJbeX2wD7jzBxbgCGcOxgF9a
 c86pWknPaFu/Vg/YzCE2LCI=
X-Google-Smtp-Source: APiQypIbDOliIEQzNhCI1Fv+5lKZO9PmHosNSs5uLLM2teDJKl2dJ/Rv81Bqqy5AH43mpS05nmCHag==
X-Received: by 2002:a2e:9819:: with SMTP id a25mr7673124ljj.288.1586415938861; 
 Thu, 09 Apr 2020 00:05:38 -0700 (PDT)
Received: from localhost.localdomain ([185.188.71.122])
 by smtp.gmail.com with ESMTPSA id c22sm16436955lfi.41.2020.04.09.00.05.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 00:05:38 -0700 (PDT)
From: Pawel Dembicki <paweldembicki@gmail.com>
To: 
Subject: [PATCH v2 2/2] ARM: dts: kirkwood: Add Check Point L-50 board
Date: Thu,  9 Apr 2020 09:04:44 +0200
Message-Id: <20200409070448.3209-2-paweldembicki@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200409070448.3209-1-paweldembicki@gmail.com>
References: <20200409070448.3209-1-paweldembicki@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_000540_965072_B7433905 
X-CRM114-Status: GOOD (  16.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [paweldembicki[at]gmail.com]
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 Stephan Gerhold <stephan@gerhold.net>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Gregory Clement <gregory.clement@bootlin.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Pawel Dembicki <paweldembicki@gmail.com>,
 Mark Brown <broonie@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Sam Ravnborg <sam@ravnborg.org>, Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org,
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
-LAN: 9 Gigabit Ports (2x Marvell 88E6171(5+3))
-USB: 2x USB2.0
-Express card slot
-SD card slot
-Serial console: RJ-45 115200 8n1
-Unsupported DSL

Signed-off-by: Pawel Dembicki <paweldembicki@gmail.com>
---
Changes in v2:
- none

 arch/arm/boot/dts/Makefile          |   1 +
 arch/arm/boot/dts/kirkwood-l-50.dts | 441 ++++++++++++++++++++++++++++
 2 files changed, 442 insertions(+)
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
index 000000000000..ab3a90287260
--- /dev/null
+++ b/arch/arm/boot/dts/kirkwood-l-50.dts
@@ -0,0 +1,441 @@
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
+		status_orange {
+			label = "l-50:orange:status";
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
+		enable-active-low;
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
+		enable-active-low;
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
+		compatible = "gpio-keys-polled";
+		poll-interval = <20>;
+
+		factory_defaults {
+			label = "factory_defaults";
+			gpios = <&gpio0 29 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_RESTART>;
+		};
+
+	};
+};
+
+&mdio {
+	status = "okay";
+
+	ethphy0: ethernet-phy@8 {
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
+		phy-handle = <&ethphy0>;
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
+		reg = <0x0000000 0xc0000>;
+	};
+
+	partition@a0000 {
+		label = "bootldr-env";
+		reg = <0x000c0000 0x40000>;
+	};
+
+	partition@100000 {
+		label = "kernel-1";
+		reg = <0x00100000 0x800000>;
+	};
+
+	partition@900000 {
+		label = "rootfs-1";
+		reg = <0x08200000 0x7100000>;
+	};
+
+	partition@7a00000 {
+		label = "kernel-2";
+		reg = <0x07a00000 0x800000>;
+	};
+
+	partition@8200000 {
+		label = "rootfs-2";
+		reg = <0x08200000 0x7100000>;
+	};
+
+	partition@f300000 {
+		label = "default_sw";
+		reg = <0x0f300000 0x7900000>;
+	};
+
+	partition@16c00000 {
+		label = "logs";
+		reg = <0x16c00000 0x1800000>;
+	};
+
+	partition@18400000 {
+		label = "preset_cfg";
+		reg = <0x18400000 0x100000>;
+	};
+
+	partition@18500000 {
+		label = "adsl";
+		reg = <0x18500000 0x100000>;
+	};
+
+	partition@18600000 {
+		label = "storage";
+		reg = <0x18600000 0x7A00000>;
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
