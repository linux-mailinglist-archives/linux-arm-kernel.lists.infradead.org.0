Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5AF11FB31C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 15:59:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fbFbUhagb2twvdqLnyz6vNwEzYRqR2u667ej90nzlWw=; b=qn9SmsCrAii0A6
	z+wtd4dUk/UJQbqsWHp2g9r3cJatXKvxp/6sqO1LkSIDeYsLX2ctUzq8w1Q+9H3rVWdX8XflulUgp
	F970sDO32xiFT52anF9kxhBCNBzNQx+wrxzZX8ayPX/tsLI74FxkEhNGBD+o5kWsemrBFP2PkVuEu
	OMgeeGk8q69eWw6dHLua15pzndlZFxQrft518DYkELKY9i+JfUrzFSJ6zrEhkrcjDj6zH3DiTqiS2
	2ic05FWPzOc4ScqyLIT4cldrMxITht4f8aytAuQPStR8nc7O5HDf2ESTOozIIrmD6vYdhV+DwGKnJ
	xxID1YtYrkuhEOf7brGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlC7x-0007fe-Lg; Tue, 16 Jun 2020 13:59:49 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC1e-0001QX-KE
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:53:26 +0000
Received: by mail-wm1-x342.google.com with SMTP id q25so3187286wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:53:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VTwp+SL8wRQTyOOTKUYQ+dBw7W7OX6eyhOvU2Jiqj48=;
 b=TIbYcttZLmwQaeERRyl1KzmNNgEPU+xZOkoXAPsmip7EVDbnHQ4yksXyTBfSWeCoZC
 aEP7CllNhmhsk77cdoYTbVz+CI/zZmRVJoZomLKHjNIM/RfSEchSGtIUOYuyw7k/0hF0
 m06mgmHMFGvCwuPAuno4waYWkHl1KOsQ9r9sRdC6TmyzOH/cIZc5cA0JjE+DVtKqTaJM
 K6xpm42b0BEBYlQTb7noexs0G71Cbj5qQcVzgmOix3xcuk0+6kZT3SgKMK4oLgYCeKU5
 uJCqOaSnJRXpRim0cv/dIVX75lWbEfgy32s29LSKVlFPyc1guLOstEUuI20aWDz+koac
 7r+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VTwp+SL8wRQTyOOTKUYQ+dBw7W7OX6eyhOvU2Jiqj48=;
 b=ReCKXHiFWV2M+cqT60OnLULER0EOFHQK3H5EkUkSovUsFhO4hRsc87jL25CHsJCMnJ
 mBLcivJniBtR/E4Z094mNZqfblNRCZiaPpHcQkqrna7vtNen0LBKsTTt4Q3s+dW8eXiN
 ozPnLezj12F8LMkMsznLGZFvMn/5z0BN8rkowPOIviMMa0BgqStfnpRrLpzSEsO/NLwX
 xG9aItwnXNm6sd7dqSgQgJ0Stos5aiAVr0/C5+3FIAM33QFVftCCz1Se/Gr6QaE+hudt
 AfBU+bQuJOFcRpZxnJt3zMAXX82ZY0pQ+RW+SMb/umeAEBCEnzR1syxZ5jZhTUwO1qV9
 eUdw==
X-Gm-Message-State: AOAM532P2Pdsjxj5imR4wA/AkO2z/1bifSyy4+033c4nWXcQgtTv9rnc
 mW94+aj0aeZY3rid8ry6vFQ=
X-Google-Smtp-Source: ABdhPJyuRFvADTf750utQfeuKdmdHkHFOHLAPSihUcOv65ui9vATLCxAldOZ5N02qcNwNT6ZRi3ysg==
X-Received: by 2002:a1c:df04:: with SMTP id w4mr3608421wmg.152.1592315596653; 
 Tue, 16 Jun 2020 06:53:16 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id v19sm4090072wml.26.2020.06.16.06.53.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:53:15 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 13/73] ARM: tegra: Rename sdhci nodes to mmc
Date: Tue, 16 Jun 2020 15:51:38 +0200
Message-Id: <20200616135238.3001888-14-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065318_767321_0540BD2E 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Cc: linux-tegra@vger.kernel.org, Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

The new json-schema based validation tools require SD/MMC controller
nodes to be named mmc. Rename all references to them.

