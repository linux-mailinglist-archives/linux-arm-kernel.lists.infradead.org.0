Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1EA4A8257
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 14:27:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=e4fO4JoE9d2Dwgx2KzYLxw/EYJCXR3o09ua6k/iyHwc=; b=r254dd3/rOMWZs
	Dd2yh+HNjqLuqPiJ5yoZamYIQHtGZAoHZGwcZ08Fmt0fLL2gYA5trX34XnQ2pqGDgb44eMrWkLxLP
	paoGKmKnnrbvS6aXdT760qX9P+3VyOpsJylOjQ54Fzi89jGlkpV0IOsz/QnLtrNXYEQQbf4WQieRq
	a3zkP88dkPxIMuNjauGicjzqLR2RQzRscy+zocUlZHW+yi+a4sMQDpsEhZDr50YCuLdW719gpJTSo
	F5A6MuuXC0KP/PAgIGZb0I0AXabQbchZqZ1EekorlY5feBag/T+kTzD8lUYqQWuc6A19FoTbUXeEK
	kB5dUTsDbJRQrCcDxOtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5UNJ-000812-IH; Wed, 04 Sep 2019 12:27:01 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5UN7-0007yI-7N
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 12:26:50 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 4A74BF3FA70A6108B030;
 Wed,  4 Sep 2019 20:26:42 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.439.0; Wed, 4 Sep 2019
 20:26:33 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <linux@prisktech.co.nz>, <b.zolnierkie@samsung.com>
Subject: [PATCH -next] fbdev: wm8505fb: use devm_platform_ioremap_resource()
 to simplify code
Date: Wed, 4 Sep 2019 20:01:32 +0800
Message-ID: <20190904120132.25524-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_052649_438426_E63B94DC 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-fbdev@vger.kernel.org, YueHaibing <yuehaibing@huawei.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify the code a bit.
This is detected by coccinelle.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/video/fbdev/wm8505fb.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/video/fbdev/wm8505fb.c b/drivers/video/fbdev/wm8505fb.c
index 17c7803..351d27b 100644
--- a/drivers/video/fbdev/wm8505fb.c
+++ b/drivers/video/fbdev/wm8505fb.c
@@ -261,7 +261,6 @@ static struct fb_ops wm8505fb_ops = {
 static int wm8505fb_probe(struct platform_device *pdev)
 {
 	struct wm8505fb_info	*fbi;
-	struct resource	*res;
 	struct display_timings *disp_timing;
 	void			*addr;
 	int ret;
@@ -299,8 +298,7 @@ static int wm8505fb_probe(struct platform_device *pdev)
 	addr = addr + sizeof(struct wm8505fb_info);
 	fbi->fb.pseudo_palette	= addr;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	fbi->regbase = devm_ioremap_resource(&pdev->dev, res);
+	fbi->regbase = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(fbi->regbase))
 		return PTR_ERR(fbi->regbase);
 
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
