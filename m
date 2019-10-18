Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95522DCB09
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 18:31:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=04V3ydgqO1wuZyVcR3VpPrvVR6LojBHfJK/YmhLZqq0=; b=quD
	ca/79Pnds1o2LkXuIhQh+W3iXdyB3FxxhbXzSgErRpc+3LWJ5aMmw44xQO2iS9E1+PdKeCs/f2HVc
	muI5n6BcyfcRRz0HwzvG07908OR/kPu8i8qbhJU6wtunG2Wa4mChzh1v9Y57uhwqeZebjFam/7mkJ
	QDjaDFS1dP/Tp0BF5XG45aLCZr3UNtnOimMllycYBYH6tiKE1ViEzTPvwR/79DpZmw2VNxR93CJHs
	0xRN119QWgGE3NaWK2TjWvDUYRrJMlE7SXRNpSHB8VC3KxHZQq8elfXNvt0kd80D/bnmT1eOtypx3
	r9pkkQ99sjuCs0y9IGWcERyhUi4flcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLV9c-0008En-Fe; Fri, 18 Oct 2019 16:31:04 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLV9I-0008Dn-5T; Fri, 18 Oct 2019 16:30:45 +0000
Received: by mail-pl1-x643.google.com with SMTP id k7so3108870pll.1;
 Fri, 18 Oct 2019 09:30:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=ioUxflPJk241Sd8uCqW+4LLu7go7mYYjazg2y5D+euI=;
 b=Noahe+cw+oe1BNvUPmv9cmXuYAKMcdh3TkhmHpUDgLyEFiBRsD2jru5PXvGJv6MqXD
 /XE4wG0iZksfhB3BVRXjItDttPFMoTynMQEr4YV3TzLLTmoj2anNAaQxKvmiwQtaGAYW
 ebL2vANtuNHEEWUB7RMeOcu/IHGCk56GOas1WYXY1J1qi9OmkvE1W1CQ2hLaOSqbZ7wC
 jfGIXBjPUYCaCteWsopRhzZPIPrQjFGm7/5E1yJI1WYUzlxKDM7ItznQIpyo3BYb58Tu
 HuaAgYGftDjRcrkxwaBmPCVYz/uxrugxf8eOXf9Ex0kEZJRbcZNZT4JMpBNXeqqjElUq
 jc3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ioUxflPJk241Sd8uCqW+4LLu7go7mYYjazg2y5D+euI=;
 b=KoIVtV8OouBiXpNlwRSDMWVzD4GeEspMohJBNBNjexAPLBF3KgnxIpX8JgTqU8b1St
 6eS3joKBngon9yYXxIdrouO9pLt37Va7rhoRyomAR2MbcYayk+VKI//vAu69JtMdOSAc
 hqajnGXA8GlnQA5qSGXNKkzSDEOZocPZwgrYRMrq6VTNFgLpFRwmuzNcZaAy9I7fdbVK
 VvjrfckAY2GKa7YubbhXodYBPF12uu/DdqXhG6UMoxmpJg+/l70EzFqR9DaxcVy92m9P
 /lZN6d9U8y45IJsW9czrIXxCw5wdH+/6CvzIFYjntqhdG5tIAQS0uJRSdyBrERn7nbmz
 OM0g==
X-Gm-Message-State: APjAAAWnfIquc3qQHkyjFr3/lPsdjINtgH4F+3V8cYZHaipukeBELobX
 gDG2ILh2HKdF50fbyC8fFjM=
X-Google-Smtp-Source: APXvYqz9AgnO5wJDvm1Pg6p/ZgeOIqLXWnWPY63JzbbCx7GJI5f+EhGIc58hMebd7OYELWuIV0XCUg==
X-Received: by 2002:a17:902:9682:: with SMTP id
 n2mr10572124plp.52.1571416243179; 
 Fri, 18 Oct 2019 09:30:43 -0700 (PDT)
Received: from localhost.localdomain ([94.204.252.234])
 by smtp.gmail.com with ESMTPSA id u3sm6401575pfn.134.2019.10.18.09.30.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 18 Oct 2019 09:30:42 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: meson: khadas-vim3: move audio nodes to common
 dtsi
