Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8401313A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 17:32:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p0fu4A3Rbei9SkVv2tQI1yCk4mIg7VTx+z5DFMZY/dk=; b=BUWrcYWJQ8+Qie
	zMo8oJ+6pTNj4Z/cfQBhHhtQBg5PmKlUCM5MMf1VWdhYPZi0p3PP57HQcK/fvGIWHQrxssQPbW2wW
	HI1HsqULYTLgVjD7+FGjtPeLsq2JlVt0MZR7SkF9TBEFVxP8KPmSrxmZVXEP90cQzkkQUwBT5qbTN
	NXe9kIBZAUxNT+23yckbiXlKqpR3UtgUPUYwetuk2FWtREIKYimVU6mqIFkh5k7nql/S4TCMoq0Yr
	rH5ebXqrXCw6st3F2lCAhjXYqj5Wo5QfEf4v8gsmJTwlHNz7kj4yOE/E/wivZGM7GX0TUJpFXEA4a
	gxaWO9FnTpMFevduoaLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMaAz-00037Z-PH; Fri, 03 May 2019 15:32:41 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMaAO-0002Tc-Bi
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 15:32:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7B31F15AD;
 Fri,  3 May 2019 08:32:02 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.196.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 307D93F557;
 Fri,  3 May 2019 08:32:01 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: robh@kernel.org,
	tomeu.vizoso@collabora.com
Subject: [PATCH 3/4] drm/panfrost: Don't scream about deferred probe
Date: Fri,  3 May 2019 16:31:44 +0100
Message-Id: <b6ff1f18ac0612f29fd2e3336d6663b7e02db572.1556195258.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1556195258.git.robin.murphy@arm.com>
References: <cover.1556195258.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_083204_404315_28358DE0 
X-CRM114-Status: GOOD (  14.75  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: airlied@linux.ie, dri-devel@lists.freedesktop.org, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Probe deferral is far from "fatal".

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/gpu/drm/panfrost/panfrost_drv.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/panfrost/panfrost_drv.c b/drivers/gpu/drm/panfrost/panfrost_drv.c
index a881e2346b55..4a3fd942ddc6 100644
--- a/drivers/gpu/drm/panfrost/panfrost_drv.c
+++ b/drivers/gpu/drm/panfrost/panfrost_drv.c
@@ -382,13 +382,15 @@ static int panfrost_probe(struct platform_device *pdev)
 
 	err = panfrost_device_init(pfdev);
 	if (err) {
-		dev_err(&pdev->dev, "Fatal error during GPU init\n");
+		if (err != -EPROBE_DEFER)
+			dev_err(&pdev->dev, "Fatal error during GPU init\n");
 		goto err_out0;
 	}
 
 	err = panfrost_devfreq_init(pfdev);
 	if (err) {
-		dev_err(&pdev->dev, "Fatal error during devfreq init\n");
+		if (err != -EPROBE_DEFER)
+			dev_err(&pdev->dev, "Fatal error during devfreq init\n");
 		goto err_out1;
 	}
 
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
