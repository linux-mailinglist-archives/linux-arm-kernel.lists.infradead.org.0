Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6186C1FB342
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:01:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xFscnIgpBKnvIdrC2ICqLsWj3UOJPSqokwzgv+00ehE=; b=cC2dewFfBP7t0S
	AodcABTiUt/jag7q9afqeOVvk6wUP3AMG+khZuKNG8dXF2PXsej0iV5zgZnebqduuT0R/gAfcw5Um
	+syqKNY4j64RiVCYh8UWnxPEzpBVQDmwzIne6U4og0u4RI2CfFG4WSJcE7xOH4NTfdAwe3BwOfoTp
	yahpflOsI9Aezi0JQuNkxXI9j1WRGwuAeWz9UlMV2kraS2zPuzQHe7SQK41OV95/FJFxCzb5DPGga
	a7YYm1YTa03Yf6nqGFsHtHwAgXroyy+AVR+QPQleC6LZH5Q+mhkut8p/0rsGBE0FZ15TkX7uq6a3q
	GMKfCH0OAbSqAp/KwwpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlC9u-0002vg-QN; Tue, 16 Jun 2020 14:01:50 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC1r-0001Zg-S7
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:53:39 +0000
Received: by mail-wr1-x443.google.com with SMTP id h5so20894136wrc.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:53:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AJrWtQ5vhypusrr2HNVHukwVBTSMcLezgnkTPs4K1/w=;
 b=RztKWa5oiJo+9Gx5Hi7zfcG2sC/KqVI2RY+Hnvege+RXxGIQmSoJABFziJmdcgiUk+
 v7+sujAfXgfT9yNCFJ67PLiOwyYnJis/xn61cWiNZbJC7LkIs840Z9rdENT0HuLoAtoE
 0iFH+nHA5583GjuZncZIH1CIwwyK2sGFW9nL+T3eG/dZrP9AowmB61kN7E2W4ygKXPz8
 N0viH3Fm8K+DQRzt3m7bm+/l1A618OZkgpu0b8dRMPlPuh6/VYnPgTyr+d3c22GvfbUB
 Q39rrXhV9/p4qqQabRx5bHTtfvQBVLDYoXw8E/jDbUws98MW24ZAoRZv8jhETSCkAGRz
 jEqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AJrWtQ5vhypusrr2HNVHukwVBTSMcLezgnkTPs4K1/w=;
 b=OibsdvXNKjdx7ljdwhsJsEKizVfgdvP9oSPeYZfFT9sRIG5iEvhKBx+Qnz95YpRA8X
 WN0H7gm/ljhS+D2e3VhkNbzlC7HeAfITCG4G50i1KhaEgXnVnVJG2gT9hnaelf5cLUVu
 P8tDtTETdjycKHYYJtiWnlF35KhGa9qYTPxJRk7zOSXyBiSInhSQ+paQhlEIcCHTgH9X
 htXvQXN8Nw+NWKYgv/l5Z+rLpMx8YGrowqrULxSTTfD6SpyfFgK5YbGI0EcAis8bUFBV
 hA8V2bSvXq/0kSaI7VifxWZeegfUg3muTHDovNnqS8UvKZpbds1oE//8ahehkcMNXZpo
 uzYQ==
X-Gm-Message-State: AOAM532XajfaCiAO7JJAF65iXRyLh6O6hwCWKPaVmEVZaOm+cpwbXBkZ
 cKp6PWDAnmuB9rHINR0cp8A=
X-Google-Smtp-Source: ABdhPJxOIylv558/gLsyC3y4mfAU+uOmwae+YJ95M3k5YdRbcJ3w/0f+JgZJXpvl/ZteqzScXbLP+Q==
X-Received: by 2002:a5d:68c2:: with SMTP id p2mr3173740wrw.253.1592315609965; 
 Tue, 16 Jun 2020 06:53:29 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id g187sm4442985wma.17.2020.06.16.06.53.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:53:28 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 19/73] ARM: tegra: Use proper tuple notation
