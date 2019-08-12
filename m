Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7495089DDE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 14:18:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XTllZb/UbMP8R+41nLkGerrEaCwIh46cQH59RJL5B50=; b=EbWOhdb9eAWFtVW4w7ROuu9IHG
	UpE+V/t1taUHGzH8zyWuN12cZlBg9Js7ddZp2Bk5sqrnKyU9+mzkWUCMy5IpcQTeZcnfCyAms4ekk
	JWUeNgmlbmQ7NgJHO74K2qCoLFgjqiqAGTEid06X0zYuBkgs1Yu74d3aNzaUoNAkDakTEtsJMuSMa
	uSMTIt77C96mKkjVrhIzea3I3cN7iUKWWT7wuYcqeLGpxScUlP7bR6K2cNF/nUliw3Xv3YqodZmXU
	0iHSGdsV43+uRxW2g+dQ9DFaSbDSpxXuerPzag2oRyT6eXI8WmZ2YpgToUE2UxSrgjex38jjfgLW9
	oiBATaGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx9Gy-0003zs-HH; Mon, 12 Aug 2019 12:18:00 +0000
Received: from mxwww.masterlogin.de ([2a03:2900:1:1::b])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx9Ee-0002af-2r; Mon, 12 Aug 2019 12:15:37 +0000
Received: from mxout2.routing.net (unknown [192.168.10.82])
 by new.mxwww.masterlogin.de (Postfix) with ESMTPS id BB9AA96DC9;
 Mon, 12 Aug 2019 12:15:33 +0000 (UTC)
Received: from mxbox2.masterlogin.de (unknown [192.168.10.253])
 by mxout2.routing.net (Postfix) with ESMTP id 1504B647BC;
 Mon, 12 Aug 2019 12:15:34 +0000 (UTC)
Received: from localhost.localdomain (fttx-pool-217.61.152.193.bambit.de
 [217.61.152.193])
 by mxbox2.masterlogin.de (Postfix) with ESMTPSA id EBC66100D7A;
 Mon, 12 Aug 2019 14:15:32 +0200 (CEST)
From: Frank Wunderlich <frank-w@public-files.de>
To: Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Allison Randal <allison@lohutok.net>,
 "David S. Miller" <davem@davemloft.net>, devicetree@vger.kernel.org,
 Eddie Huang <eddie.huang@mediatek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-pm@vger.kernel.org, linux-rtc@vger.kernel.org,
 Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Richard Fontana <rfontana@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 Sean Wang <sean.wang@mediatek.com>, Sebastian Reichel <sre@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 "Tianping . Fang" <tianping.fang@mediatek.com>
Subject: [PATCH v5 05/10] mfd: mt6323: some improvements of mt6397-core
Date: Mon, 12 Aug 2019 14:15:06 +0200
Message-Id: <20190812121511.4169-6-frank-w@public-files.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190812121511.4169-1-frank-w@public-files.de>
References: <20190812121511.4169-1-frank-w@public-files.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_051536_293126_4D7F64E5 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a03:2900:1:1:0:0:0:b listed in] [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Josef Friedl <josef.friedl@speed.at>,
 Frank Wunderlich <frank-w@public-files.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Josef Friedl <josef.friedl@speed.at>

simplyfications (resource definitions my DEFINE_RES_* macros)

Signed-off-by: Josef Friedl <josef.friedl@speed.at>
Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>
---
changes since v4: do not touch year of copyright
changes since v3: moved part 6 forward to let compatible and driver be together
changes since v2: splitted v2 part 4 into 6+7
---
 drivers/mfd/mt6397-core.c | 13 +++----------
 1 file changed, 3 insertions(+), 10 deletions(-)

diff --git a/drivers/mfd/mt6397-core.c b/drivers/mfd/mt6397-core.c
index 337bcccdb914..c9a81087fa55 100644
--- a/drivers/mfd/mt6397-core.c
+++ b/drivers/mfd/mt6397-core.c
@@ -5,6 +5,7 @@
  */
 
 #include <linux/interrupt.h>
+#include <linux/ioport.h>
 #include <linux/module.h>
 #include <linux/of_device.h>
 #include <linux/of_irq.h>
@@ -23,16 +24,8 @@
 #define MT6397_CID_CODE		0x97
 
 static const struct resource mt6397_rtc_resources[] = {
-	{
-		.start = MT6397_RTC_BASE,
-		.end   = MT6397_RTC_BASE + MT6397_RTC_SIZE,
-		.flags = IORESOURCE_MEM,
-	},
-	{
-		.start = MT6397_IRQ_RTC,
-		.end   = MT6397_IRQ_RTC,
-		.flags = IORESOURCE_IRQ,
-	},
+	DEFINE_RES_MEM(MT6397_RTC_BASE, MT6397_RTC_SIZE),
+	DEFINE_RES_IRQ(MT6397_IRQ_RTC),
 };
 
 static const struct resource mt6323_keys_resources[] = {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
