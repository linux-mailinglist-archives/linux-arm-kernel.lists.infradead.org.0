Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ABAE1877E2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 03:42:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Lkp7IYyjMPSwCtKru0o/iJIEd1bV9wdu/KvE/k5zOdA=; b=Zxf
	xdQOPhlqgmTr1v4eYLXi5jrc8s2IjmcXH/yRIfa5VmDHCQkNJHKkvvULtCPhQdLiZ8/05Gwh9m2Bn
	HUg1vs4A3a70bV5SlItuaNc50yEheaTHzoOxdeva9YIEGST7ZPRHpPrOQ3HOarBR+FSk3oWgXN4td
	FRPckaCKXlmaf6PHi5vc0sprmpZFdreoXONPWKQc1ou/ybcXDUuDemjs6Zry66cq46VhWBW5odh6F
	bbRkZpVFrytOaicYXQU8b8AtL0+nLurNljqO4d4RGeJO6FuXkgmC8SxkLEcgW3w3cuWUdd87oklAn
	5gVXpTxkcH+tgcMQE2fqghPJ5iGaddA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE2Bp-0007Va-GJ; Tue, 17 Mar 2020 02:42:45 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE2Bh-0007KJ-NW
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 02:42:39 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 2DA151A0CF2;
 Tue, 17 Mar 2020 03:42:36 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 5F8951A0CEA;
 Tue, 17 Mar 2020 03:42:31 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 4F6A0402D0;
 Tue, 17 Mar 2020 10:42:25 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: daniel.lezcano@linaro.org, tglx@linutronix.de, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH] clocksource: imx-tpm: Remove unused includes
Date: Tue, 17 Mar 2020 10:35:49 +0800
Message-Id: <1584412549-18354-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_194237_901960_6652AA46 
X-CRM114-Status: UNSURE (   5.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is nothing in use from of_address.h/of_irq.h, remove them.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/clocksource/timer-imx-tpm.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/clocksource/timer-imx-tpm.c b/drivers/clocksource/timer-imx-tpm.c
index c1d52d5..6334a35 100644
--- a/drivers/clocksource/timer-imx-tpm.c
+++ b/drivers/clocksource/timer-imx-tpm.c
@@ -8,8 +8,6 @@
 #include <linux/clocksource.h>
 #include <linux/delay.h>
 #include <linux/interrupt.h>
-#include <linux/of_address.h>
-#include <linux/of_irq.h>
 #include <linux/sched_clock.h>
 
 #include "timer-of.h"
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
