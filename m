Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC2C37DDCF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 16:24:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=hK1oyPtI/5EzOHJ/MyYtB/JCk5mtUC0LJWpBqwaWvrw=; b=Mu5
	RzKI9pQQDkEEs3xMUJXWODFPtzTHkcyV8baVvXYHgK+sxvvcsTHsVf4jiv4/yuO0T3rN2ZdoKE8gz
	qGuFGLVLLnE4xSeRB30TiWItjSsENYQch8sEurpv9vDI2EOon2ms/i7WbdRvOE1bJM9OjNx7Sfmc1
	Lnk+o0hewq562D91MXyC89pEuT0oHGhz6teL4HCjUvOWvdN00K86JeDGaDwWDBw7By48/yd/DhV4M
	y7lU96G8XK0uCL7Ko5xwiQchz7US7a5WVuRYJ88PNrJW+tmhA8uL+p2qNoNEdlrKd49UkrdAXLKzn
	s3GjMLwW6Ah8BxnTkS5Q03+GE0VQXxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htC0X-0008LS-I4; Thu, 01 Aug 2019 14:24:41 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htC0J-0008Hg-29
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 14:24:29 +0000
Received: by mail-pf1-x442.google.com with SMTP id f17so30180039pfn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 07:24:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=RxfWp3KtibnlEidfAQBstCjfkG4geNc9+S2+/+3C6nA=;
 b=cul9OuS8SW0E1u5njxUptdwIyfxOA2ullsEC4cUvxiXIRtDdAhV3VPpt0CQ9U8qQDY
 ijt9Of0/niyXcnDb4uhQ/NfbU44lkSuwfAQgfHYNyT0HLHubxBz1xjaRKFg3YYOEiqJQ
 IEsx2KO/MacmR4kaA9q9ZSaFUXW6A8IDveW/kDHy9/JKoGNBUEQkfkdMdVrzKpIwGLnF
 1ZBLqo5Bey5B+5MeChbjzFK2OdYNyBFBxe8Ag0lhZvCrS/vlqr2/pZIBio/z7/JF4juM
 RLcK8RPMlnHif2B4GGNlbhQH3cJu3vTWeOKXdm4yQ/XiknFaN14hFoiDg7cDCjo7bZbK
 x6Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=RxfWp3KtibnlEidfAQBstCjfkG4geNc9+S2+/+3C6nA=;
 b=hPNGUy/33/thA8nwIUVavBT95r/laJrtnUx4vv0mYcvt8fhc/cpcwYY9x/n2ejXLhB
 tM8xXAN7MvD7PDdEizImPRDlvaeWvdr6J3BGe+N8BcteMjpB1l6k6yKVCtGydaPH4Y+D
 ZKXGVGAhxDYAhr+hxM3dQY+3kwVGTAFG4NB2aX5KPhqBDcRL0Iwz90PIcF19mX5pxzMe
 3g9lMqEEzWmCUsLmc43s6JGDsBAqFtLn9A3Fusj8Yq15VzF8b7nPeG0N/2mqs5cexhZ8
 HgW03GbBQEIAdCcj0mr4HMzvKzwmVpM84fO36VQ4v4xtKoY0K6uP7fqWLY3hBLDFNyGx
 kqHw==
X-Gm-Message-State: APjAAAW0xML1d4EqCuI/pHpqVhm65BPWm4mgZq8+pHV4K/0NCodhIHq8
 4Vg/ks7Renl4oK0gcbvJ8yE=
X-Google-Smtp-Source: APXvYqyS8fO7MMJHWc8iYKLfgQ6VP7ToEEUmgRdcdRpvHE/RulfefalYCr3GNbARbwCyjtypoK6RUw==
X-Received: by 2002:a63:fe52:: with SMTP id
 x18mr119431029pgj.344.1564669465802; 
 Thu, 01 Aug 2019 07:24:25 -0700 (PDT)
