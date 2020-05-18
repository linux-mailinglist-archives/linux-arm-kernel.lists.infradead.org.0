Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7540E1D925C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 10:46:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Resent-To:Resent-Message-ID:Resent-Date:
	Resent-From:Reply-To:Cc:Content-ID:Content-Description:Resent-Sender:
	Resent-Cc:List-Owner; bh=5ZK6Xetcwpc45wgCPKo0yr34fYBPejgPDt02baZ6xgA=; b=LTer
	eV7N3yIUSo1oCkU1208+P9Bhw7vtB1HixzFxjjlvSNSZVobXpZrm3aekxJLOaAFbuj3SLeG9z7I7j
	BCNmmQYnXFtIEQA8WA/xoe7p2esAhamVjrRwLd7U0Gn7umhD/h8kn6a+MiKJMtWUThj+L1ZVbd7Nj
	5pTCXtj7+DAM7pX3F+VDj8nk4qmy7uza0hitVZJ7YLsWb/iJgUmWE6WE/ozKzj7Gd7darHHZYrPPI
	JIY7dP6OU/z3h0rXbisAX7nvyt+cfQOo8aoiYzZCGEUJzHSz/05nmEpIF9wBTCHXlviO7VZTjBuU2
	sZJrshLb3qiq+7Nm2DegZTEWwcvACA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaxtR-00008T-P3; Tue, 19 May 2020 08:46:33 +0000
