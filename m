Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E41A31414AB
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Jan 2020 00:10:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xuOJoBKk/6uiHsxVdstgXo5dd5eXZuEg7wUMV/zXoVE=; b=kAvzNJhMHc4UNY
	qg/3a8voK13i2kN29fZf86MbsMGX27naKEU3RRiZ3IOknd8iiQ0kfmswCdPG3Z4cr1rd9mRrnU4Ln
	//wCn1MFq333sHD/MBaUfPMn0IyPV72TogTf0MhHYxQCHEfWjcwgUTvRAlTUHdyz0+pc6aJ0Pyk+P
	jwU9cLHTPTC+GZzE5N4RPjSTYwrnwiFFL35win//xsMG5NDqchlmIHQPw5Qb1hVLtlv/Ul1oILsTx
	Qv91JjL/Qd1Of54dF/ntuHMpZUNys1BTV0iZLyYCC0FYW3eWJWAsGHmyFin3kZyB7SNi0YaA4ponj
	q5FU/XhcKW4WF3+cPFcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isakS-0007Xc-LL; Fri, 17 Jan 2020 23:09:52 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isaja-0006uJ-BU
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 23:09:03 +0000
Received: by mail-ot1-f68.google.com with SMTP id m2so19158537otq.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Jan 2020 15:08:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=94GQShhvWdaezHHeSsdM0E7CTMl3mSSdpwqDu2xRo+w=;
 b=bH8NNkdmuKlhzKRuV6rn3ulVRbyTPPIvKiVIhWLiSkc5/5WA2ZiuuJIQRM4RzRGyVH
 MhEo02uYILjJNOL2U1DxERO3+BdYNr0R65SgFv1KaVnEVaDbknLPUOxrjwtmdaTxsdyB
 60iSpnQlv4kDDUeCx4VkDNxFwN0tj/M8sSiITAKYErNR5qYFAoiJVP/peavdkNUOKgAe
 qGYK68HxlFSd2JuL1jfhBSJQCeOsNDzC+9MY6E6bzrj4FKh/u9ZaXf0vtRX+Xe4X7UPs
 /8k0DF6KGgHvJOSLBnTsNrCbNDRucByJtx+YOxjzWiQRlFSmDl9jqokSdPsOncMYCLwI
 Cprw==
X-Gm-Message-State: APjAAAXjF7+4kE9zr1gakv6pcLbfVRP66chQDo7SoPQjUiwrxoO+fWxD
 +n10EeUETvoR3lUiO1V2qPEhe24=
X-Google-Smtp-Source: APXvYqysWQKmsKsv8z2BVx1eAbiuPdwoPMm2gS99Cd4el1DowGIIlLCpxjLLyA65KViHnexj+7XHBQ==
X-Received: by 2002:a9d:73ca:: with SMTP id m10mr8156144otk.312.1579302536695; 
 Fri, 17 Jan 2020 15:08:56 -0800 (PST)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id w72sm8279868oie.49.2020.01.17.15.08.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Jan 2020 15:08:56 -0800 (PST)
