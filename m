Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3265A7C210
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 14:46:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OrlORAv8RRKOMQgr/6ggfAK0OXDUnsSXbPxwPrNaD9Q=; b=rmQnTo/hPpRX+m
	bzKhA4pRmTZAiFkuasbv2szxvVrd2mUv2vosf43TQhfQ/iV/7bMjiestW5h+yQFOOUOs6VnIDVEmu
	9kNFCtDEIdfzG1Ft+lRP2Z0fCGboZ+r6PEhJfbaJekIoCx8Pfe1qAs+t/cGMwS4dNzhQ0kJ2Stj2k
	K2KF37btfdLCV3exncE54g81oCA3dW7VrzCTtygHauRyabCGnSwfivzJd4whvIi3+gnnwZ6Kq72kO
	xAme4TTtbg10uwM9UB5jjXP931fzIt2OWuGySljR1JnWUeUfHJv8MzQTCv1CnrlYEiGbjYW0l1QNE
	iB0XvbHWLqvfEZ5nSXGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsnzj-00014n-7s; Wed, 31 Jul 2019 12:46:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsnxy-0006Vb-GP
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 12:44:28 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5EAFE217D4;
 Wed, 31 Jul 2019 12:44:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564577065;
 bh=WkqAHanTxQx5yUJI8jkG4KR2Oxhqk5ywNQpUPn5vZ0w=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=IeGNaHqO7mU7FVNZgLJgpD1nSBX+og+oFJK8Lv70p6INJwOHscvf3U50pBreu3WaC
 gadW9vLuBIPrHaP36YcZaIAw9E3xLPWA4pPXwBZy5n9fdcSie6vqxP5wzl5RiCJfdu
 sU7JqBxB+9Ut+zINEm3Qivs89aq6PTpwxdTuHKvU=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org, Richard Gong <richard.gong@linux.intel.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>
Subject: [PATCH v2 09/10] video: fbdev: w100fb: convert platform driver to use
 dev_groups
Date: Wed, 31 Jul 2019 14:43:48 +0200
Message-Id: <20190731124349.4474-10-gregkh@linuxfoundation.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190731124349.4474-1-gregkh@linuxfoundation.org>
References: <20190731124349.4474-1-gregkh@linuxfoundation.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_054426_584926_73C13430 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org
Cc: linux-fbdev@vger.kernel.org
Acked-by: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/video/fbdev/w100fb.c | 23 ++++++++++-------------
 1 file changed, 10 insertions(+), 13 deletions(-)

diff --git a/drivers/video/fbdev/w100fb.c b/drivers/video/fbdev/w100fb.c
index 597ffaa13cd2..3be07807edcd 100644
--- a/drivers/video/fbdev/w100fb.c
+++ b/drivers/video/fbdev/w100fb.c
@@ -164,6 +164,15 @@ static ssize_t fastpllclk_store(struct device *dev, struct device_attribute *att
 
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
@@ -752,14 +761,6 @@ int w100fb_probe(struct platform_device *pdev)
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
@@ -784,11 +785,6 @@ static int w100fb_remove(struct platform_device *pdev)
 	struct fb_info *info = platform_get_drvdata(pdev);
 	struct w100fb_par *par=info->par;
 
-	device_remove_file(&pdev->dev, &dev_attr_fastpllclk);
-	device_remove_file(&pdev->dev, &dev_attr_reg_read);
-	device_remove_file(&pdev->dev, &dev_attr_reg_write);
-	device_remove_file(&pdev->dev, &dev_attr_flip);
-
 	unregister_framebuffer(info);
 
 	vfree(par->saved_intmem);
@@ -1625,6 +1621,7 @@ static struct platform_driver w100fb_driver = {
 	.resume		= w100fb_resume,
 	.driver		= {
 		.name	= "w100fb",
+		.dev_groups	= w100fb_groups,
 	},
 };
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
