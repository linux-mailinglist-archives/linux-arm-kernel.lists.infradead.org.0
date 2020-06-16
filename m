Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33BCA1FB318
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 15:59:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ocXIAbnqwlY3Nme49l0R9YHbh2qK56FoRyMVm0fsrU=; b=N7Y08bZBX9HvLR
	MyEpNZ1QsmNjTUQx+PxCcua92wrdAaV01zhuVail8S7HBkf3884B4+sqaVPvqcJeE7vX6ujluTZMF
	o4dCxE5njO1R73NNx+AnNLfPwmEeM4h8npsySXYiIOm//4ZAPiXfOGvV1Dby6lteBLkRZrcZu5qh4
	9O5eusKdj6vazSyUJ963CD+6d07EKEd0/6jVFvTNraFQ+877PQZDOfcudknv9gmW2vWU53JI2P2la
	2SUe4JZKtsNfRZkNM1wDEOdDzd3U5nDmtf+uc7Ut584xfUZcKZV10kaQopZP8VhX4QAHGZIgCV+xF
	gaIgOcD4grA6wCh2Mbxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlC7a-0007RZ-DZ; Tue, 16 Jun 2020 13:59:26 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC1g-0001Rp-1w
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:53:23 +0000
Received: by mail-wr1-x441.google.com with SMTP id h5so20893380wrc.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:53:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XpGkTMQdujnzyohBXq/7v3DemG3fJUl2YFtinCTqAhM=;
 b=DQBDaZr73gv6rw1M5gWUzeXuMVdsi28IHqKnomFwpwXMH+sGvpUDjvy8P+HpjKY/eQ
 AV3X5BVQZtT8KZpwNnYKTedRTD5t0eHGdqMB2tc8vilPLpr8Q8+t1LZs3GE4uv43xXHL
 sTC0SjA8WeUFQu6pTZe4ntuebdLt6LveH8FnL3jAKh9fvbTm8J2wQNpiWJcq9i8xJql+
 Kly4Q5rSW4QnEYIadKyZYKjjQHDwjgVlPv4DT5128JWhqbOMmlIR2G+S2CVpz0bLyb/U
 kC2UK3gNMsu2LGlCxxOrrLsX6H0o52S7hM2SndGPV+uvGXnaKlsU19PVQQrjarSrNi3a
 Xh0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XpGkTMQdujnzyohBXq/7v3DemG3fJUl2YFtinCTqAhM=;
 b=tBp6CixSKqXsdaIBqDdGFG9DMCQ/qSUWAoaV2tZE1hRbyJA7verRzmIWYqyzk7Cch0
 1emse0b6Ivai4l2Nz9uUsYCCCukPU4PiV/gFskCVDDrpaZV3XU6zewkxEf7nCtkryFnx
 m+eoHwSy1nbnvbCbj1Uv2xDHJ7IABgdnY5dhiYVXsLQ1LR23/RZTUOT1q63JWTfnM81d
 H2Bjzhtb5wrr8lOof9hXt/vQcQ9LnnKImUKFSjHOEdfXRbHDHuKJyD+x4Tb4tTP2Svp2
 YVp4el7aFT5A+tAA8Xmuy19N55e7wWthFxefrjyofHLGyG+d+0ULwic7hbyt7Avetbp9
 L1ZQ==
X-Gm-Message-State: AOAM531Cgaprm4oQkz0ljiz25tIrlGr9vnI+mvt22+j5lhDsdX64NwMT
 5s7pMlGDN8x/9NbetMSqbxQ=
X-Google-Smtp-Source: ABdhPJxwsfvHvCrtLWZl/D+5u711U9x9i70B1QBdR4g7zl4F8o5Cf6s3RzcBsPd33G18r0vq6zkgFw==
X-Received: by 2002:a5d:4d4d:: with SMTP id a13mr3248962wru.252.1592315598704; 
 Tue, 16 Jun 2020 06:53:18 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id w17sm30538823wra.71.2020.06.16.06.53.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:53:17 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 14/73] ARM: tegra: Tegra114 SDHCI is not backwards-compatible
Date: Tue, 16 Jun 2020 15:51:39 +0200
Message-Id: <20200616135238.3001888-15-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065320_130605_807448B9 
X-CRM114-Status: UNSURE (   9.82  )
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

The SDHCI controller instantiated on Tegra114 is not backwards-
compatible with the version on Tegra30, so remove the corresponding
compatible string.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm/boot/dts/tegra114.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/tegra114.dtsi b/arch/arm/boot/dts/tegra114.dtsi
index 69e0e3eeffb4..88632d8d0bde 100644
--- a/arch/arm/boot/dts/tegra114.dtsi
+++ b/arch/arm/boot/dts/tegra114.dtsi
@@ -645,7 +645,7 @@ mipi: mipi@700e3000 {
 	};
 
 	mmc@78000000 {
-		compatible = "nvidia,tegra114-sdhci", "nvidia,tegra30-sdhci";
+		compatible = "nvidia,tegra114-sdhci";
 		reg = <0x78000000 0x200>;
 		interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&tegra_car TEGRA114_CLK_SDMMC1>;
@@ -656,7 +656,7 @@ mmc@78000000 {
 	};
 
 	mmc@78000200 {
-		compatible = "nvidia,tegra114-sdhci", "nvidia,tegra30-sdhci";
+		compatible = "nvidia,tegra114-sdhci";
 		reg = <0x78000200 0x200>;
 		interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&tegra_car TEGRA114_CLK_SDMMC2>;
@@ -667,7 +667,7 @@ mmc@78000200 {
 	};
 
 	mmc@78000400 {
-		compatible = "nvidia,tegra114-sdhci", "nvidia,tegra30-sdhci";
+		compatible = "nvidia,tegra114-sdhci";
 		reg = <0x78000400 0x200>;
 		interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&tegra_car TEGRA114_CLK_SDMMC3>;
@@ -678,7 +678,7 @@ mmc@78000400 {
 	};
 
 	mmc@78000600 {
-		compatible = "nvidia,tegra114-sdhci", "nvidia,tegra30-sdhci";
+		compatible = "nvidia,tegra114-sdhci";
 		reg = <0x78000600 0x200>;
 		interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&tegra_car TEGRA114_CLK_SDMMC4>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
