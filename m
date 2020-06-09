Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E9951F35F3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 10:11:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8vErvoNdSYC32poUGUJ+6DWpUyAu2gMT7n5RupbbXy8=; b=ojKy9bI840zAc5
	0PzALtNIPxAd3wg+cFKwzXIy8+ZmzZfD5Bpot08I3xktNqnvemGT4t78pWs8yIlI9T+RsZJpjXFXw
	+hpWVnlwwP0dRdEV/e6pfGySoFp6ea7SwYcv2PbC4r4lWfhFDS31V9aFTHnS13ra2MQefhnbDwZkA
	IW6umpyD7J7fLMc31bdZ4agvGX0ATrG8bdioVez+lZhxPDo3AnVLQjW2/yhyQml8PRZDEYcEnHso7
	nKnYkgWl9MEOTR2IMTwfO0ri9WdOjvxDlaQafhOODz0qDMISmgOFUXwJTBrHQvZ71x47kQxS3j3mw
	4C/IqUFFMxz9aVbx75Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiZLc-0004cO-4v; Tue, 09 Jun 2020 08:11:04 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiZJL-0000eD-BG
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 08:08:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1591690123; x=1623226123;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TxSTPbGzjS34PdAPLynHpO6Px+8SLfDppNarSx69la4=;
 b=1jERPQh8X1Suoa3CCqR7PAyhEEYCcGDI+zH/vOIMMskg1EZdL5RGSqVp
 QE5gP41HOReNIF5uQFA+gW3abw8jFmSuKJCjn8dUJUbpfoTV8jk6dL0Mr
 HPWsA4Y1f8lJYcUIE4D6KM/l5NAySBedPxaiH1Ff4h/+B5PQRkuk/xc6J
 VeXlf4mtYGtH6XHa6re3RA6W/56nV+8qXYoY4/T7lRk0b82IZjVDm3yqd
 eJxlHgSmFGejDtHFAgjg3+36M/efOQwRyY2KnWDIiSx3tvatL0zB3/grc
 k/m/HMw4Pap669SzV7Pn8EFCDC1DPovOu0rE8MBzxywJv5LRVUA4KF6OQ w==;
IronPort-SDR: SI2ZNx348pMDcvA/b5fnwGwHacYEaI/R40HYdVPmWeyQeNx41Q1r1bhHeeiEa+P6vAdHRLEdk6
 UsW7aou8LzHtS1pQZs1DFWTZbW6J+6q/K3aYe8kyf2vV01LkDb0Pxrcs86NrFX7x8hTiiVdoPY
 M1/t66G/N/z58PKM13dq/4nnYaOBhPTH9O2MSl6s1F12qf1g/hwUcnFS59yOncD06S2ph7zNOT
 aD1sCdxw5ut6Yyivziip5Z+ieBGAwA+7+le/uMMWDv7lvj9jp0munDxXre9vwO/e3U2o+TcdrO
 KN4=
X-IronPort-AV: E=Sophos;i="5.73,491,1583218800"; d="scan'208";a="78702796"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Jun 2020 01:08:43 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Tue, 9 Jun 2020 01:08:42 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1847.3 via Frontend Transport; Tue, 9 Jun 2020 01:08:38 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Arnd Bergmann <arnd@arndb.de>, Stephen Boyd <sboyd@kernel.org>, "Linus
 Walleij" <linus.walleij@linaro.org>
Subject: [PATCH v2 10/10] arm64: dts: sparx5: Add i2c devices, i2c muxes
Date: Tue, 9 Jun 2020 10:07:09 +0200
Message-ID: <20200609080709.9654-10-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200609080709.9654-1-lars.povlsen@microchip.com>
References: <20200608123024.5330-1-lars.povlsen@microchip.com>
 <20200609080709.9654-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_010843_432824_B19094FF 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Steen Hegelund <Steen.Hegelund@microchip.com>, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Olof Johansson <olof@lixom.net>, Michael
 Turquette <mturquette@baylibre.com>, Lars Povlsen <lars.povlsen@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds i2c devices and muxes to the Sparx5 reference boards.

Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
---
 arch/arm64/boot/dts/microchip/sparx5.dtsi     |  36 +++
 .../boot/dts/microchip/sparx5_pcb125.dts      |   4 +
 .../dts/microchip/sparx5_pcb134_board.dtsi    | 237 ++++++++++++++++++
 .../dts/microchip/sparx5_pcb135_board.dtsi    |  77 ++++++
 .../boot/dts/microchip/sparx5_pcb_common.dtsi |   4 +
 5 files changed, 358 insertions(+)

