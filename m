Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A50125F4E2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 10:47:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZQkm9wGpDSNby50eEyx2lgez4qKa0a0TSg8NYyYaHms=; b=TNASmYjJ0lD4OJ
	lIeXEgJS9kokY5lvb3C3tg9+6Zn7naT+a+HPzsHFaut9gC1TYjLv+mh9Q0BLUcPZLjeUMActR/aJV
	UQ4StfAv5pdcBtbA1zDeEadsvtHKRcP6spAEdAskWHFgJMoXDbHM4UZQ2qz72h96q5P/VsvnCknMu
	cvvZlEhtquKopOhbgpPiiipqXXRaGXOVUh8OW6rgHcgp4WSsB0DiY7cQE+ZB0FG0r6+dH/7kNtMyY
	zWRKsk0pCKj6TQGIf11SzmEVvdu6QyNKf0JjsA71UpTJbcI8GM8GIKLTYHg7lggjFwc6K0A7sk+hf
	zQ3/YxZf9PtbHYY/nckw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hixOx-0006F4-7q; Thu, 04 Jul 2019 08:47:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hixOS-00064t-QB
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 08:47:06 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 090A3218BC;
 Thu,  4 Jul 2019 08:47:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562230024;
 bh=zxScwFkLjiixqdeZRh7a5dXv8jDdQ8T3PHXavOyUF88=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Dv6zzAeEQOLrSruoBnVNVkmd1VvWZ2P/o3R8uv4G3LheVuxIeaLnayVa+Wg0bHN40
 Vzq//RNvbEZmNAWyoAv35LneKIUggwAXGlWL5w34unYMha2SjdH34WS2Vg6+MY6SYz
 NJzaOTuLMWTPi+zxqcoS2IylbU2vM4unYytSg4X0=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 08/11] video: fbdev: w100fb: convert platform driver to use
 dev_groups
Date: Thu,  4 Jul 2019 10:46:14 +0200
Message-Id: <20190704084617.3602-9-gregkh@linuxfoundation.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190704084617.3602-1-gregkh@linuxfoundation.org>
References: <20190704084617.3602-1-gregkh@linuxfoundation.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_014705_066232_5C05EA32 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-fbdev@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 dri-devel@lists.freedesktop.org, Tony Prisk <linux@prisktech.co.nz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Platform drivers now have the option to have the platform core create
and remove any needed sysfs attribute files.  So take advantage of that
and do not register "by hand" a bunch of sysfs files.

Cc: Tony Prisk <linux@prisktech.co.nz>
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org
Cc: linux-fbdev@vger.kernel.org
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/video/fbdev/w100fb.c | 23 ++++++++++-------------
 1 file changed, 10 insertions(+), 13 deletions(-)

diff --git a/drivers/video/fbdev/w100fb.c b/drivers/video/fbdev/w100fb.c
index 696106ecdff0..4be3afcc1c93 100644
--- a/drivers/video/fbdev/w100fb.c
+++ b/drivers/video/fbdev/w100fb.c
@@ -168,6 +168,15 @@ static ssize_t fastpllclk_store(struct device *dev, struct device_attribute *att
 
 static DEVICE_ATTR_RW(fastpllclk);
 
+static struct attribute *w100fb_attrs[] = {
+	&dev_attr_fastpllclk.attr,
+	&dev_attr_reg_read.attr,
+	&dev_attr_reg_write.attr,
+	&dev_attr_flip.attr,
+	NULL,
+};
+ATTRIBUTE_GROUPS(w100fb);
+
 /*
  * Some touchscreens need hsync information from the video driver to
  * function correctly. We export it here.
@@ -756,14 +765,6 @@ int w100fb_probe(struct platform_device *pdev)
 		goto out;
 	}
 
-	err = device_create_file(&pdev->dev, &dev_attr_fastpllclk);
-	err |= device_create_file(&pdev->dev, &dev_attr_reg_read);
-	err |= device_create_file(&pdev->dev, &dev_attr_reg_write);
-	err |= device_create_file(&pdev->dev, &dev_attr_flip);
-
-	if (err != 0)
-		fb_warn(info, "failed to register attributes (%d)\n", err);
-
 	fb_info(info, "%s frame buffer device\n", info->fix.id);
 	return 0;
 out:
@@ -788,11 +789,6 @@ static int w100fb_remove(struct platform_device *pdev)
 	struct fb_info *info = platform_get_drvdata(pdev);
 	struct w100fb_par *par=info->par;
 
-	device_remove_file(&pdev->dev, &dev_attr_fastpllclk);
-	device_remove_file(&pdev->dev, &dev_attr_reg_read);
-	device_remove_file(&pdev->dev, &dev_attr_reg_write);
-	device_remove_file(&pdev->dev, &dev_attr_flip);
-
 	unregister_framebuffer(info);
 
 	vfree(par->saved_intmem);
@@ -1630,6 +1626,7 @@ static struct platform_driver w100fb_driver = {
 	.driver		= {
 		.name	= "w100fb",
 	},
+	.dev_groups	= w100fb_groups,
 };
 
 module_platform_driver(w100fb_driver);
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