Date: Fri, 18 Oct 2019 20:29:45 +0400
Message-Id: <1571416185-6449-1-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_093044_235343_49FE3B59 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (christianshewitt[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Christian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Move VIM3 audio nodes to meson-khadas-vim3.dtsi to enable audio for all
boards in the VIM3 family including VIM3L.

This change depends on [1] being merged/applied first.

[1] https://patchwork.kernel.org/patch/11198535/

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 .../boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi   | 89 ----------------------
 arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi | 88 +++++++++++++++++++++
 2 files changed, 88 insertions(+), 89 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi
index 69019d0..190e934 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi
@@ -5,8 +5,6 @@
  * Copyright (c) 2019 Christian Hewitt <christianshewitt@gmail.com>
  */
 
-#include <dt-bindings/sound/meson-g12a-tohdmitx.h>
-
 / {
 	vddcpu_a: regulator-vddcpu-a {
 		/*
@@ -45,69 +43,6 @@
 		regulator-boot-on;
 		regulator-always-on;
 	};
-
-	sound {
-		compatible = "amlogic,axg-sound-card";
-		model = "G12A-KHADAS-VIM3";
-		audio-aux-devs = <&tdmout_b>;
-		audio-routing = "TDMOUT_B IN 0", "FRDDR_A OUT 1",
-				"TDMOUT_B IN 1", "FRDDR_B OUT 1",
-				"TDMOUT_B IN 2", "FRDDR_C OUT 1",
-				"TDM_B Playback", "TDMOUT_B OUT";
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
-		/* hdmi glue */
-		dai-link-4 {
-			sound-dai = <&tohdmitx TOHDMITX_I2S_OUT>;
-
-			codec {
-				sound-dai = <&hdmi_tx>;
-			};
-		};
-	};
-};
-
-&arb {
-	status = "okay";
-};
-
-&clkc_audio {
-	status = "okay";
 };
 
 &cpu0 {
@@ -152,18 +87,6 @@
 	clock-latency = <50000>;
 };
 
-&frddr_a {
-        status = "okay";
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
 &pwm_ab {
 	pinctrl-0 = <&pwm_a_e_pins>;
 	pinctrl-names = "default";
@@ -179,15 +102,3 @@
 	clock-names = "clkin1";
 	status = "okay";
 };
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
diff --git a/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi b/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
index 90815fa..3f5c373 100644
--- a/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
@@ -7,6 +7,7 @@
 
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/gpio/meson-g12a-gpio.h>
+#include <dt-bindings/sound/meson-g12a-tohdmitx.h>
 
 / {
 	model = "Khadas VIM3";
@@ -76,6 +77,61 @@
 		clock-names = "ext_clock";
 	};
 
+	sound {
+		compatible = "amlogic,axg-sound-card";
+		model = "G12A-KHADAS-VIM3";
+		audio-aux-devs = <&tdmout_b>;
+		audio-routing = "TDMOUT_B IN 0", "FRDDR_A OUT 1",
+				"TDMOUT_B IN 1", "FRDDR_B OUT 1",
+				"TDMOUT_B IN 2", "FRDDR_C OUT 1",
+				"TDM_B Playback", "TDMOUT_B OUT";
+
+		assigned-clocks = <&clkc CLKID_MPLL2>,
+				  <&clkc CLKID_MPLL0>,
+				  <&clkc CLKID_MPLL1>;
+		assigned-clock-parents = <0>, <0>, <0>;
+		assigned-clock-rates = <294912000>,
+				       <270950400>,
+				       <393216000>;
+		status = "okay";
+
+		dai-link-0 {
+			sound-dai = <&frddr_a>;
+		};
+
+		dai-link-1 {
+			sound-dai = <&frddr_b>;
+		};
+
+		dai-link-2 {
+			sound-dai = <&frddr_c>;
+		};
+
+		/* 8ch hdmi interface */
+		dai-link-3 {
+			sound-dai = <&tdmif_b>;
+			dai-format = "i2s";
+			dai-tdm-slot-tx-mask-0 = <1 1>;
+			dai-tdm-slot-tx-mask-1 = <1 1>;
+			dai-tdm-slot-tx-mask-2 = <1 1>;
+			dai-tdm-slot-tx-mask-3 = <1 1>;
+			mclk-fs = <256>;
+
+			codec {
+				sound-dai = <&tohdmitx TOHDMITX_I2S_IN_B>;
+			};
+		};
+
+		/* hdmi glue */
+		dai-link-4 {
+			sound-dai = <&tohdmitx TOHDMITX_I2S_OUT>;
+
+			codec {
+				sound-dai = <&hdmi_tx>;
+			};
+		};
+	};
+
 	dc_in: regulator-dc_in {
 		compatible = "regulator-fixed";
 		regulator-name = "DC_IN";
@@ -171,6 +227,14 @@
 	};
 };
 
+&arb {
+	status = "okay";
+};
+
+&clkc_audio {
+	status = "okay";
+};
+
 &cec_AO {
 	pinctrl-0 = <&cec_ao_a_h_pins>;
 	pinctrl-names = "default";
@@ -206,6 +270,18 @@
         amlogic,tx-delay-ns = <2>;
 };
 
+&frddr_a {
+	status = "okay";
+};
+
+&frddr_b {
+	status = "okay";
+};
+
+&frddr_c {
+	status = "okay";
+};
+
 &hdmi_tx {
 	status = "okay";
 	pinctrl-0 = <&hdmitx_hpd_pins>, <&hdmitx_ddc_pins>;
@@ -328,6 +404,18 @@
 	vqmmc-supply = <&emmc_1v8>;
 };
 
+&tdmif_b {
+	status = "okay";
+};
+
+&tdmout_b {
+	status = "okay";
+};
+
+&tohdmitx {
+	status = "okay";
+};
+
 &uart_A {
 	status = "okay";
 	pinctrl-0 = <&uart_a_pins>, <&uart_a_cts_rts_pins>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
