Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 437BC1E4001
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 13:27:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5UAtiLkE6kzGzxj/xugWQZeDGVsvDui4wq/+Xkd0xVU=; b=FsNEozll3On1FS
	UHwkpSVljXxJxvJScO7UYpeDVuRoCoS0Vmc0Qgsohe90DCX5gSLkU/tm+Aya1StYsuAQt/+JYLcMh
	Hqp7HU6KeC2gILzbHWXvxsAw9kTFHcdjLJpS4bWf+Q0E+JvpOaJFyt0qeC6pocyDOI5F7rOHaHG3N
	FIe/Rb4/kdG8Y5LGMcpCMvpe4hVYEtPX+s7Rtxv5W8r8sjYkORRl5gijgwDykj33JiZl4o908AHSG
	IS8AgHS86KOdFhZ4VS6V6ovqvZzxqyeCcMxbT0WpJOBJ8EVlVuUc6ZaFzfEAvphyX58PhHu0mxBid
	DOHlGoA8BSOG69xWWYKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jduDt-0004h9-3w; Wed, 27 May 2020 11:27:49 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jduCg-0003my-Qk
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 11:26:36 +0000
Received: by mail-lf1-x143.google.com with SMTP id 202so14239707lfe.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 04:26:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7O70g2lJGWAJBSxv7+BPv+EgaUlJHCXJMM3QrFbfLoU=;
 b=XsUGywVbPPu2a5crGLJmxPTCsuzR0OuIQ+aBzOOBv++1v3NKjBLrrjSSZcDpiYN0qf
 Dqa0KgBDDL2GMXstARbs0S3GGlmSB6moGoADwt2Gf9llGEkgAQoEEbIxpiCeugl/wXdJ
 1Y7er1GA02R3sgkVvwl7nNkN/XKDaMMP9Wjvt0SWx7XmF54qZM7DmAzM4MJwI1dZ8eli
 ASI8yK3ag/j5xU4oDjT5/oP5EaLGYEpesbrFqrn6AVy/NiIea1s2hRKTrr2EHjKvVfgG
 4J+BYiAZgDrSD/C3CkWmD+A/yT8MjSYIMj7StC2bFYg9auoVk0KpMirlMocizL+A561/
 0/0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7O70g2lJGWAJBSxv7+BPv+EgaUlJHCXJMM3QrFbfLoU=;
 b=uQ7HxapyM8ceVg8goWr79jhdq8/WihbnQYQi+7M4Hrfh7iqUPP5ehOk3yaHhR1D/8H
 SfYg0fdJbT/01DHMhASEII8nFabVUHUfhJv6qNY+W9k7Iom6vmLCRRVAtn75UOY/vfwr
 Bb0BkN9a+kjdzxILIsdVhEoGGI3EOYI7n04bp9c54W6ENBUlsjc8JLRhAg7eJ2blkfR3
 C1pEyPTHI/DiUtlq/mdpwH1NgU5DaQHulea6Rasb3b+VfpdOrl7ZNgy42y+2HcqGavxR
 YlYKDUIqWvv0GF93AbgjGBD7O/xQ9jZBeYZeBYlQUE06PuZ0qeR29+KbYrYvRPUNebrF
 3gEg==
X-Gm-Message-State: AOAM5332pWeWiauQ0v5gkX4z3QYJZR44rzRLJNv29ON4aEE7e1uc2gad
 aFW4lpje+hDKXToM0MV/EYQiARxKxfs=
X-Google-Smtp-Source: ABdhPJxqhuM7NA8BFMzydGM+AFjiGQCKOMTJMKG2dfNheWXSg5exJmnEkRYX48DfquyDmwLY2gQZtQ==
X-Received: by 2002:ac2:5604:: with SMTP id v4mr2364028lfd.124.1590578792196; 
 Wed, 27 May 2020 04:26:32 -0700 (PDT)
Received: from localhost (c-8c28e555.07-21-73746f28.bbcust.telenor.se.
 [85.229.40.140])
 by smtp.gmail.com with ESMTPSA id n22sm627557ljj.138.2020.05.27.04.26.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 04:26:31 -0700 (PDT)
From: Anders Roxell <anders.roxell@linaro.org>
To: soc@kernel.org
Subject: [PATCH 5/5] power: vexpress: make the reset driver a module
Date: Wed, 27 May 2020 13:26:08 +0200
Message-Id: <20200527112608.3886105-6-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200527112608.3886105-1-anders.roxell@linaro.org>
References: <20200527112608.3886105-1-anders.roxell@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_042634_878428_D2CF8F88 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: robh@kernel.org, linus.walleij@linaro.org,
 Anders Roxell <anders.roxell@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Today the vexpress power driver can only be builtin.  Rework so it's
possible for the vexpress power driver to be a module.

Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
---
 arch/arm/mach-vexpress/Kconfig          |  1 -
 drivers/power/reset/Kconfig             |  5 +++--
 drivers/power/reset/vexpress-poweroff.c | 12 +++++++++++-
 3 files changed, 14 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-vexpress/Kconfig b/arch/arm/mach-vexpress/Kconfig
index 065e12991663..4b54d8cf897d 100644
--- a/arch/arm/mach-vexpress/Kconfig
+++ b/arch/arm/mach-vexpress/Kconfig
@@ -15,7 +15,6 @@ menuconfig ARCH_VEXPRESS
 	select NO_IOPORT_MAP
 	select PLAT_VERSATILE
 	select POWER_RESET
-	select POWER_RESET_VEXPRESS
 	select POWER_SUPPLY
 	select REGULATOR if MMC_ARMMMCI
 	select REGULATOR_FIXED_VOLTAGE if REGULATOR
diff --git a/drivers/power/reset/Kconfig b/drivers/power/reset/Kconfig
index f07b982c8dff..8468d42b0198 100644
--- a/drivers/power/reset/Kconfig
+++ b/drivers/power/reset/Kconfig
@@ -189,9 +189,10 @@ config POWER_RESET_VERSATILE
 	  reference boards.
 
 config POWER_RESET_VEXPRESS
-	bool "ARM Versatile Express power-off and reset driver"
+	tristate "ARM Versatile Express power-off and reset driver"
 	depends on ARM || ARM64
-	depends on VEXPRESS_CONFIG=y
+	depends on VEXPRESS_CONFIG
+	default VEXPRESS_CONFIG
 	help
 	  Power off and reset support for the ARM Ltd. Versatile
 	  Express boards.
diff --git a/drivers/power/reset/vexpress-poweroff.c b/drivers/power/reset/vexpress-poweroff.c
index 1fdbcbd95fc2..b1eef95132d9 100644
--- a/drivers/power/reset/vexpress-poweroff.c
+++ b/drivers/power/reset/vexpress-poweroff.c
@@ -5,6 +5,7 @@
  */
 
 #include <linux/delay.h>
+#include <linux/module.h>
 #include <linux/notifier.h>
 #include <linux/of.h>
 #include <linux/of_device.h>
@@ -146,4 +147,13 @@ static struct platform_driver vexpress_reset_driver = {
 		.suppress_bind_attrs = true,
 	},
 };
-builtin_platform_driver(vexpress_reset_driver);
+
+static int __init vexpress_reset_init(void)
+{
+	return platform_driver_register(&vexpress_reset_driver);
+}
+module_init(vexpress_reset_init);
+
+MODULE_AUTHOR("Pawel Moll <pawel.moll@arm.com>");
+MODULE_DESCRIPTION("Vexpress reset driver");
+MODULE_LICENSE("GPL v2");
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
