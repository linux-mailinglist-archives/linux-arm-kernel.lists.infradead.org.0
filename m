Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FEAB15A88D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 13:03:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kT4myq8t4rd4g+nygBCK2aH7C/S7jdrGjiDp8nQbqV8=; b=Txy6Qb+iAkH8nH
	lHKdTkgcgciQK7wGK4IInHVIt2WFSBSw4vzd/a7wffujunKijJpG2U6bWcqvnBA9w8CVjAVdXenDZ
	e9qPgYBK92CD/mXYl9eHbOL/tHH91PabkqyXG+JKzKAIjjCBWX6QYuzVb1pRmhE0rjZ7pmH5TN+vX
	RR1B3kWaHenTiAzkWJPbn829JJ9GFIwhCuETQ32h922mhiUTBKf1mitT5kAhJvJelpbIkYXLmvPnX
	PNZM6ahP0JmH8uxpvsEDnUHAe+AmdclKM/Y2N5uN8WESRYVIYzQM/FClPAh9sHoAMCCD37sqf3Yvy
	CSflhwd2yTSIhd5JClkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1qjX-00004z-0a; Wed, 12 Feb 2020 12:03:11 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1qjD-0008Os-EK
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 12:02:52 +0000
Received: by mail-pf1-x42a.google.com with SMTP id q8so1141204pfh.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 04:02:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OeRfynpBzWtXBGFTr/hu/iRIhnsICLk8oO4a/pXNvUM=;
 b=tGNH1Y97PUNad4YgIOadnTlhC6CXUbtHJK4sKjeZvhgSCzEAETT4v890MUPENwf0VN
 PboD6RHnn7C6QwevJbrYoVDNmhDmPuCTlXdtEdZ3l34GZkGdQFznpg1Fyo7KkX4vZ/va
 F0lqohfFU6iNkPSM2Vdh4MOm6N9W8ndJ6Lh2/zysegNbrog48hcPPfGlc0PwN0byPp88
 2rE+IXjldbW80Atbyq6WXWA82E7jKuzItBT3t2+cjwHofkVe8G74WfP13EUnTBhTQVcc
 ln+Irw7ZFF+yQjRxz06h/JuaKWP4e81+5fUKTNlQQDAo584TO/Cq/5a+mM3QOTz565sS
 dung==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OeRfynpBzWtXBGFTr/hu/iRIhnsICLk8oO4a/pXNvUM=;
 b=WfYHth1P7ISI81RFXZkO2bnNf7cgq7HW4NEoipvAsNebUbXdeWsGKHavffRJimRbbh
 mwmB2tVwawD1W6962x+EVUwXKTqkMchqRjqXLfrF2eAQBQmoIU3thIoQLL67Oq1RymmW
 Y9Wtrs7Q14qtslszncMERf3E33oQdG1Vjct0qJsUCVRZyt9X1zNGenQ38LUv/6ZV4/Df
 BSR2BMfOSwa7m0Ui7N21iqoPPh6dhvcEf7YIoFDDA2iYgSycag0y+cMrsbe8mu6l0+kh
 Vchmn1bcG5j9d/xBTni7P3sE1BHLGozmfBL3o1EV40+P/ft876mmLJinLj52Y2BY5RKp
 5/PQ==
X-Gm-Message-State: APjAAAUBCqzb8aJsRMZ5DR8+VnpIYvzB9vMNIchr8tas/tgKchAZ4giG
 Vfg7cp39obp9tIPmsMAl7YM=
X-Google-Smtp-Source: APXvYqykrFWZZK7yAd621OzAw6LmdZuA7kEYns7yVXWQwbZc+9A9ujPl3u0+W8v9yseIOg8L2Tlftw==
X-Received: by 2002:a63:921a:: with SMTP id o26mr12312945pgd.246.1581508970574; 
 Wed, 12 Feb 2020 04:02:50 -0800 (PST)
Received: from localhost.localdomain ([45.114.62.33])
 by smtp.gmail.com with ESMTPSA id b24sm682448pfo.84.2020.02.12.04.02.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Feb 2020 04:02:50 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Subject: [PATCHv1 1/2] ARM: dts: exynos: Add FSYS2 power domain to Exynos542x
Date: Wed, 12 Feb 2020 12:02:36 +0000
Message-Id: <20200212120237.1332-2-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200212120237.1332-1-linux.amoon@gmail.com>
References: <20200212120237.1332-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_040251_489104_AF0AC94B 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linux.amoon[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stephen Boyd <sboyd@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a power domain FSYS2 for MMC device present in Exynos542x/5800 SoCs.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 arch/arm/boot/dts/exynos5420.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/exynos5420.dtsi b/arch/arm/boot/dts/exynos5420.dtsi
index b672080e7469..2ba8a57303cd 100644
--- a/arch/arm/boot/dts/exynos5420.dtsi
+++ b/arch/arm/boot/dts/exynos5420.dtsi
@@ -210,6 +210,7 @@ mmc_0: mmc@12200000 {
 			clocks = <&clock CLK_MMC0>, <&clock CLK_SCLK_MMC0>;
 			clock-names = "biu", "ciu";
 			fifo-depth = <0x40>;
+			power-domains = <&fsys2_pd>;
 			status = "disabled";
 		};
 
@@ -222,6 +223,7 @@ mmc_1: mmc@12210000 {
 			clocks = <&clock CLK_MMC1>, <&clock CLK_SCLK_MMC1>;
 			clock-names = "biu", "ciu";
 			fifo-depth = <0x40>;
+			power-domains = <&fsys2_pd>;
 			status = "disabled";
 		};
 
@@ -234,6 +236,7 @@ mmc_2: mmc@12220000 {
 			clocks = <&clock CLK_MMC2>, <&clock CLK_SCLK_MMC2>;
 			clock-names = "biu", "ciu";
 			fifo-depth = <0x40>;
+			power-domains = <&fsys2_pd>;
 			status = "disabled";
 		};
 
@@ -396,6 +399,13 @@ msc_pd: power-domain@10044120 {
 			label = "MSC";
 		};
 
+		fsys2_pd: power-domain@10044160 {
+			compatible = "samsung,exynos4210-pd";
+			reg = <0x10044160 0x20>;
+			#power-domain-cells = <0>;
+			label = "FSYS2";
+		};
+
 		pinctrl_0: pinctrl@13400000 {
 			compatible = "samsung,exynos5420-pinctrl";
 			reg = <0x13400000 0x1000>;
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
