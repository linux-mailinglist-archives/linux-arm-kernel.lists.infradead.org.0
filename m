Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A61A7B0583
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 00:20:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0GDwdUS8DlOvWZKcde/qC19Ez4hyUTvPSRT29i7lB10=; b=j+EkQ5BbSCA4squHb5Vtbf6USv
	kgVBEzUAVFJcT+lvxfDkoP5Nn9QHbmZ6rCoRBTMh97psJYtqBuWyjEAWXmZ3AZekPqhFpL60ukeBz
	lROoVj1wZnExAGaEOmr3v4vMkdEc3ldAdetnY8J7bIYySv4Xo+3G6qA3bZPQ0/kFn13Tf1Z6WA6Ji
	t0h5FTouq74RXq/jluvWQO0XeCanFGgbU7+YgHr6Rc6DRaeFci9kTNBuYPltyN/5UZ/6FwAb4h3eE
	pJRitjGZC07utM4lJ0k6LXC6Y2u19kRxOnJ+h3P9CfnGBlSuH7iqP/pBL+YnKf3OLzQinAqUUu1wa
	rY7D+FTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8AyD-0000LN-20; Wed, 11 Sep 2019 22:20:13 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Ax8-00088a-1I
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 22:19:07 +0000
Received: by mail-pf1-x442.google.com with SMTP id x127so14574999pfb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 15:19:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=2X3SRzIwnpnErNdvMpQKEQIE0nPz8iNvb6s2mmkqEds=;
 b=Swe/IstEy9pJgy/ebR3/loS/F6ULouZpNAU5NMAqHNylVvY3mNNAYA86S47/2tdJZd
 WhL6RXJs2HTYZjJf/1u5hRsPFPZDwLbJ1rKRh+ZuqFi7lWVF2c0cQKuhMhryOIltmXfo
 VnMRj/LeFqBgBI9QC6/OoUunbXEBEg0ebmry1bGY4S25ACVVx4TvuTFs2pJRPOrc2yzg
 nznWtz5O4489ZB7dlT5rF8uDp6/e08vlVO1GFK5zZCaGBPC4iTwYq84rt359mZJnMP+B
 oiy6sxWSDmSWSjNIaAlLZAbU9kGX6aMkw/nwNU8NRSOEblS36HObUny1W+IoD3t+5nX4
 xjyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=2X3SRzIwnpnErNdvMpQKEQIE0nPz8iNvb6s2mmkqEds=;
 b=lRp06VHLj35iBoeji6esPYKHt2kdEMijdNHo6ITG22MNfCFL/QvMJARGM/rpeLmG3X
 hRzeRVhfSN6SP/OpQhvo0L3hPsbwptyGrDS76ZE3iG8w/FA8wGMs85kGMWAMTd9H0lrG
 Cmd7StaU9a1efHcK/8qw3/yA0hyp3FIfDFJ6EmlqPnSiZXA8+uIHmmupmkocRXiXCyRf
 PbTiOKmqGiHxDTooKm5Mm5o19oen7BJV74tLmJnLjlwuM9V0b+6MGFJg3DMvQeWnRVmR
 Tll3NszipJaL/5ETTDB1Yo5fC6RAx0l7MMc7dJP11l4kcpCsQGzAB3olnCggiIPwKwRr
 pmrA==
X-Gm-Message-State: APjAAAX8yEP31duh3K2EhvBlyv0m2hJW28PtfVN3cAAlbbBeEnq3Pood
 08H7cMle17MTyOPYcyWB7Hyyfg==
X-Google-Smtp-Source: APXvYqw5tBXGpyCHobC9PqT+BPqZzA2y82ejBsAPKuGT1mvGwANpkp7rRrgoOvQbqobn6t1RI+V35w==
X-Received: by 2002:a17:90a:37d1:: with SMTP id
 v75mr8187287pjb.33.1568240345437; 
 Wed, 11 Sep 2019 15:19:05 -0700 (PDT)
Received: from localhost ([49.248.179.160])
 by smtp.gmail.com with ESMTPSA id 69sm30084787pfb.145.2019.09.11.15.19.04
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 11 Sep 2019 15:19:04 -0700 (PDT)
From: Amit Kucheria <amit.kucheria@linaro.org>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 arm@kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Mark Brown <broonie@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Sebastian Reichel <sre@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Will Deacon <will@kernel.org>
Subject: [PATCH 3/4] arm64: Kconfig: Fix VEXPRESS driver dependencies
Date: Thu, 12 Sep 2019 03:48:47 +0530
Message-Id: <8f539b28c25d22b8f515c131cd6b24c309f7ca90.1568239378.git.amit.kucheria@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1568239378.git.amit.kucheria@linaro.org>
References: <cover.1568239378.git.amit.kucheria@linaro.org>
In-Reply-To: <cover.1568239378.git.amit.kucheria@linaro.org>
References: <cover.1568239378.git.amit.kucheria@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_151906_095164_FF104606 
X-CRM114-Status: GOOD (  12.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-clk@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Push various VEXPRESS drivers behind ARCH_VEXPRESS dependency so that it
doesn't get enabled by default on other platforms.

Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
---
 drivers/bus/Kconfig           | 2 +-
 drivers/clk/versatile/Kconfig | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/bus/Kconfig b/drivers/bus/Kconfig
index d80e8d70bf10..b2b1beee9953 100644
--- a/drivers/bus/Kconfig
+++ b/drivers/bus/Kconfig
@@ -166,7 +166,7 @@ config UNIPHIER_SYSTEM_BUS
 
 config VEXPRESS_CONFIG
 	bool "Versatile Express configuration bus"
-	default y if ARCH_VEXPRESS
+	depends on ARCH_VEXPRESS
 	depends on ARM || ARM64
 	depends on OF
 	select REGMAP
diff --git a/drivers/clk/versatile/Kconfig b/drivers/clk/versatile/Kconfig
index ac766855ba16..826750292c1e 100644
--- a/drivers/clk/versatile/Kconfig
+++ b/drivers/clk/versatile/Kconfig
@@ -5,8 +5,8 @@ config ICST
 config COMMON_CLK_VERSATILE
 	bool "Clock driver for ARM Reference designs"
 	depends on ARCH_INTEGRATOR || ARCH_REALVIEW || \
-		ARCH_VERSATILE || ARCH_VEXPRESS || ARM64 || \
-		COMPILE_TEST
+		ARCH_VERSATILE || ARCH_VEXPRESS || COMPILE_TEST
+	depends on ARM64
 	select REGMAP_MMIO
 	---help---
           Supports clocking on ARM Reference designs:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
