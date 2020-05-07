Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F08B1C884B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 13:31:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CAX7cnji3ZO2zF6L/hzWUwUKwOA48SlqGJGdXUaX5Kk=; b=oKDIvLg5aGmAqfxLP06IKhn52o
	d8Q4yN6bFHmrtDP7pCU1NTXvlYyBPr3KQDXoEnjYhmnBp90kB3VaUhw7R6uwQ4P8iH+AH4USe8jQF
	a7vEenGeKz2Zjkk1Iwuxc/0/N00plWnThTKc18E7aZo/udShY0fDzTNCIGDrJQgnUUHU9fqIrY3ie
	/f5p5MazMDcqAovgdDqEqBh6eradaFivhUmdOYlUQbFxwNjd/mu9GgJ64z+6zR+HYMgN9c5/igUwB
	NjTNZxgZsCnJDW1U+xfjtavxc4/7z9l72Mgm3u/AIov3UA+UCsHbiq9ucfbx+w7BLTiXFf5Fq/k8l
	FQjYRmlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWejq-0008Mq-HI; Thu, 07 May 2020 11:30:50 +0000
Received: from xavier.telenet-ops.be ([2a02:1800:120:4::f00:14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWejK-0007uf-On
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 11:30:21 +0000
Received: from ramsan ([IPv6:2a02:1810:ac12:ed60:6572:4a1f:d283:9ae8])
 by xavier.telenet-ops.be with bizsmtp
 id bnW3220063ZRV0X01nW3Km; Thu, 07 May 2020 13:30:11 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jWej5-0006zO-21; Thu, 07 May 2020 13:30:03 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jWej5-00068f-1m; Thu, 07 May 2020 13:30:03 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Jens Axboe <axboe@kernel.dk>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Viresh Kumar <viresh.kumar@linaro.org>, Zhang Rui <rui.zhang@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: [PATCH 4/4] thermal: qoriq: Add platform dependencies
Date: Thu,  7 May 2020 13:29:55 +0200
Message-Id: <20200507112955.23520-5-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200507112955.23520-1-geert+renesas@glider.be>
References: <20200507112955.23520-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_043019_803489_CF50D2EF 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:14 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Amit Kucheria <amit.kucheria@verdurent.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-ide@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The QorIQ Thermal Monitoring Unit is only present on Freescale E500MC
and Layerscape SoCs, and on NXP i.MX8 SoCs.  Add platform dependencies
to the QORIQ_THERMAL config symbol, to avoid asking the user about it
when configuring a kernel without support for any of the aforementioned
SoCs.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 drivers/thermal/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/thermal/Kconfig b/drivers/thermal/Kconfig
index 91af271e9bb02475..61a994e1e7824ff6 100644
--- a/drivers/thermal/Kconfig
+++ b/drivers/thermal/Kconfig
@@ -285,8 +285,8 @@ config MAX77620_THERMAL
 
 config QORIQ_THERMAL
 	tristate "QorIQ Thermal Monitoring Unit"
-	depends on THERMAL_OF
-	depends on HAS_IOMEM
+	depends on THERMAL_OF && HAS_IOMEM
+	depends on PPC_E500MC || SOC_LS1021A || ARCH_LAYERSCAPE || (ARCH_MXC && ARM64) || COMPILE_TEST
 	select REGMAP_MMIO
 	help
 	  Support for Thermal Monitoring Unit (TMU) found on QorIQ platforms.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
