Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E45ACD3221
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 22:33:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7KD+eKKxjZKdbq4xukEEu0M3gujVYnd9mxWac/5C0VA=; b=Yrt5v7pXviN/rW
	K236GJHZ761CXHjlxsVw0PwpXQM5ZilPL21c8WRjjt3768h5CrHrbPzz3Y14oL9Apa9SJ233XAVcA
	r7NvJSETrxYBUUKooJ/erEdo26EotsS4ww+Dq3/kqjSRrZ7XO3OKPO5IbqwbCGUpEy5eAePaIaO9O
	XGPQoqNsXhwiCcNUFhKawL/7HyhAhfAyR/qtKlkdE1XfiGASvKlptfU3GMTtlhgNtBqKZVyjBVOY6
	tlA90tsWtupsdYIRfR7i5LzIojAub0CybtrMRDISbrdrFS3nGoROUmFlblMj+O41pmNsxDdURRbug
	vJGPLvCLSF0LVdF2YDYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIf7g-0002tQ-Tj; Thu, 10 Oct 2019 20:33:20 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIf7X-0002t6-9l
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 20:33:12 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MzkK9-1hwIm602W9-00vgsN; Thu, 10 Oct 2019 22:33:03 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Kukjin Kim <kgene@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH 06/36] ARM: samsung: move CONFIG_DEBUG_S3C_UART to
 Kconfig.debug
Date: Thu, 10 Oct 2019 22:29:50 +0200
Message-Id: <20191010203043.1241612-6-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191010203043.1241612-1-arnd@arndb.de>
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:VmHDwku6i4VFjARXnLpCnVfD1UydvgapREzXhkJu6fdnoPO6rGu
 wYNUVRWspbYvsxlJp6FrcEsKsYXxN3QY10wAjgP+Q+GpOa8M78RLLLgVXBRpwKxB7nuFrT5
 m8BNvREHqKlmoiI+7tmh6PYfqdVQC4WbmJm61FLBpeqopAU09S4pH+sNtF4zKqhSqS99Xk7
 XETf6ONqXOzE5fohLQDsg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:syw+MREByLs=:yac/rd2RcuQULIkRgyTTBo
 c+o1mKThTiyRhSdrr6qj5jCq0IsmzixGLCkiNO/dhMmPRSmIurHIxL6kec769amngCLt6PbtS
 boTNDNG6d/rg+51TYiHYvNkNpB0s1RHaYhTRYWraq4VSjMTJMA6Av/TbF8iV/3zfiZz/OM4RM
 +Apn5+/gZKOPySfwFFMU2FFNHOSAf9bQHSD++6L6/lWZbXrDh+Ra+ld5OmINnwPh6XwXD2YKf
 YV1zXsJBhFXIpQIWLjQPfsSFamHDvGFPZcCztCwI0k4uANXziPuoPavP9ksEDWDRCRRakRPt+
 5AA5UQVfsL71mHQUSQ9S3cBwiuv9SzPab9sPtA38yIdE14y6Ui1h58DVgu9e6ou+mRo9PNpBs
 wPPy4TA+B9op+XSHi3IRYGL3Sk7Nm0ZGMOE1CsOS2QnjeFGTo0UA0xwNe8gj7Y51XzhzfdAfM
 babYDy1qVE5INVd0Xz9FiLe++3wKG9e7BBxc4yurfxzKNgpfgXpqY1freUuNn26dTaGqTnA8G
 g5Wdkjt0d1RwGJ7LXZ/BjTqUHKrpLOuOOmJOPfxq7q1MDAWavY84Slr8ijB3iLs9oSjwXdkDn
 sZYV2ne5dtJEdL4JKOvxxKOTwLAmjmzMzm9Ynx70ZSkbk4YsbjXUXGxrl5VJmluMYWF8oJwyC
 EkkqiGMlYoEkEzjwBk1r0uOZZKzPr0w5GntVdWskV3IjPeIF2YoJsIfKxrkz56PXYZUPS+wre
 RHAlhkcjD/rMh5uoHSONiLVpxb11mY9mpF4wEE675fqAHATgjm0LtjzIE9A14Phnj/Q29/PNc
 jcRW0KAEooAEgAm7080BbxrMJ/z7lhoQkmvda4IB4aGcM1tE6WK2ye2hiF9LCMgmwuErCohd0
 SNtANEAe5rYehMohjGCQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_133311_632381_1F127433 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-samsung-soc@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, Olof Johansson <olof@lixom.net>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Before we can plat-samsung from the individual platforms,
this one has to get moved to a place where it remains
accessible.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/Kconfig.debug        | 10 ++++++++++
 arch/arm/plat-samsung/Kconfig |  8 --------
 2 files changed, 10 insertions(+), 8 deletions(-)

diff --git a/arch/arm/Kconfig.debug b/arch/arm/Kconfig.debug
index 8bcbd0cd739b..d05b836dfeb2 100644
--- a/arch/arm/Kconfig.debug
+++ b/arch/arm/Kconfig.debug
@@ -1464,6 +1464,16 @@ config DEBUG_S3C64XX_UART
 config DEBUG_S5PV210_UART
 	bool
 
+config DEBUG_S3C_UART
+	depends on DEBUG_S3C2410_UART || DEBUG_S3C24XX_UART || \
+		   DEBUG_S3C64XX_UART ||  DEBUG_S5PV210_UART || \
+		   DEBUG_EXYNOS_UART
+	int
+	default "0" if DEBUG_S3C_UART0
+	default "1" if DEBUG_S3C_UART1
+	default "2" if DEBUG_S3C_UART2
+	default "3" if DEBUG_S3C_UART3
+
 config DEBUG_OMAP2PLUS_UART
 	bool
 	depends on ARCH_OMAP2PLUS
diff --git a/arch/arm/plat-samsung/Kconfig b/arch/arm/plat-samsung/Kconfig
index 301e572651c0..832ab0e6cd72 100644
--- a/arch/arm/plat-samsung/Kconfig
+++ b/arch/arm/plat-samsung/Kconfig
@@ -296,13 +296,5 @@ config SAMSUNG_WDT_RESET
 	  Compile support for system restart by triggering watchdog reset.
 	  Used on SoCs that do not provide dedicated reset control.
 
-config DEBUG_S3C_UART
-	depends on PLAT_SAMSUNG
-	int
-	default "0" if DEBUG_S3C_UART0
-	default "1" if DEBUG_S3C_UART1
-	default "2" if DEBUG_S3C_UART2
-	default "3" if DEBUG_S3C_UART3
-
 endmenu
 endif
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
