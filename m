Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FE4A1AF743
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 07:40:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=16tYkYXPzIm6L0ZsNGNtNF7FpO/dK5WEYyxhb6lufOk=; b=nGqq9y95lBbP78csNzmFPVSdiE
	M63OlO1lNtJ39bSJ1ziLC7+SCNYGYCkXtLSvOWEs/CIoIjwwbome9nurEsU8GsgMhao71lKYLj2NT
	HOrzVEOxhi/0rGL8sgpfpPJbEEIIjv2rDvWitXjJ17VWKlwQzwvORt0Z+xCVWEsygaXL/poxDZyIj
	6n1HBtT74ESk62n+bfl+kRfRKLkaHQ/QFHLNdLHIMun0NOeALKdpys5TE0CDt9hQARdY6pl8eNnh0
	DycPyRQUsr2Vj0W24fVB12N2iNiQMC2ke/dE/heslxaoN+DsuPYQAHHpDtXyrW5d8yZfdlb0F/D+6
	eIh1W0iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQ2gj-00064s-8L; Sun, 19 Apr 2020 05:40:17 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ2f3-0004pA-Lg; Sun, 19 Apr 2020 05:38:35 +0000
Received: by mail-lf1-x141.google.com with SMTP id 131so5178808lfh.11;
 Sat, 18 Apr 2020 22:38:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Ddvzpi4v1DdjM1yLeMifMRyxfGTNb5nDe0FeVHixmDk=;
 b=HP7fb0V1bSnUs5kIp9q6xiNucjBoE8Im5ICE9u7dFzt9M4jyybrjjZ1JGqj8MnMDgQ
 ZRHWwD7+FSJ3lvatjsRqhtjLJU8h27O86ZHUvumPMY0ewcl8o3Sl831O0mF3Cr0ryHBO
 nhhpi0Q2TA8XMR05xSRk49IlG3pX+azwQG0qQlmIuXlbljOY9RUCpZ4RqVhH9uHludra
 FFIldxa27QjIVJnFHWUj5PPpFKgSFkKVBGeA8dj+K7aGFCuZ5w87UUjPkZWr+vxhkNZP
 T4lXEqDAs0ugbnh7w1dYj1LW/tdaK6AfePlnyl8rYerkvSSoa7m8+x9EbCPgpue9qcEi
 L1lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Ddvzpi4v1DdjM1yLeMifMRyxfGTNb5nDe0FeVHixmDk=;
 b=kiTo0ehrxT1XZgizMqRkQ1uJRlpHN4OcVckxe4XNpnXSDS+w/Opq/AAQLOuKR3RydZ
 cw50l4NnQiujaWBM5iwNmPA1h/ZgAqYhIjW23PtcyxnCU1z+OFzAQOx/dvUA9kBSZh+C
 so/Aehsil9qKQTWTFODFyOLrPxTAiFPvFHJNzDrsJhSvrGtxiU8T673AFeVoHYOyl4V5
 EQYZl9OEmzP/UNOHOsyImVDuLJEAzKWh/8nqLp30PopGSROj2QOJi7ns6D/HYxtkuDGL
 xhia6XZ3nVlf9OAnM7FL4cL0u5YChtbFpf+ck99sEmQ4wUowrpGLPER/3bEM15NMM8rX
 VzWg==
X-Gm-Message-State: AGi0PuYBUwNB5ikVxPr213t/xujQRQKEHNrv24nYN7zXrxrHq7nBqtRp
 qNIdA2se2uyWy/dySr0sFqM=
X-Google-Smtp-Source: APiQypIU/6kHBkTd4NaOXbY/SsYZR7ZJTnlT6naanXGEPx3mwI7OvyzNyv9MKwhQ3ygKQRu/VkZV7Q==
X-Received: by 2002:ac2:50ce:: with SMTP id h14mr6666282lfm.76.1587274712224; 
 Sat, 18 Apr 2020 22:38:32 -0700 (PDT)
Received: from localhost.localdomain ([87.200.95.144])
 by smtp.gmail.com with ESMTPSA id r23sm20416619ljh.34.2020.04.18.22.38.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Apr 2020 22:38:31 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 4/5] arm64: dts: meson: convert khadas-vim3/vim3l to hdmi dtsi
Date: Sun, 19 Apr 2020 05:38:14 +0000
Message-Id: <20200419053815.15731-5-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200419053815.15731-1-christianshewitt@gmail.com>
References: <20200419053815.15731-1-christianshewitt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_223833_752097_CA8036C4 
X-CRM114-Status: GOOD (  12.02  )
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

Include  meson-g12-audio-hdmi.dtsi in the common Khadas 3* dtsi. This
simplifies the VIM3 dtsi and adds audio support to the VIM3L.

This supercedes previous submissions: [1], [2], [3] for future kernels
but [3] should still be applied as a fix to Linux 5.4.

[1] https://patchwork.kernel.org/patch/11490837/
[2] https://patchwork.kernel.org/patch/11490889/
[3] https://patchwork.kernel.org/patch/11198535/

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 .../dts/amlogic/meson-g12b-khadas-vim3.dtsi   | 85 -------------------
 .../boot/dts/amlogic/meson-khadas-vim3.dtsi   |  1 +
 2 files changed, 1 insertion(+), 85 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi
index c33e85fbdaba..b8d69d99bc91 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi
@@ -5,8 +5,6 @@
  * Copyright (c) 2019 Christian Hewitt <christianshewitt@gmail.com>
  */
 
-#include <dt-bindings/sound/meson-g12a-tohdmitx.h>
-
 / {
 	model = "Khadas VIM3";
 
@@ -47,69 +45,6 @@
 		regulator-boot-on;
 		regulator-always-on;
 	};
-
-	sound {
-		compatible = "amlogic,axg-sound-card";
-		model = "G12B-KHADAS-VIM3";
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
@@ -154,14 +89,6 @@
 	clock-latency = <50000>;
 };
 
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
@@ -177,15 +104,3 @@
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
index 094ecf2222bb..9c7841c627d0 100644
--- a/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
@@ -5,6 +5,7 @@
  * Copyright (c) 2019 Christian Hewitt <christianshewitt@gmail.com>
  */
 
+#include "meson-g12-audio-hdmi.dtsi"
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/gpio/meson-g12a-gpio.h>
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