From: Rob Herring <robh@kernel.org>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm: tegra: dts: Kill off "simple-panel" compatibles
Date: Fri, 17 Jan 2020 17:08:55 -0600
Message-Id: <20200117230855.25567-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_150858_481625_58E44310 
X-CRM114-Status: GOOD (  10.49  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

"simple-panel" is a Linux driver and has never been an accepted upstream
compatible string, so remove it.

Cc: Thierry Reding <thierry.reding@gmail.com>
Cc: Jonathan Hunter <jonathanh@nvidia.com>
Cc: linux-tegra@vger.kernel.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
 arch/arm/boot/dts/tegra114-dalmore.dts         | 3 +--
 arch/arm/boot/dts/tegra124-venice2.dts         | 2 +-
 arch/arm/boot/dts/tegra20-colibri-eval-v3.dts  | 2 +-
 arch/arm/boot/dts/tegra20-colibri-iris.dts     | 2 +-
 arch/arm/boot/dts/tegra20-harmony.dts          | 2 +-
 arch/arm/boot/dts/tegra20-medcom-wide.dts      | 2 +-
 arch/arm/boot/dts/tegra20-paz00.dts            | 2 +-
 arch/arm/boot/dts/tegra20-seaboard.dts         | 2 +-
 arch/arm/boot/dts/tegra20-ventana.dts          | 2 +-
 arch/arm/boot/dts/tegra30-apalis-eval.dts      | 2 +-
 arch/arm/boot/dts/tegra30-apalis-v1.1-eval.dts | 2 +-
 arch/arm/boot/dts/tegra30-cardhu.dtsi          | 2 +-
 arch/arm/boot/dts/tegra30-colibri-eval-v3.dts  | 2 +-
 arch/arm64/boot/dts/nvidia/tegra132-norrin.dts | 2 +-
 14 files changed, 14 insertions(+), 15 deletions(-)

diff --git a/arch/arm/boot/dts/tegra114-dalmore.dts b/arch/arm/boot/dts/tegra114-dalmore.dts
index 97a5c3504bbe..8e48792ecdc8 100644
--- a/arch/arm/boot/dts/tegra114-dalmore.dts
+++ b/arch/arm/boot/dts/tegra114-dalmore.dts
@@ -46,8 +46,7 @@
 			avdd-dsi-csi-supply = <&avdd_1v2_reg>;
 
 			panel@0 {
-				compatible = "panasonic,vvx10f004b00",
-					     "simple-panel";
+				compatible = "panasonic,vvx10f004b00";
 				reg = <0>;
 
 				power-supply = <&avdd_lcd_reg>;
diff --git a/arch/arm/boot/dts/tegra124-venice2.dts b/arch/arm/boot/dts/tegra124-venice2.dts
index 7309393bfced..9004fb6dcede 100644
--- a/arch/arm/boot/dts/tegra124-venice2.dts
+++ b/arch/arm/boot/dts/tegra124-venice2.dts
@@ -1087,7 +1087,7 @@
 	};
 
 	panel: panel {
-		compatible = "lg,lp129qe", "simple-panel";
+		compatible = "lg,lp129qe";
 
 		backlight = <&backlight>;
 		ddc-i2c-bus = <&dpaux>;
diff --git a/arch/arm/boot/dts/tegra20-colibri-eval-v3.dts b/arch/arm/boot/dts/tegra20-colibri-eval-v3.dts
index 3c0f2681fcde..37ad508b61d9 100644
--- a/arch/arm/boot/dts/tegra20-colibri-eval-v3.dts
+++ b/arch/arm/boot/dts/tegra20-colibri-eval-v3.dts
@@ -223,7 +223,7 @@
 		 * edt,et057090dhu: EDT 5.7" LCD TFT
 		 * edt,et070080dh6: EDT 7.0" LCD TFT
 		 */
-		compatible = "edt,et057090dhu", "simple-panel";
+		compatible = "edt,et057090dhu";
 		backlight = <&backlight>;
 		power-supply = <&reg_3v3>;
 	};
diff --git a/arch/arm/boot/dts/tegra20-colibri-iris.dts b/arch/arm/boot/dts/tegra20-colibri-iris.dts
index d8004d68efa0..af4740847769 100644
--- a/arch/arm/boot/dts/tegra20-colibri-iris.dts
+++ b/arch/arm/boot/dts/tegra20-colibri-iris.dts
@@ -205,7 +205,7 @@
 		 * edt,et057090dhu: EDT 5.7" LCD TFT
 		 * edt,et070080dh6: EDT 7.0" LCD TFT
 		 */
-		compatible = "edt,et057090dhu", "simple-panel";
+		compatible = "edt,et057090dhu";
 		backlight = <&backlight>;
 		power-supply = <&reg_3v3>;
 	};
diff --git a/arch/arm/boot/dts/tegra20-harmony.dts b/arch/arm/boot/dts/tegra20-harmony.dts
index 1d96d92b72a7..02cd67ea2503 100644
--- a/arch/arm/boot/dts/tegra20-harmony.dts
+++ b/arch/arm/boot/dts/tegra20-harmony.dts
@@ -665,7 +665,7 @@
 	};
 
 	panel: panel {
-		compatible = "auo,b101aw03", "simple-panel";
+		compatible = "auo,b101aw03";
 
 		power-supply = <&vdd_pnl_reg>;
 		enable-gpios = <&gpio TEGRA_GPIO(B, 2) GPIO_ACTIVE_HIGH>;
diff --git a/arch/arm/boot/dts/tegra20-medcom-wide.dts b/arch/arm/boot/dts/tegra20-medcom-wide.dts
index cda5448c2ace..c73510cd501c 100644
--- a/arch/arm/boot/dts/tegra20-medcom-wide.dts
+++ b/arch/arm/boot/dts/tegra20-medcom-wide.dts
@@ -57,7 +57,7 @@
 	};
 
 	panel: panel {
-		compatible = "innolux,n156bge-l21", "simple-panel";
+		compatible = "innolux,n156bge-l21";
 
 		power-supply =  <&vdd_1v8_reg>, <&vdd_3v3_reg>;
 		enable-gpios = <&gpio TEGRA_GPIO(B, 2) GPIO_ACTIVE_HIGH>;
diff --git a/arch/arm/boot/dts/tegra20-paz00.dts b/arch/arm/boot/dts/tegra20-paz00.dts
index 85fce5bc72d6..0151cdd09ffb 100644
--- a/arch/arm/boot/dts/tegra20-paz00.dts
+++ b/arch/arm/boot/dts/tegra20-paz00.dts
@@ -558,7 +558,7 @@
 	};
 
 	panel: panel {
-		compatible = "samsung,ltn101nt05", "simple-panel";
+		compatible = "samsung,ltn101nt05";
 
 		ddc-i2c-bus = <&lvds_ddc>;
 		power-supply = <&vdd_pnl_reg>;
diff --git a/arch/arm/boot/dts/tegra20-seaboard.dts b/arch/arm/boot/dts/tegra20-seaboard.dts
index f91441683aad..376ecb6435f4 100644
--- a/arch/arm/boot/dts/tegra20-seaboard.dts
+++ b/arch/arm/boot/dts/tegra20-seaboard.dts
@@ -826,7 +826,7 @@
 	};
 
 	panel: panel {
-		compatible = "chunghwa,claa101wa01a", "simple-panel";
+		compatible = "chunghwa,claa101wa01a";
 
 		power-supply = <&vdd_pnl_reg>;
 		enable-gpios = <&gpio TEGRA_GPIO(B, 2) GPIO_ACTIVE_HIGH>;
diff --git a/arch/arm/boot/dts/tegra20-ventana.dts b/arch/arm/boot/dts/tegra20-ventana.dts
index f44551e2d9d0..022649119821 100644
--- a/arch/arm/boot/dts/tegra20-ventana.dts
+++ b/arch/arm/boot/dts/tegra20-ventana.dts
@@ -611,7 +611,7 @@
 	};
 
 	panel: panel {
-		compatible = "chunghwa,claa101wa01a", "simple-panel";
+		compatible = "chunghwa,claa101wa01a";
 
 		power-supply = <&vdd_pnl_reg>;
 		enable-gpios = <&gpio TEGRA_GPIO(B, 2) GPIO_ACTIVE_HIGH>;
diff --git a/arch/arm/boot/dts/tegra30-apalis-eval.dts b/arch/arm/boot/dts/tegra30-apalis-eval.dts
index 749fc6d1ff70..b39c26806bf2 100644
--- a/arch/arm/boot/dts/tegra30-apalis-eval.dts
+++ b/arch/arm/boot/dts/tegra30-apalis-eval.dts
@@ -195,7 +195,7 @@
 		 * edt,et057090dhu: EDT 5.7" LCD TFT
 		 * edt,et070080dh6: EDT 7.0" LCD TFT
 		 */
-		compatible = "edt,et057090dhu", "simple-panel";
+		compatible = "edt,et057090dhu";
 		backlight = <&backlight>;
 		power-supply = <&reg_3v3>;
 	};
