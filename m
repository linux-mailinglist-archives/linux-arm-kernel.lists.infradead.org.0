Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A78263D398
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 19:10:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HaXbbqzzGz2Diwmcg56dUAk5v1MYqYP3zA7lJ1/4wiM=; b=qu1LukcKoTQatf
	UOamhWYGfW49DdtL5/DC4d7kCX+FY5w7ReSLJGSjiMkQYIYhZsqU34dHqblwB/TRP1aR0bN4gg5m2
	fm4r9FYLod6yVFhyLBVPI3FUHw++tUjp9YFBnmNCCQ0XLdsQpJ2jnfDBeYOxSO9To+Gao/WihQHhl
	UyWuc+mVIXHPlsm2a0vRNTPQaSFcZ0SZlL4c90GoFPghXy0cFhJ+oBEpwI3/b77FlCDpK4cxXFg9q
	wolaMV+08FW2FrFDtH0VwDX/R0S0HR1X3DbqNXE/PUuYRwok2TMkrGMAvZToJeOUj005s/Hbe1TRZ
	kdF5RYEOpY4BfgnoGccg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hakHb-0005Oo-IB; Tue, 11 Jun 2019 17:10:03 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hakH0-00058K-5r
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 17:09:27 +0000
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
 (Exim 4.76) (envelope-from <colin.king@canonical.com>)
 id 1hakGn-0002YS-I1; Tue, 11 Jun 2019 17:09:13 +0000
From: Colin King <colin.king@canonical.com>
To: Nicolas Ferre <nicolas.ferre@microchip.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-fbdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH][next] video: fbdev: atmel_lcdfb: remove redundant
 initialization to variable ret
Date: Tue, 11 Jun 2019 18:09:13 +0100
Message-Id: <20190611170913.20913-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_100926_358212_C9261E34 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Colin Ian King <colin.king@canonical.com>

Currently variable ret is being initialized with -ENOENT however that
value is never read and ret is being re-assigned later on. Hence this
assignment is redundant and can be removed.

Addresses-Coverity: ("Unused value")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/video/fbdev/atmel_lcdfb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/video/fbdev/atmel_lcdfb.c b/drivers/video/fbdev/atmel_lcdfb.c
index fb117ccbeab3..930cc3f92e01 100644
--- a/drivers/video/fbdev/atmel_lcdfb.c
+++ b/drivers/video/fbdev/atmel_lcdfb.c
@@ -950,7 +950,7 @@ static int atmel_lcdfb_of_init(struct atmel_lcdfb_info *sinfo)
 	struct fb_videomode fb_vm;
 	struct gpio_desc *gpiod;
 	struct videomode vm;
-	int ret = -ENOENT;
+	int ret;
 	int i;
 
 	sinfo->config = (struct atmel_lcdfb_config*)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
