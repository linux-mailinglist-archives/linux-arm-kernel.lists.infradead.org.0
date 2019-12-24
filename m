Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD6A12A42B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 22:11:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=PIGX0MHhUnbDTAtpeeeL9D3PyP3NMwA0TcEFkixYMSc=; b=K1B
	Q75syKAvXcLMThUW99OCx/0xe3RgYycWPULkEnfRKerZu98iOSO/cPNDw73L/yh6qE05Zdva3stl/
	UHYJRVysHJFBkXPvm2yE4+x67VX8H+bQ76qK9kYd9FyW7QRBaF2xlXiY0FfTejASubie9GsWRuwjV
	tGy3aOjBI13N4YHRFjHIJTIDeUlXAOLZ6TR6rWTBdzTs8ouY4G3DOrulshSjUN4iNLDsg7r+MGQ8i
	RzpuiD9hsgxRLe4iRjq85NSqbH15nZo0Y4UbXqurVXf3s5i3CibTIruuNPqBfpheHp7WYEmVPV8WN
	OUU4ebLWmIOl9HSUjLIw2JWzWPKt6gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijrSo-0002Pm-VO; Tue, 24 Dec 2019 21:11:34 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijrSg-0002P8-Cc
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 21:11:27 +0000
Received: by mail-pj1-x1041.google.com with SMTP id a6so1605371pjh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Dec 2019 13:11:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=ZiIq+ODPkbmk3OovkgYvNLseu4fXK344aj0AC+jChpw=;
 b=RY6Z8gse4WXDdfZUdueg1YmV1qD/5ihmI7srcNXb/Yp7J/HxRn36oJWbCpXvJValW8
 fX0pql5BS3/8FxAI0eTafuTOqUE2F2Pj/AfS/fjTSfJJ/xA/Qc5JCCWjv2NZpqvfp1R1
 sh0HxjoxwLciBEgdmw9V8/K15LNahSLMjAzi28nSEbbPi3Mr0L8xbwtP/6MsK6q0Smsg
 SsYBgEDd8V+o91ROgm5nfGt8Gfltntiz3OoM4/F55FXXbDOKUTaXcZMFaYzG/Nu3vTIj
 H5XJA+lCN19m0kVswZuqNme/LBmDnjGQnT4FBEH9EZPxKPzMw104P3QGdDNKDqjlVp93
 kEmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ZiIq+ODPkbmk3OovkgYvNLseu4fXK344aj0AC+jChpw=;
 b=WmkPAoXISMOZHieYZbrNL5dXYesRwf7370rJ/hBgKnIx3KFG2imzJYk8oiZa/Xoix5
 juvcE98Sgn3uApFr9/8AQHu8QiV0nvRUGah8hAMg7/iW5gberL+TvQmt/E1Nv29AHfxb
 bPmiSXN86b0KmIBVXMbqCB69hlbW2BmnbEnvgVFKphUTHv0tusk6tJiSnUkrkyfytGf6
 91K35XVemB34E/sYmYzHAoL2/zVgqDB609onqHWXWIKTveWYa3hO6CCd3swDN0aJYoPl
 +4C6ZlKfAitepVlr2bM/tgEyoPKhTr0cjAAFbGKfqyh30c5y8mchqPxdXLqDwpLaId2Q
 BNtw==
X-Gm-Message-State: APjAAAUBoqKqVY7unVgQyVabGzlIKf6700nopRuKp5dPu9oGHmKFRiq5
 H3zc2Qwkwoi2+cRZwzd6cxo=
X-Google-Smtp-Source: APXvYqz/C+9WgC+V/KEVMJDIBQxjgDS5AWjMUU0pMEE5lxF1QcLlKmnkbJUos6rMHuo0uN5S7XR9Zw==
X-Received: by 2002:a17:902:bb8c:: with SMTP id
 m12mr38370736pls.320.1577221885159; 
 Tue, 24 Dec 2019 13:11:25 -0800 (PST)
