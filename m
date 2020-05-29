Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C976B1E79AA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 11:46:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=H2984fCrVZereAT25N+rGr/eiU5/FLifJUsOP7RJD4M=; b=D5vBc5uzfQcEVO
	VDDNzfO3zE9XGvKEQdj1tUrt3oyGHQcG7H+iqkt8oXxJgm9lXqFsnGyjLZlS04K+V2Z+IJ8Igaize
	CMkVyjxfzJAvUYUZPXUHsoLFh3E2Anr5QxMGaQDlPuMDWDitty9Y5WEIcs1v9U1vxGkiNUzM79nyh
	/aEKxcZ50rrl4Y7JGkSPaHUfXmh2xo8+oYhEv2fTe8QfHXcBwLppdDFiqZvQ9Las8aKZdbRJ1ALDF
	cr+s/ojkrr3Ydli2gduAfN9w9C7LHvWWVd0oAZsVN6tXGylnGmdbQ3ocJ4YF8vjvp7ZjAKtJHc496
	YS8rp7fCxPr81ILCbaDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jebaY-0007Eg-6P; Fri, 29 May 2020 09:46:06 +0000
Received: from smtp2207-205.mail.aliyun.com ([121.197.207.205])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jebaP-0007Dv-Sl
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 09:45:59 +0000
X-Alimail-AntiSpam: AC=CONTINUE; BC=0.3391108|-1; CH=green; DM=|CONTINUE|false|;
 DS=CONTINUE|ham_system_inform|0.00564441-0.000591423-0.993764;
 FP=0|0|0|0|0|-1|-1|-1; HT=e02c03305; MF=frank@allwinnertech.com; NM=1; PH=DS;
 RN=10; RT=10; SR=0; TI=SMTPD_---.HfKukDl_1590745546; 
Received: from allwinnertech.com(mailfrom:frank@allwinnertech.com
 fp:SMTPD_---.HfKukDl_1590745546)
 by smtp.aliyun-inc.com(10.147.41.137);
 Fri, 29 May 2020 17:45:51 +0800
From: Frank Lee <frank@allwinnertech.com>
To: wim@linux-watchdog.org, linux@roeck-us.net, mripard@kernel.org,
 wens@csie.org
Subject: [PATCH] watchdog: sunxi_wdt: fix improper error exit code
Date: Fri, 29 May 2020 17:45:14 +0800
Message-Id: <20200529094514.26374-1-frank@allwinnertech.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_024558_082002_FD8F7340 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [121.197.207.205 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-watchdog@vger.kernel.org, tiny.windzz@gmail.com,
 linux-kernel@vger.kernel.org, Frank Lee <frank@allwinnertech.com>,
 wuyan@allwinnertech.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Martin Wu <wuyan@allwinnertech.com>

sunxi_wdt_probe() should return -ENOMEM when devm_kzalloc() fails.

Signed-off-by: Martin Wu <wuyan@allwinnertech.com>
Signed-off-by: Frank Lee <frank@allwinnertech.com>
---
 drivers/watchdog/sunxi_wdt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/watchdog/sunxi_wdt.c b/drivers/watchdog/sunxi_wdt.c
index 5f05a45ac187..b50757882a98 100644
--- a/drivers/watchdog/sunxi_wdt.c
+++ b/drivers/watchdog/sunxi_wdt.c
@@ -235,7 +235,7 @@ static int sunxi_wdt_probe(struct platform_device *pdev)
 
 	sunxi_wdt = devm_kzalloc(dev, sizeof(*sunxi_wdt), GFP_KERNEL);
 	if (!sunxi_wdt)
-		return -EINVAL;
+		return -ENOMEM;
 
 	sunxi_wdt->wdt_regs = of_device_get_match_data(dev);
 	if (!sunxi_wdt->wdt_regs)
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