Cc: Marcel Ziswiler <marcel.ziswiler@toradex.com>
Cc: Philippe Schenker <philippe.schenker@toradex.com>
Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm/boot/dts/tegra114-dalmore.dts          | 4 ++--
 arch/arm/boot/dts/tegra114-roth.dts             | 4 ++--
 arch/arm/boot/dts/tegra114-tn7.dts              | 2 +-
 arch/arm/boot/dts/tegra114.dtsi                 | 8 ++++----
 arch/arm/boot/dts/tegra124-apalis-eval.dts      | 4 ++--
 arch/arm/boot/dts/tegra124-apalis-v1.2-eval.dts | 4 ++--
 arch/arm/boot/dts/tegra124-apalis-v1.2.dtsi     | 2 +-
 arch/arm/boot/dts/tegra124-apalis.dtsi          | 2 +-
 arch/arm/boot/dts/tegra124-jetson-tk1.dts       | 4 ++--
 arch/arm/boot/dts/tegra124-nyan-big.dts         | 2 +-
 arch/arm/boot/dts/tegra124-nyan.dtsi            | 6 +++---
 arch/arm/boot/dts/tegra124-venice2.dts          | 4 ++--
 arch/arm/boot/dts/tegra124.dtsi                 | 8 ++++----
 arch/arm/boot/dts/tegra20-colibri-eval-v3.dts   | 2 +-
 arch/arm/boot/dts/tegra20-colibri-iris.dts      | 2 +-
 arch/arm/boot/dts/tegra20-harmony.dts           | 4 ++--
 arch/arm/boot/dts/tegra20-paz00.dts             | 4 ++--
 arch/arm/boot/dts/tegra20-seaboard.dts          | 6 +++---
 arch/arm/boot/dts/tegra20-ventana.dts           | 6 +++---
 arch/arm/boot/dts/tegra20.dtsi                  | 8 ++++----
 arch/arm/boot/dts/tegra30-apalis-eval.dts       | 4 ++--
 arch/arm/boot/dts/tegra30-apalis-v1.1-eval.dts  | 4 ++--
 arch/arm/boot/dts/tegra30-apalis-v1.1.dtsi      | 2 +-
 arch/arm/boot/dts/tegra30-apalis.dtsi           | 2 +-
 arch/arm/boot/dts/tegra30-beaver.dts            | 4 ++--
 arch/arm/boot/dts/tegra30-cardhu.dtsi           | 4 ++--
 arch/arm/boot/dts/tegra30-colibri-eval-v3.dts   | 2 +-
 arch/arm/boot/dts/tegra30-colibri.dtsi          | 2 +-
 arch/arm/boot/dts/tegra30.dtsi                  | 8 ++++----
 29 files changed, 59 insertions(+), 59 deletions(-)

diff --git a/arch/arm/boot/dts/tegra114-dalmore.dts b/arch/arm/boot/dts/tegra114-dalmore.dts
index 584db54cd750..c04162ddec3c 100644
--- a/arch/arm/boot/dts/tegra114-dalmore.dts
+++ b/arch/arm/boot/dts/tegra114-dalmore.dts
@@ -1108,14 +1108,14 @@ i2s@70080400 {
 		};
 	};
 