Received: from localhost.localdomain ([211.243.117.64])
 by smtp.gmail.com with ESMTPSA id r28sm27021199pgk.39.2019.12.24.13.11.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Dec 2019 13:11:24 -0800 (PST)
From: Hyunki Koo <hyunki00.koo@gmail.com>
To: 
Subject: [PATCH] irqchip: define EXYNOS_IRQ_COMBINER
Date: Wed, 25 Dec 2019 06:11:07 +0900
Message-Id: <20191224211108.7128-1-hyunki00.koo@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_131126_453427_42E7CB50 
X-CRM114-Status: GOOD (  14.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hyunki00.koo[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-samsung-soc@vger.kernel.org, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-kernel@vger.kernel.org,
 Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>, Hyunki Koo <hyunki00.koo@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Hyunki Koo <hyunki00.koo@samsung.com>

This patch is written to clean up dependency of ARCH_EXYNOS
Not all exynos device have IRQ_COMBINER, especially aarch64 EXYNOS
but it is built for all exynos devices.
Thus add the config for EXYNOS_IRQ_COMBINER
remove direct dependency between ARCH_EXYNOS and exynos-combiner.c
and only selected on the aarch32 devices

Signed-off-by: Hyunki Koo <hyunki00.koo@samsung.com>
---
 arch/arm/mach-exynos/Kconfig | 1 +
 drivers/irqchip/Kconfig      | 7 +++++++
 drivers/irqchip/Makefile     | 2 +-
 3 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-exynos/Kconfig b/arch/arm/mach-exynos/Kconfig
index 4ef56571145b..6e7f10c8098a 100644
--- a/arch/arm/mach-exynos/Kconfig
+++ b/arch/arm/mach-exynos/Kconfig
@@ -12,6 +12,7 @@ menuconfig ARCH_EXYNOS
 	select ARCH_SUPPORTS_BIG_ENDIAN
 	select ARM_AMBA
 	select ARM_GIC
+	select EXYNOS_IRQ_COMBINER
 	select COMMON_CLK_SAMSUNG
 	select EXYNOS_ASV
 	select EXYNOS_CHIPID
diff --git a/drivers/irqchip/Kconfig b/drivers/irqchip/Kconfig
index ba152954324b..4c774d85375b 100644
--- a/drivers/irqchip/Kconfig
+++ b/drivers/irqchip/Kconfig
@@ -499,4 +499,11 @@ config SIFIVE_PLIC
 
 	   If you don't know what to do here, say Y.
 
+config EXYNOS_IRQ_COMBINER
+	bool "Samsung Exynos IRQ combiner support" if COMPILE_TEST
+	depends on (ARCH_EXYNOS && ARM) || COMPILE_TEST
+	help
+	  Say yes here to add support for the IRQ combiner devices embedded
+	  in Samsung Exynos chips.
+
 endmenu
diff --git a/drivers/irqchip/Makefile b/drivers/irqchip/Makefile
index e806dda690ea..60d7c7260fc3 100644
--- a/drivers/irqchip/Makefile
+++ b/drivers/irqchip/Makefile
@@ -9,7 +9,7 @@ obj-$(CONFIG_ARCH_BCM2835)		+= irq-bcm2835.o
 obj-$(CONFIG_ARCH_BCM2835)		+= irq-bcm2836.o
 obj-$(CONFIG_DAVINCI_AINTC)		+= irq-davinci-aintc.o
 obj-$(CONFIG_DAVINCI_CP_INTC)		+= irq-davinci-cp-intc.o
-obj-$(CONFIG_ARCH_EXYNOS)		+= exynos-combiner.o
+obj-$(CONFIG_EXYNOS_IRQ_COMBINER)	+= exynos-combiner.o
 obj-$(CONFIG_FARADAY_FTINTC010)		+= irq-ftintc010.o
 obj-$(CONFIG_ARCH_HIP04)		+= irq-hip04.o
 obj-$(CONFIG_ARCH_LPC32XX)		+= irq-lpc32xx.o
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
