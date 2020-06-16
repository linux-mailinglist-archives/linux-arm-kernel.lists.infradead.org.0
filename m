Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB361FB3D4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:12:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w2MhsaHhfTCxWfjkYY7ZW1riOH9qJ7L6/L/zAOKuCYk=; b=i2ttI0la/II4NP
	GDYG5EK6IgKK4FwpUQKldgQlvwF8SWHxRP9uJhH14Z5jeVnMppBu8Ss774jigMjiW1+w2/TMHpBaf
	pFLAbvaN4jix97WCdyy6o78XKKulbmjdEeC5xpPP3UR07mtLspgZkLTGNvtbQBI1yb8hhsh1RTnXs
	7ZL0uUKRQOfkhiudR2wrCPh/cM7go9mqhC0Wl29U9MrhYggtPow4U/LnP5yev8MYw19QkkfqxvgfW
	fwT7SrjOU4e2n0XebNWApe5eh/GyELb+PXcagC10PRkCzq3BRInP+4B4JPnsWsb0DRIIe5knCiTH3
	9i/SI89fmCjnvwaj27+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCK2-0007g9-G7; Tue, 16 Jun 2020 14:12:18 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC3D-0002Uo-Ne
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:54:58 +0000
Received: by mail-wr1-x444.google.com with SMTP id c3so20836342wru.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:54:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DOFznB5E/wdO9myo3nDsORYkzeuJ1ic/QUyt2XcRSJo=;
 b=isC2qMgE9O6/T+VUY1zSAoxzHfh/aajYltRdjdQ7blQSUqddB62j2JhVIA6Z7O3zyP
 FVi0xXPP6dFLvTaDrp+WJ9/uGdLyt8hZ7t0dQ4GkU66qtNlkK7WLvqaHWhzg06UqlXcY
 ZN0qRxI/NvV58z7mXIrtzdjRtiw9/OngGXKtb80/2w2LrB+0hRb0mg9GF9c9pL4MC4ni
 MAUVRDuMa63uqjlGQOhYfX7FD9N6e/edlFHFrnwSJCl5nYYeSp40RktCQAeqr3m/2t8d
 P8jIwKQ2xcQMK31l37JGf3Q90liolw9ygufnLH9mkjx9HcP6emCIpuvfVLjBffwbAS8r
 tl3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DOFznB5E/wdO9myo3nDsORYkzeuJ1ic/QUyt2XcRSJo=;
 b=r/g0Gl79hWuFz9R7wJmwMtTV4hU7F0QEkomo8QwdMyE8umdrCDc8Ojs5xWIPuu2mtJ
 c3qfBJJ643W6yI51Od5PGA0R5L7Ur183Yhe/aLI90IiO5ytQ62jEdA1fFnwDpv8pFWoM
 1QysKTREVWIC1pv6yIgsJQ6Q/b9wzkQtztKugqmo6GBTXxvWaL6GcLBGzrHB6v5GMQHM
 5TMZbLo5vnOnmxKIFDGaxtxQbu75BLGi67hcHHitO9k8jESr075m3WXe+BFsNRVsFZ+R
 ZTA4GND0/92r7pjy0vzZ6FwpmQJb36KfXHUhaVXrp+mv7Ejwp9MZp+/AYSro3G74IPy7
 ijew==
X-Gm-Message-State: AOAM531O3yO/vQVLRum5TyeVejBaDw9KCM3hSypMYIxz/8lglzp3rxu+
 +4gX6mwrHYFCo7bo6/adH4HVbue/
X-Google-Smtp-Source: ABdhPJwo780ARtuG5wvTBo7C1WSiJ0w1ASIadyWwgCHXCUi/7JYtl6MsDfMbOGLDmXcfuxAWG17bgA==
X-Received: by 2002:a5d:6b81:: with SMTP id n1mr3155097wrx.411.1592315694381; 
 Tue, 16 Jun 2020 06:54:54 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id b143sm4142690wme.20.2020.06.16.06.54.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:54:53 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 52/73] arm64: tegra: Remove simple clocks bus
Date: Tue, 16 Jun 2020 15:52:17 +0200
Message-Id: <20200616135238.3001888-53-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065455_846169_047A1527 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
 arch/arm64/boot/dts/nvidia/tegra132-norrin.dts    | 15 ++++-----------
 arch/arm64/boot/dts/nvidia/tegra210-p2180.dtsi    | 15 ++++-----------
 arch/arm64/boot/dts/nvidia/tegra210-p2530.dtsi    | 15 ++++-----------
 arch/arm64/boot/dts/nvidia/tegra210-p2894.dtsi    | 15 ++++-----------
 .../arm64/boot/dts/nvidia/tegra210-p3450-0000.dts | 15 ++++-----------
 arch/arm64/boot/dts/nvidia/tegra210-smaug.dts     | 15 ++++-----------
 6 files changed, 24 insertions(+), 66 deletions(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra132-norrin.dts b/arch/arm64/boot/dts/nvidia/tegra132-norrin.dts
index bb45ca6a5cf2..278bef2d8810 100644
--- a/arch/arm64/boot/dts/nvidia/tegra132-norrin.dts
+++ b/arch/arm64/boot/dts/nvidia/tegra132-norrin.dts
@@ -1022,17 +1022,10 @@ backlight: backlight {
 		backlight-boot-off;
 	};
 
-	clocks {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		clk32k_in: clock@0 {
-			compatible = "fixed-clock";
-			reg=<0>;
-			#clock-cells = <0>;
-			clock-frequency = <32768>;
-		};
+	clk32k_in: clock@0 {
+		compatible = "fixed-clock";
+		clock-frequency = <32768>;
+		#clock-cells = <0>;
 	};
 
 	gpio-keys {
diff --git a/arch/arm64/boot/dts/nvidia/tegra210-p2180.dtsi b/arch/arm64/boot/dts/nvidia/tegra210-p2180.dtsi
index 251c6099482a..8a4ba371ff92 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210-p2180.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra210-p2180.dtsi
@@ -300,17 +300,10 @@ mmc@700b0600 {
 		vqmmc-supply = <&vdd_1v8>;
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
diff --git a/arch/arm64/boot/dts/nvidia/tegra210-p2530.dtsi b/arch/arm64/boot/dts/nvidia/tegra210-p2530.dtsi
index f9158dc943f9..58aa0518965e 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210-p2530.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra210-p2530.dtsi
@@ -40,17 +40,10 @@ mmc@700b0600 {
 		non-removable;
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
diff --git a/arch/arm64/boot/dts/nvidia/tegra210-p2894.dtsi b/arch/arm64/boot/dts/nvidia/tegra210-p2894.dtsi
index 579d5b8a757d..9f81cabdcbb6 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210-p2894.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra210-p2894.dtsi
@@ -1586,17 +1586,10 @@ mmc@700b0600 {
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
 
 	gpio-keys {
diff --git a/arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts b/arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts
index 4a354f5293fc..b888efcea86f 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts
+++ b/arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts
@@ -566,17 +566,10 @@ mmc@700b0400 {
 		wakeup-source;
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
diff --git a/arch/arm64/boot/dts/nvidia/tegra210-smaug.dts b/arch/arm64/boot/dts/nvidia/tegra210-smaug.dts
index 9f630ecc06bc..a28ca6620b86 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210-smaug.dts
+++ b/arch/arm64/boot/dts/nvidia/tegra210-smaug.dts
@@ -1722,17 +1722,10 @@ agic@702f9000 {
 		};
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
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