Received: from localhost.localdomain
 (p6796086-ipngn28101marunouchi.tokyo.ocn.ne.jp. [114.165.92.86])
 by smtp.gmail.com with ESMTPSA id o129sm48328036pfg.1.2019.08.01.07.24.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 01 Aug 2019 07:24:25 -0700 (PDT)
From: Yoshihiro Kaneko <ykaneko0929@gmail.com>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH] arm64: dts: renesas: r8a77990-ebisu: sort nodes
Date: Thu,  1 Aug 2019 23:24:12 +0900
Message-Id: <1564669452-22631-1-git-send-email-ykaneko0929@gmail.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_072427_137375_C8747392 
X-CRM114-Status: GOOD (  15.11  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (ykaneko0929[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ykaneko0929[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Magnus Damm <magnus.damm@gmail.com>, Simon Horman <horms@verge.net.au>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sort nodes.

If node address is present
   * Sort by node address, grouping all nodes with the same compat string
     and sorting the group alphabetically.
Else
   * Sort alphabetically

This should not have any run-time effect.

Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>
---

This patch is based on the master branch of Geert Uytterhoeven's renesas-devel
tree.

 arch/arm64/boot/dts/renesas/r8a77990-ebisu.dts | 202 ++++++++++++-------------
 1 file changed, 101 insertions(+), 101 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r8a77990-ebisu.dts b/arch/arm64/boot/dts/renesas/r8a77990-ebisu.dts
index 83fc13a..69ef43b 100644
--- a/arch/arm64/boot/dts/renesas/r8a77990-ebisu.dts
+++ b/arch/arm64/boot/dts/renesas/r8a77990-ebisu.dts
@@ -23,12 +23,6 @@
 		stdout-path = "serial0:115200n8";
 	};
 
-	memory@48000000 {
-		device_type = "memory";
-		/* first 128MB is reserved for secure area. */
-		reg = <0x0 0x48000000 0x0 0x38000000>;
-	};
-
 	audio_clkout: audio-clkout {
 		/*
 		 * This is same as <&rcar_sound 0>
@@ -107,36 +101,10 @@
 		};
 	};
 
-	vga {
-		compatible = "vga-connector";
-
-		port {
-			vga_in: endpoint {
-				remote-endpoint = <&adv7123_out>;
-			};
-		};
-	};
-
-	vga-encoder {
-		compatible = "adi,adv7123";
-
-		ports {
-			#address-cells = <1>;
-			#size-cells = <0>;
-
-			port@0 {
-				reg = <0>;
-				adv7123_in: endpoint {
-					remote-endpoint = <&du_out_rgb>;
-				};
-			};
-			port@1 {
-				reg = <1>;
-				adv7123_out: endpoint {
-					remote-endpoint = <&vga_in>;
-				};
-			};
-		};
+	memory@48000000 {
+		device_type = "memory";
+		/* first 128MB is reserved for secure area. */
+		reg = <0x0 0x48000000 0x0 0x38000000>;
 	};
 
 	reg_1p8v: regulator0 {
@@ -157,15 +125,13 @@
 		regulator-always-on;
 	};
 
-	vbus0_usb2: regulator-vbus0-usb2 {
+	reg_12p0v: regulator2 {
 		compatible = "regulator-fixed";
-
-		regulator-name = "USB20_VBUS_CN";
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-
-		gpio = <&gpio6 4 GPIO_ACTIVE_HIGH>;
-		enable-active-high;
+		regulator-name = "D12.0V";
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+		regulator-boot-on;
+		regulator-always-on;
 	};
 
 	rsnd_ak4613: sound {
@@ -185,25 +151,15 @@
 		};
 	};
 
-	x12_clk: x12 {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <24576000>;
-	};
-
-	reg_12p0v: regulator2 {
+	vbus0_usb2: regulator-vbus0-usb2 {
 		compatible = "regulator-fixed";
-		regulator-name = "D12.0V";
-		regulator-min-microvolt = <12000000>;
-		regulator-max-microvolt = <12000000>;
-		regulator-boot-on;
-		regulator-always-on;
-	};
 
-	x13_clk: x13 {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <74250000>;
+		regulator-name = "USB20_VBUS_CN";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+
+		gpio = <&gpio6 4 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
 	};
 
 	vcc_sdhi0: regulator-vcc-sdhi0 {
@@ -253,6 +209,50 @@
 		states = <3300000 1
 			  1800000 0>;
 	};
+
+	vga {
+		compatible = "vga-connector";
+
+		port {
+			vga_in: endpoint {
+				remote-endpoint = <&adv7123_out>;
+			};
+		};
+	};
+
+	vga-encoder {
+		compatible = "adi,adv7123";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				adv7123_in: endpoint {
+					remote-endpoint = <&du_out_rgb>;
+				};
+			};
+			port@1 {
+				reg = <1>;
+				adv7123_out: endpoint {
+					remote-endpoint = <&vga_in>;
+				};
+			};
+		};
+	};
+
+	x12_clk: x12 {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <24576000>;
+	};
+
+	x13_clk: x13 {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <74250000>;
+	};
 };
 
 &audio_clk_a {
@@ -547,6 +547,11 @@
 		function = "pwm5";
 	};
 
+	scif2_pins: scif2 {
+		groups = "scif2_data_a";
+		function = "scif2";
+	};
+
 	sdhi0_pins: sd0 {
 		groups = "sdhi0_data4", "sdhi0_ctrl";
 		function = "sdhi0";
@@ -577,20 +582,15 @@
 		power-source = <1800>;
 	};
 
-	sound_pins: sound {
-		groups = "ssi01239_ctrl", "ssi0_data", "ssi1_data";
-		function = "ssi";
-	};
-
 	sound_clk_pins: sound_clk {
 		groups = "audio_clk_a", "audio_clk_b_a", "audio_clk_c_a",
 			 "audio_clkout_a", "audio_clkout1_a";
 		function = "audio_clk";
 	};
 
-	scif2_pins: scif2 {
-		groups = "scif2_data_a";
-		function = "scif2";
+	sound_pins: sound {
+		groups = "ssi01239_ctrl", "ssi0_data", "ssi1_data";
+		function = "ssi";
 	};
 
 	usb0_pins: usb {
@@ -671,38 +671,6 @@
 	status = "okay";
 };
 
-&ssi1 {
-	shared-pin;
-};
-
-&usb2_phy0 {
-	pinctrl-0 = <&usb0_pins>;
-	pinctrl-names = "default";
-
-	vbus-supply = <&vbus0_usb2>;
-	status = "okay";
-};
-
-&usb3_peri0 {
-	companion = <&xhci0>;
-	status = "okay";
-};
-
-&vin4 {
-	status = "okay";
-};
-
-&vin5 {
-	status = "okay";
-};
-
-&xhci0 {
-	pinctrl-0 = <&usb30_pins>;
-	pinctrl-names = "default";
-
-	status = "okay";
-};
-
 &sdhi0 {
 	pinctrl-0 = <&sdhi0_pins>;
 	pinctrl-1 = <&sdhi0_pins_uhs>;
@@ -746,3 +714,35 @@
 	non-removable;
 	status = "okay";
 };
+
+&ssi1 {
+	shared-pin;
+};
+
+&usb2_phy0 {
+	pinctrl-0 = <&usb0_pins>;
+	pinctrl-names = "default";
+
+	vbus-supply = <&vbus0_usb2>;
+	status = "okay";
+};
+
+&usb3_peri0 {
+	companion = <&xhci0>;
+	status = "okay";
+};
+
+&vin4 {
+	status = "okay";
+};
+
+&vin5 {
+	status = "okay";
+};
+
+&xhci0 {
+	pinctrl-0 = <&usb30_pins>;
+	pinctrl-names = "default";
+
+	status = "okay";
+};
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
