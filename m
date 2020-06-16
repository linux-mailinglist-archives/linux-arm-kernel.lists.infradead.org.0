Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E100B1FB2AF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 15:54:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WSs20wBpppffv+zH6swzfPOu8YruH09gEkK3z3vB/3s=; b=Pt2QuPjb92XYZ6
	EYftDKcX/M3pCRfyuX1OkR4BFOntr2LuuDEh2notwCb+++FEFjP2RygirMjfjfHrHN55KiItl7ZZP
	tiO5x77n0J/s7zlradAqVVLbk8mF6EYFskVJmg/6hX1lX0SFr0dQDPNDk/CDRuhFEgV/njxqYGeD9
	ZI030zwzhwwsTTW5owW92VL89Ud5mBbahjlW8tLc3kIM+g1SmLpxOq3Zos3HHN3H6v841RGu7tm0I
	QM+pxXvqfyS0+BvNFGUencHjBSAtV5c0yEFqlxaF+NuS6hJnOZ9kR/wUpA0IYrzLublsOoIZNWBeE
	1/6mO759UaMZjzUsSazQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlC2M-0001fQ-Ge; Tue, 16 Jun 2020 13:54:02 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC1C-00012k-OW
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:52:52 +0000
Received: by mail-wr1-x441.google.com with SMTP id t18so20877540wru.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:52:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=f3prHd9Q/Czt5Wr9tMzhipXs+Ow+XohzXCYh5U8lEv8=;
 b=s93KSWIYZQqcvK1+nIrdCJjlSuu7gHxdgNix0DgLqCDovbi9k0cFYBmAFg8nqrLrXu
 zaNgNFCVsDssO3DstT+Egowe5kdlcZkOZ3HMfQ3PzWhnkF3cf0Pb8IFFe63biC+zzKuk
 JdlJQtStQnZDzkPH9sCN6hYo8nDd2maUMEsuhrif6aGvvGDuGdggaP0Xq0G+lxoRBySV
 5rWKmteYT3riBxW62IXfOfVSpvv8wJrOE0hWQHD2kQFaWMBOMjZ5r7+x1dX1q7f/Fqbu
 laYgS+bOg1q/jAfQ2TILdaujFyMjsgiVBCoXgeTNNRuvgQqmVMmFC5Hr0/FUJLwg3lo3
 GR2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=f3prHd9Q/Czt5Wr9tMzhipXs+Ow+XohzXCYh5U8lEv8=;
 b=VQgfAvK/PmlfuX6czh4bEqJpo/RPtAqORns6ccq+n90QSbIwbNSQx2XAq339DSRzOv
 GHdaO62e6XYiJLAB75kq1IK2KZs5s1yFvPUGJ0RyZz0yPG86/RNcW4clHHauf9N0FrYd
 Ou/9tp42+0adWmj6W/zVRbIIdjPGvmvHefkPxdEgiMEzRgI7oM48BV7g1lDzbyb1mTuI
 uD5ZLPk+muouBaIMTW9FL6fbDAxjaZG7JxNeLCiHNHVTlFbS8xupnQzUmZDfbDWkVbKT
 QWFdguOhpDgohK3WfqknKQWzz6ProgzJPEYzBZaGgQosDjCsmX/q1TGMvBh26VT6g5ZM
 b9mg==
X-Gm-Message-State: AOAM532NxwoWjjDLb8juCl479om73EcDkUj97GPBluH5k+obpiu9AeOK
 wB8q3glzfOVk7twygJm8xVv5Xd38
X-Google-Smtp-Source: ABdhPJyDrtc0HtUwrJUnhtT25oS8QkN5ylu5f0Boa7Pbxj25NVWXijUIMb4Ob417bppMviE5ajaJ3w==
X-Received: by 2002:adf:fd41:: with SMTP id h1mr3362823wrs.374.1592315569176; 
 Tue, 16 Jun 2020 06:52:49 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id f11sm28730557wrj.2.2020.06.16.06.52.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:52:47 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 02/73] ARM: tegra: Remove simple clocks bus
Date: Tue, 16 Jun 2020 15:51:27 +0200
Message-Id: <20200616135238.3001888-3-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065250_838171_5178A4F4 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
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
Cc: linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

