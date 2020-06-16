Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49AC01FB356
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:03:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DiCJOkhLlw72xTeCwLx7fnSEED0PVk9kUv/L/T6PibE=; b=MqOeHkyhwtpBbx
	sfvy56wMAugL76aFj9IDOOfYB7Kxhz/kpb6Q61T7X6LKvJvRyJbLZEAs9h3P1jr8X3woLXapkUjLq
	eptuk8gxSH+liePW5RmpihqAV8Cadt3MTyAGBGsLTiq1i7SugkwTwjUpWOF+xX2pSnmTKV/zlTMXC
	miawQHEPjHwJhgyiiwTqYfzYD0nAYe/ILk85O0hVNTkgMOgY4n7az+U/lLZW+VhxujCvGAFw/Y2Ws
	XfIS/+YbDKkZqCy1NdaIp3OOnnodkBOPaupDL2mWUDzv/dYLygBSoQfA9SXTgBO67yhg+kHSNn852
	RzgIBuLvdiY4FhOrT+2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCBZ-0004Qi-OK; Tue, 16 Jun 2020 14:03:33 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC25-0001jY-DV
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:53:54 +0000
Received: by mail-wm1-x343.google.com with SMTP id f185so3161803wmf.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:53:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lGpHqO3KmMFfHP9rR0idT1ys2+7XIuz3UI1Ywxs3EL4=;
 b=DQKqsrCVU7Zdk69PmXUJDmbr2EBqhQFhTRmEyYGc31Cx5TWlRwdJQDebyaFFbzWUkL
 17iZ9DbnZEGy+nj9zBiu7AFCzPk3bQMJSq+2mKnGaUy2oaDOM6SER/BZ0sesx3oWnH3j
 2NEltEr31n9jAKhRrrRiInIxrR0SJCbo2WtOxJqkXuDIN0R3fuJR5EgGZWCdTliZ3jUa
 570LK0WyezSeSCpYZ5dUUl6HD1yDd15ALcwmc10oBFO80mqlA9ivlXFL4R2Hrf58smEV
 2KxqSd5L0CExGYhkpMC9mvu2pdqF/PQ9xDRR3H4/mFDWfqPBKMmflGJDZnEpji3bWtdO
 vI4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lGpHqO3KmMFfHP9rR0idT1ys2+7XIuz3UI1Ywxs3EL4=;
 b=KjN548AQk8iM6Jb+218MjyU1vMTrCxwKC6L4Xzpahut7j3eWvkD9I+iHHYseEGPfFk
 +jnvyyp9bdgK6P1frm3vEC2kfdHvGVGrlw/pZqpo//VjKc8iyWe96lK4kUK2KikyRNH3
 EuDg7odbMl1Bbw+oR22XCDC9JtvxyJr1tvP9EyIB32fWpy6lLB/dTf1nm50NexktBJGr
 4gVD2iEcOtHWd6SFYbEkXZRo/Pezl0aE3WCON6f4LXt3NnJ48mHd7JZbDUPHNEl4BW29
 +sEPc2npPmPUNqNt0SAmZlM1zdTxjCbraU2M7BBWqzyJcjZuW+uwTErqTKc1pGt9E8nm
 1dDA==
X-Gm-Message-State: AOAM530WOHlGw0mQrXnMmWcbzD32dwSXXoL+7ZsC/zE0fo18hKlSEeWm
 nmrSQVNkp6nmp9ZsZJnmHOA=
X-Google-Smtp-Source: ABdhPJzXWfBK79h5kk+93HOcIYTlNumI9fiUqKsiDtSO1NHs0XS4+IFKk34gcVxz/YUTumTF6odLOw==
X-Received: by 2002:a05:600c:22c1:: with SMTP id
 1mr3577994wmg.50.1592315624117; 
 Tue, 16 Jun 2020 06:53:44 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id a15sm29250251wra.86.2020.06.16.06.53.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:53:43 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 24/73] ARM: tegra: Add missing clock-names for SDHCI
 controllers
Date: Tue, 16 Jun 2020 15:51:49 +0200
Message-Id: <20200616135238.3001888-25-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065345_526355_ADDC4074 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

The Tegra SDHCI controllers need to have a clock-names property
according to the bindings.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm/boot/dts/tegra124.dtsi | 4 ++++
 arch/arm/boot/dts/tegra20.dtsi  | 4 ++++
 arch/arm/boot/dts/tegra30.dtsi  | 4 ++++
 3 files changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/tegra124.dtsi b/arch/arm/boot/dts/tegra124.dtsi
