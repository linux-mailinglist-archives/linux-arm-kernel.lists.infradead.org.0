Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A86C71FB2F9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 15:56:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tnPatt4wZoaHMbfmvm2SvNjeiHXpMUuPdRhjIWbIqow=; b=e61hu5MPrOKwsk
	zqqjj/pldizab3cjwf9hy2xcReTWl4yLjT7yMtSGHi0504n0WklHqIRKmK4NX9JcmIw1PoYSVEbRT
	L3rnpn0NbXyxrzpkPWwI5dzhABkuQTjWMXqNycBQWgWkQqrPKyxoPgwFrK3ZNHKEBt8/1mD20FP1V
	wA1IVuufcgybUk3fJt3uuvWPEK12vLhCnZOAnP7OPbOvI6IIWPHouAZOvixWWWY7zI3i+im5ohoF3
	F7yWfRZvF6Xnn+2Oq6jBoi7smcZYxzpOH555rxrO7KbjY1IXc0+CoUwPVJloB58I6wEe1pyaaIu4L
	ooUvF5KykjQOWKji6+JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlC4w-0005d6-Ve; Tue, 16 Jun 2020 13:56:42 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC1S-0001H6-JQ
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:53:08 +0000
Received: by mail-wm1-x344.google.com with SMTP id y20so3170795wmi.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:53:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MwlkI0IF0P2g4pEYmpV2rRTm6Y2o1Uayf0Va5pno/2M=;
 b=J9TB5th1Gvl7xbRfuSYK8wj2IyJHVBzwQ32+CeTMfbHGWvHoiA7D1+qizOO0175fm3
 POSdd0rNZf9USPTuAMyyIQqP/UBSwPL3VCXt5zY1XZr+M1tKVtq9ILEaVDLj1asIEAfU
 wxBgn5448hHF3RQbXs46V4yBpTGEgjJfXT191IkPcJ9jVWZeJclK6mPRn7r8iezfgquZ
 C+DKpwQdlIwtHJK35KwCQQLTf1V/alr0ocTwBZBDV3t3R6ufjf3alJcXf6rMt+3aTT8J
 Czk+qt1538blssJItJqexK9unH18t5y3jLC9JIEDCIyetevm9cmjU4MiCXpjlFpC1K81
 B9iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MwlkI0IF0P2g4pEYmpV2rRTm6Y2o1Uayf0Va5pno/2M=;
 b=Nfn/h65gkbc+YaEkGDrqX/18YM4ZqvdjDqliVVLJzKJALl5oIuCtSJPRCc/tb4VzZg
 /dn67C2YZJwEqFgESkgk5fErmlE/GiPw16Cf2AzCGthpW+twkotP4A7mvd8sVEUXJwzI
 5suSmzqr84D5jTWL7QjGczDM7GJUV5szfD1nar1ozJQlGZoOFM1b2IsjS+Pe4a5o46+N
 aLrJIkCpJq0e+HR1egZ0ZyvLYzLR/+DVaqDQe9y2AhdCeqfDDcSHAOttI8yvQP/bbfPe
 J1Lme4obIf/7T0iSGgwASPpazASmu3umJsn1THzzzJafH8bLWt8J9LUCeBzhtnoFNSdp
 WaKg==
X-Gm-Message-State: AOAM531bhJPnzEZts9UTT9hQ6pYHAWWtfZehC70hH2/BURE6QHt0TvXI
 GGUG3w6THVSp5VzyIL5IhH0=
X-Google-Smtp-Source: ABdhPJzfU4Y+cwFeWdou8smoaFJ5Bv8iXBsqj0PmFxhSgk6NpofZY/8ZKcUEXC38V3ewrqU8aOSunw==
X-Received: by 2002:a1c:9ec4:: with SMTP id h187mr3314361wme.27.1592315584601; 
 Tue, 16 Jun 2020 06:53:04 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id a3sm28145691wrp.91.2020.06.16.06.53.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:53:03 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 07/73] ARM: tegra: Do not mark host1x as simple bus
Date: Tue, 16 Jun 2020 15:51:32 +0200
Message-Id: <20200616135238.3001888-8-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065306_947472_D34ED8E2 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

The host1x is not a simple bus, so drop the corresponding compatible
string.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm/boot/dts/tegra114.dtsi | 2 +-
 arch/arm/boot/dts/tegra124.dtsi | 2 +-
 arch/arm/boot/dts/tegra20.dtsi  | 2 +-
 arch/arm/boot/dts/tegra30.dtsi  | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/tegra114.dtsi b/arch/arm/boot/dts/tegra114.dtsi
index 01a81d380f1f..be048aa553ee 100644
--- a/arch/arm/boot/dts/tegra114.dtsi
+++ b/arch/arm/boot/dts/tegra114.dtsi
@@ -18,7 +18,7 @@ memory@80000000 {
 	};
 
 	host1x@50000000 {
-		compatible = "nvidia,tegra114-host1x", "simple-bus";
+		compatible = "nvidia,tegra114-host1x";
 		reg = <0x50000000 0x00028000>;
 		interrupts = <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>, /* syncpt */
 			     <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>; /* general */
diff --git a/arch/arm/boot/dts/tegra124.dtsi b/arch/arm/boot/dts/tegra124.dtsi
index 94cac13d3e50..fc124343658e 100644
--- a/arch/arm/boot/dts/tegra124.dtsi
+++ b/arch/arm/boot/dts/tegra124.dtsi
@@ -85,7 +85,7 @@ pci@2,0 {
 	};
 
 	host1x@50000000 {
-		compatible = "nvidia,tegra124-host1x", "simple-bus";
+		compatible = "nvidia,tegra124-host1x";
 		reg = <0x0 0x50000000 0x0 0x00034000>;
 		interrupts = <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>, /* syncpt */
 			     <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>; /* general */
diff --git a/arch/arm/boot/dts/tegra20.dtsi b/arch/arm/boot/dts/tegra20.dtsi
index c3b8ad53b967..7319df2fcd3e 100644
--- a/arch/arm/boot/dts/tegra20.dtsi
+++ b/arch/arm/boot/dts/tegra20.dtsi
@@ -31,7 +31,7 @@ vde_pool: vde@400 {
 	};
 
 	host1x@50000000 {
-		compatible = "nvidia,tegra20-host1x", "simple-bus";
+		compatible = "nvidia,tegra20-host1x";
 		reg = <0x50000000 0x00024000>;
 		interrupts = <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>, /* syncpt */
 			     <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>; /* general */
diff --git a/arch/arm/boot/dts/tegra30.dtsi b/arch/arm/boot/dts/tegra30.dtsi
index d2d05f1da274..0b58863e570e 100644
--- a/arch/arm/boot/dts/tegra30.dtsi
+++ b/arch/arm/boot/dts/tegra30.dtsi
@@ -111,7 +111,7 @@ vde_pool: vde@400 {
 	};
 
 	host1x@50000000 {
-		compatible = "nvidia,tegra30-host1x", "simple-bus";
+		compatible = "nvidia,tegra30-host1x";
 		reg = <0x50000000 0x00024000>;
 		interrupts = <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>, /* syncpt */
 			     <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>; /* general */
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