diff --git a/arch/arm/boot/dts/tegra30-apalis-v1.1-eval.dts b/arch/arm/boot/dts/tegra30-apalis-v1.1-eval.dts
index 0be50e881684..e29dca92ba0a 100644
--- a/arch/arm/boot/dts/tegra30-apalis-v1.1-eval.dts
+++ b/arch/arm/boot/dts/tegra30-apalis-v1.1-eval.dts
@@ -196,7 +196,7 @@
 		 * edt,et057090dhu: EDT 5.7" LCD TFT
 		 * edt,et070080dh6: EDT 7.0" LCD TFT
 		 */
-		compatible = "edt,et057090dhu", "simple-panel";
+		compatible = "edt,et057090dhu";
 		backlight = <&backlight>;
 		power-supply = <&reg_3v3>;
 	};
diff --git a/arch/arm/boot/dts/tegra30-cardhu.dtsi b/arch/arm/boot/dts/tegra30-cardhu.dtsi
index 7ce61edd52f5..9048fdf4ad54 100644
--- a/arch/arm/boot/dts/tegra30-cardhu.dtsi
+++ b/arch/arm/boot/dts/tegra30-cardhu.dtsi
@@ -432,7 +432,7 @@
 	};
 
 	panel: panel {
-		compatible = "chunghwa,claa101wb01", "simple-panel";
+		compatible = "chunghwa,claa101wb01";
 		ddc-i2c-bus = <&panelddc>;
 
 		power-supply = <&vdd_pnl1_reg>;
diff --git a/arch/arm/boot/dts/tegra30-colibri-eval-v3.dts b/arch/arm/boot/dts/tegra30-colibri-eval-v3.dts
index 5965150ecdd2..8e106e784dce 100644
--- a/arch/arm/boot/dts/tegra30-colibri-eval-v3.dts
+++ b/arch/arm/boot/dts/tegra30-colibri-eval-v3.dts
@@ -159,7 +159,7 @@
 		 * edt,et057090dhu: EDT 5.7" LCD TFT
 		 * edt,et070080dh6: EDT 7.0" LCD TFT
 		 */
-		compatible = "edt,et057090dhu", "simple-panel";
+		compatible = "edt,et057090dhu";
 		backlight = <&backlight>;
 		power-supply = <&reg_3v3>;
 	};
diff --git a/arch/arm64/boot/dts/nvidia/tegra132-norrin.dts b/arch/arm64/boot/dts/nvidia/tegra132-norrin.dts
index a0385a386a3f..9f3206c63900 100644
--- a/arch/arm64/boot/dts/nvidia/tegra132-norrin.dts
+++ b/arch/arm64/boot/dts/nvidia/tegra132-norrin.dts
@@ -990,7 +990,7 @@
 	};
 
 	panel: panel {
-		compatible = "innolux,n116bge", "simple-panel";
+		compatible = "innolux,n116bge";
 		backlight = <&backlight>;
 		ddc-i2c-bus = <&dpaux>;
 	};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
