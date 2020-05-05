Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F571C5AA0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 17:09:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=o88WTzBcvnoUYnEZb2x95o/Ac50sJeLLsahEYSuC3g8=; b=UZhIzwuhHOgwaZRXgx4iIXgruN
	KrM4h5KFwkXuHppT/rqpTu4H8LCjKZSBXGml0q5dL6LpUEISzVPqB09ey75yMO+jhCckk5do+bm+H
	2UxPnbbf6NbLjZ2ITeG0wpwV3iyAIme5flb3gdzEFR8TJlbRtUGVA6O+GSrqvQtYq2afl4la+TJ9H
	t/Lf+nXB3vQ1S/O2vDekijRzTD/aVNzk7G0wUgUiZZLvPKRzlFyLfLgkhsGswUudbWEtL7PRiuTow
	F02Kt/HlCiBTo0GnG0WJid8wkuKOCJLG8aEmfBbBwq5seB8WEMrXwu4aLcuGgbppuQUvJPIWOV1Qc
	jqDBnInA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVzCf-0000Qw-CW; Tue, 05 May 2020 15:09:49 +0000
Received: from xavier.telenet-ops.be ([2a02:1800:120:4::f00:14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVzAY-0006jD-7j
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 15:07:42 +0000
Received: from ramsan ([IPv6:2a02:1810:ac12:ed60:bd97:8453:3b10:1832])
 by xavier.telenet-ops.be with bizsmtp
 id b37T2200V3VwRR30137TZR; Tue, 05 May 2020 17:07:28 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jVzAN-00028H-R1; Tue, 05 May 2020 17:07:27 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jVzAN-0000Qj-Pc; Tue, 05 May 2020 17:07:27 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: soc@kernel.org
Subject: [PATCH v2 07/15] ARM: clps711x: Drop unneeded select of
 multi-platform selected options
Date: Tue,  5 May 2020 17:07:14 +0200
Message-Id: <20200505150722.1575-8-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505150722.1575-1-geert+renesas@glider.be>
References: <20200505150722.1575-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_080738_421393_7C343698 
X-CRM114-Status: UNSURE (   7.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:14 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Arnd Bergmann <arnd@arndb.de>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Kevin Hilman <khilman@kernel.org>, linux-kernel@vger.kernel.org,
 Alexander Shiyan <shc_work@mail.ru>, Olof Johansson <olof@lixom.net>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Support for Cirrus Logic EP721x/EP731x-based SoCs depends on
ARCH_MULTI_V7, and thus on ARCH_MULTIPLATFORM.
As the latter selects AUTO_ZRELADDR, TIMER_OF, COMMON_CLK,
GENERIC_CLOCKEVENTS, and USE_OF, there is no need for ARCH_CLPS711X to
select any of them.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Alexander Shiyan <shc_work@mail.ru>
Acked-by: Arnd Bergmann <arnd@arndb.de>
---
v2:
  - Add Acked-by.
---
 arch/arm/mach-clps711x/Kconfig | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/arm/mach-clps711x/Kconfig b/arch/arm/mach-clps711x/Kconfig
index fc9188b54dd66a74..314de9477b84989e 100644
--- a/arch/arm/mach-clps711x/Kconfig
+++ b/arch/arm/mach-clps711x/Kconfig
@@ -2,15 +2,10 @@
 menuconfig ARCH_CLPS711X
 	bool "Cirrus Logic EP721x/EP731x-based"
 	depends on ARCH_MULTI_V4T
-	select AUTO_ZRELADDR
-	select TIMER_OF
 	select CLPS711X_TIMER
-	select COMMON_CLK
 	select CPU_ARM720T
-	select GENERIC_CLOCKEVENTS
 	select GPIOLIB
 	select MFD_SYSCON
 	select OF_IRQ
-	select USE_OF
 	help
 	  Select this if you use ARMv4T Cirrus Logic chips.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