Date: Tue, 16 Jun 2020 15:51:44 +0200
Message-Id: <20200616135238.3001888-20-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065332_013637_99440FE6 
X-CRM114-Status: GOOD (  12.64  )
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
Cc: linux-tegra@vger.kernel.org, Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

Tuple boundaries should be marked by < and > to make it clear which
cells are part of the same tuple. This also helps the json-schema based
validation tooling to properly parse this data.

While at it, also remove the "immovable" bit from PCI addresses. All of
these addresses are in fact "movable".

Cc: Marcel Ziswiler <marcel.ziswiler@toradex.com>
Cc: Philippe Schenker <philippe.schenker@toradex.com>
Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm/boot/dts/tegra124.dtsi               | 16 +++++-----
 arch/arm/boot/dts/tegra20.dtsi                | 24 +++++++--------
 .../arm/boot/dts/tegra30-apalis-v1.1-eval.dts |  4 +--
 arch/arm/boot/dts/tegra30.dtsi                | 30 +++++++++----------
 4 files changed, 37 insertions(+), 37 deletions(-)

diff --git a/arch/arm/boot/dts/tegra124.dtsi b/arch/arm/boot/dts/tegra124.dtsi
index f00e962c8f55..6d34742b56b9 100644
--- a/arch/arm/boot/dts/tegra124.dtsi
+++ b/arch/arm/boot/dts/tegra124.dtsi
@@ -22,9 +22,9 @@ memory@80000000 {
 	pcie@1003000 {
 		compatible = "nvidia,tegra124-pcie";
 		device_type = "pci";
-		reg = <0x0 0x01003000 0x0 0x00000800   /* PADS registers */
-		       0x0 0x01003800 0x0 0x00000800   /* AFI registers */
-		       0x0 0x02000000 0x0 0x10000000>; /* configuration space */
+		reg = <0x0 0x01003000 0x0 0x00000800>, /* PADS registers */
+		      <0x0 0x01003800 0x0 0x00000800>, /* AFI registers */
+		      <0x0 0x02000000 0x0 0x10000000>; /* configuration space */
 		reg-names = "pads", "afi", "cs";
 		interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>, /* controller interrupt */
 			     <GIC_SPI 99 IRQ_TYPE_LEVEL_HIGH>; /* MSI interrupt */
@@ -38,11 +38,11 @@ pcie@1003000 {
 		#address-cells = <3>;
 		#size-cells = <2>;
 
-		ranges = <0x82000000 0 0x01000000 0x0 0x01000000 0 0x00001000   /* port 0 configuration space */
-			  0x82000000 0 0x01001000 0x0 0x01001000 0 0x00001000   /* port 1 configuration space */
-			  0x81000000 0 0x0        0x0 0x12000000 0 0x00010000   /* downstream I/O (64 KiB) */
-			  0x82000000 0 0x13000000 0x0 0x13000000 0 0x0d000000   /* non-prefetchable memory (208 MiB) */
-			  0xc2000000 0 0x20000000 0x0 0x20000000 0 0x20000000>; /* prefetchable memory (512 MiB) */
+		ranges = <0x02000000 0 0x01000000 0x0 0x01000000 0 0x00001000>, /* port 0 configuration space */
+			 <0x02000000 0 0x01001000 0x0 0x01001000 0 0x00001000>, /* port 1 configuration space */
+			 <0x01000000 0 0x0        0x0 0x12000000 0 0x00010000>, /* downstream I/O (64 KiB) */
+			 <0x02000000 0 0x13000000 0x0 0x13000000 0 0x0d000000>, /* non-prefetchable memory (208 MiB) */
+			 <0x42000000 0 0x20000000 0x0 0x20000000 0 0x20000000>; /* prefetchable memory (512 MiB) */
 
 		clocks = <&tegra_car TEGRA124_CLK_PCIE>,
 			 <&tegra_car TEGRA124_CLK_AFI>,
diff --git a/arch/arm/boot/dts/tegra20.dtsi b/arch/arm/boot/dts/tegra20.dtsi
index 77f6b3ee8418..90393d8f5ebc 100644
--- a/arch/arm/boot/dts/tegra20.dtsi
+++ b/arch/arm/boot/dts/tegra20.dtsi
@@ -172,8 +172,8 @@ timer@50040600 {
 
 	intc: interrupt-controller@50041000 {
 		compatible = "arm,cortex-a9-gic";
-		reg = <0x50041000 0x1000
-		       0x50040100 0x0100>;
+		reg = <0x50041000 0x1000>,
+		      <0x50040100 0x0100>;
 		interrupt-controller;
 		#interrupt-cells = <3>;
 		interrupt-parent = <&intc>;
@@ -649,12 +649,12 @@ fuse@7000f800 {
 	pcie@80003000 {
 		compatible = "nvidia,tegra20-pcie";
 		device_type = "pci";
-		reg = <0x80003000 0x00000800   /* PADS registers */
-		       0x80003800 0x00000200   /* AFI registers */
-		       0x90000000 0x10000000>; /* configuration space */
+		reg = <0x80003000 0x00000800>, /* PADS registers */
+		      <0x80003800 0x00000200>, /* AFI registers */
+		      <0x90000000 0x10000000>; /* configuration space */
 		reg-names = "pads", "afi", "cs";
-		interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH   /* controller interrupt */
-			      GIC_SPI 99 IRQ_TYPE_LEVEL_HIGH>; /* MSI interrupt */
+		interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>, /* controller interrupt */
+			     <GIC_SPI 99 IRQ_TYPE_LEVEL_HIGH>; /* MSI interrupt */
 		interrupt-names = "intr", "msi";
 
 		#interrupt-cells = <1>;
@@ -665,11 +665,11 @@ pcie@80003000 {
 		#address-cells = <3>;
 		#size-cells = <2>;
 
-		ranges = <0x82000000 0 0x80000000 0x80000000 0 0x00001000   /* port 0 registers */
-			  0x82000000 0 0x80001000 0x80001000 0 0x00001000   /* port 1 registers */
-			  0x81000000 0 0          0x82000000 0 0x00010000   /* downstream I/O */
-			  0x82000000 0 0xa0000000 0xa0000000 0 0x08000000   /* non-prefetchable memory */
-			  0xc2000000 0 0xa8000000 0xa8000000 0 0x18000000>; /* prefetchable memory */
+		ranges = <0x02000000 0 0x80000000 0x80000000 0 0x00001000>, /* port 0 registers */
+			 <0x02000000 0 0x80001000 0x80001000 0 0x00001000>, /* port 1 registers */
+			 <0x01000000 0 0          0x82000000 0 0x00010000>, /* downstream I/O */
+			 <0x02000000 0 0xa0000000 0xa0000000 0 0x08000000>, /* non-prefetchable memory */
+			 <0x42000000 0 0xa8000000 0xa8000000 0 0x18000000>; /* prefetchable memory */
 
 		clocks = <&tegra_car TEGRA20_CLK_PEX>,
 			 <&tegra_car TEGRA20_CLK_AFI>,
diff --git a/arch/arm/boot/dts/tegra30-apalis-v1.1-eval.dts b/arch/arm/boot/dts/tegra30-apalis-v1.1-eval.dts
index d5a244351137..1fa440d02e83 100644
--- a/arch/arm/boot/dts/tegra30-apalis-v1.1-eval.dts
+++ b/arch/arm/boot/dts/tegra30-apalis-v1.1-eval.dts
@@ -248,8 +248,8 @@ reg_vddio_sdmmc3: regulator-vddio-sdmmc3 {
 		regulator-max-microvolt = <3300000>;
 		regulator-type = "voltage";
 		gpios = <&gpio TEGRA_GPIO(J, 5) GPIO_ACTIVE_HIGH>;
-		states = <1800000 0x0
-			  3300000 0x1>;
+		states = <1800000 0x0>,
+			 <3300000 0x1>;
 		startup-delay-us = <100000>;
 		vin-supply = <&vddio_sdmmc_1v8_reg>;
 	};
diff --git a/arch/arm/boot/dts/tegra30.dtsi b/arch/arm/boot/dts/tegra30.dtsi
index 3d0515f6db51..9a8c07ccbb30 100644
--- a/arch/arm/boot/dts/tegra30.dtsi
+++ b/arch/arm/boot/dts/tegra30.dtsi
@@ -20,12 +20,12 @@ memory@80000000 {
 	pcie@3000 {
 		compatible = "nvidia,tegra30-pcie";
 		device_type = "pci";
-		reg = <0x00003000 0x00000800   /* PADS registers */
-		       0x00003800 0x00000200   /* AFI registers */
-		       0x10000000 0x10000000>; /* configuration space */
+		reg = <0x00003000 0x00000800>, /* PADS registers */
+		      <0x00003800 0x00000200>, /* AFI registers */
+		      <0x10000000 0x10000000>; /* configuration space */
 		reg-names = "pads", "afi", "cs";
-		interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH   /* controller interrupt */
-			      GIC_SPI 99 IRQ_TYPE_LEVEL_HIGH>; /* MSI interrupt */
+		interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>, /* controller interrupt */
+			     <GIC_SPI 99 IRQ_TYPE_LEVEL_HIGH>; /* MSI interrupt */
 		interrupt-names = "intr", "msi";
 
 		#interrupt-cells = <1>;
@@ -36,12 +36,12 @@ pcie@3000 {
 		#address-cells = <3>;
 		#size-cells = <2>;
 
-		ranges = <0x82000000 0 0x00000000 0x00000000 0 0x00001000   /* port 0 configuration space */
-			  0x82000000 0 0x00001000 0x00001000 0 0x00001000   /* port 1 configuration space */
-			  0x82000000 0 0x00004000 0x00004000 0 0x00001000   /* port 2 configuration space */
-			  0x81000000 0 0          0x02000000 0 0x00010000   /* downstream I/O */
-			  0x82000000 0 0x20000000 0x20000000 0 0x08000000   /* non-prefetchable memory */
-			  0xc2000000 0 0x28000000 0x28000000 0 0x18000000>; /* prefetchable memory */
+		ranges = <0x02000000 0 0x00000000 0x00000000 0 0x00001000>, /* port 0 configuration space */
+			 <0x02000000 0 0x00001000 0x00001000 0 0x00001000>, /* port 1 configuration space */
+			 <0x02000000 0 0x00004000 0x00004000 0 0x00001000>, /* port 2 configuration space */
+			 <0x01000000 0 0          0x02000000 0 0x00010000>, /* downstream I/O */
+			 <0x02000000 0 0x20000000 0x20000000 0 0x08000000>, /* non-prefetchable memory */
+			 <0x42000000 0 0x28000000 0x28000000 0 0x18000000>; /* prefetchable memory */
 
 		clocks = <&tegra_car TEGRA30_CLK_PCIE>,
 			 <&tegra_car TEGRA30_CLK_AFI>,
@@ -185,8 +185,8 @@ gr2d@54140000 {
 		gr3d@54180000 {
 			compatible = "nvidia,tegra30-gr3d";
 			reg = <0x54180000 0x00040000>;
-			clocks = <&tegra_car TEGRA30_CLK_GR3D
-				  &tegra_car TEGRA30_CLK_GR3D2>;
+			clocks = <&tegra_car TEGRA30_CLK_GR3D>,
+				 <&tegra_car TEGRA30_CLK_GR3D2>;
 			clock-names = "3d", "3d2";
 			resets = <&tegra_car 24>,
 				 <&tegra_car 98>;
@@ -273,8 +273,8 @@ timer@50040600 {
 
 	intc: interrupt-controller@50041000 {
 		compatible = "arm,cortex-a9-gic";
-		reg = <0x50041000 0x1000
-		       0x50040100 0x0100>;
+		reg = <0x50041000 0x1000>,
+		      <0x50040100 0x0100>;
 		interrupt-controller;
 		#interrupt-cells = <3>;
 		interrupt-parent = <&intc>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
