Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAA1411F97F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 18:03:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wjjH/SgHYj1VsNmzwN+1kRLTjD7mGuTt6cQDcuEm2EI=; b=T/1rFnQBV6qk4W
	8a+5CkvOT/WD9Rk+3JoN+1odgrERCfS7q0z22zkbmfD5SYEObElpxg1jigYSsG+Kgqus69lDzy2H3
	Yqvl2X9y9eVBcVkMKoLkEyQBwR0DFVbYrvD286OooAEH06rzrAyUGBhTKE/9qCuda/LOpWc9WC6dW
	Kmoa55y3/GJsxo2BdisQG4Ntf2RCg1z6iJQ6g+1yO32EwJql5RTkzKTU/qGprElSsvvajTv3y1KHw
	UzLBzGtpn0IcWAC9o38WwcqTWMh0xA8GnDKOgKjWlj7qvZbNGDqTGdSftxXHRcZ0D95gFX8DWN8lw
	Mybcmpe6c9UAgziLIRlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igXIZ-0001dU-Tu; Sun, 15 Dec 2019 17:03:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igXF4-0005nf-AA
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Dec 2019 16:59:42 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F1ED7246AB;
 Sun, 15 Dec 2019 16:59:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576429172;
 bh=m5GPdarvxrtjsXfbUyU7e3PQz2NgpIQ560CvjxxvtEw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FBfdymPna5qbjaty8485LW2z9uHzMwnu9A50cgCugkkgPnwnqZTuZLMAYFFazwb/I
 6/9hHMyxaSzhVCW39FqIabcI7XDijrgIRkhsX4LeJbTTpbPg5besqa6/Z3usQkY3dt
 dmFnfm2RRY+ciO+eprRDIY71e2cqzuzS1e3gI9MM=
Received: by wens.tw (Postfix, from userid 1000)
 id 97FC35FF78; Mon, 16 Dec 2019 00:59:26 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <mripard@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 14/14] [DO NOT MERGE] ARM: dts: sun8i-r40: bananapi-m2-ultra:
 Enable OV5640 camera
Date: Mon, 16 Dec 2019 00:59:24 +0800
Message-Id: <20191215165924.28314-15-wens@kernel.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191215165924.28314-1-wens@kernel.org>
References: <20191215165924.28314-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_085938_425538_6B5AE9E2 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Chen-Yu Tsai <wens@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

Bananapi offers a small OV5640 based camera module, attached via an FPC
connector.

Add the related regulator constraints, and hook everything up.

Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 .../boot/dts/sun8i-r40-bananapi-m2-ultra.dts  | 67 +++++++++++++++++++
 1 file changed, 67 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-r40-bananapi-m2-ultra.dts b/arch/arm/boot/dts/sun8i-r40-bananapi-m2-ultra.dts
index 42d62d1ba1dc..86183d40c7af 100644
--- a/arch/arm/boot/dts/sun8i-r40-bananapi-m2-ultra.dts
+++ b/arch/arm/boot/dts/sun8i-r40-bananapi-m2-ultra.dts
@@ -113,6 +113,24 @@ &ahci {
 	status = "okay";
 };
 
+&csi0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&csi0_8bits_pins>;
+	status = "okay";
+
+	port {
+		/* Parallel bus endpoint */
+		csi0_from_ov5640: endpoint {
+			remote-endpoint = <&ov5640_to_csi0>;
+			bus-width = <8>;
+			hsync-active = <1>; /* Active high */
+			vsync-active = <1>; /* Active high */
+			data-active = <1>;  /* Active high */
+			pclk-sample = <1>;  /* Rising */
+		};
+	};
+};
+
 &de {
 	status = "okay";
 };
@@ -164,6 +182,37 @@ axp22x: pmic@34 {
 
 #include "axp22x.dtsi"
 
+&i2c4 {
+	status = "okay";
+
+	ov5640: camera@3c {
+		compatible = "ovti,ov5640";
+		reg = <0x3c>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&csi0_mclk_pin>;
+		clocks = <&ccu CLK_CSI0_MCLK>;
+		clock-names = "xclk";
+
+		reset-gpios = <&pio 8 7 GPIO_ACTIVE_LOW>; /* PI7 */
+		powerdown-gpios = <&pio 8 6 GPIO_ACTIVE_HIGH>; /* PI6 */
+		AVDD-supply = <&reg_aldo1>;
+		DOVDD-supply = <&reg_eldo1>;
+		DVDD-supply = <&reg_eldo2>;
+
+		port {
+			ov5640_to_csi0: endpoint {
+				remote-endpoint = <&csi0_from_ov5640>;
+				bus-width = <8>;
+				data-shift = <2>;
+				hsync-active = <1>; /* Active high */
+				vsync-active = <1>; /* Active high */
+				data-active = <1>;  /* Active high */
+				pclk-sample = <1>;  /* Rising */
+			};
+		};
+	};
+};
+
 &mmc0 {
 	vmmc-supply = <&reg_dcdc1>;
 	bus-width = <4>;
@@ -209,6 +258,12 @@ &pio {
 	vcc-pg-supply = <&reg_dldo1>;
 };
 
+&reg_aldo1 {
+	regulator-name = "csi-avdd";
+	regulator-min-microvolt = <2800000>;
+	regulator-max-microvolt = <2800000>;
+};
+
 &reg_aldo2 {
 	regulator-min-microvolt = <2500000>;
 	regulator-max-microvolt = <2500000>;
@@ -289,6 +344,18 @@ &reg_dldo4 {
 	regulator-name = "vdd2v5-sata";
 };
 
+&reg_eldo1 {
+	regulator-name = "csi-iovcc";
+	regulator-min-microvolt = <2800000>;
+	regulator-max-microvolt = <2800000>;
+};
+
+&reg_eldo2 {
+	regulator-name = "csi-dvdd";
+	regulator-min-microvolt = <1500000>;
+	regulator-max-microvolt = <1500000>;
+};
+
 &reg_eldo3 {
 	regulator-min-microvolt = <1200000>;
 	regulator-max-microvolt = <1200000>;
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
