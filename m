Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A144F16595E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 09:37:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y/v3WmZ+e5sTyc/wF6LPB34oMkk70l5mEzqV01TIVNI=; b=Bw02bVH69k5AqJ
	1J+b8EM+eAgz5/nScvHV0akb/jzl0H5X0/GUSXTJp47xmasUr0kSmWyyLCZrNeBAvZGVZmJ/Ov1CS
	RXFT0EtY5gPZNBisV5ebHzDM9GcAxN5GkShyzZXZLjblJXmcWt4QLOdSVY3prdzUDqPZcL/7ybubN
	mru/reXAfPY+Z870/HbaNHIrp8B+sjtZ0Hqg2zs8MU5lNc/E8fYzgA6X9JQ6+Za/xQJXAH56VpTgu
	NHYGNqfBRwBptjBX2BDdY83EaPkLgQf6xs3BKuyQEUSwmzZ/3tAv7B8AP9O2fFNC1UH9DpijSuami
	xXaplpPlUaAKZStMW8hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4hKt-0001a9-QS; Thu, 20 Feb 2020 08:37:31 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4hJQ-0000Fl-8u
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 08:36:01 +0000
Received: by mail-pl1-x641.google.com with SMTP id a6so1280999plm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 00:36:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yOuik/xQdjhmgeRHVU1F9OsoH/tgDDUcKjmqkiPVOZc=;
 b=GTuFKk9sVnbtm+TPdAJUPyFffbMj1DJ+Rq88BP21LKKkeKiGW+wCr7hsWkdu7ER8NT
 NAA1NRJv6+V2QGPJSri6UdTNdQTinJbxpLTAGyZayu2rv0DsRXTpm34mpyAmGI1+mp1g
 SgXCqUVLwGD2J1gLOa8WBYApqlJLK6Ra2CUEdSnKCbor9k7VUmvzpTxjJpx+ooEwDZVg
 yltg69Q6c0t0vynFAUjlc8NIKqVFERTTP4XSE6LpDhGFLMyT0xeWtPHU32YCspuiBpCe
 Hj2LJJ8Ow1f8dt07GHr0P0kBMTCc9Vp96EDwrU9dwMLg6PW+PGZ9lUAaX8CdJxNxgWjj
 QRVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yOuik/xQdjhmgeRHVU1F9OsoH/tgDDUcKjmqkiPVOZc=;
 b=XWTuZYu1unSkS1Fit27InCXyoDpbVRgyP88tSnyIyBXXto7gwBpd4sHs8xhTQY21tq
 9iSMmhdLxAXdhj8hTptmzfl0Ha0d5+Z14oHvPqQxxq5C5g8F9l+sw7MxVxLH+0cDykx/
 810Wel3iXHX/NQwKRMbujHBRktjp3cOQqzqRRBaqHscIHeCz/VD+Jm335pitkwsB2ugx
 4AOO64WwnbpSlug0v7hjnfGx+OZz6gP/LED/47lJgAhjXxxFrVyLsCmAINZdwMxor+M4
 +OUqjkrPdGJY8t7BxqfyB1r4+3emzVO8lihhTJthGqDmDqQAJmqC49Kd2pqMkm2A5hK7
 2s3Q==
X-Gm-Message-State: APjAAAVB96oyh84Yw4DQVqQOP1YOmjyG7y7I7+EjS6Yj6BUrbxk9Nkh8
 WY0m2SFyMI1d9nY9N+es6TytzLFpS/E=
X-Google-Smtp-Source: APXvYqx61DAP56pqHMjI66GBxwpRYUpggqeu+U1edpVHeDuWzdLliNY2/SWqE8LcxSU8RBlwVPhkhA==
X-Received: by 2002:a17:90a:e397:: with SMTP id
 b23mr2218837pjz.135.1582187759650; 
 Thu, 20 Feb 2020 00:35:59 -0800 (PST)
Received: from anarsoul-thinkpad.lan (216-71-213-236.dyn.novuscom.net.
 [216.71.213.236])
 by smtp.gmail.com with ESMTPSA id l13sm2319038pjq.23.2020.02.20.00.35.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Feb 2020 00:35:59 -0800 (PST)
From: Vasily Khoruzhick <anarsoul@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime@cerno.tech>, Chen-Yu Tsai <wens@csie.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Icenowy Zheng <icenowy@aosc.io>, Torsten Duwe <duwe@suse.de>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Stephan Gerhold <stephan@gerhold.net>, Mark Brown <broonie@kernel.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Samuel Holland <samuel@sholland.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 6/6] arm64: allwinner: a64: enable LCD-related hardware for
 Pinebook
Date: Thu, 20 Feb 2020 00:35:08 -0800
Message-Id: <20200220083508.792071-7-anarsoul@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200220083508.792071-1-anarsoul@gmail.com>
References: <20200220083508.792071-1-anarsoul@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_003600_332996_189129B1 
X-CRM114-Status: GOOD (  14.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [anarsoul[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

From: Icenowy Zheng <icenowy@aosc.io>

Pinebook has an ANX6345 bridge connected to the RGB666 LCD output and
eDP panel input. The bridge is controlled via I2C that's connected to
R_I2C bus.

Enable all this hardware in device tree.

Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
---
 .../dts/allwinner/sun50i-a64-pinebook.dts     | 69 ++++++++++++++++++-
 1 file changed, 68 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
index c06c540e6c08..f5633f550d8a 100644
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
@@ -177,12 +197,45 @@ &pwm {
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
+				#address-cells = <1>;
+				#size-cells = <0>;
+				reg = <0>;
+				anx6345_in_tcon0: endpoint@0 {
+					reg = <0>;
+					remote-endpoint = <&tcon0_out_anx6345>;
+				};
+			};
+
+			anx6345_out: port@1 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				reg = <1>;
+
+				anx6345_out_edp: endpoint@0 {
+					reg = <0>;
+					remote-endpoint = <&panel_edp_in>;
+				};
+			};
+		};
+	};
 };
 
 &r_pio {
@@ -357,6 +410,20 @@ &sound {
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
+	tcon0_out_anx6345: endpoint@0 {
+		reg = <0>;
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
