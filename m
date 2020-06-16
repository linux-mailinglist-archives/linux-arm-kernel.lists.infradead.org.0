Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F35051FB3D0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:12:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wQ7hcolh3WksVElOfIhhiDJnUme9zEU3C700WkZR9/g=; b=THwlPV+mss6TVb
	LF2Es/GCCLeHyrq0vpOU2grqIow5xp73+f2OHmAq2oTrbyDjbMdA6rC8EfgFovPIaWV7pV6JNZ/AM
	ELot4MSmZtV5RHAuDtx458Uavb+MNhOWihW+XWE7FkdMUcgbyLv0w7Khca2xLj03wBZtpgyHm4+AT
	t66zxhyV8WWK6CfVKFudNGiUQl71ZQq2Ij3qhNtHgcUgVFjsw8LEchNycI/rKv5Ub1GB4Fm79ul0T
	pWcXBuFMmDWhJElW3GTekMl+ZTgVxZy9tImvrgPsoCHkHxo3WD6gJw9f7TlOumBvVl/UhMn09KMma
	2umtBJ5IhK/BEvK97qxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCJn-0007Qu-JB; Tue, 16 Jun 2020 14:12:03 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC37-0002Q4-Np
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:54:52 +0000
Received: by mail-wr1-x443.google.com with SMTP id x13so20860243wrv.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:54:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JGNoF52WDvOHsoVJOA+5In3kneL7744swJ6p7qfJ/lo=;
 b=m6zchlZs8tchsR1QAHIFAYL2clTbSvxh79v7oChz0+H+Pkom8ktXE0CqENJE9sjN5a
 /eLrJaF3R+E96iWZ7fwgglVw8z2kb5/uO5mqeZd5GtULoU0OvNwVCf984W7g+iQMlSLz
 2YCgim9dI/8QIFpj7JVd5IoUYvHrnuXY3CQqDWYvxVxF1/bpO5eI4V4hOsmFuaUGuyly
 ebf17Ro2YnmJE1DKHILITCXpd/SYxwIPbADy/nDiiTOdceZnnBjB7No+cZz9vFCqErFX
 8vxzyIzCr7h2EQDJEoMRWUiBi0/AUHEpgxEAjQsIfw1FpOIsy5085k+BH2WBdaLirs1R
 CRLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JGNoF52WDvOHsoVJOA+5In3kneL7744swJ6p7qfJ/lo=;
 b=jec7Ox0ggCz/OdWTo4oS0ybxYUGySMYCz3oP9AkWKtIcJlHhblPiq7kXfDsqUGUZTH
 LC0IUpxqJQxqxIwUYD+jonjtdozFfxGxq5znllQoxp1ZqPYvqOnR/JX9nYCSlnOte3al
 bSsb/VHsGOSUuKS1gYCLBLOYQK/bycFq7KRswcKDIDZn5SHkmrLRcFl6wWap/Fnjg6sd
 F7mBb02JA3N11UKs8lZM6Vr1NhxN9XGMIYzPshGxChSXQN95DtHKJRT6OOKEHV0xBJX2
 8f1x6o/XTc7TyQgSiirhTNS0N+dm0XPAjgbTEwai7brLOxMvAb5mtcVOcuX88re+28+4
 eEUQ==
X-Gm-Message-State: AOAM5304K4zwEKuZCG/JDRqqVOBE9pfvg/fkFpJXCuasoQm0viqC9Fqs
 sfbex9G8zeMY6+zbNU3k2Do=
X-Google-Smtp-Source: ABdhPJzKfhcu7s7tvxmwswuXVVOTC36tlY8saUFwxp9A1xO3uf6rcIHjrrFp1yrhYCbZS2YuMdRuag==
X-Received: by 2002:adf:f789:: with SMTP id q9mr3425478wrp.251.1592315688261; 
 Tue, 16 Jun 2020 06:54:48 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id s18sm35893062wra.85.2020.06.16.06.54.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:54:46 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 49/73] arm64: tegra: Rename sdhci nodes to mmc
