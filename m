Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8735818435E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 10:11:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wFndA7hiT2Wv0nzf6UEGc6AyWr54aWCEiy7MKmNAzJc=; b=L/SqZVgfEbN347
	bpT6ZMIWG/vBCHBImjN48RlputU4lKyOEcB6w98UZqJKqPR/3jRxZ8XuIv2D5SQ69/iciOt64+Ca/
	KVw8ZPFTz9utEwVYE21/cWJ5JRzQ/PHRDOB9q3yTPVzgCt6puq+wf+dFI9TbDfCSml3lXtJ5paDwJ
	Il9WWipDXph14Ou/fsgWFEprIlOoEEMaW9XGprvGUnbI2GJeZPImVzEr/2dC4TPgggMaffQ9vOpYP
	4/KVQLzneqPMwyHSjeKsRImcnRdn0DoC0PjH40S5womVenHrwI5Y9BMaAHi6fpU40AUsiJyWpRlG4
	k63Ayw3mZxZLa5fqA4bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCgLl-0000fm-LL; Fri, 13 Mar 2020 09:11:25 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCgHo-0003oR-As
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 09:07:23 +0000
Received: by mail-wr1-x442.google.com with SMTP id 6so11053021wre.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 02:07:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=noym7N9HZ+0j3iemfyMolfTdAyqS68kNioWo1cBTRwM=;
 b=ehu6PcgPt850KQjzoV4GQagTdcUkLwYwh710xe+NU9v3iKlSKlhiukznVO0+fscCuX
 ScMV50BTelVKnRfFRKF9i6Vqn+RkQNHi1mN91q7nY0c0GYa9PXXbs+WXKLhWFVuew+vu
 BmmzNXNA8BPF9/bpDsmnAjsV7wcjvbQe5l9Gn8oVQYrxWIoI8fouyIhVJLhMr7iH4ubA
 FoLE1KQn+dGzWQPq0mepHbGk8DAZRmrZ9xpg3G8PiOnY/eZAr2u2NVRRzFhETaB8BqA8
 ZK4NEQXE18nuIuTn8tuluoTFL3TfuMX8qP3OUMCxsUjq9/wZWXwGqY5VofbKyzUZ2v8U
 nmeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=noym7N9HZ+0j3iemfyMolfTdAyqS68kNioWo1cBTRwM=;
 b=oyik9KCI9DefjXKprbH2fX6+49tKcJ1xoBpz8RL+IEbVhnpCXfHF59gHjqeFqpN/b9
 cLL6/mrynSdiZ7U7FI7t62DPu3F7MgJHS53HtPF9TvBpJOVH+bN41DawBGXAhjUs/Yyo
 khO3TvzaippQWjRFhLMF+OrGPvCkZQN/Zj69w5Zfzr2bHcKmlRFX8Upv0D1BCLw+KEaJ
 TehSloh1ZXQQmJx2o1IvC5rvcXOZSuDte8Uh6T8mGeGbhjX1co5xk7mcDawGcJ48oSaM
 yKkgRZCEAWxJ5L+8SRiV9I0DUOK6RjIZ9tbtmgq5AnBZTwi4vY7WrZTSRQwknLCip28f
 7UFg==
X-Gm-Message-State: ANhLgQ1X2qiB7rGpS4udPCVXhVseAVTwFBvVTdKwFnQw0COeDWbFwqti
 hxwHs7iqkIm66IIqtnFnDL3QFQ==
X-Google-Smtp-Source: ADFU+vvGEUqKOHAbXHeHU9sk0wLV/5ZlhtBmNDC8otoQy0IjrRf1k/8Ec6KWw0KmFvH2+W0feRZgzA==
X-Received: by 2002:adf:c40e:: with SMTP id v14mr16353044wrf.408.1584090438334; 
 Fri, 13 Mar 2020 02:07:18 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2])
 by smtp.gmail.com with ESMTPSA id i1sm61872399wrs.18.2020.03.13.02.07.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2020 02:07:17 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 1/4] arm64: dts: meson-g12: split emmc pins to select 4 or 8
 bus width
Date: Fri, 13 Mar 2020 10:07:10 +0100
Message-Id: <20200313090713.15147-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200313090713.15147-1-narmstrong@baylibre.com>
References: <20200313090713.15147-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_020720_820229_1CA11C3D 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

The Khadas VIM3 shares the eMMC pins 4 to 7 with the SPI NOR, in order
to enable the eMMC and the SPI NOR interface, we need to omit the
4 last pins from the eMMC pinctrl.

As it was done for the Khadas VIM2, split the eMMC pinctrls in ctrl, data
and ds pins with either 4bits data or 8bits data, and update the current
board accordingly.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../boot/dts/amlogic/meson-g12-common.dtsi    | 40 ++++++++++++++-----
 .../boot/dts/amlogic/meson-g12a-sei510.dts    |  2 +-
 .../boot/dts/amlogic/meson-g12a-u200.dts      |  2 +-
 .../boot/dts/amlogic/meson-g12a-x96-max.dts   |  2 +-
 .../boot/dts/amlogic/meson-g12b-odroid-n2.dts |  2 +-
 .../boot/dts/amlogic/meson-g12b-ugoos-am6.dts |  2 +-
 .../boot/dts/amlogic/meson-khadas-vim3.dtsi   |  2 +-
 .../boot/dts/amlogic/meson-sm1-sei610.dts     |  2 +-
 8 files changed, 37 insertions(+), 17 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index 87b9a47a51b9..d09efb86ec33 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -295,17 +295,9 @@
 						};
 					};
 
