Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF381FB2A3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 15:53:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eE+0RSEVlnlAKidpLNIqkiIu2x0LNaLRlUtiTGBm1Ug=; b=kHWKXpvCs8F3zd
	cEQm2dSce9/G2jBkc+C50lqYedumaKgWUJ8tKu7pI2sN5d9l41q7kX+xQ8/guhRoiwxgR0AqrqVE6
	EPEETzfyZy3D70B0UznoKrIu9Oqe9dKdeKccDzCHj2LWS5QIJFxdoa/MTObTu0VPNXo5CQJwnlpvb
	Se1GEDnMARTK2RDzuDIHj+ug7nC3DuB6NED4YA4z36d5mpXu0/VKtKLueCQxUnyqD4ST75Jjo0A39
	SZRal1UpUnRfnHdV01xJlz2WYPP/JTrGkoezc4xSS6vPlFlrvive2i28CNY9r3L0VkydDnfmDEG1G
	fZ81+U2BYZZnwDNtXz/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlC1x-0001Ka-I8; Tue, 16 Jun 2020 13:53:37 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC19-00012K-Kw
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:52:48 +0000
Received: by mail-wm1-x341.google.com with SMTP id u26so2323150wmn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:52:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=e+aQRcr8g2L1XKOdnqIhl3Y/lE37D1u6kdXp0AB8z5I=;
 b=owc+3xnIp7+UxkS37n+s30rY/dEHLz54ugoJQyM3x7GXnY7LE12lTuv5JisMFRDytV
 moVOllI0lNionN251TnXUQu4+Fh4dUaWDxosglDGNVVtZCOIM1j9Ng0MKIZRv+Cqw+IF
 ZJxYatrl7IJvBmwOkGNrjXJ0k7ftb3D/yI8NvPDYBVCQaiwZ1oM318jsUc5RygzH9kYx
 zcB29tYTJdL7kGzH+pU8GSAMpm7wx0+BMLJh1BwABonik7y5QkcJkGVWHreqVJCY5kmG
 A8NGC3Ot8FIkaPRG0EH4O8s9I795Ye0Y8jV3MfB0O7l49WMWftyQM2uHkOt/Mb8+k2Pe
 9djg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=e+aQRcr8g2L1XKOdnqIhl3Y/lE37D1u6kdXp0AB8z5I=;
 b=g7b3RQnfP3kyDh3LSy/4JYcHmBtwQOieJBG7BbyX3FpwQ1MpZSN9TqtaxAFqF0J76s
 CiXolegpe+J3GT7UBZY8JybHfCdxIDj1GZVXqUtT7nRvhzh3lkhJPUECQwEDjGkDr9AS
 IlfD33iLK8L33lC7fUa83zipnDrUpCpNg6rDIfrUlVKmZRxfGciJUvQrMbECArmq4WEZ
 o4pOpClwOMLf201M4H18rELMVDiUS8BLtkOP81PkgOOs2vNR8AqxTsCtGd7cMMxkrHEq
 6P7w1EUhWtSQzcjNTlv+oSB7p+jwnDwZwJvf5Mj7K0n5JWaLIPcKCT/T+TARbnA19mJw
 JpjA==
X-Gm-Message-State: AOAM5319+T5e6jX08jqlMODT8VjIRcE+wdm2rB9cbojn+2+4VQ+0qRev
 Dpf21HskvLacZiwrCaiNVKLQ/Pmk
X-Google-Smtp-Source: ABdhPJzaobN8VHO0iY9PKxgxYV6t9Vyj5L3IcgcwIYyFVUackFYExX4ODtN2vuG7CWtmYqpWvXmSew==
X-Received: by 2002:a05:600c:287:: with SMTP id 7mr3535658wmk.91.1592315566443; 
 Tue, 16 Jun 2020 06:52:46 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id f11sm27766410wrm.13.2020.06.16.06.52.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:52:45 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 01/73] ARM: tegra: Add missing clock-names for SDHCI on
 Tegra114
Date: Tue, 16 Jun 2020 15:51:26 +0200
Message-Id: <20200616135238.3001888-2-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065247_680247_F93EA6E0 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

The Tegra SDHCI controller bindings state that the clock-names property
is required, so add the missing properties on Tegra114.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm/boot/dts/tegra114.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/tegra114.dtsi b/arch/arm/boot/dts/tegra114.dtsi
index 450a1f1b12a0..01a81d380f1f 100644
--- a/arch/arm/boot/dts/tegra114.dtsi
+++ b/arch/arm/boot/dts/tegra114.dtsi
@@ -649,6 +649,7 @@ sdhci@78000000 {
 		reg = <0x78000000 0x200>;
 		interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&tegra_car TEGRA114_CLK_SDMMC1>;
+		clock-names = "sdhci";
 		resets = <&tegra_car 14>;
 		reset-names = "sdhci";
 		status = "disabled";
@@ -659,6 +660,7 @@ sdhci@78000200 {
 		reg = <0x78000200 0x200>;
 		interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&tegra_car TEGRA114_CLK_SDMMC2>;
+		clock-names = "sdhci";
 		resets = <&tegra_car 9>;
 		reset-names = "sdhci";
 		status = "disabled";
@@ -669,6 +671,7 @@ sdhci@78000400 {
 		reg = <0x78000400 0x200>;
 		interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&tegra_car TEGRA114_CLK_SDMMC3>;
+		clock-names = "sdhci";
 		resets = <&tegra_car 69>;
 		reset-names = "sdhci";
 		status = "disabled";
@@ -679,6 +682,7 @@ sdhci@78000600 {
 		reg = <0x78000600 0x200>;
 		interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&tegra_car TEGRA114_CLK_SDMMC4>;
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
