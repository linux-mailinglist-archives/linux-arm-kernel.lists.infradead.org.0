Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79BC4713B1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 10:16:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Gn8Kf50q77Wi3weShQ8clajkk47pWHjHR1Z02bFgDNU=; b=cZtWkljmV8qzfH
	HV9jmYuRuh6guPKe3c0DRNvPpC2YiPrPW4AOoF1Y2tboY2f88X3Fmc4nVO2Qh1qJwrBZpRqmVj0dU
	ZsgXzRxL7svbgdJKC1rWgH2RUE3zTjqpyV2k3qn0P663EoUteYSqDeUlHVx3jK/NI1K69uAcGQZ0p
	tg0Be73IDcyIzIcA7aa9J5qJ8VKtLaV9K5Oxx7YAYr4UD/v+Bm2gO8q5dT0GBiCMnDDBWgDuyTAkz
	9L43sOekXrLzHlgSUFVUynJxGG0Fxd6HSf2ww0EifqV/WntlHdKwMq3qVEoXQrfTFG0PwkoONGZ6o
	vaLuIQCQJRZxWOchyRiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hppxy-0001jC-QA; Tue, 23 Jul 2019 08:16:11 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hppxN-0001cF-Gr
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 08:15:35 +0000
Received: by mail-lj1-x244.google.com with SMTP id h10so40181816ljg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 01:15:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1swu0Kt63oIGION7DNQ5eoKClvR6dgku90pmZMMqN6U=;
 b=mI1L9HbC5H6Rqbe7AmtP4KV3SZjrN7KGCUtR/PuwWyYMnNu4Pnv7ZAgVuMqBM3b6rF
 jkgHxfpwxrwoO34N3li4S5zJkyPxclugFRd+OzI5AiFhy8n3g1/Bge/b4GpGkcUwedX0
 7Fd1JtzJSveTS0AXKZGWVBYt+1/3/gSi9nfMeJvhxZcs2Yd4Y7H01+Fwlpi1dO89jI3q
 NitRLnWHDonvj64V+cDtuVQLmBh31m+SxD6fC4qG5rN93ef6a1yq0u8uuLJwK8QeusJn
 7n3J0n3c+UUS1M8SwW9j2PU2DnWnPIZ9/yPoflkScaVi+8li572mLiTzbmHD5GTbSlFT
 lTbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1swu0Kt63oIGION7DNQ5eoKClvR6dgku90pmZMMqN6U=;
 b=SXey81calLfL8cU3cFW2uK67iq9qW/2UJQGtAF4DSqQEnJpCAJh6gsZnsWyrbTLja2
 jAXqYFdLN4V51u2362h11IgijZD8vRvk9kJ98DFbnO1DAKV3PskEjSC5HlAwxJKJWuXG
 0KNj2Um+qffS5Y2UJ6eZGvaz2NE5nKi6aY9BerNVx7dRgeAtPJ4dF+zICBistur/T/Ki
 Eb0XhBiIb7Yh+FkOUvM9i8XDW8xB2s0k0nY6sLkYeCLx1h/MVPPch3ZKQACzVpIhQ0+A
 JIhrmxA3LaYliqkO3v/8BpUAhPgXdbAROwRkYZUXekVwus0rEV+DSoeGDwSFyerwqmXZ
 fBjg==
X-Gm-Message-State: APjAAAVDd9qUeTxKvY0jISU2veS5YNAQpp99FQSOOvI37WhS2VxYUTpM
 lepplhn+uZX4MJMnS8ll58y7Sw==
X-Google-Smtp-Source: APXvYqyR9V56KX7wEY6cLLs/BmuqCWbN/wNCMgEEMEJQBqyrwteCXj+GD0prRGuz0YBCaP4rq8tRYg==
X-Received: by 2002:a2e:8007:: with SMTP id j7mr39048781ljg.191.1563869731854; 
 Tue, 23 Jul 2019 01:15:31 -0700 (PDT)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id v12sm7881772ljk.22.2019.07.23.01.15.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 01:15:30 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: arm@kernel.org,
	soc@kernel.org
