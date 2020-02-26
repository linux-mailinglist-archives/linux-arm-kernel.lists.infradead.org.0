Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C26516F953
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 09:12:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LnkqG8iA0ymdTA2w7CdGVHSCIBdn7y28YqcNDvsJWNU=; b=Ttb9cpIiR16OSX
	C+0UQyaaAqkD801MCZ65bwRsQy+0yRPSFzRfv8Tc2s5Gm5L6TR05fd2w3uM9MocpU2FRV80A2XmKG
	rVRDRn0q7jNpoxIYIc+2RWUuL1Jr7YvueQgU57O5c69nl3SgTzbc1r1xUS/q3mQkrGHbpmY2PlayQ
	RPA4BQ3hNGi6naA71o8hf+uG9U8PousU2XUFhROHgAx7hePPf25ESKTbZVfKke7QuDJBw4JFxYJym
	MH/qF08Y4EMH0jZYh/oeBwEf8X3Kb0CWHSTjMi9ppWH/SimAViI2NWVuusqvOdmXWorBM0vPTx8dG
	0xJZ511Bv5LYDdz46Zgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6rnu-0002Fx-G4; Wed, 26 Feb 2020 08:12:26 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6rmL-0000vN-TN
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 08:10:51 +0000
Received: by mail-pf1-x441.google.com with SMTP id s1so1047374pfh.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 00:10:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1/9ulr35We1VvK4OKOtO+SeDdjZAIuN626KlRGL51e8=;
 b=Uj9USULV1YhIjRQTGet+GBQYuuhLAkRgQq5aOXkZU55ZeXZOwYCvjYC0XTbkwI02vn
 nMqNb637FbLBsLL+0OixEVNpFP/WYWrCLF5zLIEBTSZkXEK2J8hPyn24masq/KXBnUXK
 1WpXqTxgjbgl1eq/uxSXJMuc6aResWHy1sQuEaEYBEWdEyvPqtQts5z5Su639wYEgo9n
 wE96FuZQY46tDJyTJqt+ZJrzDYNCNenLNiqWFwxe/zxWzBuM58iQ9ur+6Ym5ldZxRpj8
 JJ2JlN+8/BPq8Wk9S0SAMAUumaOifHahGje65ULSbNA6Krngc4WuiBgliS4rekKjbPPq
 Xcow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1/9ulr35We1VvK4OKOtO+SeDdjZAIuN626KlRGL51e8=;
 b=NlA7PKzSo4EOEYlOtdfcH6TkSjbixH6f2CBb9+YjK0Qva2JOIWHVkd/xLF8DiM7+a5
 WsI9c+6xtz/2NumAXPb3HJFRydr5L7HJjDvivJsN7nfSEG7DEhH69XXTIvEZenriDrMi
 Y/e4D3KpvoqbzqXxLHj8aeWp4qLjT8qZkPhI2+wLfkiFn3RhC0Z7dPFHKp5axa/eBHDl
 /P2wVZuhjA35KPAjAYlfuV8D1o3WnCOLw0ZUU3WlqU13p/3JBnZcqIzYgbspdp0VpGuF
 FgeJtSaGyjIGdX5dS4zCvctLEovV3BWeFzMmx5oz2ugpokl4iACnNbBecKLEvWf5onEA
 Iiow==
X-Gm-Message-State: APjAAAW9K1sMiX2Ac7+xWeNX1IDTamXxZ1XKYfBb0FZh75fpIBHjo5qr
 ZkS5JBqo+VG0fyrC0fmOg4c=
X-Google-Smtp-Source: APXvYqwdqfkaKNsVj/z20Fl00qUooa5Fc8g4w6gy6KhAC3QgiEMz+qOhI4aMxTYoHDNd7Lx/skz8fQ==
X-Received: by 2002:a62:1883:: with SMTP id 125mr3012096pfy.166.1582704649041; 
 Wed, 26 Feb 2020 00:10:49 -0800 (PST)