Received: from the.earth.li ([2a00:1098:86:4d:c0ff:ee:15:900d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaxsa-0007zF-1K
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 08:45:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=earth.li;
 s=the; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject
 :To:From:Date:Resent-To:Resent-Message-ID:Resent-Date:Resent-From:Sender:
 Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Sender:Resent-Cc:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AbyQlLTgT9N6dnHMOx2feZtNUM31THpZV6Gi5OUra7o=; b=qk1PHEwfG67kGtdFDSMJY6IOdB
 DQ96+GZPTnWdX6WUC9NxP5vzS8WuBPoN1FHpG0VuuUrbo62vwPlh7IHVe4SzrdAFYzn9l0ujQqXi/
 mVxw7EEIUt1yBZgYHXX9ynL9HR3cLvXTzfoLkc8u+jctOImx0sEis2UYjnE4kZ7J2516p3KQEFogY
 0Gb4MR6n2reBwcL35LlqLjK9th5xJCkdUOXFMYx1BY39Wt6zQnx0FTe3byIIsqFXMCSfXRS+Ox0+d
 s6s9cks2VZu6zsqDDM3cDmsJ7j9o+1Vr3uRd0YwexrJRwGPxiwTm7Z2TZd11EPsvOs04NJLhLBKNw
 u/73R2DQ==;
Received: from noodles by the.earth.li with local (Exim 4.92)
 (envelope-from <noodles@earth.li>) id 1jaxsY-0002q7-RC
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 09:45:38 +0100
Resent-From: Jonathan McDowell <noodles@earth.li>
Resent-Date: Tue, 19 May 2020 09:45:38 +0100
Resent-Message-ID: <20200519084538.GU311@earth.li>
Resent-To: linux-arm-kernel@lists.infradead.org
Date: Mon, 18 May 2020 19:10:14 +0100
From: Jonathan McDowell <noodles@earth.li>
To: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] ARM: dts: qcom: Add MikroTik RB3011
Message-ID: <75390e66c9e6e36ddd42dc7f54cac28dfd7a24b9.1589824955.git.noodles@earth.li>
References: <cover.1589824955.git.noodles@earth.li>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1589824955.git.noodles@earth.li>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-UID: 2047
X-Keywords: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_014540_209165_9D747B87 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds a DTS file for the MikroTik RouterBoard 3011, which is a
1U rackmount router based on the IPQ8064, supporting the serial UART,
dual QCA8337 Gigabit ethernet switches, boot loader NOR and user LED
device.

Signed-off-by: Jonathan McDowell <noodles@earth.li>
---
 arch/arm/boot/dts/Makefile                |   1 +
 arch/arm/boot/dts/qcom-ipq8064-rb3011.dts | 308 ++++++++++++++++++++++
 2 files changed, 309 insertions(+)
 create mode 100644 arch/arm/boot/dts/qcom-ipq8064-rb3011.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index e8dd99201397..e697a4bd7426 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -884,6 +884,7 @@ dtb-$(CONFIG_ARCH_QCOM) += \
 	qcom-ipq4019-ap.dk07.1-c1.dtb \
 	qcom-ipq4019-ap.dk07.1-c2.dtb \
 	qcom-ipq8064-ap148.dtb \
+	qcom-ipq8064-rb3011.dtb \
 	qcom-msm8660-surf.dtb \
 	qcom-msm8960-cdp.dtb \
 	qcom-msm8974-fairphone-fp2.dtb \
diff --git a/arch/arm/boot/dts/qcom-ipq8064-rb3011.dts b/arch/arm/boot/dts/qcom-ipq8064-rb3011.dts
new file mode 100644
index 000000000000..282b89ce3d45
--- /dev/null
+++ b/arch/arm/boot/dts/qcom-ipq8064-rb3011.dts
@@ -0,0 +1,308 @@
+// SPDX-License-Identifier: GPL-2.0
+#include "qcom-ipq8064.dtsi"
+#include <dt-bindings/input/input.h>
+
+/ {
+	model = "MikroTik RB3011UiAS-RM";
+	compatible = "mikrotik,rb3011";
+
+	aliases {
+		serial0 = &gsbi7_serial;
+		ethernet0 = &gmac0;
+		ethernet1 = &gmac3;
+		mdio-gpio0 = &mdio0;
+		mdio-gpio1 = &mdio1;
+	};
+
+	chosen {
+		bootargs = "loglevel=8 console=ttyMSM0,115200";
+		stdout-path = "serial0:115200n8";
+	};
+
+	memory@0 {
+		reg = <0x42000000 0x3e000000>;
+		device_type = "memory";
+	};
+
+	mdio0: mdio@0 {
+		status = "okay";
+		compatible = "virtual,mdio-gpio";
+		gpios = <&qcom_pinmux 1 GPIO_ACTIVE_HIGH>,
+			<&qcom_pinmux 0 GPIO_ACTIVE_HIGH>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		pinctrl-0 = <&mdio0_pins>;
+		pinctrl-names = "default";
+
+		switch0: switch@10 {
+			compatible = "qca,qca8337";
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			dsa,member = <0 0>;
+
+			pinctrl-0 = <&sw0_reset_pin>;
+			pinctrl-names = "default";
+
+			reset-gpios = <&qcom_pinmux 16 GPIO_ACTIVE_LOW>;
+			reg = <0x10>;
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				switch0cpu: port@0 {
+					reg = <0>;
+					label = "cpu";
+					ethernet = <&gmac0>;
+					phy-mode = "rgmii-id";
+					fixed-link {
+						speed = <1000>;
+						full-duplex;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+					label = "sw1";
+				};
+
+				port@2 {
+					reg = <2>;
+					label = "sw2";
+				};
+
+				port@3 {
+					reg = <3>;
+					label = "sw3";
+				};
+
+				port@4 {
+					reg = <4>;
+					label = "sw4";
+				};
+
+				port@5 {
+					reg = <5>;
+					label = "sw5";
+				};
+			};
+		};
+	};
+
+	mdio1: mdio@1 {
+		status = "okay";
+		compatible = "virtual,mdio-gpio";
+		gpios = <&qcom_pinmux 11 GPIO_ACTIVE_HIGH>,
+			<&qcom_pinmux 10 GPIO_ACTIVE_HIGH>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		pinctrl-0 = <&mdio1_pins>;
+		pinctrl-names = "default";
+
+		switch1: switch@14 {
+			compatible = "qca,qca8337";
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			dsa,member = <1 0>;
+
+			pinctrl-0 = <&sw1_reset_pin>;
+			pinctrl-names = "default";
+
+			reset-gpios = <&qcom_pinmux 17 GPIO_ACTIVE_LOW>;
+			reg = <0x10>;
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				switch1cpu: port@0 {
+					reg = <0>;
+					label = "cpu";
+					ethernet = <&gmac3>;
+					phy-mode = "sgmii";
+					fixed-link {
+						speed = <1000>;
+						full-duplex;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+					label = "sw6";
+				};
+
+				port@2 {
+					reg = <2>;
+					label = "sw7";
+				};
+
+				port@3 {
+					reg = <3>;
+					label = "sw8";
+				};
+
+				port@4 {
+					reg = <4>;
+					label = "sw9";
+				};
+
+				port@5 {
+					reg = <5>;
+					label = "sw10";
+				};
+			};
+		};
+	};
+
+	soc {
+		gsbi5: gsbi@1a200000 {
+			qcom,mode = <GSBI_PROT_SPI>;
+			status = "okay";
+
+			spi4: spi@1a280000 {
+				status = "okay";
+				spi-max-frequency = <50000000>;
+
+				pinctrl-0 = <&spi_pins>;
+				pinctrl-names = "default";
+
+				cs-gpios = <&qcom_pinmux 20 GPIO_ACTIVE_HIGH>;
+
+				norflash: s25fl016k@0 {
+					compatible = "jedec,spi-nor";
+					#address-cells = <1>;
+					#size-cells = <1>;
+					spi-max-frequency = <50000000>;
+					reg = <0>;
+
+					partition@0 {
+						label = "RouterBoot";
+						reg = <0x0 0x40000>;
+					};
+				};
+			};
+		};
+
+		gpio_keys {
+			compatible = "gpio-keys";
+			pinctrl-0 = <&buttons_pins>;
+			pinctrl-names = "default";
+
+			button@1 {
+				label = "reset";
+				linux,code = <KEY_RESTART>;
+				gpios = <&qcom_pinmux 66 GPIO_ACTIVE_LOW>;
+				linux,input-type = <1>;
+				debounce-interval = <60>;
+			};
+		};
+
+		leds {
+			compatible = "gpio-leds";
+			pinctrl-0 = <&leds_pins>;
+			pinctrl-names = "default";
+
+			led@7 {
+				label = "rb3011:green:user";
+				gpios = <&qcom_pinmux 33 GPIO_ACTIVE_HIGH>;
+				default-state = "off";
+			};
+		};
+
+	};
+};
+
+&gmac0 {
+	status = "okay";
+
+	phy-mode = "rgmii";
+	qcom,id = <0>;
+	phy-handle = <&switch0cpu>;
+
+	fixed-link {
+		speed = <1000>;
+		full-duplex;
+	};
+};
+
+&gmac3 {
+	status = "okay";
+
+	phy-mode = "sgmii";
+	qcom,id = <3>;
+	phy-handle = <&switch1cpu>;
+
+	fixed-link {
+		speed = <1000>;
+		full-duplex;
+	};
+};
+
+&gsbi7 {
+	status = "okay";
+	qcom,mode = <GSBI_PROT_I2C_UART>;
+};
+
+&gsbi7_serial {
+	status = "okay";
+};
+
+&qcom_pinmux {
+	buttons_pins: buttons_pins {
+		mux {
+			pins = "gpio66";
+			drive-strength = <16>;
+			bias-disable;
+		};
+	};
+
+	leds_pins: leds_pins {
+		mux {
+			pins = "gpio33";
+			drive-strength = <16>;
+			bias-disable;
+		};
+	};
+
+	mdio0_pins: mdio0_pins {
+		mux {
+			pins = "gpio0", "gpio1";
+			function = "gpio";
+			drive-strength = <8>;
+			bias-disable;
+		};
+	};
+
+	mdio1_pins: mdio1_pins {
+		mux {
+			pins = "gpio10", "gpio11";
+			function = "gpio";
+			drive-strength = <8>;
+			bias-disable;
+		};
+	};
+
+	sw0_reset_pin: sw0_reset_pin {
+		mux {
+			pins = "gpio16";
+			drive-strength = <16>;
+			function = "gpio";
+			bias-disable;
+			input-disable;
+		};
+	};
+
+	sw1_reset_pin: sw1_reset_pin {
+		mux {
+			pins = "gpio17";
+			drive-strength = <16>;
+			function = "gpio";
+			bias-disable;
+			input-disable;
+		};
+	};
+};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