The standard way to do this is to list out the clocks at the top-level.
Adopt the standard way to fix validation.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm/boot/dts/tegra114-dalmore.dts    | 15 ++++-----------
 arch/arm/boot/dts/tegra114-roth.dts       | 15 ++++-----------
 arch/arm/boot/dts/tegra114-tn7.dts        | 15 ++++-----------
 arch/arm/boot/dts/tegra124-jetson-tk1.dts | 15 ++++-----------
 arch/arm/boot/dts/tegra124-nyan.dtsi      | 15 ++++-----------
 arch/arm/boot/dts/tegra124-venice2.dts    | 15 ++++-----------
 arch/arm/boot/dts/tegra20-harmony.dts     | 15 ++++-----------
 arch/arm/boot/dts/tegra20-paz00.dts       | 15 ++++-----------
 arch/arm/boot/dts/tegra20-seaboard.dts    | 15 ++++-----------
 arch/arm/boot/dts/tegra20-trimslice.dts   | 19 ++++++-------------
 arch/arm/boot/dts/tegra20-ventana.dts     | 15 ++++-----------
 arch/arm/boot/dts/tegra30-beaver.dts      | 15 ++++-----------
 arch/arm/boot/dts/tegra30-cardhu.dtsi     | 15 ++++-----------
 13 files changed, 54 insertions(+), 145 deletions(-)

diff --git a/arch/arm/boot/dts/tegra114-dalmore.dts b/arch/arm/boot/dts/tegra114-dalmore.dts
index 08be733ee2cd..04adfcb30cd7 100644
--- a/arch/arm/boot/dts/tegra114-dalmore.dts
+++ b/arch/arm/boot/dts/tegra114-dalmore.dts
@@ -1152,17 +1152,10 @@ backlight: backlight {
 		default-brightness-level = <6>;
 	};
 
