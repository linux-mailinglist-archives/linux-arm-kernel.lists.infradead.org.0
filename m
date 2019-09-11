Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A97BCB0580
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 00:19:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JwptaAGmUgXlQaKUMZh/iNH9opXzqATjzaQicx5NsNQ=; b=FNVJ2z0iqwzU2VBZm9TOd+ag/V
	30eX3C+yD2VNYkBV1ahvpKufmgwcw/u7gg9KvwRq/6k/B+PLVPC+ip66PROvbyE0QbGbAPo8hxwca
	PGZzTLvXsiwNWEed81z43HxUlDqcklgDtiklKU+jl4eA78OdDrFbDQpj3jvMuiK4QBYqFW8IhK8Ga
	5dew3qjcj/x4V+hzY0PIA4xmGBVC4hfq7S5VdgQ/qXqm2G4P3M4RIrlye//LWRy6ZdyhDOd5tpw+Y
	ilbYnzWBzKZSbtjFNiqY2LyiEXFZHkdRDr75x84tC4spQ2QgJFhjA9P0Nve1xbkICdajItiEuwCWM
	bOIlOXTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8AxW-0008Gv-2T; Wed, 11 Sep 2019 22:19:30 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Ax0-00080w-M7
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 22:19:00 +0000
Received: by mail-pf1-x442.google.com with SMTP id q5so14565198pfg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 15:18:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=wJpUcmtI6YKhyLGtOcvDAWFwk949XlDAmv2MKsxWP1U=;
 b=DMkvTmwVBoZy7jqUIkAihodC8R4kqONrk3HGJetqqwTAcCDCcYKzpuoElpoaj8L4q3
 kKAmLx32GZAY0DgrK7yzscFGAZzHV24sY6eDNwE0lp4RqIGvHit4bu1Vuqcm2NlyyYRU
 L3qjQuPWAX9cZEUzgkadODxqhF3eBa2y0DhN1H4UCagnFBKVrEgpQjE9I1NtUyfZ02fZ
 z1RWSyAFtOaxIDNIeSoIaPHqKn0dXGifT5otHgWpv1Gdudbav2hq4d8vK8e6HO+QxMlR
 BI1FLqp0jLwQ5iKEuprVYqwH/Wvo4kSjvvG/gaOi/KA8BPaM8SDl2B0A+FXXzETgvYz3
 KgrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=wJpUcmtI6YKhyLGtOcvDAWFwk949XlDAmv2MKsxWP1U=;
 b=uDbqmZpEGm2J0z9wWwSCdxKGQUJ6kA4bYQGyXgrHyhwsMyo9IEC2bsf9AYFfN3K9vA
 SU+ucD6v1Mt7Bqh7C4v6cqoFLGrMePXkxArckJIa7/pdmdR47vyieX2mBpCYfpM4RqdM
 /qLPzKqvOO/qZ0/UzURBEPCSC+bbziWqDLdY/R19AhL5OPtIhqet6F4L0ataiIWvLbvA
 8kS3vR976rltL+M4/vv9+iuQ9KJAE1Gltx4p2Ochm7Z4WMPL0DYY+dcC+CgsU6YMymMc
 9oYevE3u7Ue7fNvk7QKzviF0ZCHT2KzwwQSIe3bOhLZm0gD4HR1EvP4Guyez27zn8nHO
 DhiA==
X-Gm-Message-State: APjAAAU3C4nq7hdLwdXS2i55VQDQqteowNsrtx+FyFIXJYQxtpXal98B
 /zAHbP4DB9WD20E83Sp58VpUpg==
X-Google-Smtp-Source: APXvYqzP0/gBNZzG2CFRFIE/UkaEI5NjGZqMp4m4/H9NRm7GUMMLKzapx1Z7TocuBDHfZe6TC2ck1g==
X-Received: by 2002:a63:2807:: with SMTP id o7mr35679328pgo.131.1568240337895; 
 Wed, 11 Sep 2019 15:18:57 -0700 (PDT)
