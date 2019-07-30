Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7370C7AB9A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 16:58:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Fqg3zwBfbX8pVxWIT3aExhkVf77zEQmOabRomLt+Ko=; b=aWGiAmUnDxtTLG
	x7cdubH2Riz+wpQHh8h6k3vIrmNjJ2H+77gR5by7qqEOJPBm4rShZ9NMPD7l/+bkDdVMiTZ36xRnU
	QFtB+vqDYvOk5XBJN2waGYOPkZ9CCtKGYgBv2en1EKNEXGsnK9EAZgIsbP77UGY+YixtVYahqukDY
	/voDb5a07jhjYZtdhSZCogtWpKLAhHGvU2M1y0fWpLc3+IVut4IWVPvJPSNLAua+VDx/VrHhafglq
	UwOFhWoLjV3x6cTFMyeAshaJjyFsbhvwqk06q3ccdNZwmdzVyQSojkCTTZKu4eiYLmOuxU7dMya4a
	SPI2lAB0KSrMvbjwaSzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsTaS-0003ao-Kw; Tue, 30 Jul 2019 14:58:48 +0000
Received: from mxout017.mail.hostpoint.ch ([2a00:d70:0:e::317])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsTZa-0002or-AL
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 14:57:55 +0000
Received: from [10.0.2.46] (helo=asmtp013.mail.hostpoint.ch)
 by mxout017.mail.hostpoint.ch with esmtp (Exim 4.92 (FreeBSD))
 (envelope-from <dev@pschenker.ch>)
 id 1hsTZV-000Exc-TP; Tue, 30 Jul 2019 16:57:49 +0200
Received: from [46.140.72.82] (helo=philippe-pc.toradex.int)
 by asmtp013.mail.hostpoint.ch with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91 (FreeBSD))
 (envelope-from <dev@pschenker.ch>)
 id 1hsTP6-000Mva-0X; Tue, 30 Jul 2019 16:47:04 +0200
X-Authenticated-Sender-Id: dev@pschenker.ch
From: Philippe Schenker <dev@pschenker.ch>
To: marcel.ziswiler@toradex.com, max.krummenacher@toradex.com, stefan@agner.ch,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 14/22] ARM: dts: apalis-imx6: Add some example I2C devices
Date: Tue, 30 Jul 2019 16:46:41 +0200
Message-Id: <20190730144649.19022-15-dev@pschenker.ch>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190730144649.19022-1-dev@pschenker.ch>
References: <20190730144649.19022-1-dev@pschenker.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_075754_432178_512BD56E 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a00:d70:0:e:0:0:0:317 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Philippe Schenker <philippe.schenker@toradex.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Philippe Schenker <philippe.schenker@toradex.com>

Those devices are used in conjunction with Toradex's evalboard.

Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
---

 arch/arm/boot/dts/imx6q-apalis-eval.dts | 95 +++++++++++++++++++++++++
 1 file changed, 95 insertions(+)

diff --git a/arch/arm/boot/dts/imx6q-apalis-eval.dts b/arch/arm/boot/dts/imx6q-apalis-eval.dts
index 60ec5e89d215..33193d6137c0 100644
--- a/arch/arm/boot/dts/imx6q-apalis-eval.dts
+++ b/arch/arm/boot/dts/imx6q-apalis-eval.dts
@@ -140,6 +140,30 @@
 		regulator-max-microvolt = <3300000>;
 		regulator-always-on;
 	};
+
+	reg_1p8v: regulator-1p8v {
+		compatible = "regulator-fixed";
+		regulator-name = "1P8V";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-always-on;
+	};
+
+	reg_2p5v: regulator-2p5v {
+		compatible = "regulator-fixed";
+		regulator-name = "2P5V";
+		regulator-min-microvolt = <2500000>;
+		regulator-max-microvolt = <2500000>;
+		regulator-always-on;
+	};
+
+	reg_3p3v: regulator-3p3v {
+		compatible = "regulator-fixed";
+		regulator-name = "3P3V";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
 };
 
 &backlight {
@@ -204,6 +228,77 @@
  */
 &i2c3 {
 	status = "okay";
+
+	adv7280: adv7280@21 {
+		compatible = "adv7280";
+		reg = <0x21>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_ipu1_csi0 &pinctrl_cam_mclk>;
+		clocks = <&clks 200>;
+		clock-names = "csi_mclk";
+		DOVDD-supply = <&reg_3p3v>;
+		AVDD-supply = <&reg_3p3v>;
+		DVDD-supply = <&reg_3p3v>;
+		PVDD-supply = <&reg_3p3v>;
+		csi_id = <0>;
+		mclk = <24000000>;
+		mclk_source = <1>;
+		status = "okay";
+	};
+
+	/* Video ADC on Analog Camera Module */
+	adv7180: adv7180@21 {
+		compatible = "adv,adv7180";
+		reg = <0x21>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_ipu1_csi0 &pinctrl_cam_mclk>;
+		clocks = <&clks 200>;
+		clock-names = "csi_mclk";
+		DOVDD-supply = <&reg_3p3v>; /* 3.3v */
+		AVDD-supply = <&reg_3p3v>;  /* 1.8v */
+		DVDD-supply = <&reg_3p3v>;  /* 1.8v */
+		PVDD-supply = <&reg_3p3v>;  /* 1.8v */
+		csi_id = <0>;
+		mclk = <24000000>;
+		mclk_source = <1>;
+		cvbs = <1>;
+		status = "disabled";
+	};
+
+	max9526: max9526@20 {
+		compatible = "maxim,max9526";
+		reg = <0x20>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_ipu1_csi0 &pinctrl_cam_mclk>;
+		clocks = <&clks 200>;
+		clock-names = "csi_mclk";
+		DVDDIO-supply = <&reg_3p3v>; /* 3.3v */
+		AVDD-supply = <&reg_3p3v>;  /* 1.8v */
+		DVDD-supply = <&reg_3p3v>;  /* 1.8v */
+		csi_id = <0>;
+		mclk = <24000000>;
+		mclk_source = <1>;
+		cvbs = <1>;
+		status = "okay";
+	};
+
+	ov5640_mipi@3c {
+		compatible = "ovti,ov564x_mipi";
+		reg = <0x3c>;
+		clocks = <&clks 147>;
+		clock-names = "csi_mclk";
+		DOVDD-supply = <&reg_1p8v>;
+		AVDD-supply = <&reg_2p5v>;
+		DVDD-supply = <&reg_1p8v>;
+		pwn-gpios = <&gpio2 5 GPIO_ACTIVE_HIGH>;
+		rst-gpios = <&gpio2 4 GPIO_ACTIVE_LOW>;
+		ipu_id = <0>;
+		csi_id = <1>;
+		mclk = <22000000>;
+		mclk_source = <0>;
+		pwms = <&pwm3 0 45 0>;
+		status = "okay";
+	};
 };
 
 &ipu1_di1_disp1 {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
