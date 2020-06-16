Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDDD41FB377
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:06:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qGmMZN1xFP29bGEHiRssiGdOUcZbiZAzEMc6pmN+dws=; b=hMpPgKXGu6XK5B
	klxCP+tfZq5AaO5iOVQcX8BQYRypyE4wC8ryfhzMsg1+p/lGh6YUcW05F5/NBfmNTZGKG9vTG+19D
	ouJfarD3dLs9JCoQvmKF7SVkJsbaTM2MsjGYjxJTkbrm7qjQu0HTyeGet1QJ6vAlhIGKe4Jqi5KcE
	63i9jS78U7o/Mbj/4wldTvP2s2yQ7r7uAOo6uS+3ltpN3RxMnrwtSxPT0vx14D6ag6tH85zdJKb4W
	CwG2xQjbekNe7CUouMlVaiUN1cb6r4/PGoS+QdWx8XpYA6mtG8oIpI/ZMcgElBIjUwRHBEV7OEfs+
	UmRzcB1KfurNHPpqJjIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCEd-0000nG-2r; Tue, 16 Jun 2020 14:06:43 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC2Y-00022J-F0
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:54:16 +0000
Received: by mail-wm1-x344.google.com with SMTP id b82so2981489wmb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:54:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iSV77y8AmWb+Wh1piRcAkQT0I7rk2MZqZTm5Fu4vFQA=;
 b=jGexnNuzhW3pKohokLWtgune9Doo8bb8gmGqdgTvbDkhDMwKYdhPz3/WCqj22H9MIO
 i0dXeEBirSfyKW80seDcyCd2Bst4RkZB1JtkhgLrpSvw6G9VFNqHH8SoQeJ5LuokoJ1p
 aNTuHV7IwXqDHLI3WWgIF+I63heoPGbFWZEiaI9iaG69Ob6v0s18rm/N6k+m9U2VpQQD
 UWaRUjYZBWHbxpdT+z3vfonrchDD0cVDN88fMw+tWwh+RIJnEHMBKXE7e4yIrL1p5hwp
 uafyjnRl2+LAzAngMLPw69/+EpTRfc+2/JHFUrP45Py2gyJaOI2Uz80mxWmTHYq8m+M7
 FDtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iSV77y8AmWb+Wh1piRcAkQT0I7rk2MZqZTm5Fu4vFQA=;
 b=jVSRleb+YueT89sAevEnY0zeYo8d9l5qLzy6afsJb7hFkmmB/k83e5kwB8VMF8tOWJ
 Pi84t3VZj7+zNPy0xsbn2do6Yw3nysvzwdB4yrwB1fJdLYY4SjLjPZmVgF+xmhGoatLW
 m2TYtT7WBcZ1CJL8Q3yLczEZyuwp1u6iygDI31a3BtJKgsxDoRREWGZAI8m7upOzUcMk
 31tVgMXwevXR1izBIx0dEY/qcrcoJ8pbWbE3LWpNmNLpHFaC89NMsiu1MhSDE3SzMeTz
 9m1Na8Fe5SB8caJ35rl1IaH6vBFBGqtGoV5Y2jhFmcs7cOUCI4KYPoNYwo6M2HYFXN/1
 VksQ==
X-Gm-Message-State: AOAM532wJSGh9Y3p9MaF5uMHO50MGqKDYv9p5vzi+p5/I3K+Fq+sC5am
 nkMIVPe6QWT1fKLBtCQj3Mg=
X-Google-Smtp-Source: ABdhPJwWvCiIh9OzTTLCPHqPjRDt8xPuHQuoHliL9OM1vk6X4Sdjm50lnyyfjGdrH6xZNulYKpnMbQ==
X-Received: by 2002:a1c:60d6:: with SMTP id u205mr3548805wmb.163.1592315652471; 
 Tue, 16 Jun 2020 06:54:12 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id o18sm4383482wme.19.2020.06.16.06.54.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:54:11 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 34/73] ARM: tegra: The Tegra30 SDHCI is not
 backwards-compatible
Date: Tue, 16 Jun 2020 15:51:59 +0200
Message-Id: <20200616135238.3001888-35-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065414_592923_0815F01A 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
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

The SDHCI on Tegra30 is in fact not backwards-compatible with the
instantiation found on earlier SoCs. Drop the misleading compatible
string.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm/boot/dts/tegra30.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/tegra30.dtsi b/arch/arm/boot/dts/tegra30.dtsi
index bedab43016c7..3c7ee0b871c0 100644
--- a/arch/arm/boot/dts/tegra30.dtsi
+++ b/arch/arm/boot/dts/tegra30.dtsi
@@ -854,7 +854,7 @@ tegra_i2s4: i2s@70080700 {
 	};
 
 	mmc@78000000 {
-		compatible = "nvidia,tegra30-sdhci", "nvidia,tegra20-sdhci";
+		compatible = "nvidia,tegra30-sdhci";
 		reg = <0x78000000 0x200>;
 		interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&tegra_car TEGRA30_CLK_SDMMC1>;
@@ -865,7 +865,7 @@ mmc@78000000 {
 	};
 
 	mmc@78000200 {
-		compatible = "nvidia,tegra30-sdhci", "nvidia,tegra20-sdhci";
+		compatible = "nvidia,tegra30-sdhci";
 		reg = <0x78000200 0x200>;
 		interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&tegra_car TEGRA30_CLK_SDMMC2>;
@@ -876,7 +876,7 @@ mmc@78000200 {
 	};
 
 	mmc@78000400 {
-		compatible = "nvidia,tegra30-sdhci", "nvidia,tegra20-sdhci";
+		compatible = "nvidia,tegra30-sdhci";
 		reg = <0x78000400 0x200>;
 		interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&tegra_car TEGRA30_CLK_SDMMC3>;
@@ -887,7 +887,7 @@ mmc@78000400 {
 	};
 
 	mmc@78000600 {
-		compatible = "nvidia,tegra30-sdhci", "nvidia,tegra20-sdhci";
+		compatible = "nvidia,tegra30-sdhci";
 		reg = <0x78000600 0x200>;
 		interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&tegra_car TEGRA30_CLK_SDMMC4>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
