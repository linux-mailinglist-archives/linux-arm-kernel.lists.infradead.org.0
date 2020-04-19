Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E14E1AF748
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 07:40:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xxV/DKHujhONPrlrGp+F3e6JT4UEWi2uvRajv5E2G8c=; b=Up92SXM649bDERQfBaleNjlwuy
	Cfo1S+2yYy0yZhLKrtv1unyggorJ551tUu+TdmDPqFzUJE7KE2/qFmSoBhqXUs4b8vagoqh1w3lbD
	I5KYMXTSbGwj7biiWBKyI5aDEJR45j4LvGNGm6zT+BJ6DsT9+5zlNc4L46Hd6d14hzvle9sVw2SD7
	Ky2rC8ydqWiGWQDDwhRfCV4AiYS7Ej+pYTpCiokfw5ZlTrYMQzQbRuK/WsBJsgYQSpmePWDpT2czd
	D+8djPLYlBT1INimHz7XdlOvgUyyOcSU9eFbVVAV+de1dd4s9nCpryfOtDQHhfYfi1AvEWuuef5N9
	3BuJ0y4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQ2h3-0000WZ-7p; Sun, 19 Apr 2020 05:40:37 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ2f6-0004rJ-Ax; Sun, 19 Apr 2020 05:38:38 +0000
Received: by mail-lf1-x141.google.com with SMTP id 198so5205894lfo.7;
 Sat, 18 Apr 2020 22:38:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=yYC0sRuA/TYJuw5oAwEPc/sM406ZLPi+JH8RytrM9Xo=;
 b=NzhDfIBcxQ9+BGr6tDprN7zGw5HKY4gX+mcL3G3z7uYLtCZtNHXP9yA348ho+833z1
 MwScwF7kHs438Yxx5LMQFkFMaMqDMIHYCJdee1HhclVCseFjPvmnH7InR2iC/jEjMOVf
 /sL8xEkdFho9mrF86Dl6WVxT0u7EqRtwgzSfkQkZt4xkscKomcn4B07b2N7XdDKsX2YJ
 20Ge+29mpe2DuFU5KchFkLsduui0eQ7upSinWBV3Y7tmvq+J0sgq32uDj8/RMxXxakmi
 xUp8ebHfDdp0hbBByacSwl2DWAdu5OZODSANMi1z9tquYKMTI3MZCUh0C+dmPC3Kg7ll
 JRbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=yYC0sRuA/TYJuw5oAwEPc/sM406ZLPi+JH8RytrM9Xo=;
 b=CYzR6iLI+CaNdx5n3mXYo6tPbR9iRkTTJsJ6+Zvu4M0v0CYpqeQLd+/MmY0cbndwxE
 py4FJ0K80rYnuleCBMgrUzwA0AzIx3PmXUNk4Oal90WbjWSCp1qfAWj2aOlLic+hzYUI
 h66CDz5se1i+AMg8Kz+RtRPlSx/tBaaYvV3xFw8yGSFe8Yoq0U43EvzI9SuaDjLy4f+3
 zg8FSdKzVIALAuBe6NZoLXHq5NrEjidCiwI9AoyPZ19QS6/p4zQuImrjzFS4DOkhbbB2
 geXFeEjis5ONifOPHx+kgkrmH9fO9QN9U03Fp6DyXEPH1BVl2wyhIw9C3SZDv0kzo0uv
 Vt+A==
X-Gm-Message-State: AGi0PublhIdVLio1DnG70p0bespxkVgKVWd+95BZA49P/vioQmrhwEau
 WC6hZC5401QXh9trUFj9xjw=
X-Google-Smtp-Source: APiQypJbGGSWUEbOeScJQPCu106dBdxhVhIfm+Fd+KW3uFwOL76qntlb4xO1N90B/fl+AQPJErEfbg==
X-Received: by 2002:a19:d3:: with SMTP id 202mr6530212lfa.24.1587274714755;
 Sat, 18 Apr 2020 22:38:34 -0700 (PDT)
Received: from localhost.localdomain ([87.200.95.144])
 by smtp.gmail.com with ESMTPSA id r23sm20416619ljh.34.2020.04.18.22.38.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Apr 2020 22:38:34 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 5/5] arm64: dts: meson: convert x96max to hdmi dtsi
Date: Sun, 19 Apr 2020 05:38:15 +0000
Message-Id: <20200419053815.15731-6-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200419053815.15731-1-christianshewitt@gmail.com>
References: <20200419053815.15731-1-christianshewitt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_223836_472340_FC3DDB03 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christianshewitt[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Christian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Simplify the X96-max dts by using meson-g12-audio-hdmi.dtsi

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 .../boot/dts/amlogic/meson-g12a-x96-max.dts   | 131 +-----------------
 1 file changed, 1 insertion(+), 130 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
index 1b07c8c06eac..3ede72fc8f53 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
@@ -6,9 +6,9 @@
 /dts-v1/;
 
 #include "meson-g12a.dtsi"
+#include "meson-g12-audio-hdmi-spdif.dtsi"
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/gpio/meson-g12a-gpio.h>
-#include <dt-bindings/sound/meson-g12a-tohdmitx.h>
 
 / {
 	compatible = "amediatech,x96-max", "amlogic,g12a";
@@ -19,13 +19,6 @@
 		ethernet0 = &ethmac;
 	};
 
-	spdif_dit: audio-codec-1 {
-		#sound-dai-cells = <0>;
-		compatible = "linux,spdif-dit";
-		status = "okay";
-		sound-name-prefix = "DIT";
-	};
-
 	chosen {
 		stdout-path = "serial0:115200n8";
 	};
@@ -148,86 +141,6 @@
 		regulator-always-on;
 	};
 
