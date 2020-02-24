Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F5AB16AA68
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 16:46:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MtTZ3f6TWUhR40e2RxuAFZhlMr++/ubTH+1IakUQ+jc=; b=V93dZHZ7GkWi55
	JYegAe1YeaR2hrM2FGcOzDt+IfOxcYan+VXqLCMrygA96PXxTRMmhdYCNkNrQOWutEVZXDxSomXLI
	wwciuWqe8Mqqi5YThGhN3Tm9xvDh9/5FOVSBWFNNZsn18vLZZGOlY5W8wPzNBUEZ2aCZoF1cFS/wQ
	DVJhxSGtf/4GKBo3Ic0ejG4k3AWjpLWZNyxU9whEFhvEvS4v0SRtMQIN9kyk1vHqfMEgP7rnxc1vG
	foGXVjulNtgNpTEUy80LpNLd0znvl2TJuYpSkq1BijT9qTf+HWM7G2OeRVmjBh/gkr4TC670aUcZ5
	6h2It3VSrMJLEgm5e8qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Fvw-0007vv-1c; Mon, 24 Feb 2020 15:46:12 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Fvn-0007h7-9U
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 15:46:04 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Feb 2020 07:45:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,480,1574150400"; d="scan'208";a="435942996"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmsmga005.fm.intel.com with ESMTP; 24 Feb 2020 07:45:57 -0800
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 215B294; Mon, 24 Feb 2020 17:45:57 +0200 (EET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>,
 linux-arm-kernel@lists.infradead.org, Mark Brown <broonie@kernel.org>,
 linux-spi@vger.kernel.org
Subject: [PATCH v1 2/2] spi: pxa2xx: drv_data can't be NULL in ->remove()
Date: Mon, 24 Feb 2020 17:45:56 +0200
Message-Id: <20200224154556.11627-2-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200224154556.11627-1-andriy.shevchenko@linux.intel.com>
References: <20200224154556.11627-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_074603_346303_631201B2 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is no need for drv_data check against NULL, since it won't happen.
Remove useless check.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/spi/spi-pxa2xx.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/spi/spi-pxa2xx.c b/drivers/spi/spi-pxa2xx.c
index e33ef1169491..19d43c7ed1a0 100644
--- a/drivers/spi/spi-pxa2xx.c
+++ b/drivers/spi/spi-pxa2xx.c
@@ -1889,11 +1889,7 @@ static int pxa2xx_spi_probe(struct platform_device *pdev)
 static int pxa2xx_spi_remove(struct platform_device *pdev)
 {
 	struct driver_data *drv_data = platform_get_drvdata(pdev);
-	struct ssp_device *ssp;
-
-	if (!drv_data)
-		return 0;
-	ssp = drv_data->ssp;
+	struct ssp_device *ssp = drv_data->ssp;
 
 	pm_runtime_get_sync(&pdev->dev);
 
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