index 3840019ed5c6..175d0bcd7a2b 100644
--- a/arch/arm/boot/dts/tegra124.dtsi
+++ b/arch/arm/boot/dts/tegra124.dtsi
@@ -839,6 +839,7 @@ mmc@700b0000 {
 		reg = <0x0 0x700b0000 0x0 0x200>;
 		interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&tegra_car TEGRA124_CLK_SDMMC1>;
+		clock-names = "sdhci";
 		resets = <&tegra_car 14>;
 		reset-names = "sdhci";
 		status = "disabled";
@@ -849,6 +850,7 @@ mmc@700b0200 {
 		reg = <0x0 0x700b0200 0x0 0x200>;
 		interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&tegra_car TEGRA124_CLK_SDMMC2>;
+		clock-names = "sdhci";
 		resets = <&tegra_car 9>;
 		reset-names = "sdhci";
 		status = "disabled";
@@ -859,6 +861,7 @@ mmc@700b0400 {
 		reg = <0x0 0x700b0400 0x0 0x200>;
 		interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&tegra_car TEGRA124_CLK_SDMMC3>;
+		clock-names = "sdhci";
 		resets = <&tegra_car 69>;
 		reset-names = "sdhci";
 		status = "disabled";
@@ -869,6 +872,7 @@ mmc@700b0600 {
 		reg = <0x0 0x700b0600 0x0 0x200>;
 		interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&tegra_car TEGRA124_CLK_SDMMC4>;
+		clock-names = "sdhci";
 		resets = <&tegra_car 15>;
 		reset-names = "sdhci";
 		status = "disabled";
diff --git a/arch/arm/boot/dts/tegra20.dtsi b/arch/arm/boot/dts/tegra20.dtsi
index 90393d8f5ebc..ccd2995aef83 100644
--- a/arch/arm/boot/dts/tegra20.dtsi
+++ b/arch/arm/boot/dts/tegra20.dtsi
@@ -813,6 +813,7 @@ mmc@c8000000 {
 		reg = <0xc8000000 0x200>;
 		interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&tegra_car TEGRA20_CLK_SDMMC1>;
+		clock-names = "sdhci";
 		resets = <&tegra_car 14>;
 		reset-names = "sdhci";
 		status = "disabled";
@@ -823,6 +824,7 @@ mmc@c8000200 {
 		reg = <0xc8000200 0x200>;
 		interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&tegra_car TEGRA20_CLK_SDMMC2>;
+		clock-names = "sdhci";
 		resets = <&tegra_car 9>;
 		reset-names = "sdhci";
 		status = "disabled";
@@ -833,6 +835,7 @@ mmc@c8000400 {
 		reg = <0xc8000400 0x200>;
 		interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&tegra_car TEGRA20_CLK_SDMMC3>;
+		clock-names = "sdhci";
 		resets = <&tegra_car 69>;
 		reset-names = "sdhci";
 		status = "disabled";
@@ -843,6 +846,7 @@ mmc@c8000600 {
 		reg = <0xc8000600 0x200>;
 		interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&tegra_car TEGRA20_CLK_SDMMC4>;
+		clock-names = "sdhci";
 		resets = <&tegra_car 15>;
 		reset-names = "sdhci";
 		status = "disabled";
diff --git a/arch/arm/boot/dts/tegra30.dtsi b/arch/arm/boot/dts/tegra30.dtsi
index 9a8c07ccbb30..f838e4775cf6 100644
--- a/arch/arm/boot/dts/tegra30.dtsi
+++ b/arch/arm/boot/dts/tegra30.dtsi
@@ -856,6 +856,7 @@ mmc@78000000 {
 		reg = <0x78000000 0x200>;
 		interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&tegra_car TEGRA30_CLK_SDMMC1>;
+		clock-names = "sdhci";
 		resets = <&tegra_car 14>;
 		reset-names = "sdhci";
 		status = "disabled";
@@ -866,6 +867,7 @@ mmc@78000200 {
 		reg = <0x78000200 0x200>;
 		interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&tegra_car TEGRA30_CLK_SDMMC2>;
+		clock-names = "sdhci";
 		resets = <&tegra_car 9>;
 		reset-names = "sdhci";
 		status = "disabled";
@@ -876,6 +878,7 @@ mmc@78000400 {
 		reg = <0x78000400 0x200>;
 		interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&tegra_car TEGRA30_CLK_SDMMC3>;
+		clock-names = "sdhci";
 		resets = <&tegra_car 69>;
 		reset-names = "sdhci";
 		status = "disabled";
@@ -886,6 +889,7 @@ mmc@78000600 {
 		reg = <0x78000600 0x200>;
 		interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&tegra_car TEGRA30_CLK_SDMMC4>;
+		clock-names = "sdhci";
 		resets = <&tegra_car 15>;
 		reset-names = "sdhci";
 		status = "disabled";
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