-					emmc_pins: emmc {
+					emmc_ctrl_pins: emmc-ctrl {
 						mux-0 {
-							groups = "emmc_nand_d0",
-								 "emmc_nand_d1",
-								 "emmc_nand_d2",
-								 "emmc_nand_d3",
-								 "emmc_nand_d4",
-								 "emmc_nand_d5",
-								 "emmc_nand_d6",
-								 "emmc_nand_d7",
-								 "emmc_cmd";
+							groups = "emmc_cmd";
 							function = "emmc";
 							bias-pull-up;
 							drive-strength-microamp = <4000>;
@@ -319,6 +311,34 @@
 						};
 					};
 
+					emmc_data_4b_pins: emmc-data-4b {
+						mux-0 {
+							groups = "emmc_nand_d0",
+								 "emmc_nand_d1",
+								 "emmc_nand_d2",
+								 "emmc_nand_d3";
+							function = "emmc";
+							bias-pull-up;
+							drive-strength-microamp = <4000>;
+						};
+					};
+
+					emmc_data_8b_pins: emmc-data-8b {
+						mux-0 {
+							groups = "emmc_nand_d0",
+								 "emmc_nand_d1",
+								 "emmc_nand_d2",
+								 "emmc_nand_d3",
+								 "emmc_nand_d4",
+								 "emmc_nand_d5",
+								 "emmc_nand_d6",
+								 "emmc_nand_d7";
+							function = "emmc";
+							bias-pull-up;
+							drive-strength-microamp = <4000>;
+						};
+					};
+
 					emmc_ds_pins: emmc-ds {
 						mux {
 							groups = "emmc_nand_ds";
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
index 168f460e11fa..b00d0468c753 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
@@ -472,7 +472,7 @@
 /* eMMC */
 &sd_emmc_c {
 	status = "okay";
-	pinctrl-0 = <&emmc_pins>, <&emmc_ds_pins>;
+	pinctrl-0 = <&emmc_ctrl_pins>, <&emmc_data_8b_pins>, <&emmc_ds_pins>;
 	pinctrl-1 = <&emmc_clk_gate_pins>;
 	pinctrl-names = "default", "clk-gate";
 
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts
index 2a324f0136e3..a26bfe72550f 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts
@@ -271,7 +271,7 @@
 /* eMMC */
 &sd_emmc_c {
 	status = "okay";
-	pinctrl-0 = <&emmc_pins>, <&emmc_ds_pins>;
+	pinctrl-0 = <&emmc_ctrl_pins>, <&emmc_data_8b_pins>, <&emmc_ds_pins>;
 	pinctrl-1 = <&emmc_clk_gate_pins>;
 	pinctrl-names = "default", "clk-gate";
 
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
index 4f2596d82989..1b07c8c06eac 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
@@ -443,7 +443,7 @@
 /* eMMC */
 &sd_emmc_c {
 	status = "okay";
-	pinctrl-0 = <&emmc_pins>, <&emmc_ds_pins>;
+	pinctrl-0 = <&emmc_ctrl_pins>, <&emmc_data_8b_pins>, <&emmc_ds_pins>;
 	pinctrl-1 = <&emmc_clk_gate_pins>;
 	pinctrl-names = "default", "clk-gate";
 
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
index 8830d3844885..b59ae1a297f2 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
@@ -435,7 +435,7 @@
 /* eMMC */
 &sd_emmc_c {
 	status = "okay";
-	pinctrl-0 = <&emmc_pins>, <&emmc_ds_pins>;
+	pinctrl-0 = <&emmc_ctrl_pins>, <&emmc_data_8b_pins>, <&emmc_ds_pins>;
 	pinctrl-1 = <&emmc_clk_gate_pins>;
 	pinctrl-names = "default", "clk-gate";
 
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts
index ccd0bced01e8..325e448eb09c 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts
@@ -485,7 +485,7 @@
 /* eMMC */
 &sd_emmc_c {
 	status = "okay";
-	pinctrl-0 = <&emmc_pins>, <&emmc_ds_pins>;
+	pinctrl-0 = <&emmc_ctrl_pins>, <&emmc_data_8b_pins>, <&emmc_ds_pins>;
 	pinctrl-1 = <&emmc_clk_gate_pins>;
 	pinctrl-names = "default", "clk-gate";
 
diff --git a/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi b/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
index 90815fa25ec6..b6f22a0bd318 100644
--- a/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
@@ -312,7 +312,7 @@
 /* eMMC */
 &sd_emmc_c {
 	status = "okay";
-	pinctrl-0 = <&emmc_pins>, <&emmc_ds_pins>;
+	pinctrl-0 = <&emmc_ctrl_pins>, <&emmc_data_8b_pins>, <&emmc_ds_pins>;
 	pinctrl-1 = <&emmc_clk_gate_pins>;
 	pinctrl-names = "default", "clk-gate";
 
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
index a8bb3fa9fec9..71cc730a4913 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
@@ -518,7 +518,7 @@
 /* eMMC */
 &sd_emmc_c {
 	status = "okay";
-	pinctrl-0 = <&emmc_pins>, <&emmc_ds_pins>;
+	pinctrl-0 = <&emmc_ctrl_pins>, <&emmc_data_8b_pins>, <&emmc_ds_pins>;
 	pinctrl-1 = <&emmc_clk_gate_pins>;
 	pinctrl-names = "default", "clk-gate";
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