-	clocks {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		clk32k_in: clock@0 {
-			compatible = "fixed-clock";
-			reg = <0>;
-			#clock-cells = <0>;
-			clock-frequency = <32768>;
-		};
+	clk32k_in: clock@0 {
+		compatible = "fixed-clock";
+		clock-frequency = <32768>;
+		#clock-cells = <0>;
 	};
 
 	gpio-keys {
diff --git a/arch/arm/boot/dts/tegra114-roth.dts b/arch/arm/boot/dts/tegra114-roth.dts
index 3d3835591cd2..73b83d51b59b 100644
--- a/arch/arm/boot/dts/tegra114-roth.dts
+++ b/arch/arm/boot/dts/tegra114-roth.dts
@@ -1016,17 +1016,10 @@ backlight: backlight {
 		enable-gpios = <&gpio TEGRA_GPIO(H, 2) GPIO_ACTIVE_HIGH>;
 	};
 
-	clocks {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		clk32k_in: clock@0 {
-			compatible = "fixed-clock";
-			reg = <0>;
-			#clock-cells = <0>;
-			clock-frequency = <32768>;
-		};
+	clk32k_in: clock@0 {
+		compatible = "fixed-clock";
+		clock-frequency = <32768>;
+		#clock-cells = <0>;
 	};
 
 	gpio-keys {
diff --git a/arch/arm/boot/dts/tegra114-tn7.dts b/arch/arm/boot/dts/tegra114-tn7.dts
index bfdd1bf61816..94e801b7986e 100644
--- a/arch/arm/boot/dts/tegra114-tn7.dts
+++ b/arch/arm/boot/dts/tegra114-tn7.dts
@@ -273,17 +273,10 @@ backlight: backlight {
 		power-supply = <&lcd_bl_en>;
 	};
 
-	clocks {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		clk32k_in: clock@0 {
-			compatible = "fixed-clock";
-			reg = <0>;
-			#clock-cells = <0>;
-			clock-frequency = <32768>;
-		};
+	clk32k_in: clock@0 {
+		compatible = "fixed-clock";
+		clock-frequency = <32768>;
+		#clock-cells = <0>;
 	};
 
 	gpio-keys {
diff --git a/arch/arm/boot/dts/tegra124-jetson-tk1.dts b/arch/arm/boot/dts/tegra124-jetson-tk1.dts
index 3bce7a1b288a..51b217a6507d 100644
--- a/arch/arm/boot/dts/tegra124-jetson-tk1.dts
+++ b/arch/arm/boot/dts/tegra124-jetson-tk1.dts
@@ -1855,17 +1855,10 @@ usb-phy@7d008000 {
 		vbus-supply = <&vdd_usb3_vbus>;
 	};
 
-	clocks {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		clk32k_in: clock@0 {
-			compatible = "fixed-clock";
-			reg = <0>;
-			#clock-cells = <0>;
-			clock-frequency = <32768>;
-		};
+	clk32k_in: clock@0 {
+		compatible = "fixed-clock";
+		clock-frequency = <32768>;
+		#clock-cells = <0>;
 	};
 
 	cpus {
diff --git a/arch/arm/boot/dts/tegra124-nyan.dtsi b/arch/arm/boot/dts/tegra124-nyan.dtsi
index 9cb5921bb1fa..4555d01094b5 100644
--- a/arch/arm/boot/dts/tegra124-nyan.dtsi
+++ b/arch/arm/boot/dts/tegra124-nyan.dtsi
@@ -575,17 +575,10 @@ backlight: backlight {
 			 256>;
 	};
 
-	clocks {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		clk32k_in: clock@0 {
-			compatible = "fixed-clock";
-			reg = <0>;
-			#clock-cells = <0>;
-			clock-frequency = <32768>;
-		};
+	clk32k_in: clock@0 {
+		compatible = "fixed-clock";
+		clock-frequency = <32768>;
+		#clock-cells = <0>;
 	};
 
 	cpus {
diff --git a/arch/arm/boot/dts/tegra124-venice2.dts b/arch/arm/boot/dts/tegra124-venice2.dts
index 710a68c5d4c7..6a7a31c831c5 100644
--- a/arch/arm/boot/dts/tegra124-venice2.dts
+++ b/arch/arm/boot/dts/tegra124-venice2.dts
@@ -1057,17 +1057,10 @@ backlight: backlight {
 		default-brightness-level = <6>;
 	};
 
-	clocks {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		clk32k_in: clock@0 {
-			compatible = "fixed-clock";
-			reg = <0>;
-			#clock-cells = <0>;
-			clock-frequency = <32768>;
-		};
+	clk32k_in: clock@0 {
+		compatible = "fixed-clock";
+		clock-frequency = <32768>;
+		#clock-cells = <0>;
 	};
 
 	gpio-keys {
diff --git a/arch/arm/boot/dts/tegra20-harmony.dts b/arch/arm/boot/dts/tegra20-harmony.dts
index 02cd67ea2503..bdfbe26fa26a 100644
--- a/arch/arm/boot/dts/tegra20-harmony.dts
+++ b/arch/arm/boot/dts/tegra20-harmony.dts
@@ -640,17 +640,10 @@ backlight: backlight {
 		default-brightness-level = <6>;
 	};
 
-	clocks {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		clk32k_in: clock@0 {
-			compatible = "fixed-clock";
-			reg = <0>;
-			#clock-cells = <0>;
-			clock-frequency = <32768>;
-		};
+	clk32k_in: clock@0 {
+		compatible = "fixed-clock";
+		clock-frequency = <32768>;
+		#clock-cells = <0>;
 	};
 
 	gpio-keys {
diff --git a/arch/arm/boot/dts/tegra20-paz00.dts b/arch/arm/boot/dts/tegra20-paz00.dts
index cce3a3fb82ed..bfc9625a6c72 100644
--- a/arch/arm/boot/dts/tegra20-paz00.dts
+++ b/arch/arm/boot/dts/tegra20-paz00.dts
@@ -569,17 +569,10 @@ backlight: backlight {
 		backlight-boot-off;
 	};
 
-	clocks {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		clk32k_in: clock@0 {
-			compatible = "fixed-clock";
-			reg = <0>;
-			#clock-cells = <0>;
-			clock-frequency = <32768>;
-		};
+	clk32k_in: clock@0 {
+		compatible = "fixed-clock";
+		clock-frequency = <32768>;
+		#clock-cells = <0>;
 	};
 
 	gpio-keys {
diff --git a/arch/arm/boot/dts/tegra20-seaboard.dts b/arch/arm/boot/dts/tegra20-seaboard.dts
index 376ecb6435f4..28dcff3b7d7e 100644
--- a/arch/arm/boot/dts/tegra20-seaboard.dts
+++ b/arch/arm/boot/dts/tegra20-seaboard.dts
@@ -792,17 +792,10 @@ backlight: backlight {
 		default-brightness-level = <6>;
 	};
 
-	clocks {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		clk32k_in: clock@0 {
-			compatible = "fixed-clock";
-			reg = <0>;
-			#clock-cells = <0>;
-			clock-frequency = <32768>;
-		};
+	clk32k_in: clock@0 {
+		compatible = "fixed-clock";
+		clock-frequency = <32768>;
+		#clock-cells = <0>;
 	};
 
 	gpio-keys {
diff --git a/arch/arm/boot/dts/tegra20-trimslice.dts b/arch/arm/boot/dts/tegra20-trimslice.dts
index 8debd3d3c20d..5b26482a55b7 100644
--- a/arch/arm/boot/dts/tegra20-trimslice.dts
+++ b/arch/arm/boot/dts/tegra20-trimslice.dts
@@ -366,30 +366,23 @@ usb-phy@c5008000 {
 		status = "okay";
 	};
 
-	sdhci@c8000000 {
+	mmc@c8000000 {
 		status = "okay";
 		broken-cd;
 		bus-width = <4>;
 	};
 
-	sdhci@c8000600 {
+	mmc@c8000600 {
 		status = "okay";
 		cd-gpios = <&gpio TEGRA_GPIO(P, 1) GPIO_ACTIVE_LOW>;
 		wp-gpios = <&gpio TEGRA_GPIO(P, 2) GPIO_ACTIVE_HIGH>;
 		bus-width = <4>;
 	};
 
-	clocks {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		clk32k_in: clock@0 {
-			compatible = "fixed-clock";
-			reg = <0>;
-			#clock-cells = <0>;
-			clock-frequency = <32768>;
-		};
+	clk32k_in: clock@0 {
+		compatible = "fixed-clock";
+		clock-frequency = <32768>;
+		#clock-cells = <0>;
 	};
 
 	gpio-keys {
diff --git a/arch/arm/boot/dts/tegra20-ventana.dts b/arch/arm/boot/dts/tegra20-ventana.dts
index 022649119821..59998d3708a1 100644
--- a/arch/arm/boot/dts/tegra20-ventana.dts
+++ b/arch/arm/boot/dts/tegra20-ventana.dts
@@ -586,17 +586,10 @@ backlight: backlight {
 		default-brightness-level = <6>;
 	};
 
-	clocks {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		clk32k_in: clock@0 {
-			compatible = "fixed-clock";
-			reg = <0>;
-			#clock-cells = <0>;
-			clock-frequency = <32768>;
-		};
+	clk32k_in: clock@0 {
+		compatible = "fixed-clock";
+		clock-frequency = <32768>;
+		#clock-cells = <0>;
 	};
 
 	gpio-keys {
diff --git a/arch/arm/boot/dts/tegra30-beaver.dts b/arch/arm/boot/dts/tegra30-beaver.dts
index 6b6fd8a8058f..ef3ea08f8d19 100644
--- a/arch/arm/boot/dts/tegra30-beaver.dts
+++ b/arch/arm/boot/dts/tegra30-beaver.dts
@@ -1965,17 +1965,10 @@ usb-phy@7d008000 {
 		status = "okay";
 	};
 
-	clocks {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		clk32k_in: clock@0 {
-			compatible = "fixed-clock";
-			reg = <0>;
-			#clock-cells = <0>;
-			clock-frequency = <32768>;
-		};
+	clk32k_in: clock@0 {
+		compatible = "fixed-clock";
+		clock-frequency = <32768>;
+		#clock-cells = <0>;
 	};
 
 	gpio-leds {
diff --git a/arch/arm/boot/dts/tegra30-cardhu.dtsi b/arch/arm/boot/dts/tegra30-cardhu.dtsi
index 5ee5d141bd81..c166967b6c3f 100644
--- a/arch/arm/boot/dts/tegra30-cardhu.dtsi
+++ b/arch/arm/boot/dts/tegra30-cardhu.dtsi
@@ -418,17 +418,10 @@ backlight: backlight {
 		default-brightness-level = <6>;
 	};
 
-	clocks {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		clk32k_in: clock@0 {
-			compatible = "fixed-clock";
-			reg = <0>;
-			#clock-cells = <0>;
-			clock-frequency = <32768>;
-		};
+	clk32k_in: clock@0 {
+		compatible = "fixed-clock";
+		clock-frequency = <32768>;
+		#clock-cells = <0>;
 	};
 
 	panel: panel {
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