Received: from anarsoul-thinkpad.lan (216-71-213-236.dyn.novuscom.net.
 [216.71.213.236])
 by smtp.gmail.com with ESMTPSA id v7sm1679230pfn.61.2020.02.26.00.10.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 00:10:48 -0800 (PST)
From: Vasily Khoruzhick <anarsoul@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime@cerno.tech>, Chen-Yu Tsai <wens@csie.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Torsten Duwe <duwe@suse.de>, Icenowy Zheng <icenowy@aosc.io>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Stephan Gerhold <stephan@gerhold.net>, Mark Brown <broonie@kernel.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Samuel Holland <samuel@sholland.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 6/6] arm64: allwinner: a64: enable LCD-related hardware for
 Pinebook
Date: Wed, 26 Feb 2020 00:10:11 -0800
Message-Id: <20200226081011.1347245-7-anarsoul@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200226081011.1347245-1-anarsoul@gmail.com>
References: <20200226081011.1347245-1-anarsoul@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_001050_010315_52B91C3C 
X-CRM114-Status: GOOD (  14.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [anarsoul[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Icenowy Zheng <icenowy@aosc.io>

Pinebook has an ANX6345 bridge connected to the RGB666 LCD output and
eDP panel input. The bridge is controlled via I2C that's connected to
R_I2C bus.

Enable all this hardware in device tree.

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
---
 .../dts/allwinner/sun50i-a64-pinebook.dts     | 61 ++++++++++++++++++-
 1 file changed, 60 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
index c06c540e6c08..0033f6a43d98 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
@@ -48,6 +48,18 @@ lid_switch {
 		};
 	};
 
+	panel_edp: panel-edp {
+		compatible = "neweast,wjfh116008a";
+		backlight = <&backlight>;
+		power-supply = <&reg_dc1sw>;
+
+		port {
+			panel_edp_in: endpoint {
+				remote-endpoint = <&anx6345_out_edp>;
+			};
+		};
+	};
+
 	reg_vbklt: vbklt {
 		compatible = "regulator-fixed";
 		regulator-name = "vbklt";
@@ -109,6 +121,10 @@ &dai {
 	status = "okay";
 };
 
+&de {
+	status = "okay";
+};
+
 &ehci0 {
 	phys = <&usbphy 0>;
 	phy-names = "usb";
@@ -119,6 +135,10 @@ &ehci1 {
 	status = "okay";
 };
 
+&mixer0 {
+	status = "okay";
+};
+
 &mmc0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&mmc0_pins>;
@@ -177,12 +197,38 @@ &pwm {
 	status = "okay";
 };
 
-/* The ANX6345 eDP-bridge is on r_i2c */
 &r_i2c {
 	clock-frequency = <100000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&r_i2c_pl89_pins>;
 	status = "okay";
+
+	anx6345: anx6345@38 {
+		compatible = "analogix,anx6345";
+		reg = <0x38>;
+		reset-gpios = <&pio 3 24 GPIO_ACTIVE_LOW>; /* PD24 */
+		dvdd25-supply = <&reg_dldo2>;
+		dvdd12-supply = <&reg_fldo1>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			anx6345_in: port@0 {
+				reg = <0>;
+				anx6345_in_tcon0: endpoint {
+					remote-endpoint = <&tcon0_out_anx6345>;
+				};
+			};
+
+			anx6345_out: port@1 {
+				reg = <1>;
+				anx6345_out_edp: endpoint {
+					remote-endpoint = <&panel_edp_in>;
+				};
+			};
+		};
+	};
 };
 
 &r_pio {
@@ -357,6 +403,19 @@ &sound {
 			"MIC2", "Internal Microphone Right";
 };
 
+&tcon0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&lcd_rgb666_pins>;
+
+	status = "okay";
+};
+
+&tcon0_out {
+	tcon0_out_anx6345: endpoint {
+		remote-endpoint = <&anx6345_in_tcon0>;
+	};
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_pb_pins>;
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
