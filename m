Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 776DE65228
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 09:01:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aIiDq8y0ay8KsCtV+mxQsMNN5nT1KC3dVRVlfA5HYOE=; b=q+10jUNU2FUziH
	6j2pfwCxv9obiGteKUWOLdPXGy2pXeREQQKkTo67nJ+tYBkfXUYa+AKknHFGi0YutcM3IJ6TieEHa
	KtifZMkDdKxhLFjM+BqaKzXoZsSqew49dbByaWKCOTJNMwERsCNBFrlGUPmrRTwcQZt255VuNdHDH
	z4IIS1Y1GrZZrNzgYCaSzwPE1Zar9L9tUtDxQn/rCfoMfviOYVHQ/1Nt66H1Zh3I+lh262agFK/Wd
	0JtusNWwPJF0l6ddvBfi/dHGNpklyo5IUzdDZtn1Vt4SJQoiZygTpa9hSkzzNzuO1bXAkc9RvQRK6
	Q1znGsRcxHQNy1BO4Whg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlT4w-0006ju-5V; Thu, 11 Jul 2019 07:01:18 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlT4S-0006ht-Ui
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 07:00:51 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 84EE695F83B628D151AE;
 Thu, 11 Jul 2019 15:00:31 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.439.0; Thu, 11 Jul 2019
 15:00:21 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <wim@linux-watchdog.org>, <linux@roeck-us.net>, <baruch@tkos.co.il>,
 <wsa+renesas@sang-engineering.com>
Subject: [PATCH] watchdog: digicolor_wdt: remove unused variable 'ret'
Date: Thu, 11 Jul 2019 14:40:19 +0800
Message-ID: <20190711064019.60916-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_000049_991160_AC10D5B5 
X-CRM114-Status: UNSURE (   6.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-watchdog@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

commit cdad26977e3f ("watchdog: digicolor_wdt: drop
warning after registering device") left this unused
variable, it can be removed.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/watchdog/digicolor_wdt.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/watchdog/digicolor_wdt.c b/drivers/watchdog/digicolor_wdt.c
index 33cda95..073d378 100644
--- a/drivers/watchdog/digicolor_wdt.c
+++ b/drivers/watchdog/digicolor_wdt.c
@@ -118,7 +118,6 @@ static int dc_wdt_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct dc_wdt *wdt;
-	int ret;
 
 	wdt = devm_kzalloc(dev, sizeof(struct dc_wdt), GFP_KERNEL);
 	if (!wdt)
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
