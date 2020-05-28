Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A21541E5BB4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 11:19:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uPgCHJR8TR8j+4YTv9o/eiKuos/GKZfZhqzNl9qxTfo=; b=bs7lux0Yc7Lhwe
	8QfgjCWhAdT+lzjIGYJgwCzxIm8A+WW/sKm2eQ/4amu/OKii6uiob38xv7yMQ/3LksGpkR7h3bmrx
	KWn0s+F/6Ll25/wi+DZzKg8lE3AlvRTrQ2CXVGb8B7zbyIN3M4EmKzeQ6n6ajL6slurwUlsuERHel
	CZEC+DqtV4bQ4iz9HUaQ5CXmpcwTiLV96YiXFFZ9u+pBbbEnIZwuvkuQTrpgDopOXbUcgLew0KQtW
	lTIvZWZcRNTS8Dt8tWvZJ3MF+U/7PLTyivXyM+0B365zCEyqMlY0cHTVW/4SICHwp0xkqa20IjiyG
	8y9JdxUFDW4qxPpsFGMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeEha-0006ka-M1; Thu, 28 May 2020 09:19:50 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeEhO-0006jp-2M
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 09:19:39 +0000
Received: from threadripper.lan ([149.172.98.151]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1M7v18-1ji6JC3P7K-004y2k; Thu, 28 May 2020 11:19:24 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: arm@kernel.org,
	Tony Lindgren <tony@atomide.com>
Subject: [PATCH] ARM: omap2: drop broken broadcast timer hack
Date: Thu, 28 May 2020 11:19:12 +0200
Message-Id: <20200528091923.2951100-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Provags-ID: V03:K1:ATdn30GjCa5VNK5LMgEqCYCr6k0Rv5NDMW8ItvRx618qB5cT2J7
 7iWumw21v50yEnwmwJL287o1FpY+SfqpqZcPQyoXstzll+OuO4d9LDvoPrPq7EKMugUFnsv
 XqHZQ5OWZaVxwTaun9JU1+YtBJJMQX7BoRjjZdSz7ZxY/O3Hmz/HuafwO5ZmWknK+NIKnIa
 51GT45DLpjVPdKAO4RVXw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:CXAD4bL1BoM=:+Z/iCh1MkE4iwHBSzVAxnC
 9iR6ZNpgbrqVHr5ok5qJuQRQS7466T1SOncy+46ZYlL6Y4vk2ibvIjjwViG+Z0PP4U90TTs58
 PtR1WVwhvLfiYmyeL+Zr2jlgN5WCSuBXLunvXUfvjQel/7/L+OP2mXEZF1ZpO9ZD2mVnKh1OK
 s4Hyus0alRsaDVSX0mFI5RsM5PojO2piEDPe+A5IcuuFO/dx84G4kJFaotR6i3T3NxIo7x2kO
 iJndMivXR/Hr8neplvXE7lSbS040emeds6mtkztoiVAnN0J4G4AttA8n+YFz3rMKpg9s9LLRu
 GY86NDFpcHmhy6A+42U5b7V4lmI598W/+mZEd28eh8bPCjG+5NdQEnlEWiDUnr7xzUupOOK7E
 feSqZas5/lcvj5IdB/cm+GDuZZ+4TfJw3XQf4EAQ1vZNyFQwl1WSubqQ6mrfKqmtWEqROq0tu
 iYbTrYJSHLXIJ5zLmklhKKwUGQWuCMfjRagLDjghnkKvNQkuujujTsJ7tgU8E+R+2lvfw+oOt
 7DSIL5kC2Hf/qVQQtUshSD7kpbTTDR93jNfwPxcSPbejwdOACJUZ6u+DSgUtgAMukg3zmsRbd
 ywRAXGS+UTP8rUSv2R2ty26wJhknv21rAlNm1UPUt2xSdhPvDTd5vP9qdyafbWxYfB2JpScnP
 ChEnT4d63fjbgibQQs1qj61w/9onh82UK+JfIyUIYs0wjxf4g2HCAevlH/G140vszM8Wehq/G
 tLmt+1LnMzu2RgYC0tfHywhF3V6vpqHrE5gZATc3xh+7FDR1AGo/jB73/IprjsCQk7ccRIFEs
 hpbloZCOtR9o+1dIje+0DvDpm5TTKTk6IW1SUUvfpzZOk1hyGA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_021938_404100_78CA9612 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
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
Cc: Rob Herring <robh@kernel.org>, Grygorii Strashko <grygorii.strashko@ti.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 Lokesh Vutla <lokeshvutla@ti.com>, Keerthy <j-keerthy@ti.com>,
 Santosh Shilimkar <santosh.shilimkar@oracle.com>, linux-kernel@vger.kernel.org,
 Tero Kristo <t-kristo@ti.com>, Olof Johansson <olof@lixom.net>,
 linux-omap@vger.kernel.org, afzal mohammed <afzal.mohd.ma@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The OMAP4 timer code had a special hack for using the broadcast timer
without SMP. Since the dmtimer is now gone, this also needs to be dropped
to avoid a link failure for non-SMP AM43xx configurations:

kernel/time/tick-broadcast.o: in function `tick_device_uses_broadcast':
tick-broadcast.c:(.text+0x130): undefined reference to `tick_broadcast'

Fixes: 2ee04b88547a ("ARM: OMAP2+: Drop old timer code for dmtimer and 32k counter")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-omap2/Kconfig | 1 -
 arch/arm/mach-omap2/timer.c | 6 ------
 2 files changed, 7 deletions(-)

diff --git a/arch/arm/mach-omap2/Kconfig b/arch/arm/mach-omap2/Kconfig
index ca74473f01df..ec4450a5c296 100644
--- a/arch/arm/mach-omap2/Kconfig
+++ b/arch/arm/mach-omap2/Kconfig
@@ -67,7 +67,6 @@ config SOC_AM43XX
 	select ARM_GIC
 	select MACH_OMAP_GENERIC
 	select HAVE_ARM_SCU
-	select GENERIC_CLOCKEVENTS_BROADCAST
 	select HAVE_ARM_TWD
 	select ARM_ERRATA_754322
 	select ARM_ERRATA_775420
diff --git a/arch/arm/mach-omap2/timer.c b/arch/arm/mach-omap2/timer.c
index 2d4ea386fc38..786336ee27ef 100644
--- a/arch/arm/mach-omap2/timer.c
+++ b/arch/arm/mach-omap2/timer.c
@@ -46,12 +46,6 @@ void set_cntfreq(void)
 	omap_smc1(OMAP5_DRA7_MON_SET_CNTFRQ_INDEX, arch_timer_freq);
 }
 
-#if !defined(CONFIG_SMP) && defined(CONFIG_GENERIC_CLOCKEVENTS_BROADCAST)
-void tick_broadcast(const struct cpumask *mask)
-{
-}
-#endif
-
 #if defined(CONFIG_SOC_OMAP5) || defined(CONFIG_SOC_DRA7XX)
 
 /*
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
