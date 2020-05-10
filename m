Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BBC71CCB40
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 10 May 2020 15:04:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7AxvIcGKh8hNlbp0EuTlR7/6In9UuhPUZkudk1jyY+w=; b=ZSqMFjUBpDrByz
	5godK/IotZCH70pnTcfdwq1j3BdDw7J4aeXUzK9K/CqkQ6Ld56aQwzqTWeObg5yIkkW/dKUVuGNqG
	SWaEY+GeWNLwio26SchC7Al75ZX9CAyVI9Z5oHX/tTr+p3f1cBz6lDPIhzPr8ATDu3is5/kmqISih
	KbEnq81JbutccvdgJyCrqWtDm2x96z5cNsbbDHfOLAUKSWDLU+BKR8F1+6iBx73PWmxqigg0BAEXa
	Rw+BTz7BibIbq6kOfS+2g82eUVIyPvfI2BSb/lf/kT3Zg1n7HqkNCACwHbCJqGb/3uOXTjSzCnAyG
	Orl0vxMrG4gK1xtJ0zBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXld0-0000Iv-Br; Sun, 10 May 2020 13:04:22 +0000
Received: from smtp01.smtpout.orange.fr ([80.12.242.123]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXlcq-0000HJ-M8
 for linux-arm-kernel@lists.infradead.org; Sun, 10 May 2020 13:04:14 +0000
Received: from localhost.localdomain ([93.23.13.120]) by mwinf5d53 with ME
 id d13z2200A2bQer90313z03; Sun, 10 May 2020 15:04:05 +0200
X-ME-Helo: localhost.localdomain
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sun, 10 May 2020 15:04:05 +0200
X-ME-IP: 93.23.13.120
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: michal.simek@xilinx.com, rajan.vaja@xilinx.com, jolly.shah@xilinx.com,
 gregkh@linuxfoundation.org, tejas.patel@xilinx.com,
 manish.narani@xilinx.com, ravi.patel@xilinx.com
Subject: [PATCH] firmware: xilinx: Fix an error handling path in
 'zynqmp_firmware_probe()'
Date: Sun, 10 May 2020 15:03:57 +0200
Message-Id: <20200510130357.233364-1-christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_060413_002429_3F33C420 
X-CRM114-Status: GOOD (  18.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.123 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.123 listed in wl.mailspike.net]
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
Cc: Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If 'mfd_add_devices()' fails, we must undo 'zynqmp_pm_api_debugfs_init()'
otherwise some debugfs directory and files will be left.

Just move the call to 'zynqmp_pm_api_debugfs_init()' a few lines below to
fix the issue.

Fixes: e23d9c6d0d49 ("drivers: soc: xilinx: Add ZynqMP power domain driver")
Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
Not related to this fix, but I think that:
   - a call to 'of_platform_depopulate()' is missing in the remove function
   - we shouldn't return of_platform_populate(); directly because we
     don't have the opportunity to call 'mfd_remove_devices()' as done in
     the remove function, and 'of_platform_depopulate()' for what have
     been populated yet

I'm not familiar with this API, so I just point it out to get feedback.
---
 drivers/firmware/xilinx/zynqmp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index 8095fa84d5d7..8d1ff2454e2e 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -1235,8 +1235,6 @@ static int zynqmp_firmware_probe(struct platform_device *pdev)
 	pr_info("%s Trustzone version v%d.%d\n", __func__,
 		pm_tz_version >> 16, pm_tz_version & 0xFFFF);
 
-	zynqmp_pm_api_debugfs_init();
-
 	ret = mfd_add_devices(&pdev->dev, PLATFORM_DEVID_NONE, firmware_devs,
 			      ARRAY_SIZE(firmware_devs), NULL, 0, NULL);
 	if (ret) {
@@ -1244,6 +1242,8 @@ static int zynqmp_firmware_probe(struct platform_device *pdev)
 		return ret;
 	}
 
+	zynqmp_pm_api_debugfs_init();
+
 	return of_platform_populate(dev->of_node, NULL, NULL, dev);
 }
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
