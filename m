Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E90013CEBA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 16:31:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=p4rO3m/Lt2HA54+biqG5wOF4g+jJa2rRDDbMpnQ02pU=; b=RAbWQAr/8UYhbu
	pDHXlU29AxWCf9t1MLxt8bQI4I7ghs//miTflN0dEqnFHT0wjKQ+nhBgNx1BISDaFjbA//8f5tiUc
	TVf1GOYzTzVFvajgZPaCp3ZksuvTyxwYZCfA3fXAUiTd6Aa1xIGcnhWy/wQjSI0n4p9uNNk4YY4Sn
	9AVdTxomwnC5TACcfKaqUMP6ymfmC/TOneWaXID+WDGDpdwu4jNGDwEcXUu+70iYkf52DDwDniVNT
	Axjtqj6QX3UdFM1vM597bM5QD720KShyJ61xoFDy+kSmq4b74APtjYXcGs4HnU/LKynL/ZhcTU+4V
	3bJT4xbMUAlMbsTJu28w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hahoK-00077Y-Co; Tue, 11 Jun 2019 14:31:40 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haho4-0006xg-Pp
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 14:31:26 +0000
Received: by mail-wm1-x341.google.com with SMTP id z23so3182352wma.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 07:31:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=I+b0ODQnts8tdntKoRjN83DkfLZxsjTT5tP4ANFK0k4=;
 b=H1Rp4asAc/hZnrIK3cSDkXVRv+QZjJckPEeF2q/uTMemu80KOX67ebHjCifYvVvnHK
 qlpRK/E+rZUqmXitAbYXycopEbSc1T02FYsVbUdbaCJeqXKwM1IGM8EaWjmVe6eGuBDC
 xooTOTX4XsptGZOm9gumVueKn7ZlQ44b2Q9Lemy51VObASpSRRyaP76mHUBSDzjvYVtl
 6l/XuxLLT1FfuXmrWk6UEIcFg5MeCHSJjE/AcvtvhPdyDdsL5YbiNO9PLJCmv526UZIZ
 2DtX3zCDbQAhrA5gD8F+xvVHvWv9iynL4BmgoEId1oJZispnKUNwCoFd+uFFavMjuqE5
 LnHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=I+b0ODQnts8tdntKoRjN83DkfLZxsjTT5tP4ANFK0k4=;
 b=C7j2k6t5wIsD9vbBA4wygx/2KdKx5RGRkqgUjBz1nr8ECFEVT1LEvq+pS7eNMszRrn
 NmXTTDY7n5cVMct50Sl9kg5bJH/25Ph5CKFLGBIyOzlPVQGbIrKY95FlkboakG6daRWw
 Zv9coVi5qWDgGVkJXzqVLULSf/zwHyI76mZqmPj4Xk5si/8WmoAEaADJcGD1b+1Hzzru
 NjGjiEryRGoxf3vj21dY+Yr7ZLgXaLLp65LUWQvrRxF5B2yr+6+eLbua5xXenYbkKIqc
 mIGr2cNH+I0/wU1YzV8R/RIAmPZL/jGO4hoMzhkxvRVUz8yBSWo8kIctjsokBhT3+kZT
 uzBg==
X-Gm-Message-State: APjAAAVF8E9mb5Yr5jd32Zwn0q1RL/+u7hreaS+XMc/r5tTosfhnisEB
 eTUOKDV5rXgo7oigFeRs7MnA0Q==
X-Google-Smtp-Source: APXvYqx5tAOnKxTMOzMeeFvPPj0lnS6ngD12iizSOqlCEd/5eXH8GUPWfzhko832DOcAeL8z5bH+xg==
X-Received: by 2002:a1c:67c2:: with SMTP id b185mr17212929wmc.98.1560263482948; 
 Tue, 11 Jun 2019 07:31:22 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id w14sm13427258wrk.44.2019.06.11.07.31.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 11 Jun 2019 07:31:22 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com,
	jbrunet@baylibre.com
Subject: [PATCH] arm64: dts: meson-g12b-odroid-n2: add sound card
Date: Tue, 11 Jun 2019 16:31:20 +0200
Message-Id: <20190611143120.25074-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_073124_842243_75F8CAD1 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable the sound card on the Hardkernel Odroid-N2, enabling HDMI output
using the TDM interface B, being aligned on other boards sound cards.

The internal DAC connected to the audio jack will be added later on, when
driver support is added.

Tested by running:
tinymix set "FRDDR_A SRC 1 EN Switch" 1
tinymix set "FRDDR_A SINK 1 SEL" "OUT 1"
tinymix set "FRDDR_B SRC 1 EN Switch" 1
tinymix set "FRDDR_B SINK 1 SEL" "OUT 1"
tinymix set "FRDDR_C SRC 1 EN Switch" 1
tinymix set "FRDDR_C SINK 1 SEL" "OUT 1"
tinymix set "TOHDMITX I2S SRC" "I2S B"
tinymix set "TOHDMITX Switch" 1

then:
tinymix set "TDMOUT_B SRC SEL" "IN 0"
speaker-test -Dhw:0,0 -c2

then:
tinymix set "TDMOUT_B SRC SEL" "IN 1"
speaker-test -Dhw:0,1 -c2

then:
tinymix set "TDMOUT_B SRC SEL" "IN 2"
speaker-test -Dhw:0,2 -c2

testing HDMI audio output from the all 3 ASoC playback interfaces.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../boot/dts/amlogic/meson-g12b-odroid-n2.dts | 88 +++++++++++++++++++
 1 file changed, 88 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
index 4146cd84989c..c3e0735e6d9f 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
@@ -9,6 +9,7 @@
 #include "meson-g12b.dtsi"
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/gpio/meson-g12a-gpio.h>
+#include <dt-bindings/sound/meson-g12a-tohdmitx.h>
 
 / {
 	compatible = "hardkernel,odroid-n2", "amlogic,g12b";
@@ -165,6 +166,65 @@
 			};
 		};
 	};
+
+	sound {
+		compatible = "amlogic,axg-sound-card";
+		model = "G12A-ODROIDN2";
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
+};
+
+&arb {
+	status = "okay";
 };
 
 &cec_AO {
@@ -181,6 +241,10 @@
 	hdmi-phandle = <&hdmi_tx>;
 };
 
+&clkc_audio {
+	status = "okay";
+};
+
 &ext_mdio {
 	external_phy: ethernet-phy@0 {
 		/* Realtek RTL8211F (0x001cc916) */	
@@ -198,6 +262,18 @@
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
 &gpio {
 	/*
 	 * WARNING: The USB Hub on the Odroid-N2 needs a reset signal
@@ -269,6 +345,18 @@
 	vqmmc-supply = <&flash_1v8>;
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
 &uart_AO {
 	status = "okay";
 	pinctrl-0 = <&uart_ao_a_pins>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
