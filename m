Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3272E190F5E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 14:20:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cRvRhzEzFEdTu9SFUjSpMRi+9bdH0Y2Wxjqxa+JpZxU=; b=eF0SO+ztlWIImf
	K+B8nqHvg9g/1+bcKfmg2Rg3AkAnSO9/2QnikWwa5f26d1u8RxIf020nO3RlLixY6KTL8AwGCx6fl
	hOBchc5aeIiLthl0N8TLpUV57XouxXHR2a9ChSwqkCm14+3ovgM5TCR7xwRGzpGa/ku2iO5g2R/cP
	xbhbLS+Bl72va2yeQAMzMNKAVF1tHYkuuqfGu22xLRGMnJsVhVi+RaYwezHKr1YQWoeyBTZRAFcgV
	TanhCwS1daHYNNAp2LU+TwoqxXJL5mQF5vAQ13yz1A8dWHI+fu9qGbZGb+Oi+BE2Iry8wqTRLQnD4
	B8PjSVuT1Zk6Vvj/nuZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGjTa-0006un-Er; Tue, 24 Mar 2020 13:20:14 +0000
Received: from cmccmta2.chinamobile.com ([221.176.66.80])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGjTK-0006t6-Fl
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 13:20:01 +0000
Received: from spf.mail.chinamobile.com (unknown[172.16.121.15]) by
 rmmx-syy-dmz-app08-12008 (RichMail) with SMTP id 2ee85e7a08d1db8-91b8c;
 Tue, 24 Mar 2020 21:19:14 +0800 (CST)
X-RM-TRANSID: 2ee85e7a08d1db8-91b8c
X-RM-TagInfo: emlType=0                                       
X-RM-SPAM-FLAG: 00000000
Received: from localhost.localdomain (unknown[112.1.174.174])
 by rmsmtp-syy-appsvr08-12008 (RichMail) with SMTP id 2ee85e7a08cfa0f-0ed6c;
 Tue, 24 Mar 2020 21:19:14 +0800 (CST)
X-RM-TRANSID: 2ee85e7a08cfa0f-0ed6c
From: Tang Bin <tangbin@cmss.chinamobile.com>
To: cernekee@gmail.com, balbi@kernel.org, gregkh@linuxfoundation.org,
 sergei.shtylyov@cogentembedded.com
Subject: [PATCH v2]usb: gadget: bcm63xx_udc:remove redundant variable
 assignment
Date: Tue, 24 Mar 2020 21:20:29 +0800
Message-Id: <20200324132029.16296-1-tangbin@cmss.chinamobile.com>
X-Mailer: git-send-email 2.20.1.windows.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_061959_028439_96D52945 
X-CRM114-Status: UNSURE (   6.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: f.fainelli@gmail.com, Tang Bin <tangbin@cmss.chinamobile.com>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--v1------------------------------------
In this function, the variable 'rc' is assigned after this place,
so the definition is invalid.

--v2------------------------------------
In this function, the variable 'rc' will be assigned by the function
'usb_add_gadget_udc()',so the assignment here is redundant,we should
remove it.

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
