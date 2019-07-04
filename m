Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AE875FA08
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 16:26:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yU0XIXAeDWII3McPd4niwFr0aHyA/MV8g4+O2U7XlFw=; b=t/GFgiVY2muTIX
	JaTmukM+Qc0u+NkPV9SvXl/K1Pj6lJPU2PO+Iaa3A6qPEV4VwuqSrwuNEPWDmWU/Gseyu4Os2WABm
	JfEdhmxUOzQwV0PKO37k7Bwto2k84DxYQbrXgIXwWSLs0Cm38+URl6k7DLX9iWlp4onE1XxlvR1mJ
	gojwCxonkpdWBgOBrCrKyJzdKsAMKSSvVO6RSr9SyybSHbzl7EbrqwjVzxSAaV3VgOxKG2YK1M8P5
	FAcHLsGCUYv06p2hXKjSaX6Mflhzp7pnZJNESVmP4nDg22dwwQop+21SCDVHtkH3lGhLmSLVIJoz1
	Dhazn2TykXRFM+fIDrFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj2gl-0005gA-Vc; Thu, 04 Jul 2019 14:26:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj2gY-0005fL-PU
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 14:26:08 +0000
Received: from localhost (unknown [89.205.128.15])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 63147218A3;
 Thu,  4 Jul 2019 14:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562250366;
 bh=aSahAsJiapc2XUdQK1vHyWtY3qG19qgnLRWrZ9lBkRQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=T6D0qe9q4yb+hfC0BKGldTcTyrH2DMbA4FPBD/B2aoAs6g4W0eAzsdzxaPj10gzwY
 86Ejtlg0M/JZFA9dsB2z3trD5PXKR/FPA1dlAlgp4CEl3XYSrRjdytB1wbPcov4lx0
 3E4u9ouWSmsdg4aGWD8A5VV+7KVChd/A89CeAncI=
Date: Thu, 4 Jul 2019 16:26:02 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org, Tony Prisk <linux@prisktech.co.nz>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Subject: [PATCH 07/11] video: fbdev: wm8505fb: convert platform driver to use
 dev_groups
Message-ID: <20190704142602.GB6281@kroah.com>
References: <20190704084617.3602-1-gregkh@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190704084617.3602-1-gregkh@linuxfoundation.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_072606_839479_EA757DBC 
X-CRM114-Status: GOOD (  12.53  )
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 dri-devel@lists.freedesktop.org, platform-driver-x86@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Darren Hart <dvhart@infradead.org>,
 Andy Shevchenko <andy@infradead.org>
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
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/video/fbdev/wm8505fb.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/video/fbdev/wm8505fb.c b/drivers/video/fbdev/wm8505fb.c
index 8f0d5379861d..3b826da97035 100644
--- a/drivers/video/fbdev/wm8505fb.c
+++ b/drivers/video/fbdev/wm8505fb.c
@@ -184,6 +184,12 @@ static ssize_t contrast_store(struct device *dev,
 
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
@@ -369,10 +375,6 @@ static int wm8505fb_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	ret = device_create_file(&pdev->dev, &dev_attr_contrast);
-	if (ret < 0)
-		fb_warn(&fbi->fb, "failed to register attributes (%d)\n", ret);
-
 	fb_info(&fbi->fb, "%s frame buffer at 0x%lx-0x%lx\n",
 		fbi->fb.fix.id, fbi->fb.fix.smem_start,
 		fbi->fb.fix.smem_start + fbi->fb.fix.smem_len - 1);
@@ -384,8 +386,6 @@ static int wm8505fb_remove(struct platform_device *pdev)
 {
 	struct wm8505fb_info *fbi = platform_get_drvdata(pdev);
 
-	device_remove_file(&pdev->dev, &dev_attr_contrast);
-
 	unregister_framebuffer(&fbi->fb);
 
 	writel(0, fbi->regbase);
@@ -402,6 +402,7 @@ static const struct of_device_id wmt_dt_ids[] = {
 };
 
 static struct platform_driver wm8505fb_driver = {
+	.dev_groups	= wm8505fb_groups,
 	.probe		= wm8505fb_probe,
 	.remove		= wm8505fb_remove,
 	.driver		= {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
