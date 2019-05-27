Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E61472B887
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 17:43:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=o/icpkvQUuJumebpPwqXFhG/d2FjVR9W2GvfHt8SdO0=; b=jdzKnc9KHNvvhi
	aBME+fMkwDygBT+LKxoJfH+/TBErBEaFoOhyxMGUX5xVlabLHkY+OTC4c4Izwca911k2QsrDGrh4B
	5C/9S7pVaiQT5Xk4efGLYlon2J4Hplx53Xrx77Qo9FM+DnZP2+mBrL2Whajrn2QZc5Ry3f7EYwLo8
	yIRknZyu3F0SfCmuB0Oy8Rx6VF/yBV/BKEEQFqqUSkVZWCEs4+yZBypiEX0uXS5JZEfHA/LL3d3Sp
	gOyJvivpy2ktBKD1ViYVWn5RYYcp3P0zXnCMOdgIV1aOM96kHBB4VoqZK5NsV4HGovjZP3uYyY8VV
	s0ujGiuu1pEZRIRsHaBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVHmc-0004Mf-U9; Mon, 27 May 2019 15:43:30 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVHmW-0004MI-Ee
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 15:43:26 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 09FBBD7F50AFF74571AC
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 23:43:19 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS413-HUB.china.huawei.com (10.3.19.213) with Microsoft SMTP Server id
 14.3.439.0; Mon, 27 May 2019 23:43:10 +0800
From: Kefeng Wang <wangkefeng.wang@huawei.com>
To: Wei Xu <xuwei5@hisilicon.com>
Subject: [PATCH] ARM: hisi: drop useless depend on ARCH_MULTI_V7
Date: Mon, 27 May 2019 23:51:28 +0800
Message-ID: <20190527155128.192006-1-wangkefeng.wang@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_084324_824046_98C9A4AB 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Kefeng Wang <wangkefeng.wang@huawei.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The ARCH_HISI depends on ARCH_MULTI_V7, no need to add this depend
to each sub-menu config, and use tabs where possible.

Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>
---
 arch/arm/mach-hisi/Kconfig | 16 ++++++----------
 1 file changed, 6 insertions(+), 10 deletions(-)

diff --git a/arch/arm/mach-hisi/Kconfig b/arch/arm/mach-hisi/Kconfig
index 98338a489921..3b010fe7c0e9 100644
--- a/arch/arm/mach-hisi/Kconfig
+++ b/arch/arm/mach-hisi/Kconfig
@@ -15,7 +15,6 @@ menu "Hisilicon platform type"
 
 config ARCH_HI3xxx
 	bool "Hisilicon Hi36xx family"
-	depends on ARCH_MULTI_V7
 	select CACHE_L2X0
 	select HAVE_ARM_SCU if SMP
 	select HAVE_ARM_TWD if SMP
@@ -25,17 +24,15 @@ config ARCH_HI3xxx
 	  Support for Hisilicon Hi36xx SoC family
 
 config ARCH_HIP01
-       bool "Hisilicon HIP01 family"
-       depends on ARCH_MULTI_V7
-       select HAVE_ARM_SCU if SMP
-       select HAVE_ARM_TWD if SMP
-       select ARM_GLOBAL_TIMER
-       help
-         Support for Hisilicon HIP01 SoC family
+	bool "Hisilicon HIP01 family"
+	select HAVE_ARM_SCU if SMP
+	select HAVE_ARM_TWD if SMP
+	select ARM_GLOBAL_TIMER
+	help
+	  Support for Hisilicon HIP01 SoC family
 
 config ARCH_HIP04
 	bool "Hisilicon HiP04 Cortex A15 family"
-	depends on ARCH_MULTI_V7
 	select ARM_ERRATA_798181 if SMP
 	select HAVE_ARM_ARCH_TIMER
 	select MCPM if SMP
@@ -46,7 +43,6 @@ config ARCH_HIP04
 
 config ARCH_HIX5HD2
 	bool "Hisilicon X5HD2 family"
-	depends on ARCH_MULTI_V7
 	select CACHE_L2X0
 	select HAVE_ARM_SCU if SMP
 	select HAVE_ARM_TWD if SMP
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