diff --git a/arch/arm64/boot/dts/microchip/sparx5.dtsi b/arch/arm64/boot/dts/microchip/sparx5.dtsi
index d4d7f9ce627bc..cf712e80615da 100644
--- a/arch/arm64/boot/dts/microchip/sparx5.dtsi
+++ b/arch/arm64/boot/dts/microchip/sparx5.dtsi
@@ -171,7 +171,43 @@ uart2_pins: uart2-pins {
 				function = "uart2";
 			};

+			i2c_pins: i2c-pins {
+				pins = "GPIO_14", "GPIO_15";
+				function = "twi";
+			};
+
+			i2c2_pins: i2c2-pins {
+				pins = "GPIO_28", "GPIO_29";
+				function = "twi2";
+			};
+		};
+
+		i2c0: i2c@600101000 {
+			compatible = "snps,designware-i2c";
+			status = "disabled";
+			pinctrl-0 = <&i2c_pins>;
+			pinctrl-names = "default";
+			reg = <0x6 0x00101000 0x100>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
+			i2c-sda-hold-time-ns = <300>;
+			clock-frequency = <100000>;
+			clocks = <&ahb_clk>;
 		};

+		i2c1: i2c@600103000 {
+			compatible = "snps,designware-i2c";
+			status = "disabled";
+			pinctrl-0 = <&i2c2_pins>;
+			pinctrl-names = "default";
+			reg = <0x6 0x00103000 0x100>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
+			i2c-sda-hold-time-ns = <300>;
+			clock-frequency = <100000>;
+			clocks = <&ahb_clk>;
+		};
 	};
 };
diff --git a/arch/arm64/boot/dts/microchip/sparx5_pcb125.dts b/arch/arm64/boot/dts/microchip/sparx5_pcb125.dts
index d7f985f7ee020..91ee5b6cfc37a 100644
--- a/arch/arm64/boot/dts/microchip/sparx5_pcb125.dts
+++ b/arch/arm64/boot/dts/microchip/sparx5_pcb125.dts
@@ -15,3 +15,7 @@ memory@0 {
 		reg = <0x00000000 0x00000000 0x10000000>;
 	};
 };
