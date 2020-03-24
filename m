Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 272021905C0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 07:29:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xqxYsN6V4tgnsz0n/dcvz96sY069BQP3kdoN/cwko2Y=; b=hht0goNZuWO0Gl
	TW7MEOtJgPhCAG77KNjnF3GZwBKAZZSsJfcY7klI1S8glPC4sfU4Iw4MFnkC3NNL7EGCCw/Nq58ya
	QnkjsWukNtxdLPw89LWjr6N9gLpuvyfYYqrsHl2WQ7AoGlB2b5aL4FRTPqT9zZLAod3HvC196PV1j
	LHMebEdRYqsKc62xscekBuWZSjtY0y8vd6IbHpFz8EuEaAw/fJEkWal6dXWmR8ilyySqtABfBWOMS
	+6EouEr9S3h2+onWJwwRHDrf8int+gvSjX0G8OPDNdt1RRzHlLpAvo03UQE9xVkGfKWA1qI02HmA5
	Ja1SrpASVifXsLp1TVsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGd42-0005os-30; Tue, 24 Mar 2020 06:29:26 +0000
Received: from cmccmta3.chinamobile.com ([221.176.66.81])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGd3c-0005gH-6A
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 06:29:05 +0000
Received: from spf.mail.chinamobile.com (unknown[172.16.121.1]) by
 rmmx-syy-dmz-app12-12012 (RichMail) with SMTP id 2eec5e79a8820f9-87f32;
 Tue, 24 Mar 2020 14:28:19 +0800 (CST)
X-RM-TRANSID: 2eec5e79a8820f9-87f32
X-RM-TagInfo: emlType=0                                       
X-RM-SPAM-FLAG: 00000000
Received: from localhost.localdomain (unknown[112.25.154.146])
 by rmsmtp-syy-appsvr01-12001 (RichMail) with SMTP id 2ee15e79a88069e-da2b2;
 Tue, 24 Mar 2020 14:28:18 +0800 (CST)
X-RM-TRANSID: 2ee15e79a88069e-da2b2
From: Tang Bin <tangbin@cmss.chinamobile.com>
To: cernekee@gmail.com,
	balbi@kernel.org
Subject: [PATCH] usb: gadget: bcm63xx_udc:remove useless variable definition
Date: Tue, 24 Mar 2020 14:29:32 +0800
Message-Id: <20200324062932.8364-1-tangbin@cmss.chinamobile.com>
X-Mailer: git-send-email 2.20.1.windows.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_232902_100953_2EABDC05 
X-CRM114-Status: UNSURE (   6.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [221.176.66.81 listed in list.dnswl.org]
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
Cc: f.fainelli@gmail.com, Tang Bin <tangbin@cmss.chinamobile.com>,
 gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In this function, the variable 'rc' is assigned after this place,
so the definition is invalid.

Signed-off-by: Tang Bin <tangbin@cmss.chinamobile.com>
---
 drivers/usb/gadget/udc/bcm63xx_udc.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/usb/gadget/udc/bcm63xx_udc.c b/drivers/usb/gadget/udc/bcm63xx_udc.c
index 54501814d..a7afa8c35 100644
--- a/drivers/usb/gadget/udc/bcm63xx_udc.c
+++ b/drivers/usb/gadget/udc/bcm63xx_udc.c
@@ -2321,8 +2321,6 @@ static int bcm63xx_udc_probe(struct platform_device *pdev)
 	if (rc)
 		return rc;
 
-	rc = -ENXIO;
-
 	/* IRQ resource #0: control interrupt (VBUS, speed, etc.) */
 	irq = platform_get_irq(pdev, 0);
 	if (irq < 0)
-- 
2.20.1.windows.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
