Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5B8986C78
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 23:32:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GJC8GjARjo6OG/oueZKAP/dLTUESBp+UGFtuVT3bCw4=; b=at8IXcLcfJWWfw
	qHWwXswzpBKqVrNvr1p4C5/Vv5Wj5ce44GXxXJS10dODAy80OTaknJKi7XjGliGMnXBM31b4YkBBC
	bCkdKSoaHWjSK9WISu/jjiH+4pvSioLNlRJcZin82hCFwbssBLpoJ8C9WZ47xC08wiF07+HRoZ4Rd
	P2CAAQuoaUdBdoVNUPBPZHh9vPyNM/i30DTiwSMvNN43UKgVCyJLbjQO4bSbH3wE64pr7Aujz6mC8
	mxpRbNcByXy4uFI9I0nKrOmu4IZkNsmjifOk+GeVwaNsO7qBpDF//0QQeQBFQ2aPWRA9AHff48R6F
	Gx83QIgUhogAU9IP3qPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvq1U-0000op-Fw; Thu, 08 Aug 2019 21:32:36 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvq1L-0000oC-Vu
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 21:32:28 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MHEPI-1i93Qp43sm-00DK8b; Thu, 08 Aug 2019 23:32:04 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Tony Lindgren <tony@atomide.com>, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 11/22] clocksource: ti-dmtimer: avoid using mach/hardware.h
Date: Thu,  8 Aug 2019 23:22:20 +0200
Message-Id: <20190808212234.2213262-12-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190808212234.2213262-1-arnd@arndb.de>
References: <20190808212234.2213262-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:3tljNrXw83+F4Hazcc57iyTVuqcANP1caRyw1sEvbkwOygXkbr1
 2ASndSMUrdeHCNbt1U3/d4g6qDaH9k8V17XP2mqlGCEr/0WkuW4dpT0luK3Ib7tzCq3jePR
 BGIFP9qnN11wrBgaVcqYGbcuHh66bIzNhqhuwqjrw5DHew75jqoOoa8BFA3OkhD3Df5sApL
 8Rp7aRufJofird7OveVzg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:c+WCVkEggaY=:c38mMZPYd8pl1vXQe/HjSA
 DBUWUCNFjnUJbBngyRKBRfKPQh7GsHAImDc+yv3V7nryPEmK/AmVc0yULOOpMsZRogR9HyphU
 IUkECTgE4tRvMXh9k64YOLT8YnXTq5QuxwoV9XwFj4F3GHhkrsJ6bFp30AnMG/D2f2ZsafdG4
 yTzGXMB2SLhbHRGbxywX4gIz7ERYYwsWlbvmjHxGnS1E5p1E0E88XsCZSGQz0MHCmQckQOkE+
 2YsOUR4fllQDmC1aTYZFqJjY+2amkjolTkB+F3G5vrDW3efKKAoga5h4ZujEjLAlahRw8zpK6
 lqrPBFihWNmjchEyQkPqsMIMAsrLCia9XhWzLfB6l7e/1hk4ZpBVHK5mKTv1MBj8T8n7dsEEh
 Y6WSDp9awK/eLo4MwI8Dw4VQSsIXA1AX76bqXMKoA6mmkEVaTW98dgPgPgNNu/6JtWg9WkjrH
 5VcOE42yVkZLddcgBxeBhxQ6DQ48Q1VbzXZTuQADwcme5dJZvMC4xgv9ocOHIdf5+4RF4J7Jt
 3lVUGDobZk45oXSv3t5vfWa+zh/oo1cRc8w05FzGCgRVvUXucWsIKMtnBI5JsYSvoesblkdiz
 sWZNvg6+WbPYA+hFDWF3Nc3jlTEm9ppDVyuk5gKxn5tRriaHB0xXHyVyVdYf3FvAiJoz/gBS5
 2JRVH49k0FFL7f+CUQC7jnAOzJ34LYZceQlNBkqIsEBjBhM39l9iSQButSSt9PowGTmOyEa8n
 bXNX4gD8IhG84AdyKAiVXFr1ylArol+ND1mdAA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_143228_313361_682DCADC 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As a preparation for future omap1 multiplatform support, stop
using mach/hardware.h and instead include the omap1-io.h
for low-level register access to MOD_CONF_CTRL_1.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/clocksource/timer-ti-dm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clocksource/timer-ti-dm.c b/drivers/clocksource/timer-ti-dm.c
index 5394d9dbdfbc..422f96384dc5 100644
--- a/drivers/clocksource/timer-ti-dm.c
+++ b/drivers/clocksource/timer-ti-dm.c
@@ -448,7 +448,7 @@ int omap_dm_timer_get_irq(struct omap_dm_timer *timer)
 }
 
 #if defined(CONFIG_ARCH_OMAP1)
-#include <mach/hardware.h>
+#include <linux/soc/ti/omap1-io.h>
 
 static struct clk *omap_dm_timer_get_fclk(struct omap_dm_timer *timer)
 {
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