-	sdhci@78000400 {
+	mmc@78000400 {
 		cd-gpios = <&gpio TEGRA_GPIO(V, 2) GPIO_ACTIVE_LOW>;
 		wp-gpios = <&gpio TEGRA_GPIO(Q, 4) GPIO_ACTIVE_HIGH>;
 		bus-width = <4>;
 		status = "okay";
 	};
 
-	sdhci@78000600 {
+	mmc@78000600 {
 		bus-width = <8>;
 		status = "okay";
 		non-removable;
diff --git a/arch/arm/boot/dts/tegra114-roth.dts b/arch/arm/boot/dts/tegra114-roth.dts
index 7378b5d6f2fa..07960171fabe 100644
--- a/arch/arm/boot/dts/tegra114-roth.dts
+++ b/arch/arm/boot/dts/tegra114-roth.dts
@@ -962,7 +962,7 @@ pmc@7000e400 {
 	};
 
 	/* SD card */
-	sdhci@78000400 {
+	mmc@78000400 {
 		status = "okay";
 		bus-width = <4>;
 		vqmmc-supply = <&vddio_sdmmc3>;
@@ -971,7 +971,7 @@ sdhci@78000400 {
 	};
 
 	/* eMMC */
-	sdhci@78000600 {
+	mmc@78000600 {
 		status = "okay";
 		bus-width = <8>;
 		non-removable;
diff --git a/arch/arm/boot/dts/tegra114-tn7.dts b/arch/arm/boot/dts/tegra114-tn7.dts
index 0e520ae1109d..745d234b105b 100644
--- a/arch/arm/boot/dts/tegra114-tn7.dts
+++ b/arch/arm/boot/dts/tegra114-tn7.dts
@@ -242,7 +242,7 @@ pmc@7000e400 {
 	};
 
 	/* eMMC */
-	sdhci@78000600 {
+	mmc@78000600 {
 		status = "okay";
 		bus-width = <8>;
 		non-removable;
diff --git a/arch/arm/boot/dts/tegra114.dtsi b/arch/arm/boot/dts/tegra114.dtsi
index 23df7a5f37d3..69e0e3eeffb4 100644
--- a/arch/arm/boot/dts/tegra114.dtsi
+++ b/arch/arm/boot/dts/tegra114.dtsi
@@ -644,7 +644,7 @@ mipi: mipi@700e3000 {
 		#nvidia,mipi-calibrate-cells = <1>;
 	};
 
-	sdhci@78000000 {
+	mmc@78000000 {
 		compatible = "nvidia,tegra114-sdhci", "nvidia,tegra30-sdhci";
 		reg = <0x78000000 0x200>;
 		interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
@@ -655,7 +655,7 @@ sdhci@78000000 {
 		status = "disabled";
 	};
 
-	sdhci@78000200 {
+	mmc@78000200 {
 		compatible = "nvidia,tegra114-sdhci", "nvidia,tegra30-sdhci";
 		reg = <0x78000200 0x200>;
 		interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
@@ -666,7 +666,7 @@ sdhci@78000200 {
 		status = "disabled";
 	};
 
-	sdhci@78000400 {
+	mmc@78000400 {
 		compatible = "nvidia,tegra114-sdhci", "nvidia,tegra30-sdhci";
 		reg = <0x78000400 0x200>;
 		interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
@@ -677,7 +677,7 @@ sdhci@78000400 {
 		status = "disabled";
 	};
 
-	sdhci@78000600 {
+	mmc@78000600 {
 		compatible = "nvidia,tegra114-sdhci", "nvidia,tegra30-sdhci";
 		reg = <0x78000600 0x200>;
 		interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm/boot/dts/tegra124-apalis-eval.dts b/arch/arm/boot/dts/tegra124-apalis-eval.dts
index ceb3f6388c7d..28c29b6813a7 100644
--- a/arch/arm/boot/dts/tegra124-apalis-eval.dts
+++ b/arch/arm/boot/dts/tegra124-apalis-eval.dts
@@ -130,7 +130,7 @@ usb@70090000 {
 	};
 
 	/* Apalis MMC1 */
-	sdhci@700b0000 {
+	mmc@700b0000 {
 		status = "okay";
 		bus-width = <4>;
 		/* MMC1_CD# */
@@ -139,7 +139,7 @@ sdhci@700b0000 {
 	};
 
 	/* Apalis SD1 */
-	sdhci@700b0400 {
+	mmc@700b0400 {
 		status = "okay";
 		bus-width = <4>;
 		/* SD1_CD# */
diff --git a/arch/arm/boot/dts/tegra124-apalis-v1.2-eval.dts b/arch/arm/boot/dts/tegra124-apalis-v1.2-eval.dts
index 826b776fbe6f..f3afde410615 100644
--- a/arch/arm/boot/dts/tegra124-apalis-v1.2-eval.dts
+++ b/arch/arm/boot/dts/tegra124-apalis-v1.2-eval.dts
@@ -132,7 +132,7 @@ usb@70090000 {
 	};
 
 	/* Apalis MMC1 */
-	sdhci@700b0000 {
+	mmc@700b0000 {
 		status = "okay";
 		bus-width = <4>;
 		/* MMC1_CD# */
@@ -141,7 +141,7 @@ sdhci@700b0000 {
 	};
 
 	/* Apalis SD1 */
-	sdhci@700b0400 {
+	mmc@700b0400 {
 		status = "okay";
 		bus-width = <4>;
 		/* SD1_CD# */
diff --git a/arch/arm/boot/dts/tegra124-apalis-v1.2.dtsi b/arch/arm/boot/dts/tegra124-apalis-v1.2.dtsi
index 1cc080fd062e..3fdc6ff32b0c 100644
--- a/arch/arm/boot/dts/tegra124-apalis-v1.2.dtsi
+++ b/arch/arm/boot/dts/tegra124-apalis-v1.2.dtsi
@@ -1909,7 +1909,7 @@ usb3-1 {
 	};
 
 	/* eMMC */
-	sdhci@700b0600 {
+	mmc@700b0600 {
 		status = "okay";
 		bus-width = <8>;
 		non-removable;
diff --git a/arch/arm/boot/dts/tegra124-apalis.dtsi b/arch/arm/boot/dts/tegra124-apalis.dtsi
index f2b243d98c7c..29ceeba1e7b1 100644
--- a/arch/arm/boot/dts/tegra124-apalis.dtsi
+++ b/arch/arm/boot/dts/tegra124-apalis.dtsi
@@ -1901,7 +1901,7 @@ usb3-1 {
 	};
 
 	/* eMMC */
-	sdhci@700b0600 {
+	mmc@700b0600 {
 		status = "okay";
 		bus-width = <8>;
 		non-removable;
diff --git a/arch/arm/boot/dts/tegra124-jetson-tk1.dts b/arch/arm/boot/dts/tegra124-jetson-tk1.dts
index e97943871fd8..289bf6e99041 100644
--- a/arch/arm/boot/dts/tegra124-jetson-tk1.dts
+++ b/arch/arm/boot/dts/tegra124-jetson-tk1.dts
@@ -1797,7 +1797,7 @@ usb3-0 {
 	};
 
 	/* SD card */
-	sdhci@700b0400 {
+	mmc@700b0400 {
 		status = "okay";
 		cd-gpios = <&gpio TEGRA_GPIO(V, 2) GPIO_ACTIVE_LOW>;
 		power-gpios = <&gpio TEGRA_GPIO(R, 0) GPIO_ACTIVE_HIGH>;
@@ -1807,7 +1807,7 @@ sdhci@700b0400 {
 	};
 
 	/* eMMC */
-	sdhci@700b0600 {
+	mmc@700b0600 {
 		status = "okay";
 		bus-width = <8>;
 		non-removable;
diff --git a/arch/arm/boot/dts/tegra124-nyan-big.dts b/arch/arm/boot/dts/tegra124-nyan-big.dts
index d97791b98958..4d14dec21af6 100644
--- a/arch/arm/boot/dts/tegra124-nyan-big.dts
+++ b/arch/arm/boot/dts/tegra124-nyan-big.dts
@@ -20,7 +20,7 @@ panel: panel {
 		ddc-i2c-bus = <&dpaux>;
 	};
 
-	sdhci@700b0400 { /* SD Card on this bus */
+	mmc@700b0400 { /* SD Card on this bus */
 		wp-gpios = <&gpio TEGRA_GPIO(Q, 4) GPIO_ACTIVE_LOW>;
 	};
 
diff --git a/arch/arm/boot/dts/tegra124-nyan.dtsi b/arch/arm/boot/dts/tegra124-nyan.dtsi
index b3b5c12cbda9..41a3db6649c5 100644
--- a/arch/arm/boot/dts/tegra124-nyan.dtsi
+++ b/arch/arm/boot/dts/tegra124-nyan.dtsi
@@ -491,7 +491,7 @@ sdhci0_pwrseq: sdhci0_pwrseq {
 		reset-gpios = <&gpio TEGRA_GPIO(X, 7) GPIO_ACTIVE_LOW>;
 	};
 
-	sdhci@700b0000 { /* WiFi/BT on this bus */
+	mmc@700b0000 { /* WiFi/BT on this bus */
 		status = "okay";
 		bus-width = <4>;
 		no-1-8-v;
@@ -502,7 +502,7 @@ sdhci@700b0000 { /* WiFi/BT on this bus */
 		keep-power-in-suspend;
 	};
 
-	sdhci@700b0400 { /* SD Card on this bus */
+	mmc@700b0400 { /* SD Card on this bus */
 		status = "okay";
 		cd-gpios = <&gpio TEGRA_GPIO(V, 2) GPIO_ACTIVE_LOW>;
 		power-gpios = <&gpio TEGRA_GPIO(R, 0) GPIO_ACTIVE_HIGH>;
@@ -511,7 +511,7 @@ sdhci@700b0400 { /* SD Card on this bus */
 		vqmmc-supply = <&vddio_sdmmc3>;
 	};
 
-	sdhci@700b0600 { /* eMMC on this bus */
+	mmc@700b0600 { /* eMMC on this bus */
 		status = "okay";
 		bus-width = <8>;
 		no-1-8-v;
diff --git a/arch/arm/boot/dts/tegra124-venice2.dts b/arch/arm/boot/dts/tegra124-venice2.dts
index effdb303c7f7..584a3b2125cd 100644
--- a/arch/arm/boot/dts/tegra124-venice2.dts
+++ b/arch/arm/boot/dts/tegra124-venice2.dts
@@ -998,7 +998,7 @@ usb3-1 {
 		};
 	};
 
-	sdhci@700b0400 {
+	mmc@700b0400 {
 		cd-gpios = <&gpio TEGRA_GPIO(V, 2) GPIO_ACTIVE_HIGH>;
 		power-gpios = <&gpio TEGRA_GPIO(R, 0) GPIO_ACTIVE_HIGH>;
 		wp-gpios = <&gpio TEGRA_GPIO(Q, 4) GPIO_ACTIVE_LOW>;
@@ -1007,7 +1007,7 @@ sdhci@700b0400 {
 		vqmmc-supply = <&vddio_sdmmc3>;
 	};
 
-	sdhci@700b0600 {
+	mmc@700b0600 {
 		status = "okay";
 		bus-width = <8>;
 		non-removable;
diff --git a/arch/arm/boot/dts/tegra124.dtsi b/arch/arm/boot/dts/tegra124.dtsi
index 2c992e8e3594..76c1ef923213 100644
--- a/arch/arm/boot/dts/tegra124.dtsi
+++ b/arch/arm/boot/dts/tegra124.dtsi
@@ -833,7 +833,7 @@ usb3-1 {
 		};
 	};
 
-	sdhci@700b0000 {
+	mmc@700b0000 {
 		compatible = "nvidia,tegra124-sdhci";
 		reg = <0x0 0x700b0000 0x0 0x200>;
 		interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
@@ -843,7 +843,7 @@ sdhci@700b0000 {
 		status = "disabled";
 	};
 
-	sdhci@700b0200 {
+	mmc@700b0200 {
 		compatible = "nvidia,tegra124-sdhci";
 		reg = <0x0 0x700b0200 0x0 0x200>;
 		interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
@@ -853,7 +853,7 @@ sdhci@700b0200 {
 		status = "disabled";
 	};
 
-	sdhci@700b0400 {
+	mmc@700b0400 {
 		compatible = "nvidia,tegra124-sdhci";
 		reg = <0x0 0x700b0400 0x0 0x200>;
 		interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
@@ -863,7 +863,7 @@ sdhci@700b0400 {
 		status = "disabled";
 	};
 
-	sdhci@700b0600 {
+	mmc@700b0600 {
 		compatible = "nvidia,tegra124-sdhci";
 		reg = <0x0 0x700b0600 0x0 0x200>;
 		interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm/boot/dts/tegra20-colibri-eval-v3.dts b/arch/arm/boot/dts/tegra20-colibri-eval-v3.dts
index 37ad508b61d9..a05fb3853da8 100644
--- a/arch/arm/boot/dts/tegra20-colibri-eval-v3.dts
+++ b/arch/arm/boot/dts/tegra20-colibri-eval-v3.dts
@@ -183,7 +183,7 @@ can@0 {
 	};
 
 	/* SD/MMC */
-	sdhci@c8000600 {
+	mmc@c8000600 {
 		status = "okay";
 		bus-width = <4>;
 		cd-gpios = <&gpio TEGRA_GPIO(C, 7) GPIO_ACTIVE_LOW>; /* MMCD */
diff --git a/arch/arm/boot/dts/tegra20-colibri-iris.dts b/arch/arm/boot/dts/tegra20-colibri-iris.dts
index af4740847769..425494b9ed54 100644
--- a/arch/arm/boot/dts/tegra20-colibri-iris.dts
+++ b/arch/arm/boot/dts/tegra20-colibri-iris.dts
@@ -171,7 +171,7 @@ spi@7000da00 {
 	};
 
 	/* SD/MMC */
-	sdhci@c8000600 {
+	mmc@c8000600 {
 		status = "okay";
 		bus-width = <4>;
 		cd-gpios = <&gpio TEGRA_GPIO(C, 7) GPIO_ACTIVE_LOW>; /* MMCD */
diff --git a/arch/arm/boot/dts/tegra20-harmony.dts b/arch/arm/boot/dts/tegra20-harmony.dts
index b051d75d4642..86494cb4d5a1 100644
--- a/arch/arm/boot/dts/tegra20-harmony.dts
+++ b/arch/arm/boot/dts/tegra20-harmony.dts
@@ -613,7 +613,7 @@ usb-phy@c5008000 {
 		status = "okay";
 	};
 
-	sdhci@c8000200 {
+	mmc@c8000200 {
 		status = "okay";
 		cd-gpios = <&gpio TEGRA_GPIO(I, 5) GPIO_ACTIVE_LOW>;
 		wp-gpios = <&gpio TEGRA_GPIO(H, 1) GPIO_ACTIVE_HIGH>;
@@ -621,7 +621,7 @@ sdhci@c8000200 {
 		bus-width = <4>;
 	};
 
-	sdhci@c8000600 {
+	mmc@c8000600 {
 		status = "okay";
 		cd-gpios = <&gpio TEGRA_GPIO(H, 2) GPIO_ACTIVE_LOW>;
 		wp-gpios = <&gpio TEGRA_GPIO(H, 3) GPIO_ACTIVE_HIGH>;
diff --git a/arch/arm/boot/dts/tegra20-paz00.dts b/arch/arm/boot/dts/tegra20-paz00.dts
index 2a0e5754f50f..91b6bb82e960 100644
--- a/arch/arm/boot/dts/tegra20-paz00.dts
+++ b/arch/arm/boot/dts/tegra20-paz00.dts
@@ -543,7 +543,7 @@ usb-phy@c5008000 {
 		status = "okay";
 	};
 
-	sdhci@c8000000 {
+	mmc@c8000000 {
 		status = "okay";
 		cd-gpios = <&gpio TEGRA_GPIO(V, 5) GPIO_ACTIVE_LOW>;
 		wp-gpios = <&gpio TEGRA_GPIO(H, 1) GPIO_ACTIVE_HIGH>;
@@ -551,7 +551,7 @@ sdhci@c8000000 {
 		bus-width = <4>;
 	};
 
-	sdhci@c8000600 {
+	mmc@c8000600 {
 		status = "okay";
 		bus-width = <8>;
 		non-removable;
diff --git a/arch/arm/boot/dts/tegra20-seaboard.dts b/arch/arm/boot/dts/tegra20-seaboard.dts
index 9a1ab4bd43e0..f1baf16c5010 100644
--- a/arch/arm/boot/dts/tegra20-seaboard.dts
+++ b/arch/arm/boot/dts/tegra20-seaboard.dts
@@ -760,14 +760,14 @@ usb-phy@c5008000 {
 		status = "okay";
 	};
 
-	sdhci@c8000000 {
+	mmc@c8000000 {
 		status = "okay";
 		power-gpios = <&gpio TEGRA_GPIO(K, 6) GPIO_ACTIVE_HIGH>;
 		bus-width = <4>;
 		keep-power-in-suspend;
 	};
 
-	sdhci@c8000400 {
+	mmc@c8000400 {
 		status = "okay";
 		cd-gpios = <&gpio TEGRA_GPIO(I, 5) GPIO_ACTIVE_LOW>;
 		wp-gpios = <&gpio TEGRA_GPIO(H, 1) GPIO_ACTIVE_HIGH>;
@@ -775,7 +775,7 @@ sdhci@c8000400 {
 		bus-width = <4>;
 	};
 
-	sdhci@c8000600 {
+	mmc@c8000600 {
 		status = "okay";
 		bus-width = <8>;
 		non-removable;
diff --git a/arch/arm/boot/dts/tegra20-ventana.dts b/arch/arm/boot/dts/tegra20-ventana.dts
index ccc24674be03..b158771ac0b7 100644
--- a/arch/arm/boot/dts/tegra20-ventana.dts
+++ b/arch/arm/boot/dts/tegra20-ventana.dts
@@ -554,14 +554,14 @@ usb-phy@c5008000 {
 		status = "okay";
 	};
 
-	sdhci@c8000000 {
+	mmc@c8000000 {
 		status = "okay";
 		power-gpios = <&gpio TEGRA_GPIO(K, 6) GPIO_ACTIVE_HIGH>;
 		bus-width = <4>;
 		keep-power-in-suspend;
 	};
 
-	sdhci@c8000400 {
+	mmc@c8000400 {
 		status = "okay";
 		cd-gpios = <&gpio TEGRA_GPIO(I, 5) GPIO_ACTIVE_LOW>;
 		wp-gpios = <&gpio TEGRA_GPIO(H, 1) GPIO_ACTIVE_HIGH>;
@@ -569,7 +569,7 @@ sdhci@c8000400 {
 		bus-width = <4>;
 	};
 
-	sdhci@c8000600 {
+	mmc@c8000600 {
 		status = "okay";
 		bus-width = <8>;
 		non-removable;
diff --git a/arch/arm/boot/dts/tegra20.dtsi b/arch/arm/boot/dts/tegra20.dtsi
index 8b6909839f59..9e71ed84bf28 100644
--- a/arch/arm/boot/dts/tegra20.dtsi
+++ b/arch/arm/boot/dts/tegra20.dtsi
@@ -805,7 +805,7 @@ phy3: usb-phy@c5008000 {
 		status = "disabled";
 	};
 
-	sdhci@c8000000 {
+	mmc@c8000000 {
 		compatible = "nvidia,tegra20-sdhci";
 		reg = <0xc8000000 0x200>;
 		interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
@@ -815,7 +815,7 @@ sdhci@c8000000 {
 		status = "disabled";
 	};
 
-	sdhci@c8000200 {
+	mmc@c8000200 {
 		compatible = "nvidia,tegra20-sdhci";
 		reg = <0xc8000200 0x200>;
 		interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
@@ -825,7 +825,7 @@ sdhci@c8000200 {
 		status = "disabled";
 	};
 
-	sdhci@c8000400 {
+	mmc@c8000400 {
 		compatible = "nvidia,tegra20-sdhci";
 		reg = <0xc8000400 0x200>;
 		interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
@@ -835,7 +835,7 @@ sdhci@c8000400 {
 		status = "disabled";
 	};
 
-	sdhci@c8000600 {
+	mmc@c8000600 {
 		compatible = "nvidia,tegra20-sdhci";
 		reg = <0xc8000600 0x200>;
 		interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm/boot/dts/tegra30-apalis-eval.dts b/arch/arm/boot/dts/tegra30-apalis-eval.dts
index b39c26806bf2..9f653ef41da4 100644
--- a/arch/arm/boot/dts/tegra30-apalis-eval.dts
+++ b/arch/arm/boot/dts/tegra30-apalis-eval.dts
@@ -120,7 +120,7 @@ spi@7000dc00 {
 	};
 
 	/* Apalis SD1 */
-	sdhci@78000000 {
+	mmc@78000000 {
 		status = "okay";
 		bus-width = <4>;
 		/* SD1_CD# */
@@ -129,7 +129,7 @@ sdhci@78000000 {
 	};
 
 	/* Apalis MMC1 */
-	sdhci@78000400 {
+	mmc@78000400 {
 		status = "okay";
 		bus-width = <8>;
 		/* MMC1_CD# */
diff --git a/arch/arm/boot/dts/tegra30-apalis-v1.1-eval.dts b/arch/arm/boot/dts/tegra30-apalis-v1.1-eval.dts
index e29dca92ba0a..dc633e529822 100644
--- a/arch/arm/boot/dts/tegra30-apalis-v1.1-eval.dts
+++ b/arch/arm/boot/dts/tegra30-apalis-v1.1-eval.dts
@@ -121,7 +121,7 @@ spi@7000dc00 {
 	};
 
 	/* Apalis SD1 */
-	sdhci@78000000 {
+	mmc@78000000 {
 		status = "okay";
 		bus-width = <4>;
 		/* SD1_CD# */
@@ -130,7 +130,7 @@ sdhci@78000000 {
 	};
 
 	/* Apalis MMC1 */
-	sdhci@78000400 {
+	mmc@78000400 {
 		status = "okay";
 		bus-width = <8>;
 		/* MMC1_CD# */
diff --git a/arch/arm/boot/dts/tegra30-apalis-v1.1.dtsi b/arch/arm/boot/dts/tegra30-apalis-v1.1.dtsi
index 387b17458e22..9421063cd86c 100644
--- a/arch/arm/boot/dts/tegra30-apalis-v1.1.dtsi
+++ b/arch/arm/boot/dts/tegra30-apalis-v1.1.dtsi
@@ -1112,7 +1112,7 @@ i2s@70080500 {
 	};
 
 	/* eMMC */
-	sdhci@78000600 {
+	mmc@78000600 {
 		status = "okay";
 		bus-width = <8>;
 		non-removable;
diff --git a/arch/arm/boot/dts/tegra30-apalis.dtsi b/arch/arm/boot/dts/tegra30-apalis.dtsi
index 6648506f3aa4..d13f6b0c7c0c 100644
--- a/arch/arm/boot/dts/tegra30-apalis.dtsi
+++ b/arch/arm/boot/dts/tegra30-apalis.dtsi
@@ -1094,7 +1094,7 @@ i2s@70080500 {
 	};
 
 	/* eMMC */
-	sdhci@78000600 {
+	mmc@78000600 {
 		status = "okay";
 		bus-width = <8>;
 		non-removable;
diff --git a/arch/arm/boot/dts/tegra30-beaver.dts b/arch/arm/boot/dts/tegra30-beaver.dts
index 3211c61f956c..e0624b74fb50 100644
--- a/arch/arm/boot/dts/tegra30-beaver.dts
+++ b/arch/arm/boot/dts/tegra30-beaver.dts
@@ -1922,7 +1922,7 @@ i2s@70080400 {
 		};
 	};
 
-	sdhci@78000000 {
+	mmc@78000000 {
 		status = "okay";
 		vqmmc-supply = <&ldo5_reg>;
 		cd-gpios = <&gpio TEGRA_GPIO(I, 5) GPIO_ACTIVE_LOW>;
@@ -1931,7 +1931,7 @@ sdhci@78000000 {
 		bus-width = <4>;
 	};
 
-	sdhci@78000600 {
+	mmc@78000600 {
 		status = "okay";
 		bus-width = <8>;
 		non-removable;
diff --git a/arch/arm/boot/dts/tegra30-cardhu.dtsi b/arch/arm/boot/dts/tegra30-cardhu.dtsi
index c8dc3b6ab2f6..dab9989fa760 100644
--- a/arch/arm/boot/dts/tegra30-cardhu.dtsi
+++ b/arch/arm/boot/dts/tegra30-cardhu.dtsi
@@ -384,7 +384,7 @@ i2s@70080400 {
 		};
 	};
 
-	sdhci@78000000 {
+	mmc@78000000 {
 		status = "okay";
 		cd-gpios = <&gpio TEGRA_GPIO(I, 5) GPIO_ACTIVE_LOW>;
 		wp-gpios = <&gpio TEGRA_GPIO(T, 3) GPIO_ACTIVE_HIGH>;
@@ -392,7 +392,7 @@ sdhci@78000000 {
 		bus-width = <4>;
 	};
 
-	sdhci@78000600 {
+	mmc@78000600 {
 		status = "okay";
 		bus-width = <8>;
 		non-removable;
diff --git a/arch/arm/boot/dts/tegra30-colibri-eval-v3.dts b/arch/arm/boot/dts/tegra30-colibri-eval-v3.dts
index 8e106e784dce..7d4a6ca4936a 100644
--- a/arch/arm/boot/dts/tegra30-colibri-eval-v3.dts
+++ b/arch/arm/boot/dts/tegra30-colibri-eval-v3.dts
@@ -98,7 +98,7 @@ can@0 {
 	};
 
 	/* SD/MMC */
-	sdhci@78000200 {
+	mmc@78000200 {
 		status = "okay";
 		bus-width = <4>;
 		cd-gpios = <&gpio TEGRA_GPIO(C, 7) GPIO_ACTIVE_LOW>; /* MMCD */
diff --git a/arch/arm/boot/dts/tegra30-colibri.dtsi b/arch/arm/boot/dts/tegra30-colibri.dtsi
index adba554381c7..a7bfe26f038d 100644
--- a/arch/arm/boot/dts/tegra30-colibri.dtsi
+++ b/arch/arm/boot/dts/tegra30-colibri.dtsi
@@ -933,7 +933,7 @@ i2s@70080500 {
 	};
 
 	/* eMMC */
-	sdhci@78000600 {
+	mmc@78000600 {
 		status = "okay";
 		bus-width = <8>;
 		non-removable;
diff --git a/arch/arm/boot/dts/tegra30.dtsi b/arch/arm/boot/dts/tegra30.dtsi
index 23fedb76e5ae..536cc5629440 100644
--- a/arch/arm/boot/dts/tegra30.dtsi
+++ b/arch/arm/boot/dts/tegra30.dtsi
@@ -851,7 +851,7 @@ tegra_i2s4: i2s@70080700 {
 		};
 	};
 
-	sdhci@78000000 {
+	mmc@78000000 {
 		compatible = "nvidia,tegra30-sdhci", "nvidia,tegra20-sdhci";
 		reg = <0x78000000 0x200>;
 		interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
@@ -861,7 +861,7 @@ sdhci@78000000 {
 		status = "disabled";
 	};
 
-	sdhci@78000200 {
+	mmc@78000200 {
 		compatible = "nvidia,tegra30-sdhci", "nvidia,tegra20-sdhci";
 		reg = <0x78000200 0x200>;
 		interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
@@ -871,7 +871,7 @@ sdhci@78000200 {
 		status = "disabled";
 	};
 
-	sdhci@78000400 {
+	mmc@78000400 {
 		compatible = "nvidia,tegra30-sdhci", "nvidia,tegra20-sdhci";
 		reg = <0x78000400 0x200>;
 		interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
@@ -881,7 +881,7 @@ sdhci@78000400 {
 		status = "disabled";
 	};
 
-	sdhci@78000600 {
+	mmc@78000600 {
 		compatible = "nvidia,tegra30-sdhci", "nvidia,tegra20-sdhci";
 		reg = <0x78000600 0x200>;
 		interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