-	sound {
-		compatible = "amlogic,axg-sound-card";
-		model = "G12A-X96-MAX";
-		audio-aux-devs = <&tdmout_b>;
-		audio-routing = "TDMOUT_B IN 0", "FRDDR_A OUT 1",
-				"TDMOUT_B IN 1", "FRDDR_B OUT 1",
-				"TDMOUT_B IN 2", "FRDDR_C OUT 1",
-				"TDM_B Playback", "TDMOUT_B OUT",
-				"SPDIFOUT IN 0", "FRDDR_A OUT 3",
-				"SPDIFOUT IN 1", "FRDDR_B OUT 3",
-				"SPDIFOUT IN 2", "FRDDR_C OUT 3";
-
-		assigned-clocks = <&clkc CLKID_MPLL2>,
-				  <&clkc CLKID_MPLL0>,
-				  <&clkc CLKID_MPLL1>;
-		assigned-clock-parents = <0>, <0>, <0>;
-		assigned-clock-rates = <294912000>,
-				       <270950400>,
-				       <393216000>;
-		status = "okay";
-
-		dai-link-0 {
-			sound-dai = <&frddr_a>;
-		};
-
-		dai-link-1 {
-			sound-dai = <&frddr_b>;
-		};
-
-		dai-link-2 {
-			sound-dai = <&frddr_c>;
-		};
-
-		/* 8ch hdmi interface */
-		dai-link-3 {
-			sound-dai = <&tdmif_b>;
-			dai-format = "i2s";
-			dai-tdm-slot-tx-mask-0 = <1 1>;
-			dai-tdm-slot-tx-mask-1 = <1 1>;
-			dai-tdm-slot-tx-mask-2 = <1 1>;
-			dai-tdm-slot-tx-mask-3 = <1 1>;
-			mclk-fs = <256>;
-
-			codec {
-				sound-dai = <&tohdmitx TOHDMITX_I2S_IN_B>;
-			};
-		};
-
-		/* spdif hdmi or toslink interface */
-		dai-link-4 {
-			sound-dai = <&spdifout>;
-
-			codec-0 {
-				sound-dai = <&spdif_dit>;
-			};
-
-			codec-1 {
-				sound-dai = <&tohdmitx TOHDMITX_SPDIF_IN_A>;
-			};
-		};
-
-		/* spdif hdmi interface */
-		dai-link-5 {
-			sound-dai = <&spdifout_b>;
-
-			codec {
-				sound-dai = <&tohdmitx TOHDMITX_SPDIF_IN_B>;
-			};
-		};
-
-		/* hdmi glue */
-		dai-link-6 {
-			sound-dai = <&tohdmitx TOHDMITX_I2S_OUT>;
-
-			codec {
-				sound-dai = <&hdmi_tx>;
-			};
-		};
-	};
-
 	wifi32k: wifi32k {
 		compatible = "pwm-clock";
 		#clock-cells = <0>;
@@ -236,10 +149,6 @@
 	};
 };
 
-&arb {
-	status = "okay";
-};
-
 &cec_AO {
 	pinctrl-0 = <&cec_ao_a_h_pins>;
 	pinctrl-names = "default";
@@ -254,10 +163,6 @@
 	hdmi-phandle = <&hdmi_tx>;
 };
 
-&clkc_audio {
-	status = "okay";
-};
-
 &cpu0 {
 	cpu-supply = <&vddcpu>;
 	operating-points-v2 = <&cpu_opp_table>;
@@ -292,18 +197,6 @@
 	};
 };
 
-&frddr_a {
-	status = "okay";
-};
-
-&frddr_b {
-	status = "okay";
-};
-
-&frddr_c {
-	status = "okay";
-};
-
 &hdmi_tx {
 	status = "okay";
 	pinctrl-0 = <&hdmitx_hpd_pins>, <&hdmitx_ddc_pins>;
@@ -457,25 +350,3 @@
 	vmmc-supply = <&vcc_3v3>;
 	vqmmc-supply = <&flash_1v8>;
 };
-
-&spdifout {
-	pinctrl-0 = <&spdif_out_h_pins>;
-	pinctrl-names = "default";
-	status = "okay";
-};
-
-&spdifout_b {
-	status = "okay";
-};
-
-&tdmif_b {
-	status = "okay";
-};
-
-&tdmout_b {
-	status = "okay";
-};
-
-&tohdmitx {
-	status = "okay";
-};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
