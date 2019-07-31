Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 739D27C20D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 14:46:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KZ4IhG1wZjruiHaHMjDnOcQYr/KMDhR1pgzjnhnb3gk=; b=PCQbRGarE+owmp
	Dx6vWXB3ovouutBkLZJAQyd1dmBr4T9/Ertdbu7Dwmybzbf/mxftjs1dY61yRuBXYRalUlq5sPm0z
	7F2nhVRWNVcnCx5Ht7XkbuHzOnZuVttopof6eWHvRci7eOm+QA0fexQ4zfjPNiQuTzXY1XJNKKwRa
	rxswtYb1sa2YQV9Zke5ubisICxIhpGIqCnSJTEz3Rrd9ly4l+yfRqCeCsdwGsttssMDE0Of+jR3cw
	3N7TgFEXWBdr8Iei1MJ4Chz3tgEnep/kyDOCwsFKx3iDrBXpRn456LEPUSY8IU+DHHSlTiKRJnuIX
	uNbfLVB7kKkmfhLYEA5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsnzV-0000tk-3b; Wed, 31 Jul 2019 12:46:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsnxw-0006Su-3d
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 12:44:26 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BCEA32171F;
 Wed, 31 Jul 2019 12:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564577063;
 bh=Fje3AeopR107kcdoqaZJYzJTIvkoN1dobGnTqwrXqOk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CT0cwL2e/r+3RDaMoTK/tZK11LleUq09ZrKXH8NIp2+SsEkEBYsyzlWLf5H5DNx5r
 /r89HPJxOH8CfFqC/YUAjSDax2bl9UUKeEzY6rxSximoTLNC6+8muabt9MApGxY/2T
 lv4zTDtA7H5/27ELhezJ1UcxQQhuV0jZjk0zmZ1U=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org, Richard Gong <richard.gong@linux.intel.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>
Subject: [PATCH v2 08/10] video: fbdev: wm8505fb: convert platform driver to
 use dev_groups
Date: Wed, 31 Jul 2019 14:43:47 +0200
Message-Id: <20190731124349.4474-9-gregkh@linuxfoundation.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190731124349.4474-1-gregkh@linuxfoundation.org>
References: <20190731124349.4474-1-gregkh@linuxfoundation.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_054424_240000_CC7A4644 
X-CRM114-Status: GOOD (  11.72  )
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
and do not register "by hand" a sysfs file.

Cc: Tony Prisk <linux@prisktech.co.nz>
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org
Cc: linux-fbdev@vger.kernel.org
Acked-by: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/video/fbdev/wm8505fb.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/video/fbdev/wm8505fb.c b/drivers/video/fbdev/wm8505fb.c
index ff752635a31c..17c780315ca5 100644
--- a/drivers/video/fbdev/wm8505fb.c
+++ b/drivers/video/fbdev/wm8505fb.c
@@ -176,6 +176,12 @@ static ssize_t contrast_store(struct device *dev,
 
 static DEVICE_ATTR_RW(contrast);
 
+static struct attribute *wm8505fb_attrs[] = {
+	&dev_attr_contrast.attr,
+	NULL,
+};
+ATTRIBUTE_GROUPS(wm8505fb);
+
 static inline u_int chan_to_field(u_int chan, struct fb_bitfield *bf)
 {
 	chan &= 0xffff;
@@ -361,10 +367,6 @@ static int wm8505fb_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	ret = device_create_file(&pdev->dev, &dev_attr_contrast);
-	if (ret < 0)
-		fb_warn(&fbi->fb, "failed to register attributes (%d)\n", ret);
-
 	fb_info(&fbi->fb, "%s frame buffer at 0x%lx-0x%lx\n",
 		fbi->fb.fix.id, fbi->fb.fix.smem_start,
 		fbi->fb.fix.smem_start + fbi->fb.fix.smem_len - 1);
@@ -376,8 +378,6 @@ static int wm8505fb_remove(struct platform_device *pdev)
 {
 	struct wm8505fb_info *fbi = platform_get_drvdata(pdev);
 
-	device_remove_file(&pdev->dev, &dev_attr_contrast);
-
 	unregister_framebuffer(&fbi->fb);
 
 	writel(0, fbi->regbase);
@@ -399,6 +399,7 @@ static struct platform_driver wm8505fb_driver = {
 	.driver		= {
 		.name	= DRIVER_NAME,
 		.of_match_table = wmt_dt_ids,
+		.dev_groups	= wm8505fb_groups,
 	},
 };
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
