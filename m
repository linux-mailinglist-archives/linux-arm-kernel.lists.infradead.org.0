Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12F091FB387
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:08:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ko1Xqweg0kN/mAUrYlZUDWotxyMDcVyH4Sz5QIcBus=; b=YmVN0XBVNNjfYx
	9nzbknQ6kn//v34HP8k4eZSmjqUr/hPoxRX1tMQeBvefrB5cNtThevPGivWuhVosJbmbfHqDO+y2E
	93xZcFbik5iH4wIxbbQWute4vOzsRMCa3QwpYkp/JdtEvVh4TnAZ8uJnO3sxUJh0yQzz2n0RL2g2e
	kNm8f1CTOhtlHiE7L2cDkDqL7ujqPW64etKP0ikucTuP5lSIK2P1L46ibo7XgEnOOswgOn6j/he3l
	WpM5uwNvWJHUB7wKaDotjx0SIUAcm2wglYbQJfKRVsP7kjCqnTIRv582IXOOdFfE9cY97JEXUqEla
	IOKB4nqDfzZ2jD9uB2GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCG2-00021h-08; Tue, 16 Jun 2020 14:08:10 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC2j-00028Y-If
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:54:27 +0000
Received: by mail-wm1-x343.google.com with SMTP id r9so2974332wmh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:54:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kThqcb4cQbBx/uIsel8TVm5M32tgO5gv/gDCIhxkJJA=;
 b=o/hi0mnh2wpMjd4mgh7FpL98ASw5tSNjvcUQsMZmDL7CaRzCWFSeuAtCWoaRhUUZXn
 hS5gS/LCLSrTDWGHwZcaT/lr1RQ3IHm8vpgwcQLD5N99QRwLS7eAWrBI0m7zdsZRwRxu
 /dk6beZXp7QzUWAW94rcDpjx4WtdNIIbPZnYhkbNPyehGuq9Tp2FEHl1x/2ragpYV3ST
 grA85cCHOXQI/nyfs0m6Z8L/3V9r+yz5RA+vU/DbD8+obw/Z2gIfCBalD5VmQ79OTstK
 k2vn2+Tom6TvlQk0EVBdlJoZOJyznexZ4YUTO3Jm8QlYN1+gi5T3wYtZy0IeO7LD0B45
 MLuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kThqcb4cQbBx/uIsel8TVm5M32tgO5gv/gDCIhxkJJA=;
 b=IG8uHASEZdb5v0fR5j3l0rguewxIDeMofhMgO2TwQuAlOQT9GOePXrL1NlDv66Ork1
 iCzZHKvKFTXqB1prDyopHDNYiMQXoQBzdQmD1ySTH4fJodGNcXHuoO6pm5um2we3J1B5
 PYLs7QeIvyBTws6662BkBjxDXiphMWfxQatibkjoJbXx42XWvHnlu1+i9Nefdm2n6tbj
 MLE0f2yx2GM2s1fFn8HZ/UtNflHwGFdNjWEjarYZo6KFB1E42a0qS24WtC5QkLU1EDR2
 5Au6CSPzax6+A46xEGWi/sJLljPzn1He4yIk3ej37cEONKvqyUruo6zsuLtfi5D2PSoR
 cxcg==
X-Gm-Message-State: AOAM533i1q9PibS4uOmPJ62oO4fbeG5vQPupx+BHUeOG3x1vxiumj8m6
 XRnd1JA5duXDI8eCnntj22s=
X-Google-Smtp-Source: ABdhPJwJwKgoBKOrgh9ybWXJW1wfiTzi0G/DnJugS41di6b6KeHJcMacLd5pTXFBo1vjSqxmGbaNEQ==
X-Received: by 2002:a1c:154:: with SMTP id 81mr3295877wmb.23.1592315664359;
 Tue, 16 Jun 2020 06:54:24 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id a124sm4156094wmh.4.2020.06.16.06.54.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:54:23 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 39/73] arm64: tegra: Remove extra compatible for Tegra194 SDHCI
Date: Tue, 16 Jun 2020 15:52:04 +0200
Message-Id: <20200616135238.3001888-40-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065425_640027_B1804B7F 
X-CRM114-Status: GOOD (  11.06  )
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

The SDHCI on Tegra194 is in fact not compatible with the one found on
Tegra186. Remove the extra compatible string to reflect that.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra194.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra194.dtsi b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
index 4bc187a4eacd..ae438b2c4dd9 100644
--- a/arch/arm64/boot/dts/nvidia/tegra194.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
@@ -450,7 +450,7 @@ pwm8: pwm@32f0000 {
 		};
 
 		sdmmc1: sdhci@3400000 {
-			compatible = "nvidia,tegra194-sdhci", "nvidia,tegra186-sdhci";
+			compatible = "nvidia,tegra194-sdhci";
 			reg = <0x03400000 0x10000>;
 			interrupts = <GIC_SPI 62 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&bpmp TEGRA194_CLK_SDMMC1>;
@@ -472,7 +472,7 @@ sdmmc1: sdhci@3400000 {
 		};
 
 		sdmmc3: sdhci@3440000 {
-			compatible = "nvidia,tegra194-sdhci", "nvidia,tegra186-sdhci";
+			compatible = "nvidia,tegra194-sdhci";
 			reg = <0x03440000 0x10000>;
 			interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&bpmp TEGRA194_CLK_SDMMC3>;
@@ -495,7 +495,7 @@ sdmmc3: sdhci@3440000 {
 		};
 
 		sdmmc4: sdhci@3460000 {
-			compatible = "nvidia,tegra194-sdhci", "nvidia,tegra186-sdhci";
+			compatible = "nvidia,tegra194-sdhci";
 			reg = <0x03460000 0x10000>;
 			interrupts = <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&bpmp TEGRA194_CLK_SDMMC4>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