Subject: [PATCH 1/2] ARM: defconfig: u8500: Refresh defconfig
Date: Tue, 23 Jul 2019 10:15:22 +0200
Message-Id: <20190723081523.13079-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_011533_581110_EA86298B 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This refreshes the outdated U8500 defconfig: some options
moved around, PS/2 mouse is no longer default on, crypto
options moved around etc.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ARM SoC folks: please apply this directly for v5.3
---
 arch/arm/configs/u8500_defconfig | 22 ++++++++--------------
 1 file changed, 8 insertions(+), 14 deletions(-)

diff --git a/arch/arm/configs/u8500_defconfig b/arch/arm/configs/u8500_defconfig
index e6b98b6eb88d..215bd3cd6e34 100644
--- a/arch/arm/configs/u8500_defconfig
+++ b/arch/arm/configs/u8500_defconfig
@@ -4,17 +4,9 @@ CONFIG_NO_HZ_IDLE=y
 CONFIG_HIGH_RES_TIMERS=y
 CONFIG_BLK_DEV_INITRD=y
 CONFIG_KALLSYMS_ALL=y
-CONFIG_MODULES=y
-CONFIG_MODULE_UNLOAD=y
-# CONFIG_BLK_DEV_BSG is not set
-CONFIG_PARTITION_ADVANCED=y
 CONFIG_ARCH_U8500=y
-CONFIG_MACH_HREFV60=y
-CONFIG_MACH_SNOWBALL=y
 CONFIG_SMP=y
 CONFIG_NR_CPUS=2
-CONFIG_PREEMPT=y
-CONFIG_AEABI=y
 CONFIG_HIGHMEM=y
 CONFIG_ARM_APPENDED_DTB=y
 CONFIG_ARM_ATAG_DTB_COMPAT=y
@@ -25,6 +17,10 @@ CONFIG_CPU_IDLE=y
 CONFIG_ARM_U8500_CPUIDLE=y
 CONFIG_VFP=y
 CONFIG_NEON=y
+CONFIG_MODULES=y
+CONFIG_MODULE_UNLOAD=y
+# CONFIG_BLK_DEV_BSG is not set
+CONFIG_PARTITION_ADVANCED=y
 CONFIG_NET=y
 CONFIG_PACKET=y
 CONFIG_UNIX=y
@@ -47,7 +43,6 @@ CONFIG_SMSC911X=y
 CONFIG_SMSC_PHY=y
 CONFIG_CW1200=y
 CONFIG_CW1200_WLAN_SDIO=y
-# CONFIG_INPUT_MOUSEDEV_PSAUX is not set
 CONFIG_INPUT_EVDEV=y
 # CONFIG_KEYBOARD_ATKBD is not set
 CONFIG_KEYBOARD_GPIO=y
@@ -126,20 +121,19 @@ CONFIG_NFS_FS=y
 CONFIG_ROOT_NFS=y
 CONFIG_NLS_CODEPAGE_437=y
 CONFIG_NLS_ISO8859_1=y
+CONFIG_CRYPTO_DEV_UX500=y
+CONFIG_CRYPTO_DEV_UX500_CRYP=y
+CONFIG_CRYPTO_DEV_UX500_HASH=y
+CONFIG_CRYPTO_DEV_UX500_DEBUG=y
 CONFIG_PRINTK_TIME=y
 CONFIG_DEBUG_INFO=y
 CONFIG_DEBUG_FS=y
 CONFIG_MAGIC_SYSRQ=y
 CONFIG_DEBUG_KERNEL=y
 # CONFIG_SCHED_DEBUG is not set
-# CONFIG_DEBUG_PREEMPT is not set
 # CONFIG_FTRACE is not set
 CONFIG_DEBUG_USER=y
 CONFIG_CORESIGHT=y
 CONFIG_CORESIGHT_SINK_TPIU=y
 CONFIG_CORESIGHT_SINK_ETBV10=y
 CONFIG_CORESIGHT_SOURCE_ETM3X=y
-CONFIG_CRYPTO_DEV_UX500=y
-CONFIG_CRYPTO_DEV_UX500_CRYP=y
-CONFIG_CRYPTO_DEV_UX500_HASH=y
-CONFIG_CRYPTO_DEV_UX500_DEBUG=y
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
