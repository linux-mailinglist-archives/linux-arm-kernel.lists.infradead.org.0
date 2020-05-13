Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2286F1D13B9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 15:00:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=POH/sTGA5Le4kOCTMULSu+QZcNAf3XWK4kNxqSd5Vus=; b=M4mbysthsxKGvv
	tUokGh73VKk0bG+5DE5wa+2NumXBoQyrunVQ6+Owc393LJ7jPwimbV3hw8+SAp4rWpt67XExjCLgh
	clTnjSRo6Qi+SqFQVFJJ/7TswObULAxRKv7kEZy7AyvK8x2rrPAcHsqOWfOLTT208+LSP4PrSDyPX
	l5mm0i3HTmgASEkPIHTlHFphvaVyNAtw8MpWJc7Pnt5/SQdtGfRMy62ZdO7JL70hXRRmE3Id3qAQp
	ayI3ScLpjs1PqB0oheKFhpbYLO8gXOhYxdm+Ebvs3NQ2OLtWN5lgQnKPPJ3z0Ba6aeDhg12hD/Rh4
	YuOD7OniHgaTu5vsKxxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYr01-0007Ti-Ki; Wed, 13 May 2020 13:00:37 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYqwm-0002Qg-Ak
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 12:57:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589374636; x=1620910636;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=teOkRdmWsO8hsGpIQIKDLfq0daEHQBt9t9McFUxCb/A=;
 b=EFFUIYKkMAH+BPfl3n1zte6ug1HtOsUOOV76Y9aicseWibCCGvX4qaO1
 LBRTWQ1TJhxBZ0Wro09zUhITDOXcRx8eRauMyvsGHUA9gLs6a6jAnyMoR
 pKlMWVwaouvwyuiTnkP7EXoZSKJ4Giv9OeicgbnTPXCtKCR02oDAmh46u
 87URBo4LR+Nq3qLAaT7ErkwSU7qCa6157DfXo04LKlSn85FxT0P40wqcZ
 rI8FaaAujCNfb89wHrJ3fDANVi6Nb87MHENaOUwhRchU1l2fi4daJt7SB
 65DJFpU8aXEZGs1XtVkrEsB+DIjlC0UWA+wdbsG167XYYAGYtt6GkOKwa Q==;
IronPort-SDR: rqBnLP1FqUJkvx+dcF74gvjjXlA0wyOAkQ2Caz6kGznkNvwj335M3jJQB112iDy2R0RXyCppFq
 Hd/GLj63YMDEEt3PWnJaSP2H8qdqQSaUz3rkyYvPn2/vwedkTcYgyP5o0KZEeNwinqIme2ufjM
 4OLJtO6fnDsZCVA3xkyFvRBi0C1y44zKGrg21JE9f1ExXNVNhxOT3MvteEflLQziWTjYvBf3z9
 XtAepliyaf0rHrLaTIZeV6ieFWOd776MQU1Uw/l9Eyj5Sx4KajI9CT4nzPss8qulXPV2GPtaAy
 jok=
X-IronPort-AV: E=Sophos;i="5.73,387,1583218800"; d="scan'208";a="76494682"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 05:57:15 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 05:57:18 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 13 May 2020 05:57:12 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: SoC Team <soc@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Stephen Boyd
 <sboyd@kernel.org>, Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 14/14] arm64: dts: sparx5: Add i2c devices, i2c muxes
Date: Wed, 13 May 2020 14:55:32 +0200
Message-ID: <20200513125532.24585-15-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200513125532.24585-1-lars.povlsen@microchip.com>
References: <20200513125532.24585-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_055716_404641_B4FDE339 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
index ca4055f04ac26..b5cb3d8dc876b 100644
--- a/arch/arm64/boot/dts/microchip/sparx5.dtsi
+++ b/arch/arm64/boot/dts/microchip/sparx5.dtsi
@@ -160,7 +160,43 @@ uart2_pins: uart2-pins {
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
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
