Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C2D71D20FB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 23:26:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=47Y7CJbBsNhuTLvfjzEhQz00f9qt1fq1eDxjl+gmEcU=; b=Nn89BVfTzx3+6W
	JF+77/OsfcgXAXvSooCteAC1uQQouEqNzcNtKzVqg4Jt2X8Sqs9f3hgXyO/gz1k7l4EXDujZCnxkE
	2bVD3LJ2HKkW7Ko8rDJi/JsI5uizDYiHeJnT5iWJaYAXflxbJIfY58AtPdozKbRLIWRDFpzJ1RIPL
	xHb2CkId5JE3Np2KKc221AmKtoXWjWYzdCWP93fYb+uY5pknSxI5+wUEA+m/vIlmN+Pl5r8/lQ/7S
	0P4MFPEp/G+nzvwatVyErk5hKElF/exEV2YbDNuRLynnV9/lfMhNslmFa/xSJR5lXXSqEtNXn4cE3
	BouAWSO3SSElgaVk1W8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYyt9-00006b-IE; Wed, 13 May 2020 21:26:03 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYys6-0005Lf-Hu
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 21:25:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1589405096; bh=EGlnhGF9HFzfhNynA3a7K3hCeMUdwmy+scXIROM79hs=;
 h=From:To:Cc:Subject:Date:References:From;
 b=WKFWqdKGe/1UtrdK8Qxu+U/Xkc69HyrKL129zl+D9hMucBoLVpby0z4N0/Vbk8fDh
 kEvdYTTsJ3AOFUqTT7BM0+9kl41DX7U+3Z+SCwTaWFsoDZeJ8ECtvnYR4nom3k6sEz
 OIz6p1lX9YD5uOUqYBVVqzYbue4KiGI32nqhh5HA=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com, Thierry Reding <thierry.reding@gmail.com>,
 Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Linus Walleij <linus.walleij@linaro.org>, Icenowy Zheng <icenowy@aosc.io>
Subject: [PATCH v3 4/5] arm64: dts: sun50i-a64-pinephone: Enable LCD support
 on PinePhone
Date: Wed, 13 May 2020 23:24:50 +0200
Message-Id: <20200513212451.1919013-5-megous@megous.com>
In-Reply-To: <20200513212451.1919013-1-megous@megous.com>
References: <20200513212451.1919013-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_142458_763056_5D2B2677 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Ondrej Jirman <megous@megous.com>, devicetree@vger.kernel.org,
 Samuel Holland <samuel@sholland.org>, Bhushan Shah <bshah@kde.org>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Luca Weiss <luca@z3ntu.xyz>, Martijn Braam <martijn@brixit.nl>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Icenowy Zheng <icenowy@aosc.io>

PinePhone uses PWM backlight and a XBD599 LCD panel over DSI for
display.

Backlight levels curve was optimized by Martijn Braam using a
lux meter.

Add its device nodes.

Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
Signed-off-by: Martijn Braam <martijn@brixit.nl>
Signed-off-by: Ondrej Jirman <megous@megous.com>
---
 .../allwinner/sun50i-a64-pinephone-1.1.dts    | 19 ++++++++++
 .../dts/allwinner/sun50i-a64-pinephone.dtsi   | 35 +++++++++++++++++++
 2 files changed, 54 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone-1.1.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone-1.1.dts
index 06a775c41664..3e99a87e9ce5 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone-1.1.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone-1.1.dts
@@ -9,3 +9,22 @@ / {
 	model = "Pine64 PinePhone Braveheart (1.1)";
 	compatible = "pine64,pinephone-1.1", "allwinner,sun50i-a64";
 };
+
+&backlight {
+	power-supply = <&reg_ldo_io0>;
+	/*
+	 * PWM backlight circuit on this PinePhone revision was changed since
+	 * 1.0, and the lowest PWM duty cycle that doesn't lead to backlight
+	 * being off is around 20%. Duty cycle for the lowest brightness level
+	 * also varries quite a bit between individual boards, so the lowest
+	 * value here was chosen as a safe default.
+	 */
+	brightness-levels = <
+		774  793  814  842
+		882  935  1003 1088
+		1192 1316 1462 1633
+		1830 2054 2309 2596
+		2916 3271 3664 4096>;
+	num-interpolated-steps = <50>;
+	default-brightness-level = <400>;
+};
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi
index cefda145c3c9..e60b57f8ac14 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi
@@ -16,6 +16,13 @@ aliases {
 		serial0 = &uart0;
 	};
 
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		pwms = <&r_pwm 0 50000 PWM_POLARITY_INVERTED>;
+		enable-gpios = <&pio 7 10 GPIO_ACTIVE_HIGH>; /* PH10 */
+		/* Backlight configuration differs per PinePhone revision. */
+	};
+
 	chosen {
 		stdout-path = "serial0:115200n8";
 	};
@@ -84,6 +91,30 @@ &dai {
 	status = "okay";
 };
 
+&de {
+	status = "okay";
+};
+
+&dphy {
+	status = "okay";
+};
+
+&dsi {
+	vcc-dsi-supply = <&reg_dldo1>;
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	panel@0 {
+		compatible = "xingbangda,xbd599", "sitronix,st7703";
+		reg = <0>;
+		reset-gpios = <&pio 3 23 GPIO_ACTIVE_LOW>; /* PD23 */
+		iovcc-supply = <&reg_dldo2>;
+		vcc-supply = <&reg_ldo_io0>;
+		backlight = <&backlight>;
+	};
+};
+
 &ehci0 {
 	status = "okay";
 };
@@ -188,6 +219,10 @@ &r_pio {
 	 */
 };
 
+&r_pwm {
+	status = "okay";
+};
+
 &r_rsb {
 	status = "okay";
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