Received: from localhost ([49.248.179.160])
 by smtp.gmail.com with ESMTPSA id r13sm2806843pgp.63.2019.09.11.15.18.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 11 Sep 2019 15:18:57 -0700 (PDT)
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
Subject: [PATCH 1/4] arm64: Kconfig: Fix XGENE driver dependencies
Date: Thu, 12 Sep 2019 03:48:45 +0530
Message-Id: <f6cefef2bf6b34ec6eb82d3614054734fa5e8dd1.1568239378.git.amit.kucheria@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1568239378.git.amit.kucheria@linaro.org>
References: <cover.1568239378.git.amit.kucheria@linaro.org>
In-Reply-To: <cover.1568239378.git.amit.kucheria@linaro.org>
References: <cover.1568239378.git.amit.kucheria@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_151858_723341_A016F9A4 
X-CRM114-Status: GOOD (  14.19  )
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
Cc: linux-gpio@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-pci@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Push various XGENE drivers behind ARCH_XGENE dependency so that it
doesn't get enabled by default on other platforms.

Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
---
 arch/arm64/Kconfig.platforms   | 3 +++
 drivers/clk/Kconfig            | 2 +-
 drivers/gpio/Kconfig           | 1 +
 drivers/pci/controller/Kconfig | 1 +
 drivers/phy/Kconfig            | 1 +
 drivers/power/reset/Kconfig    | 2 +-
 6 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
index 4778c775de1b..cdf4e452e34c 100644
--- a/arch/arm64/Kconfig.platforms
+++ b/arch/arm64/Kconfig.platforms
@@ -281,6 +281,9 @@ config ARCH_VULCAN
 
 config ARCH_XGENE
 	bool "AppliedMicro X-Gene SOC Family"
+	select COMMON_CLK_XGENE
+	select PCI_XGENE
+	select GPIO_XGENE
 	help
 	  This enables support for AppliedMicro X-Gene SOC Family
 
diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
index 801fa1cd0321..9b2790d3f18a 100644
--- a/drivers/clk/Kconfig
+++ b/drivers/clk/Kconfig
@@ -225,7 +225,7 @@ config CLK_QORIQ
 
 config COMMON_CLK_XGENE
 	bool "Clock driver for APM XGene SoC"
-	default ARCH_XGENE
+	depends on ARCH_XGENE
 	depends on ARM64 || COMPILE_TEST
 	---help---
 	  Sypport for the APM X-Gene SoC reference, PLL, and device clocks.
diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index bb13c266c329..072c749c5c1f 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -580,6 +580,7 @@ config GPIO_VX855
 
 config GPIO_XGENE
 	bool "APM X-Gene GPIO controller support"
+	depends on ARCH_XGENE
 	depends on ARM64 && OF_GPIO
 	help
 	  This driver is to support the GPIO block within the APM X-Gene SoC
diff --git a/drivers/pci/controller/Kconfig b/drivers/pci/controller/Kconfig
index fe9f9f13ce11..44699f45784f 100644
--- a/drivers/pci/controller/Kconfig
+++ b/drivers/pci/controller/Kconfig
@@ -112,6 +112,7 @@ config PCIE_XILINX
 config PCI_XGENE
 	bool "X-Gene PCIe controller"
 	depends on ARM64 || COMPILE_TEST
+	depends on ARCH_XGENE
 	depends on OF || (ACPI && PCI_QUIRKS)
 	help
 	  Say Y here if you want internal PCI support on APM X-Gene SoC.
diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
index 0263db2ac874..7c5eefecdabd 100644
--- a/drivers/phy/Kconfig
+++ b/drivers/phy/Kconfig
@@ -44,6 +44,7 @@ config PHY_PISTACHIO_USB
 
 config PHY_XGENE
 	tristate "APM X-Gene 15Gbps PHY support"
+	depends on ARCH_XGENE
 	depends on HAS_IOMEM && OF && (ARM64 || COMPILE_TEST)
 	select GENERIC_PHY
 	help
diff --git a/drivers/power/reset/Kconfig b/drivers/power/reset/Kconfig
index a564237278ff..651b763f80cd 100644
--- a/drivers/power/reset/Kconfig
+++ b/drivers/power/reset/Kconfig
@@ -181,7 +181,7 @@ config POWER_RESET_VEXPRESS
 
 config POWER_RESET_XGENE
 	bool "APM SoC X-Gene reset driver"
-	depends on ARM64
+	depends on ARCH_XGENE && ARM64
 	help
 	  Reboot support for the APM SoC X-Gene Eval boards.
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
