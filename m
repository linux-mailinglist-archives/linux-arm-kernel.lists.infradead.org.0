Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A00D7A99
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 17:54:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b/DcDsoA3y7drIMCOXcdhV5QPmz2Ajf3D12UPfqyISo=; b=S7ydRblQmb1XiN
	XjkI9UhSqClccSy0FoIa7xUAzGc99hYCsIwRJm3mJJaQqLK8GEWZC3xm+9uoGysWWPkLAM8FVJd46
	Xd/+PpCWFjzcx5OkY0WclqPUmsY43Q8IS7PRfFfOZHnnH0FImsUGdfq5WcvVkUXlCH/jO8o6SZHtm
	MTZj6rZg1Efbke5AE70CGeNXWMsjg8epqOu8EP5SrzpGH2JIoDjTAcfFQrdreLyFQHEUDdhKqQdHC
	Bd5IusPsTAjZs2dQ0yUsHsOpCVwMxloO/k8VqUabMC4ppQx/gD3fiwMcjwA4r+4jmXnHD8CPAZNbR
	oxk0QFPo2JKmEHaW4XMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKP9b-0005Od-VA; Tue, 15 Oct 2019 15:54:31 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKP9R-0005NB-D1
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 15:54:22 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iKP9M-0007JU-6w; Tue, 15 Oct 2019 16:54:16 +0100
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.2)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iKP9L-0006aI-I0; Tue, 15 Oct 2019 16:54:15 +0100
From: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>
To: linux-kernel@lists.codethink.co.uk
Subject: [PATCH] power: reset: fix __le32 cast in reset code
Date: Tue, 15 Oct 2019 16:54:14 +0100
Message-Id: <20191015155414.25267-1-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_085421_592953_C4C2907E 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.8.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Sebastian Reichel <sre@kernel.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 "Ben Dooks \(Codethink\)" <ben.dooks@codethink.co.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The writel() takes standard integers, not __le32 so
fix the following sparse warnings by removing the
cpu_to_le32() calls.

drivers/power/reset/at91-reset.c:134:9: warning: cast from restricted __le32
drivers/power/reset/at91-reset.c:143:9: warning: cast from restricted __le32

This has made no code changes, the md5sums pre and post applying
this patch are the same. The at91 should be natively little endian
anyway.

Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
---
Cc: Sebastian Reichel <sre@kernel.org>
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Ludovic Desroches <ludovic.desroches@microchip.com>
Cc: linux-pm@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 drivers/power/reset/at91-reset.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/power/reset/at91-reset.c b/drivers/power/reset/at91-reset.c
index 44ca983a49a1..d94e3267c3b6 100644
--- a/drivers/power/reset/at91-reset.c
+++ b/drivers/power/reset/at91-reset.c
@@ -131,7 +131,7 @@ static int at91sam9g45_restart(struct notifier_block *this, unsigned long mode,
 static int sama5d3_restart(struct notifier_block *this, unsigned long mode,
 			   void *cmd)
 {
-	writel(cpu_to_le32(AT91_RSTC_KEY | AT91_RSTC_PERRST | AT91_RSTC_PROCRST),
+	writel(AT91_RSTC_KEY | AT91_RSTC_PERRST | AT91_RSTC_PROCRST,
 	       at91_rstc_base);
 
 	return NOTIFY_DONE;
@@ -140,9 +140,7 @@ static int sama5d3_restart(struct notifier_block *this, unsigned long mode,
 static int samx7_restart(struct notifier_block *this, unsigned long mode,
 			 void *cmd)
 {
-	writel(cpu_to_le32(AT91_RSTC_KEY | AT91_RSTC_PROCRST),
-	       at91_rstc_base);
-
+	writel(AT91_RSTC_KEY | AT91_RSTC_PROCRST, at91_rstc_base);
 	return NOTIFY_DONE;
 }
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
