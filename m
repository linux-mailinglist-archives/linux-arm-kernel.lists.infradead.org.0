Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 458F08429D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 04:51:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6BeZm1ECnEsAmIiRqvkfmRZAKsNqcsD7hrJEwKQMoWA=; b=VtPEfOhrj7VwLF
	zkcqPjx6CJ+5pW24OZw4Zk5TWRXqJAcviYCTOmfMkQxhyJpyOihqMFbQqdX3Jcxg80tk6+K5IttDH
	2LpBpDmpo7H0pqXeJbOrp7Vq76Lwj+OHu4oGwkVI7HSlyqwriopwKeWPeb3linmM1ACwn0VWWOJOu
	0t8lZbMt4uZcr7xRKzA/cvwmYvot6Z2eXHxTW1n7ioqGGe0+YGJ03CFs+I9cP5aGJtsmqvCPVQdsX
	8Wjmg39KzgKTgsFmQ9zKumauydEpv1gA6K7GGMXyBG8eDbFsQ2StYsmA9OhNBtL9KgJHyh3dpQa06
	UlNITaqXyCP9iai+IEEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvC2d-0007PI-Rv; Wed, 07 Aug 2019 02:51:07 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.92 #3 (Red
 Hat Linux)) id 1hvC2V-0007P8-0o; Wed, 07 Aug 2019 02:50:59 +0000
From: Matthew Wilcox <willy@infradead.org>
To: Michal Simek <michal.simek@xilinx.com>
Subject: [PATCH] xilinx_sdfec: Convert to IDA
Date: Tue,  6 Aug 2019 19:50:50 -0700
Message-Id: <20190807025050.28367-1-willy@infradead.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
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
Cc: linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Arnd Bergmann <arnd@arndb.de>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Matthew Wilcox (Oracle)" <willy@infradead.org>

This driver does not use the lookup abilities of the IDR, so convert it
to the more space-efficient IDA.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 drivers/misc/xilinx_sdfec.c | 25 ++++++-------------------
 1 file changed, 6 insertions(+), 19 deletions(-)

diff --git a/drivers/misc/xilinx_sdfec.c b/drivers/misc/xilinx_sdfec.c
index f257d3812110..071b26a8c6a9 100644
--- a/drivers/misc/xilinx_sdfec.c
+++ b/drivers/misc/xilinx_sdfec.c
@@ -22,8 +22,7 @@
 
 #define DEV_NAME_LEN 12
 
-static struct idr dev_idr;
-static struct mutex dev_idr_lock;
+static DEFINE_IDA(dev_nrs);
 
 /**
  * struct xsdfec_clks - For managing SD-FEC clocks
@@ -227,13 +226,6 @@ static void xsdfec_disable_all_clks(struct xsdfec_clks *clks)
 	clk_disable_unprepare(clks->axi_clk);
 }
 
-static void xsdfec_idr_remove(struct xsdfec_dev *xsdfec)
-{
-	mutex_lock(&dev_idr_lock);
-	idr_remove(&dev_idr, xsdfec->dev_id);
-	mutex_unlock(&dev_idr_lock);
-}
-
 static int xsdfec_probe(struct platform_device *pdev)
 {
 	struct xsdfec_dev *xsdfec;
@@ -263,9 +255,7 @@ static int xsdfec_probe(struct platform_device *pdev)
 	/* Save driver private data */
 	platform_set_drvdata(pdev, xsdfec);
 
-	mutex_lock(&dev_idr_lock);
-	err = idr_alloc(&dev_idr, xsdfec->dev_name, 0, 0, GFP_KERNEL);
-	mutex_unlock(&dev_idr_lock);
+	err = ida_alloc(&dev_nrs, GFP_KERNEL);
 	if (err < 0)
 		goto err_xsdfec_dev;
 	xsdfec->dev_id = err;
@@ -278,12 +268,12 @@ static int xsdfec_probe(struct platform_device *pdev)
 	err = misc_register(&xsdfec->miscdev);
 	if (err) {
 		dev_err(dev, "error:%d. Unable to register device", err);
-		goto err_xsdfec_idr;
+		goto err_xsdfec_ida;
 	}
 	return 0;
 
-err_xsdfec_idr:
-	xsdfec_idr_remove(xsdfec);
+err_xsdfec_ida:
+	ida_free(&dev_nrs, xsdfec->dev_id);
 err_xsdfec_dev:
 	xsdfec_disable_all_clks(&xsdfec->clks);
 	return err;
@@ -295,7 +285,7 @@ static int xsdfec_remove(struct platform_device *pdev)
 
 	xsdfec = platform_get_drvdata(pdev);
 	misc_deregister(&xsdfec->miscdev);
-	xsdfec_idr_remove(xsdfec);
+	ida_free(&dev_nrs, xsdfec->dev_id);
 	xsdfec_disable_all_clks(&xsdfec->clks);
 	return 0;
 }
@@ -321,8 +311,6 @@ static int __init xsdfec_init(void)
 {
 	int err;
 
-	mutex_init(&dev_idr_lock);
-	idr_init(&dev_idr);
 	err = platform_driver_register(&xsdfec_driver);
 	if (err < 0) {
 		pr_err("%s Unabled to register SDFEC driver", __func__);
@@ -334,7 +322,6 @@ static int __init xsdfec_init(void)
 static void __exit xsdfec_exit(void)
 {
 	platform_driver_unregister(&xsdfec_driver);
-	idr_destroy(&dev_idr);
 }
 
 module_init(xsdfec_init);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
