Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92C8419725D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 04:23:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VtyUDHSIEbYvrY2ne4+SGIbO9Tk2/a9vu5SsERY09fo=; b=VxscXx/uCEzcTp
	+YrKsev49Gx+XRlRyTaxt84AxeTAlH1AsqrScQCFhebuc49gT2vItosqkED0ZhhccooQB0pcrFiIH
	EnXUx38/3TSGwP3B4vthNAvgZcKqv1EcXqLfwZeCyVe6tE4bz/bLalias7b5GCJo4AcD/sXL3sUYC
	NhenyVAmnBAkBpwz1GcYX0UM7O7Lsxrfgxz9n3ZkzZ5gp0dqVLMTDLWXJUXWRd+9XP4BWnD053+gI
	FU3zge0AycMXL4eyOIrV4wgpPwyNNRzBzS/MsbVhZ3mJki8iml+Bo1uwkBkWdZNWQ/2KejrkTDfqI
	iItFCXwWmPNXt44EiwRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIk4j-0002r8-6F; Mon, 30 Mar 2020 02:22:53 +0000
Received: from mail-out.m-online.net ([2001:a60:0:28:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIk4Y-0002p8-DN
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 02:22:44 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48rGSv1wmWz1rjkw;
 Mon, 30 Mar 2020 04:22:39 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48rGSv1XGCz1r0bn;
 Mon, 30 Mar 2020 04:22:39 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id d4V09QHTV46N; Mon, 30 Mar 2020 04:22:37 +0200 (CEST)
X-Auth-Info: XhFFDNEMg8J5FVU3DQ1RzlBdISDeEljZ00AOO+YwerI=
Received: from desktop.lan (ip-86-49-35-8.net.upcbroadband.cz [86.49.35.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Mon, 30 Mar 2020 04:22:37 +0200 (CEST)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V3] ARM: dts: imx6q-dhcom: Add DH 560-200 display unit support
Date: Mon, 30 Mar 2020 04:22:22 +0200
Message-Id: <20200330022222.1130643-1-marex@denx.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_192242_754891_64131502 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:a60:0:28:0:1:25:1 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Marek Vasut <marex@denx.de>, Shawn Guo <shawnguo@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add DT bits to support the DH 560-200 display unit, which can be plugged
into the side of the PDK2 board. The display unit contains a display, EDT
ETM0700G0EDH6 and an EDT FT5x06 touchscreen controller.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Shawn Guo <shawnguo@kernel.org>
To: linux-arm-kernel@lists.infradead.org
---
V2: Add #pwm-cells = <3> to pwm1 node
V3: - Rename polytouch@38 to touchscreen@38
    - Specify FT5406 touchscreen controller
    - Drop legacy linux,wakeup property
---
 arch/arm/boot/dts/imx6q-dhcom-pdk2.dts | 115 ++++++++++++++++++++++++-
 1 file changed, 113 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx6q-dhcom-pdk2.dts b/arch/arm/boot/dts/imx6q-dhcom-pdk2.dts
index bb74fc62d913..a2dd7e549568 100644
--- a/arch/arm/boot/dts/imx6q-dhcom-pdk2.dts
+++ b/arch/arm/boot/dts/imx6q-dhcom-pdk2.dts
@@ -22,6 +22,53 @@ clk_ext_audio_codec: clock-codec {
 		clock-frequency = <24000000>;
 	};
 
+	display_bl: display-bl {
+		compatible = "pwm-backlight";
+		pwms = <&pwm1 0 50000 PWM_POLARITY_INVERTED>;
+		brightness-levels = <0 16 22 30 40 55 75 102 138 188 255>;
+		default-brightness-level = <8>;
+		enable-gpios = <&gpio3 27 GPIO_ACTIVE_HIGH>;
+		status = "okay";
+	};
+
+	lcd_display: disp0 {
+		compatible = "fsl,imx-parallel-display";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		interface-pix-fmt = "rgb24";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_ipu1_lcdif>;
+		status = "okay";
+
+		port@0 {
+			reg = <0>;
+
+			lcd_display_in: endpoint {
+				remote-endpoint = <&ipu1_di0_disp0>;
+			};
+		};
+
+		port@1 {
+			reg = <1>;
+
+			lcd_display_out: endpoint {
+				remote-endpoint = <&lcd_panel_in>;
+			};
+		};
+	};
+
+	panel {
+		compatible = "edt,etm0700g0edh6";
+		ddc-i2c-bus = <&i2c2>;
+		backlight = <&display_bl>;
+
+		port {
+			lcd_panel_in: endpoint {
+				remote-endpoint = <&lcd_display_out>;
+			};
+		};
+	};
+
 	sound {
 		compatible = "fsl,imx-audio-sgtl5000";
 		model = "imx-sgtl5000";
@@ -65,6 +112,15 @@ sgtl5000: codec@a {
 		VDDA-supply = <&reg_3p3v>;
 		VDDIO-supply = <&sw2_reg>;
 	};
+
+	touchscreen@38 {
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_touchscreen>;
+		compatible = "edt,edt-ft5406";
+		reg = <0x38>;
+		interrupt-parent = <&gpio4>;
+		interrupts = <5 IRQ_TYPE_EDGE_FALLING>; /* GPIO E */
+	};
 };
 
 &iomuxc {
@@ -77,9 +133,7 @@ MX6QDL_PAD_GPIO_2__GPIO1_IO02		0x400120b0
 			MX6QDL_PAD_GPIO_4__GPIO1_IO04		0x400120b0
 			MX6QDL_PAD_GPIO_5__GPIO1_IO05		0x400120b0
 			MX6QDL_PAD_CSI0_DAT17__GPIO6_IO03	0x400120b0
-			MX6QDL_PAD_GPIO_19__GPIO4_IO05		0x120b0
 			MX6QDL_PAD_DI0_PIN4__GPIO4_IO20		0x400120b0
-			MX6QDL_PAD_EIM_D27__GPIO3_IO27		0x120b0
 			MX6QDL_PAD_KEY_ROW0__GPIO4_IO07		0x120b0
 			MX6QDL_PAD_KEY_COL1__GPIO4_IO08		0x400120b0
 			MX6QDL_PAD_NANDF_CS1__GPIO6_IO14	0x400120b0
@@ -132,6 +186,52 @@ MX6QDL_PAD_EIM_D26__GPIO3_IO26		0x000b1
 		>;
 	};
 
+	pinctrl_ipu1_lcdif: ipu1-lcdif-grp {
+		fsl,pins = <
+			MX6QDL_PAD_DI0_DISP_CLK__IPU1_DI0_DISP_CLK	0x38
+			MX6QDL_PAD_DI0_PIN15__IPU1_DI0_PIN15		0x38
+			MX6QDL_PAD_DI0_PIN2__IPU1_DI0_PIN02		0x38
+			MX6QDL_PAD_DI0_PIN3__IPU1_DI0_PIN03		0x38
+			MX6QDL_PAD_DISP0_DAT0__IPU1_DISP0_DATA00	0x38
+			MX6QDL_PAD_DISP0_DAT1__IPU1_DISP0_DATA01	0x38
+			MX6QDL_PAD_DISP0_DAT2__IPU1_DISP0_DATA02	0x38
+			MX6QDL_PAD_DISP0_DAT3__IPU1_DISP0_DATA03	0x38
+			MX6QDL_PAD_DISP0_DAT4__IPU1_DISP0_DATA04	0x38
+			MX6QDL_PAD_DISP0_DAT5__IPU1_DISP0_DATA05	0x38
+			MX6QDL_PAD_DISP0_DAT6__IPU1_DISP0_DATA06	0x38
+			MX6QDL_PAD_DISP0_DAT7__IPU1_DISP0_DATA07	0x38
+			MX6QDL_PAD_DISP0_DAT8__IPU1_DISP0_DATA08	0x38
+			MX6QDL_PAD_DISP0_DAT9__IPU1_DISP0_DATA09	0x38
+			MX6QDL_PAD_DISP0_DAT10__IPU1_DISP0_DATA10	0x38
+			MX6QDL_PAD_DISP0_DAT11__IPU1_DISP0_DATA11	0x38
+			MX6QDL_PAD_DISP0_DAT12__IPU1_DISP0_DATA12	0x38
+			MX6QDL_PAD_DISP0_DAT13__IPU1_DISP0_DATA13	0x38
+			MX6QDL_PAD_DISP0_DAT14__IPU1_DISP0_DATA14	0x38
+			MX6QDL_PAD_DISP0_DAT15__IPU1_DISP0_DATA15	0x38
+			MX6QDL_PAD_DISP0_DAT16__IPU1_DISP0_DATA16	0x38
+			MX6QDL_PAD_DISP0_DAT17__IPU1_DISP0_DATA17	0x38
+			MX6QDL_PAD_DISP0_DAT18__IPU1_DISP0_DATA18	0x38
+			MX6QDL_PAD_DISP0_DAT19__IPU1_DISP0_DATA19	0x38
+			MX6QDL_PAD_DISP0_DAT20__IPU1_DISP0_DATA20	0x38
+			MX6QDL_PAD_DISP0_DAT21__IPU1_DISP0_DATA21	0x38
+			MX6QDL_PAD_DISP0_DAT22__IPU1_DISP0_DATA22	0x38
+			MX6QDL_PAD_DISP0_DAT23__IPU1_DISP0_DATA23	0x38
+			MX6QDL_PAD_EIM_D27__GPIO3_IO27			0x120b0
+		>;
+	};
+
+	pinctrl_pwm1: pwm1-grp {
+		fsl,pins = <
+			MX6QDL_PAD_SD1_DAT3__PWM1_OUT		0x1b0b1
+		>;
+	};
+
+	pinctrl_touchscreen: touchscreen-grp {
+		fsl,pins = <
+			MX6QDL_PAD_GPIO_19__GPIO4_IO05		0x1b0b1
+		>;
+	};
+
 	pinctrl_pcie: pcie-grp {
 		fsl,pins = <
 			MX6QDL_PAD_CSI0_DATA_EN__GPIO5_IO20	0x1b0b1
@@ -139,6 +239,10 @@ MX6QDL_PAD_CSI0_DATA_EN__GPIO5_IO20	0x1b0b1
 	};
 };
 
+&ipu1_di0_disp0 {
+	remote-endpoint = <&lcd_display_in>;
+};
+
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
@@ -146,6 +250,13 @@ &pcie {
 	status = "okay";
 };
 
+&pwm1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm1>;
+	#pwm-cells = <3>;
+	status = "okay";
+};
+
 &ssi1 {
 	status = "okay";
 };
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
