Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 343BABE59B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 21:23:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9nFIwzB8U4Ksw6yeZ4cODkCW9dMtSjy9MHRgwRP+BMQ=; b=taZFLykwVGRDwK
	Fkc8ZF+l/UeTlu6juBpy8ZCDuEvVN0LBKx5ji0hbZNQK3UDvA2Mc7FY9IF1ROdjg59CTW0HajS4U5
	fknP7HFsOc0Zc1P3chK78Jl1/SLHke4voVh0Mx9udby7Cg608b4U17xOLIaaJjXds21XUYxg3esgc
	DiTIPnBPc6N38TEuhyAxt4c/ar1ggv4WIMw9zWK06uDOUqcBdj3GKK5owY+qXJGbdw4LhZddwhjvs
	56Dfjwd35ywNwkb/IH+fdUAVwZXNyQG/nmvu/qLm3Gcgz+OBxhS3kelnXNv/DBiY/Mj1nLYXHCiLh
	WNayRZwl9y7abGGRFvFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDCsb-00063e-JX; Wed, 25 Sep 2019 19:23:13 +0000
Received: from atlmailgw2.ami.com ([63.147.10.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDCry-0005d2-1O
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 19:22:35 +0000
X-AuditID: ac10606f-371ff7000000187d-cf-5d8bbe782d8d
Received: from atlms1.us.megatrends.com (atlms1.us.megatrends.com
 [172.16.96.144])
 (using TLS with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by atlmailgw2.ami.com (Symantec Messaging Gateway) with SMTP id
 8B.7C.06269.87EBB8D5; Wed, 25 Sep 2019 15:22:33 -0400 (EDT)
Received: from hongweiz-Ubuntu-AMI.us.megatrends.com (172.16.98.93) by
 atlms1.us.megatrends.com (172.16.96.144) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Wed, 25 Sep 2019 15:22:32 -0400
From: Hongwei Zhang <hongweiz@ami.com>
To: Andrew Jeffery <andrew@aj.id.au>, Linus Walleij
 <linus.walleij@linaro.org>, <linux-gpio@vger.kernel.org>, Joel Stanley
 <joel@jms.id.au>
Subject: [v2, 2/2] gpio: dts: aspeed: Add SGPIO driver
Date: Wed, 25 Sep 2019 15:22:17 -0400
Message-ID: <1569439337-10482-3-git-send-email-hongweiz@ami.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569439337-10482-1-git-send-email-hongweiz@ami.com>
References: <1569439337-10482-1-git-send-email-hongweiz@ami.com>
MIME-Version: 1.0
X-Originating-IP: [172.16.98.93]
X-Brightmail-Tracker: H4sIAAAAAAAAA02RbUhTYRzFee69u7vOZtcl9KAlNXoBU1cS+ZAhToge+hB+jMj0khcdTSeb
 zSzKZfm2wsSXcmO+pA5hDcJJFMuVThFdw2XiUhEJliUI6jSTmlJtM/DbOZzfOf8Pf4aU9FKx
 jKKohFcXcUopLaKsbG59Utm7R9knvw1GItNLK43skwz6s/oWoM33RgHabhgRogqni0Y/Wl0U
 ah8eF6CAZ5tETVs9BLL5vAL04MU4ifratwCatJto5Gx2AGT+PEGglbVaAlU6hoVouklHI8f8
 OsiIwVPVdiG2tlkBnvROkDjwuwHglelKIZ7wj5DYZqml8Zy3n8ajLQEK13cOANzXXY49Lc8B
 3r6/IcSjzzYpvG6Lz9p7RXQuj1cqtLxalp4rKvB4N6jiMdEtz8NEHZhj9CCCgexpuNBdIdQD
 ESNh7QRc9nTRYTMEYG/1FBmkaPYYdPSZiGAQwz4BsMPUGjIk+0oAXw9UCILUPvYMNLc8FQY1
 xR6F024zFdRiNgMON8yA8L14ODNeG1qNYOXQ0zYf0pJ/jN0Q2OGj4Zjha0iTLISDi4s7zEE4
 6/QR4Z1D8Hudj6oHrHFXxbir0gEIC5BwJcpCTqHML01J5goVyddVhTYQfqvqDfD7U52AYIAT
 QIaUxoiNB/TZEnEeV3abV6ty1DeVvMYJ4hhKul9ssf68KmHzuRL+Bs8X8+r/KcFExOqA8/D5
 Dm90naa8332pK3J51W2W5nRlx8ma5XeSfLNnldfSopaOpMusjaqeqONVinsfOf1FLNqqTlvU
 DiYuRV0wDWldVaWGtSr5ngFfZmfjgqxc+0knycvMYg0fEmpS/MZfkr2+mhPypbtpbaYsl/my
 xa1LVX7Jly5bimLrHkspTQF3KoFUa7i/wVaWXMQCAAA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_122234_169878_8B0B1440 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [63.147.10.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, linux-aspeed@lists.ozlabs.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Doug Anderson <armlinux@m.disordat.com>,
 Andrew Morton <akpm@linux-foundation.org>, Hongwei Zhang <hongweiz@ami.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add SGPIO driver support for Aspeed AST2500 SoC.

Signed-off-by: Hongwei Zhang <hongweiz@ami.com>
---
 drivers/gpio/Kconfig             |  8 ++++++++
 drivers/gpio/Makefile            |  1 +

diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index bb13c26..e94f903 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -120,6 +120,14 @@ config GPIO_ASPEED
 	help
 	  Say Y here to support Aspeed AST2400 and AST2500 GPIO controllers.
 
+config SGPIO_ASPEED
+	bool "Aspeed SGPIO support"
+	depends on (ARCH_ASPEED || COMPILE_TEST) && OF_GPIO
+	select GPIO_GENERIC
+	select GPIOLIB_IRQCHIP
+	help
+	  Say Y here to support Aspeed AST2500 SGPIO functionality.
+
 config GPIO_ATH79
 	tristate "Atheros AR71XX/AR724X/AR913X GPIO support"
 	default y if ATH79
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index a4e9117..bebbd82 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -32,6 +32,7 @@ obj-$(CONFIG_GPIO_AMD_FCH)		+= gpio-amd-fch.o
 obj-$(CONFIG_GPIO_AMDPT)		+= gpio-amdpt.o
 obj-$(CONFIG_GPIO_ARIZONA)		+= gpio-arizona.o
 obj-$(CONFIG_GPIO_ASPEED)		+= gpio-aspeed.o
+obj-$(CONFIG_SGPIO_ASPEED)		+= sgpio-aspeed.o
 obj-$(CONFIG_GPIO_ATH79)		+= gpio-ath79.o
 obj-$(CONFIG_GPIO_BCM_KONA)		+= gpio-bcm-kona.o
 obj-$(CONFIG_GPIO_BD70528)		+= gpio-bd70528.o
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
