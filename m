Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E5219C011
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 13:21:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LZQjQwkgqK/aCXZ+2pSix9CzJvhVF23HqZTbv/uxg50=; b=qFVR/ESnGkuQlg
	qIK5eTQ5up+5eUu1U/VVnbCfXZ/08vsmEvQBFqi75216E8i8kRMlmp11I/Gjk94nrjQ3GV46scW0Y
	x9MnroQCO0EuQxdDRmEUUVKshj7U5JJSTpszkkuxfQabD+Re/8PeBtSgYj1kP4UXd4KDtFBmqW7Z0
	oTjfGpcuD66LV9uz99xX4RaPOgWsWMFEIdNqxy12s4TyFaj053ssMEDILVMOB7VtRbj0kOF0Mk1Ss
	SXuFY4H11zEKv8xZ37ZdlYunq7C/9Jiu1/OVX2YI9p60ZRgeXwEnRgDIXAQ3ZmnkgHmMp6Svq7B3/
	j6M6YeMKruDwSk7yCdXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJxuD-0005Wc-EM; Thu, 02 Apr 2020 11:21:05 +0000
Received: from cmccmta2.chinamobile.com ([221.176.66.80])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJxu4-0005V3-92
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 11:21:00 +0000
Received: from spf.mail.chinamobile.com (unknown[172.16.121.17]) by
 rmmx-syy-dmz-app06-12006 (RichMail) with SMTP id 2ee65e85ca68cd6-5dc3c;
 Thu, 02 Apr 2020 19:20:08 +0800 (CST)
X-RM-TRANSID: 2ee65e85ca68cd6-5dc3c
X-RM-TagInfo: emlType=0                                       
X-RM-SPAM-FLAG: 00000000
Received: from localhost.localdomain (unknown[112.25.154.146])
 by rmsmtp-syy-appsvr09-12009 (RichMail) with SMTP id 2ee95e85ca66ca8-bc65c;
 Thu, 02 Apr 2020 19:20:08 +0800 (CST)
X-RM-TRANSID: 2ee95e85ca66ca8-bc65c
From: Tang Bin <tangbin@cmss.chinamobile.com>
To: perex@perex.cz,
	tiwai@suse.com,
	nicolas.ferre@microchip.com
Subject: [PATCH] ALSA:atmel:Use platform_get_irq_optional()
Date: Thu,  2 Apr 2020 19:21:35 +0800
Message-Id: <20200402112135.18604-1-tangbin@cmss.chinamobile.com>
X-Mailer: git-send-email 2.20.1.windows.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_042058_699349_6E393E34 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [221.176.66.80 listed in list.dnswl.org]
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
Cc: alexandre.belloni@bootlin.com, Tang Bin <tangbin@cmss.chinamobile.com>,
 alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 ludovic.desroches@microchip.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to simply code,because platform_get_irq() already has
dev_err() message.

Signed-off-by: Tang Bin <tangbin@cmss.chinamobile.com>
---
 sound/atmel/ac97c.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/atmel/ac97c.c b/sound/atmel/ac97c.c
index a1dce9725..25cfd5710 100644
--- a/sound/atmel/ac97c.c
+++ b/sound/atmel/ac97c.c
@@ -715,7 +715,7 @@ static int atmel_ac97c_probe(struct platform_device *pdev)
 		return -ENXIO;
 	}
 
-	irq = platform_get_irq(pdev, 0);
+	irq = platform_get_irq_optional(pdev, 0);
 	if (irq < 0) {
 		dev_dbg(&pdev->dev, "could not get irq: %d\n", irq);
 		return irq;
-- 
2.20.1.windows.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