+
+&i2c1 {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/microchip/sparx5_pcb134_board.dtsi b/arch/arm64/boot/dts/microchip/sparx5_pcb134_board.dtsi
index 9b2aec400101b..18a535a043686 100644
--- a/arch/arm64/boot/dts/microchip/sparx5_pcb134_board.dtsi
+++ b/arch/arm64/boot/dts/microchip/sparx5_pcb134_board.dtsi
@@ -7,9 +7,246 @@
 #include "sparx5_pcb_common.dtsi"

 /{
+	aliases {
+	    i2c0   = &i2c0;
+	    i2c100 = &i2c100;
+	    i2c101 = &i2c101;
+	    i2c102 = &i2c102;
+	    i2c103 = &i2c103;
+	    i2c104 = &i2c104;
+	    i2c105 = &i2c105;
+	    i2c106 = &i2c106;
+	    i2c107 = &i2c107;
+	    i2c108 = &i2c108;
+	    i2c109 = &i2c109;
+	    i2c110 = &i2c110;
+	    i2c111 = &i2c111;
+	    i2c112 = &i2c112;
+	    i2c113 = &i2c113;
+	    i2c114 = &i2c114;
+	    i2c115 = &i2c115;
+	    i2c116 = &i2c116;
+	    i2c117 = &i2c117;
+	    i2c118 = &i2c118;
+	    i2c119 = &i2c119;
+	};
+
 	gpio-restart {
 		compatible = "gpio-restart";
 		gpios = <&gpio 37 GPIO_ACTIVE_LOW>;
 		priority = <200>;
 	};
 };
+
+&gpio {
+	i2cmux_pins_i: i2cmux-pins-i {
+	       pins = "GPIO_16", "GPIO_17", "GPIO_18", "GPIO_19",
+		      "GPIO_20", "GPIO_22", "GPIO_36", "GPIO_35",
+		      "GPIO_50", "GPIO_51", "GPIO_56", "GPIO_57";
+		function = "twi_scl_m";
+		output-low;
+	};
+	i2cmux_0: i2cmux-0 {
+		pins = "GPIO_16";
+		function = "twi_scl_m";
+		output-high;
+	};
+	i2cmux_1: i2cmux-1 {
+		pins = "GPIO_17";
+		function = "twi_scl_m";
+		output-high;
+	};
+	i2cmux_2: i2cmux-2 {
+		pins = "GPIO_18";
+		function = "twi_scl_m";
+		output-high;
+	};
+	i2cmux_3: i2cmux-3 {
+		pins = "GPIO_19";
+		function = "twi_scl_m";
+		output-high;
+	};
+	i2cmux_4: i2cmux-4 {
+		pins = "GPIO_20";
+		function = "twi_scl_m";
+		output-high;
+	};
+	i2cmux_5: i2cmux-5 {
+		pins = "GPIO_22";
+		function = "twi_scl_m";
+		output-high;
+	};
+	i2cmux_6: i2cmux-6 {
+		pins = "GPIO_36";
+		function = "twi_scl_m";
+		output-high;
+	};
+	i2cmux_7: i2cmux-7 {
+		pins = "GPIO_35";
+		function = "twi_scl_m";
+		output-high;
+	};
+	i2cmux_8: i2cmux-8 {
+		pins = "GPIO_50";
+		function = "twi_scl_m";
+		output-high;
+	};
+	i2cmux_9: i2cmux-9 {
+		pins = "GPIO_51";
+		function = "twi_scl_m";
+		output-high;
+	};
+	i2cmux_10: i2cmux-10 {
+		pins = "GPIO_56";
+		function = "twi_scl_m";
+		output-high;
+	};
+	i2cmux_11: i2cmux-11 {
+		pins = "GPIO_57";
+		function = "twi_scl_m";
+		output-high;
+	};
+};
+
+&axi {
+	i2c0_imux: i2c0-imux@0 {
+		compatible = "i2c-mux-pinctrl";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		i2c-parent = <&i2c0>;
+	};
+	i2c0_emux: i2c0-emux@0 {
+		compatible = "i2c-mux-gpio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		i2c-parent = <&i2c0>;
+	};
+};
+
+&i2c0_imux {
+	pinctrl-names =
+		"i2c100", "i2c101", "i2c102", "i2c103",
+		"i2c104", "i2c105", "i2c106", "i2c107",
+		"i2c108", "i2c109", "i2c110", "i2c111", "idle";
+	pinctrl-0 = <&i2cmux_0>;
+	pinctrl-1 = <&i2cmux_1>;
+	pinctrl-2 = <&i2cmux_2>;
+	pinctrl-3 = <&i2cmux_3>;
+	pinctrl-4 = <&i2cmux_4>;
+	pinctrl-5 = <&i2cmux_5>;
+	pinctrl-6 = <&i2cmux_6>;
+	pinctrl-7 = <&i2cmux_7>;
+	pinctrl-8 = <&i2cmux_8>;
+	pinctrl-9 = <&i2cmux_9>;
+	pinctrl-10 = <&i2cmux_10>;
+	pinctrl-11 = <&i2cmux_11>;
+	pinctrl-12 = <&i2cmux_pins_i>;
+	i2c100: i2c_sfp1 {
+		reg = <0x0>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+	};
+	i2c101: i2c_sfp2 {
+		reg = <0x1>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+	};
+	i2c102: i2c_sfp3 {
+		reg = <0x2>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+	};
+	i2c103: i2c_sfp4 {
+		reg = <0x3>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+	};
+	i2c104: i2c_sfp5 {
+		reg = <0x4>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+	};
+	i2c105: i2c_sfp6 {
+		reg = <0x5>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+	};
+	i2c106: i2c_sfp7 {
+		reg = <0x6>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+	};
+	i2c107: i2c_sfp8 {
+		reg = <0x7>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+	};
+	i2c108: i2c_sfp9 {
+		reg = <0x8>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+	};
+	i2c109: i2c_sfp10 {
+		reg = <0x9>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+	};
+	i2c110: i2c_sfp11 {
+		reg = <0xa>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+	};
+	i2c111: i2c_sfp12 {
+		reg = <0xb>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+	};
+};
+
+&i2c0_emux {
+	mux-gpios = <&gpio 55 GPIO_ACTIVE_HIGH
+		     &gpio 60 GPIO_ACTIVE_HIGH
+		     &gpio 61 GPIO_ACTIVE_HIGH
+		     &gpio 54 GPIO_ACTIVE_HIGH>;
+	idle-state = <0x8>;
+	i2c112: i2c_sfp13 {
+		reg = <0x0>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+	};
+	i2c113: i2c_sfp14 {
+		reg = <0x1>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+	};
+	i2c114: i2c_sfp15 {
+		reg = <0x2>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+	};
+	i2c115: i2c_sfp16 {
+		reg = <0x3>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+	};
+	i2c116: i2c_sfp17 {
+		reg = <0x4>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+	};
+	i2c117: i2c_sfp18 {
+		reg = <0x5>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+	};
+	i2c118: i2c_sfp19 {
+		reg = <0x6>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+	};
+	i2c119: i2c_sfp20 {
+		reg = <0x7>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+	};
+};
diff --git a/arch/arm64/boot/dts/microchip/sparx5_pcb135_board.dtsi b/arch/arm64/boot/dts/microchip/sparx5_pcb135_board.dtsi
index 9b2aec400101b..d71f11a10b3d2 100644
--- a/arch/arm64/boot/dts/microchip/sparx5_pcb135_board.dtsi
+++ b/arch/arm64/boot/dts/microchip/sparx5_pcb135_board.dtsi
@@ -7,9 +7,86 @@
 #include "sparx5_pcb_common.dtsi"

 /{
+	aliases {
+	    i2c0   = &i2c0;
+	    i2c152 = &i2c152;
+	    i2c153 = &i2c153;
+	    i2c154 = &i2c154;
+	    i2c155 = &i2c155;
+	};
+
 	gpio-restart {
 		compatible = "gpio-restart";
 		gpios = <&gpio 37 GPIO_ACTIVE_LOW>;
 		priority = <200>;
 	};
 };
+
+&gpio {
+	i2cmux_pins_i: i2cmux-pins-i {
+	       pins = "GPIO_35", "GPIO_36",
+		      "GPIO_50", "GPIO_51";
+		function = "twi_scl_m";
+		output-low;
+	};
+	i2cmux_s29: i2cmux-0 {
+		pins = "GPIO_35";
+		function = "twi_scl_m";
+		output-high;
+	};
+	i2cmux_s30: i2cmux-1 {
+		pins = "GPIO_36";
+		function = "twi_scl_m";
+		output-high;
+	};
+	i2cmux_s31: i2cmux-2 {
+		pins = "GPIO_50";
+		function = "twi_scl_m";
+		output-high;
+	};
+	i2cmux_s32: i2cmux-3 {
+		pins = "GPIO_51";
+		function = "twi_scl_m";
+		output-high;
+	};
+};
+
+&axi {
+	i2c0_imux: i2c0-imux@0 {
+		compatible = "i2c-mux-pinctrl";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		i2c-parent = <&i2c0>;
+	};
+};
+
+&i2c0_imux {
+	pinctrl-names =
+		"i2c152", "i2c153", "i2c154", "i2c155",
+		"idle";
+	pinctrl-0 = <&i2cmux_s29>;
+	pinctrl-1 = <&i2cmux_s30>;
+	pinctrl-2 = <&i2cmux_s31>;
+	pinctrl-3 = <&i2cmux_s32>;
+	pinctrl-4 = <&i2cmux_pins_i>;
+	i2c152: i2c_sfp1 {
+		reg = <0x0>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+	};
+	i2c153: i2c_sfp2 {
+		reg = <0x1>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+	};
+	i2c154: i2c_sfp3 {
+		reg = <0x2>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+	};
+	i2c155: i2c_sfp4 {
+		reg = <0x3>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+	};
+};
diff --git a/arch/arm64/boot/dts/microchip/sparx5_pcb_common.dtsi b/arch/arm64/boot/dts/microchip/sparx5_pcb_common.dtsi
index 1f99d0db1284f..9d1a082de3e29 100644
--- a/arch/arm64/boot/dts/microchip/sparx5_pcb_common.dtsi
+++ b/arch/arm64/boot/dts/microchip/sparx5_pcb_common.dtsi
@@ -13,3 +13,7 @@ &uart0 {
 &uart1 {
 	status = "okay";
 };
+
+&i2c0 {
+	status = "okay";
+};
--
2.27.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