Date: Tue, 16 Jun 2020 15:52:14 +0200
Message-Id: <20200616135238.3001888-50-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065449_962927_90415171 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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

The new json-schema based validation tools require SD/MMC controller
nodes to be named mmc. Rename all references to them.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra132-norrin.dts     |  6 +++---
 arch/arm64/boot/dts/nvidia/tegra132.dtsi           |  8 ++++----
 arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts |  2 +-
 arch/arm64/boot/dts/nvidia/tegra186-p3310.dtsi     | 10 +++++-----
 arch/arm64/boot/dts/nvidia/tegra186.dtsi           |  8 ++++----
 arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi     |  8 ++++----
 arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts |  2 +-
 arch/arm64/boot/dts/nvidia/tegra194.dtsi           |  6 +++---
 arch/arm64/boot/dts/nvidia/tegra210-p2180.dtsi     |  2 +-
 arch/arm64/boot/dts/nvidia/tegra210-p2530.dtsi     |  2 +-
 arch/arm64/boot/dts/nvidia/tegra210-p2597.dtsi     |  2 +-
 arch/arm64/boot/dts/nvidia/tegra210-p2894.dtsi     |  2 +-
 arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts |  4 ++--
 arch/arm64/boot/dts/nvidia/tegra210-smaug.dts      |  2 +-
 arch/arm64/boot/dts/nvidia/tegra210.dtsi           |  8 ++++----
 15 files changed, 36 insertions(+), 36 deletions(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra132-norrin.dts b/arch/arm64/boot/dts/nvidia/tegra132-norrin.dts
index d0d03cc30197..e6fe62e5c234 100644
--- a/arch/arm64/boot/dts/nvidia/tegra132-norrin.dts
+++ b/arch/arm64/boot/dts/nvidia/tegra132-norrin.dts
@@ -894,12 +894,12 @@ pmc@7000e400 {
 	};
 
 	/* WIFI/BT module */
-	sdhci@700b0000 {
+	mmc@700b0000 {
 		status = "disabled";
 	};
 
 	/* external SD/MMC */
-	sdhci@700b0400 {
+	mmc@700b0400 {
 		cd-gpios = <&gpio TEGRA_GPIO(V, 2) GPIO_ACTIVE_LOW>;
 		power-gpios = <&gpio TEGRA_GPIO(R, 0) GPIO_ACTIVE_HIGH>;
 		wp-gpios = <&gpio TEGRA_GPIO(Q, 4) GPIO_ACTIVE_HIGH>;
@@ -909,7 +909,7 @@ sdhci@700b0400 {
 	};
 
 	/* EMMC 4.51 */
-	sdhci@700b0600 {
+	mmc@700b0600 {
 		status = "okay";
 		bus-width = <8>;
 		non-removable;
diff --git a/arch/arm64/boot/dts/nvidia/tegra132.dtsi b/arch/arm64/boot/dts/nvidia/tegra132.dtsi
index 4fc34c5ec2dc..8558ad38b69c 100644
--- a/arch/arm64/boot/dts/nvidia/tegra132.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra132.dtsi
@@ -691,7 +691,7 @@ utmi-2 {
 		};
 	};
 
-	sdhci@700b0000 {
+	mmc@700b0000 {
 		compatible = "nvidia,tegra124-sdhci";
 		reg = <0x0 0x700b0000 0x0 0x200>;
 		interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
@@ -702,7 +702,7 @@ sdhci@700b0000 {
 		status = "disabled";
 	};
 
-	sdhci@700b0200 {
+	mmc@700b0200 {
 		compatible = "nvidia,tegra124-sdhci";
 		reg = <0x0 0x700b0200 0x0 0x200>;
 		interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
@@ -713,7 +713,7 @@ sdhci@700b0200 {
 		status = "disabled";
 	};
 
-	sdhci@700b0400 {
+	mmc@700b0400 {
 		compatible = "nvidia,tegra124-sdhci";
 		reg = <0x0 0x700b0400 0x0 0x200>;
 		interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
@@ -724,7 +724,7 @@ sdhci@700b0400 {
 		status = "disabled";
 	};
 
-	sdhci@700b0600 {
+	mmc@700b0600 {
 		compatible = "nvidia,tegra124-sdhci";
 		reg = <0x0 0x700b0600 0x0 0x200>;
 		interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts b/arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts
index f35b0ba29cb5..37ec15a14c77 100644
--- a/arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts
+++ b/arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts
@@ -103,7 +103,7 @@ exp2: gpio@77 {
 	};
 
 	/* SDMMC1 (SD/MMC) */
-	sdhci@3400000 {
+	mmc@3400000 {
 		status = "okay";
 
 		vmmc-supply = <&vdd_sd>;
diff --git a/arch/arm64/boot/dts/nvidia/tegra186-p3310.dtsi b/arch/arm64/boot/dts/nvidia/tegra186-p3310.dtsi
index 7b5b9bb332cf..d1ed7eee949a 100644
--- a/arch/arm64/boot/dts/nvidia/tegra186-p3310.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra186-p3310.dtsi
@@ -9,8 +9,8 @@ / {
 
 	aliases {
 		ethernet0 = "/ethernet@2490000";
-		sdhci0 = "/sdhci@3460000";
-		sdhci1 = "/sdhci@3400000";
+		mmc0 = "/mmc@3460000";
+		mmc1 = "/mmc@3400000";
 		serial0 = &uarta;
 		i2c0 = "/bpmp/i2c";
 		i2c1 = "/i2c@3160000";
@@ -135,7 +135,7 @@ i2c@31e0000 {
 	};
 
 	/* SDMMC1 (SD/MMC) */
-	sdhci@3400000 {
+	mmc@3400000 {
 		cd-gpios = <&gpio TEGRA186_MAIN_GPIO(P, 5) GPIO_ACTIVE_LOW>;
 		wp-gpios = <&gpio TEGRA186_MAIN_GPIO(P, 4) GPIO_ACTIVE_HIGH>;
 
@@ -143,12 +143,12 @@ sdhci@3400000 {
 	};
 
 	/* SDMMC3 (SDIO) */
-	sdhci@3440000 {
+	mmc@3440000 {
 		status = "okay";
 	};
 
 	/* SDMMC4 (eMMC) */
-	sdhci@3460000 {
+	mmc@3460000 {
 		status = "okay";
 		bus-width = <8>;
 		non-removable;
diff --git a/arch/arm64/boot/dts/nvidia/tegra186.dtsi b/arch/arm64/boot/dts/nvidia/tegra186.dtsi
index e86b682f8645..927c646620cb 100644
--- a/arch/arm64/boot/dts/nvidia/tegra186.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra186.dtsi
@@ -333,7 +333,7 @@ gen9_i2c: i2c@31e0000 {
 		status = "disabled";
 	};
 
-	sdmmc1: sdhci@3400000 {
+	sdmmc1: mmc@3400000 {
 		compatible = "nvidia,tegra186-sdhci";
 		reg = <0x0 0x03400000 0x0 0x10000>;
 		interrupts = <GIC_SPI 62 IRQ_TYPE_LEVEL_HIGH>;
@@ -362,7 +362,7 @@ sdmmc1: sdhci@3400000 {
 		status = "disabled";
 	};
 
-	sdmmc2: sdhci@3420000 {
+	sdmmc2: mmc@3420000 {
 		compatible = "nvidia,tegra186-sdhci";
 		reg = <0x0 0x03420000 0x0 0x10000>;
 		interrupts = <GIC_SPI 63 IRQ_TYPE_LEVEL_HIGH>;
@@ -386,7 +386,7 @@ sdmmc2: sdhci@3420000 {
 		status = "disabled";
 	};
 
-	sdmmc3: sdhci@3440000 {
+	sdmmc3: mmc@3440000 {
 		compatible = "nvidia,tegra186-sdhci";
 		reg = <0x0 0x03440000 0x0 0x10000>;
 		interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
@@ -412,7 +412,7 @@ sdmmc3: sdhci@3440000 {
 		status = "disabled";
 	};
 
-	sdmmc4: sdhci@3460000 {
+	sdmmc4: mmc@3460000 {
 		compatible = "nvidia,tegra186-sdhci";
 		reg = <0x0 0x03460000 0x0 0x10000>;
 		interrupts = <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi b/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi
index f3781e86f321..442e333ac13f 100644
--- a/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi
@@ -9,8 +9,8 @@ / {
 
 	aliases {
 		ethernet0 = "/cbb@0/ethernet@2490000";
-		sdhci0 = "/cbb@0/sdhci@3460000";
-		sdhci1 = "/cbb@0/sdhci@3400000";
+		mmc0 = "/cbb@0/mmc@3460000";
+		mmc1 = "/cbb@0/mmc@3400000";
 		serial0 = &tcu;
 		i2c0 = "/bpmp/i2c";
 		i2c1 = "/cbb@0/i2c@3160000";
@@ -58,12 +58,12 @@ serial@3110000 {
 		};
 
 		/* SDMMC1 (SD/MMC) */
-		sdhci@3400000 {
+		mmc@3400000 {
 			cd-gpios = <&gpio TEGRA194_MAIN_GPIO(A, 0) GPIO_ACTIVE_LOW>;
 		};
 
 		/* SDMMC4 (eMMC) */
-		sdhci@3460000 {
+		mmc@3460000 {
 			status = "okay";
 			bus-width = <8>;
 			non-removable;
diff --git a/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts b/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
index 9a7d136b467f..0f9868b6fd6b 100644
--- a/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
+++ b/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
@@ -28,7 +28,7 @@ ddc: i2c@31c0000 {
 		};
 
 		/* SDMMC1 (SD/MMC) */
-		sdhci@3400000 {
+		mmc@3400000 {
 			status = "okay";
 		};
 
diff --git a/arch/arm64/boot/dts/nvidia/tegra194.dtsi b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
index f056158a2634..d5246c75b782 100644
--- a/arch/arm64/boot/dts/nvidia/tegra194.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
@@ -456,7 +456,7 @@ pwm8: pwm@32f0000 {
 			#pwm-cells = <2>;
 		};
 
-		sdmmc1: sdhci@3400000 {
+		sdmmc1: mmc@3400000 {
 			compatible = "nvidia,tegra194-sdhci";
 			reg = <0x03400000 0x10000>;
 			interrupts = <GIC_SPI 62 IRQ_TYPE_LEVEL_HIGH>;
@@ -481,7 +481,7 @@ sdmmc1: sdhci@3400000 {
 			status = "disabled";
 		};
 
-		sdmmc3: sdhci@3440000 {
+		sdmmc3: mmc@3440000 {
 			compatible = "nvidia,tegra194-sdhci";
 			reg = <0x03440000 0x10000>;
 			interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
@@ -507,7 +507,7 @@ sdmmc3: sdhci@3440000 {
 			status = "disabled";
 		};
 
-		sdmmc4: sdhci@3460000 {
+		sdmmc4: mmc@3460000 {
 			compatible = "nvidia,tegra194-sdhci";
 			reg = <0x03460000 0x10000>;
 			interrupts = <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm64/boot/dts/nvidia/tegra210-p2180.dtsi b/arch/arm64/boot/dts/nvidia/tegra210-p2180.dtsi
index 751775357d51..251c6099482a 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210-p2180.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra210-p2180.dtsi
@@ -293,7 +293,7 @@ pmc@7000e400 {
 	};
 
 	/* eMMC */
-	sdhci@700b0600 {
+	mmc@700b0600 {
 		status = "okay";
 		bus-width = <8>;
 		non-removable;
diff --git a/arch/arm64/boot/dts/nvidia/tegra210-p2530.dtsi b/arch/arm64/boot/dts/nvidia/tegra210-p2530.dtsi
index 9ace2d9ea085..f9158dc943f9 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210-p2530.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra210-p2530.dtsi
@@ -34,7 +34,7 @@ pmc@7000e400 {
 	};
 
 	/* eMMC */
-	sdhci@700b0600 {
+	mmc@700b0600 {
 		status = "okay";
 		bus-width = <8>;
 		non-removable;
diff --git a/arch/arm64/boot/dts/nvidia/tegra210-p2597.dtsi b/arch/arm64/boot/dts/nvidia/tegra210-p2597.dtsi
index f72afdf547ee..fb0db05647c4 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210-p2597.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra210-p2597.dtsi
@@ -1500,7 +1500,7 @@ usb3-1 {
 	};
 
 	/* MMC/SD */
-	sdhci@700b0000 {
+	mmc@700b0000 {
 		status = "okay";
 		bus-width = <4>;
 
diff --git a/arch/arm64/boot/dts/nvidia/tegra210-p2894.dtsi b/arch/arm64/boot/dts/nvidia/tegra210-p2894.dtsi
index 615a8f5a6cf2..579d5b8a757d 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210-p2894.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra210-p2894.dtsi
@@ -1580,7 +1580,7 @@ pmc@7000e400 {
 		status = "okay";
 	};
 
-	sdhci@700b0600 {
+	mmc@700b0600 {
 		bus-width = <8>;
 		non-removable;
 		status = "okay";
diff --git a/arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts b/arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts
index e6f4a36efa73..4a354f5293fc 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts
+++ b/arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts
@@ -535,7 +535,7 @@ usb3-0 {
 		};
 	};
 
-	sdhci@700b0000 {
+	mmc@700b0000 {
 		status = "okay";
 		bus-width = <4>;
 
@@ -553,7 +553,7 @@ usb@700d0000 {
 		hvdd-usb-supply = <&vdd_1v8>;
 	};
 
-	sdhci@700b0400 {
+	mmc@700b0400 {
 		status = "okay";
 		bus-width = <4>;
 
diff --git a/arch/arm64/boot/dts/nvidia/tegra210-smaug.dts b/arch/arm64/boot/dts/nvidia/tegra210-smaug.dts
index 0b5b6ffbff43..d32053934f3c 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210-smaug.dts
+++ b/arch/arm64/boot/dts/nvidia/tegra210-smaug.dts
@@ -1693,7 +1693,7 @@ usb3-0 {
 		};
 	};
 
-	sdhci@700b0600 {
+	mmc@700b0600 {
 		bus-width = <8>;
 		non-removable;
 		status = "okay";
diff --git a/arch/arm64/boot/dts/nvidia/tegra210.dtsi b/arch/arm64/boot/dts/nvidia/tegra210.dtsi
index 41ffa0531cd8..1f7dc518b394 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra210.dtsi
@@ -1175,7 +1175,7 @@ usb3-3 {
 		};
 	};
 
-	sdhci@700b0000 {
+	mmc@700b0000 {
 		compatible = "nvidia,tegra210-sdhci";
 		reg = <0x0 0x700b0000 0x0 0x200>;
 		interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
@@ -1203,7 +1203,7 @@ sdhci@700b0000 {
 		status = "disabled";
 	};
 
-	sdhci@700b0200 {
+	mmc@700b0200 {
 		compatible = "nvidia,tegra210-sdhci";
 		reg = <0x0 0x700b0200 0x0 0x200>;
 		interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
@@ -1220,7 +1220,7 @@ sdhci@700b0200 {
 		status = "disabled";
 	};
 
-	sdhci@700b0400 {
+	mmc@700b0400 {
 		compatible = "nvidia,tegra210-sdhci";
 		reg = <0x0 0x700b0400 0x0 0x200>;
 		interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
@@ -1243,7 +1243,7 @@ sdhci@700b0400 {
 		status = "disabled";
 	};
 
-	sdhci@700b0600 {
+	mmc@700b0600 {
 		compatible = "nvidia,tegra210-sdhci";
 		reg = <0x0 0x700b0600 0x0 0x200>;
 		interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
