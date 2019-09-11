Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E756B0584
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 00:20:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gafyLhDmP5pqCHJPt6FbOBDtg2Dp52u5j0wna1+HopA=; b=rBh3v4oznNcvoPz7ZjSZr0d2jw
	0ntf640mUG3hvlqyxKFoB5TjOX/vBYaPBXZ4BZo4HbUcnBlEdLTK5TXJybRPtMvRN4bDbUeQcZFud
	u44la/FYCcNyfQ1oLYQr/g3sTsnib1q3ydJ+Y5QKVGtLkeMlKAVFjzhGFyX/IwLclcyhqeExt3HmX
	CeVSNF3ZXNN2/McKiSZRCPv8rDeukgX8AdnuRov4T2Su9F/93ePUoALU5ir6LIYoGn/gjBTe27kEu
	z+bZizjM8U6ERomxRyda/xYmEH5J0mRg5WJrWm/TBL2VSaWm3Ics+Ab2sr4kEo83qFPql08o8xjEM
	IWtsvEfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8AyT-0001rW-Qg; Wed, 11 Sep 2019 22:20:30 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8AxB-0008C9-NE
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 22:19:11 +0000
Received: by mail-pl1-x641.google.com with SMTP id m9so10798781pls.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 15:19:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=mMNl63FO67KUuEHw42vIWKlthSpMwd5FVOOXIHmqrU4=;
 b=a8PMTBBTeeZyu/Wvz6ibbwLc/1cJ7vElKoSkSXAji0+1n+9jR/t/r7x/pf8m+oNx7I
 7DSzXISCFD+sD00yT2TicutThMC9mFxdIcPpLvxkcBseFcgNlCwSKCbVM20+jp4pQGu3
 CnExwUjzYpA2YT+AfVkJr/xlkDxC8joLHCGhWZBITmmkqldtD8BD3W30lM3IXT6t6Qcc
 Euk0Yp8DJlwSseJv53H0WKPmfZNPCnVsL5Z/CotAsmdO2tFTKSizohPZrDC6a/rbfzmZ
 kQfygH+3vorPTAqv2ENiOYfY5POKMqh2gH6PW3WeAfwSm2RyHHQFxOjzkCHBMgw8Ly1k
 PNrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=mMNl63FO67KUuEHw42vIWKlthSpMwd5FVOOXIHmqrU4=;
 b=GTQ49wfOy0vy6g0JwCzY6vylHZ79gTOI0VVSSq7dWu9IwGpJihko+sgJ56zke4ziKa
 Vx3uA0KbS/eMwba8Dyp6deev6s/LZJGkADt03C2i83cNwyVZ6il8ILaqcOjDbpqLquqO
 0ZlCFI+mI0I2wNLmGGnXMXvEmYRlkp+r1s8V2z9M+3hWN8ZZF2zAOs5SRmCTKwojNZa/
 fy8eVqDNPsIX+Th5dMyJ836QfjIxPOM1ZCk5rencHaC19Q/qZ/FyF0Hi2LDF0bVZesry
 XykxTPV/eGSy7REJhhKeo7s98/AnwmQxlrK4seGI4FgMQSb46IE9oeJxFTsw7s1c4Z92
 k5wQ==
X-Gm-Message-State: APjAAAUQgW1Y3qW4QMsfFtHbLul5ZhI90lASHhEpgNZTw+4jrWZ06CxS
 tqr3t3R+rOOwRfSDnmUU8hM66Q==
X-Google-Smtp-Source: APXvYqxywK/VqaJubZy+tpMXHI2hldjrJm9ASPz2i3rYysqWyhJf1sL0Mqz/b5O7hDlKl+2gVQIUJg==
X-Received: by 2002:a17:902:8d81:: with SMTP id
 v1mr22729125plo.23.1568240348925; 
 Wed, 11 Sep 2019 15:19:08 -0700 (PDT)
Received: from localhost ([49.248.179.160])
 by smtp.gmail.com with ESMTPSA id c2sm23999870pfd.66.2019.09.11.15.19.07
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 11 Sep 2019 15:19:08 -0700 (PDT)
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
Subject: [PATCH 4/4] arm64: Kconfig: Fix EXYNOS driver dependencies
Date: Thu, 12 Sep 2019 03:48:48 +0530
Message-Id: <79755cb29b8c23709e346b5dd290481a36627648.1568239378.git.amit.kucheria@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1568239378.git.amit.kucheria@linaro.org>
References: <cover.1568239378.git.amit.kucheria@linaro.org>
In-Reply-To: <cover.1568239378.git.amit.kucheria@linaro.org>
References: <cover.1568239378.git.amit.kucheria@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_151909_949078_5DC055B3 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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

Push various EXYNOS drivers behind ARCH_EXYNOS dependency so that it
doesn't get enabled by default on other platforms.

Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
---
 drivers/clk/Kconfig       | 1 +
 drivers/regulator/Kconfig | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
index 9b2790d3f18a..bdf164a7a7c5 100644
--- a/drivers/clk/Kconfig
+++ b/drivers/clk/Kconfig
@@ -194,6 +194,7 @@ config COMMON_CLK_ASPEED
 
 config COMMON_CLK_S2MPS11
 	tristate "Clock driver for S2MPS1X/S5M8767 MFD"
+	depends on ARCH_EXYNOS
 	depends on MFD_SEC_CORE || COMPILE_TEST
 	---help---
 	  This driver supports S2MPS11/S2MPS14/S5M8767 crystal oscillator
diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
index b57093d7c01f..a4c4f01343fd 100644
--- a/drivers/regulator/Kconfig
+++ b/drivers/regulator/Kconfig
@@ -797,6 +797,7 @@ config REGULATOR_S2MPA01
 
 config REGULATOR_S2MPS11
 	tristate "Samsung S2MPS11/13/14/15/S2MPU02 voltage regulator"
+	depends on ARCH_EXYNOS
 	depends on MFD_SEC_CORE
 	help
 	 This driver supports a Samsung S2MPS11/13/14/15/S2MPU02 voltage
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
